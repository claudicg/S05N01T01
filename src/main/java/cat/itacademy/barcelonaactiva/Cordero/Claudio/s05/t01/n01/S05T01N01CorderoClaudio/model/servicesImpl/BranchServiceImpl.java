package cat.itacademy.barcelonaactiva.Cordero.Claudio.s05.t01.n01.S05T01N01CorderoClaudio.model.servicesImpl;

import java.util.List;
import java.util.stream.Collectors;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cat.itacademy.barcelonaactiva.Cordero.Claudio.s05.t01.n01.S05T01N01CorderoClaudio.enums.CountryTypeEnum;
import cat.itacademy.barcelonaactiva.Cordero.Claudio.s05.t01.n01.S05T01N01CorderoClaudio.model.domain.BranchEntity;
import cat.itacademy.barcelonaactiva.Cordero.Claudio.s05.t01.n01.S05T01N01CorderoClaudio.model.domain.CountryEntity;
import cat.itacademy.barcelonaactiva.Cordero.Claudio.s05.t01.n01.S05T01N01CorderoClaudio.model.dto.BranchDTO;
import cat.itacademy.barcelonaactiva.Cordero.Claudio.s05.t01.n01.S05T01N01CorderoClaudio.model.services.BranchService;
import cat.itacademy.barcelonaactiva.Cordero.Claudio.s05.t01.n01.S05T01N01CorderoClaudio.repositories.BranchRepository;
import cat.itacademy.barcelonaactiva.Cordero.Claudio.s05.t01.n01.S05T01N01CorderoClaudio.repositories.CountryRepository;



@Service("BranchService")
public class BranchServiceImpl implements BranchService{
	
	private static Logger logger = LoggerFactory.getLogger(BranchServiceImpl.class);

	@Autowired
	BranchRepository branchRepository;
	
	@Autowired
	CountryRepository countryRepository;
	
	@Override
	public BranchDTO add(String branchName, String branchCountry) {
		
		BranchEntity branchEntity = new BranchEntity(null, branchName, branchCountry);
		BranchEntity responseEntity = branchRepository.save(branchEntity);
		CountryEntity countryEntity = countryRepository.findById(responseEntity.getBranchCountry()).orElseThrow();
		
		return mappingEntityToDTO(responseEntity, countryEntity);

	}

	@Override
	public BranchDTO update(int id, String branchName, String branchCountry) {
		

		CountryEntity countryEntity = countryRepository.findById(branchCountry).orElse(null);
		
		if(countryEntity != null) {
			BranchEntity branchEntity = new BranchEntity(id, branchName, countryEntity.getBranchCountry());
			BranchEntity responseEntity = branchRepository.save(branchEntity);
			return mappingEntityToDTO(responseEntity, countryEntity);
		}else {
			return null;
		}		
	}

	@Override
	public void delete(int id) {
		
		BranchEntity branch = branchRepository.findById(id).orElseThrow(null);
		
		if(branch != null) {
			branchRepository.deleteById(id);
		}	
	}

	@Override
	public BranchDTO getOne(int id ) {
		
		BranchEntity branchEntity = branchRepository.findById(id).orElse(null);
		CountryEntity countryEntity = countryRepository.findById(branchEntity.getBranchCountry()).orElseThrow();
		
		return mappingEntityToDTO(branchEntity, countryEntity);
	}

	@Override
	public List<BranchDTO> getAll() {
		
		logger.info("BranchServiceImpl :: getAll :: List all branches.");
		
		List<BranchEntity> branches = branchRepository.findAll();
		
		List<BranchDTO> branchDtoList = branches.stream().map(branch 
				-> {
					CountryEntity countryEntity = countryRepository.findById(branch.getBranchCountry()).orElseThrow();
					 return mappingEntityToDTO(branch, countryEntity);
				}).collect(Collectors.toList());
		
		return branchDtoList;
	}
	
	
	private BranchDTO mappingEntityToDTO(BranchEntity branchEntity, CountryEntity countryEntity) {
		
		BranchDTO branchDto = new BranchDTO();
		
		branchDto.setBranchId(branchEntity.getBranchId());
		branchDto.setBranchName(branchEntity.getBranchName());
		branchDto.setBranchCountry(branchEntity.getBranchCountry());
		branchDto.setBranchType(countryEntity.getBranchType()
				.equalsIgnoreCase(CountryTypeEnum.EU.getType())
				? CountryTypeEnum.EU.getType() : CountryTypeEnum.NON_EU.getType());
		
		
		return branchDto;
	}	
}
