package cat.itacademy.barcelonaactiva.Cordero.Claudio.s05.t01.n01.S05T01N01CorderoClaudio.model.services;

import java.util.List;

import cat.itacademy.barcelonaactiva.Cordero.Claudio.s05.t01.n01.S05T01N01CorderoClaudio.model.dto.BranchDTO;


public interface BranchService {
	
	public BranchDTO add(String branchName, String branchCountry);
	public BranchDTO update(int id, String branchName, String branchCountry);
	public void delete(int id);
	public BranchDTO getOne(int id);
	public List<BranchDTO> getAll();
}
