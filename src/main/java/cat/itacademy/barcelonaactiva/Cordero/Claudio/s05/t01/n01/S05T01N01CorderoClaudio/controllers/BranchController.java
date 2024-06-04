package cat.itacademy.barcelonaactiva.Cordero.Claudio.s05.t01.n01.S05T01N01CorderoClaudio.controllers;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import cat.itacademy.barcelonaactiva.Cordero.Claudio.s05.t01.n01.S05T01N01CorderoClaudio.Utils.Constants;
import cat.itacademy.barcelonaactiva.Cordero.Claudio.s05.t01.n01.S05T01N01CorderoClaudio.Utils.Validations;
import cat.itacademy.barcelonaactiva.Cordero.Claudio.s05.t01.n01.S05T01N01CorderoClaudio.model.dto.BranchDTO;
import cat.itacademy.barcelonaactiva.Cordero.Claudio.s05.t01.n01.S05T01N01CorderoClaudio.model.services.BranchService;

@Controller
public class BranchController {

	@Autowired
	private BranchService branchService;
	
	private static Logger logger = LoggerFactory.getLogger(BranchController.class);
	
	@GetMapping("/")
	public String viewMainMenu() {	
		return "index";	
	}
	
	@GetMapping("/view/add")
	public String viewAddMenu(Model model) {
		
		BranchDTO branchDto = new BranchDTO();
		model.addAttribute("branchDto", branchDto);
		
		return "add-branch-form";
	}
	
	@GetMapping("/view/update/{id}")
	public String viewUpdateMenu(@PathVariable int id, Model model) {
		
		//USO DEL END POINT GET ONE
		BranchDTO branchDto = branchService.getOne(id);
		
		model.addAttribute("branchDto", branchDto);
		
		return "update-branch-form";
		
	}
	
	@GetMapping("/view/getOne")
	public String viewGetOneMenu() {	
		return "getOne-branch-form";
	}
	
	@GetMapping("/view/getAll")
	public String viewGetAllMenu() {
		return "getAll-branch-form";
	}
	
	@GetMapping("/result/add")
	public String showResultAddMenu() {
		return "add-branch-result";
	}

	@GetMapping("/result/delete")
	public String showResultDeleteMenu() {	
		return "delete-result";
	}
	
	@GetMapping("/result/getOne")
	public String showResultGetOneMenu() {	
		return "getOne-result";
	}
	
	@GetMapping("/result/getAll")
	public String showResultGetAllMenu() {
		return "getAll-result";
	}
	
	@PostMapping("/branches/add")
	public String add(@ModelAttribute BranchDTO branchDto, Model model){
		
		logger.info("BranchController :: add :: add start...");

		model.addAttribute("branchDto", branchDto);
		
		if(!Validations.isValidName(branchDto.getBranchName().trim())) {
			
			logger.info("BranchController :: add :: " + Constants.Messages.INVALID_NAME);
			model.addAttribute("message", Constants.Messages.INVALID_NAME);
			return "add-branch-result";
			
		}
		
		if(!Validations.isValidName(branchDto.getBranchCountry().trim())) {
			
			logger.info("BranchController :: add :: " + Constants.Messages.INVALID_COUNTRY);
			model.addAttribute("message", Constants.Messages.INVALID_COUNTRY);
			return "add-branch-result";
			
		}
		
		BranchDTO responseBranchDto = branchService.add(branchDto.getBranchName().trim(), branchDto.getBranchCountry().trim());
		
		if(responseBranchDto != null) {
			
			logger.info("BranchController :: add :: " + Constants.Messages.ADDED);
			logger.info("BranchController :: add :: " + responseBranchDto.toString());
			model.addAttribute("message", responseBranchDto.toString());
			
		} else {
			
			logger.info("BranchController :: add :: Error trying to insert branch.");
			model.addAttribute("message", "Error trying to insert branch");
			
		}
		
		return "add-branch-result";
		
	}
	
	@PostMapping("/branches/update")
    public String update(@ModelAttribute BranchDTO branchDto, Model model){
		
		logger.info("BranchController :: update :: update start...");
		
		model.addAttribute("branchDto", branchDto);
		
		if(!Validations.isValidNumber(Integer.toString(branchDto.getBranchId()))) {

			logger.info("BranchController :: update :: " + Constants.Messages.INVALID_ID);
			model.addAttribute("message", Constants.Messages.INVALID_ID);
			return "update-result";
			
		}
		
		if(!Validations.isValidName(branchDto.getBranchName().trim())) {

			logger.info("BranchController :: update :: " + Constants.Messages.INVALID_NAME);
			model.addAttribute("message", Constants.Messages.INVALID_NAME);
			return "update-result";
			
		}
		
		BranchDTO responseBranchDto = branchService.update(branchDto.getBranchId(), 
				branchDto.getBranchName().trim(), branchDto.getBranchCountry().trim());
		
		if(responseBranchDto != null) {

			logger.info("BranchController :: update :: " + Constants.Messages.UPDATED);
			logger.info("BranchController :: update :: " + responseBranchDto.toString());
			model.addAttribute("message", responseBranchDto.toString());
			
		} else {
			
			logger.info("BranchController :: update :: " + Constants.Messages.INVALID_COUNTRY);
			model.addAttribute("message", Constants.Messages.INVALID_COUNTRY);
			
		}
		
		return "update-result";
		
	}
	
	@GetMapping("/branches/delete/{id}")
	public String delete(@PathVariable int id, Model model) {
		
		logger.info("BranchController :: delete :: delete start...");
			
		if(!Validations.isValidNumber(Integer.toString(id))) {

			logger.info("BranchController :: delete :: " + Constants.Messages.INVALID_ID);
			model.addAttribute("message", Constants.Messages.INVALID_ID);
			return "delete-result";
			
		}
		
		branchService.delete(id);
		
		logger.info("BranchController :: delete :: " + Constants.Messages.DELETED);
		model.addAttribute("message", Constants.Messages.DELETED);
		return "delete-result";

	}
	
	@GetMapping("/branches/getOne/{id}")
	public String getOne(@PathVariable("id") int id, Model model){
		
		logger.info("BranchController :: getOne :: get one start...");
		
		if(!Validations.isValidNumber(Integer.toString(id))) {

			logger.info("BranchController :: getOne :: " + Constants.Messages.INVALID_ID);
			return "getOne-result";
			
		}
		
		BranchDTO branchDto = branchService.getOne(id);
		
		if(branchDto != null) {
			
			logger.info("BranchController :: getOne :: " + Constants.Messages.FOUND);
			logger.info("BranchController :: getOne :: " + branchDto.toString());
			model.addAttribute("message", branchDto.toString());
			
		} else {

			logger.info("BranchController :: getOne :: " + Constants.Messages.NOT_FOUND);
			
		}
		
		return "getOne-result";
		
	}
	
	@GetMapping("/branches/getAll")
	public String getAll(Model model){
		
		logger.info("BranchController :: getAll :: get all start...");
		
		List<BranchDTO> branches = branchService.getAll();
		
		model.addAttribute("branchesList", branches);
		
		return "getAll-result";
		
	}
}
