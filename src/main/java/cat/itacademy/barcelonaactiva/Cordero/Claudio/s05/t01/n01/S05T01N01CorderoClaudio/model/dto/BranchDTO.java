package cat.itacademy.barcelonaactiva.Cordero.Claudio.s05.t01.n01.S05T01N01CorderoClaudio.model.dto;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;

@Entity
public class BranchDTO {

	@Id
	private Integer branchId;
	
	private String branchName;
	private String branchCountry;
	private String branchType;
		
	public BranchDTO() {
		super();
	}

	public BranchDTO(int branchId, String branchName, String branchCountry) {
		super();
		this.branchId = branchId;
		this.branchName = branchName;
		this.branchCountry = branchCountry;
	}

	public int getBranchId() {
		return branchId;
	}

	public void setBranchId(int branchId) {
		this.branchId = branchId;
	}

	public String getBranchName() {
		return branchName;
	}

	public void setBranchName(String branchName) {
		this.branchName = branchName;
	}

	public String getBranchCountry() {
		return branchCountry;
	}

	public void setBranchCountry(String branchCountry) {
		this.branchCountry = branchCountry;
	}

	public String getBranchType() {
		return branchType;
	}

	public void setBranchType(String branchType) {
		this.branchType = branchType;
	}

	@Override
	public String toString() {
		return "branchId: " + branchId 
				+ "\nbranchName: " + branchName 
				+ "\nbranchCountry: " + branchCountry
				+ "\nbranchType: " + branchType;
	}
	
}
