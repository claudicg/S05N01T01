package cat.itacademy.barcelonaactiva.Cordero.Claudio.s05.t01.n01.S05T01N01CorderoClaudio.model.domain;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name="branches", schema="branches")
public class BranchEntity {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
    @Column(name = "branch_id")
	private Integer branchId;
	
	@Column(name = "branch_name")
	private String branchName;
	
	@Column(name = "branch_country")
	private String branchCountry;
	
	
	public BranchEntity() {
		super();
	}

	public BranchEntity(Integer branchId, String branchName, String branchCountry) {
		super();
		this.branchId = branchId;
		this.branchName = branchName;
		this.branchCountry = branchCountry;
	}

	public Integer getBranchId() {
		return branchId;
	}

	public void setBranchId(Integer branchId) {
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

	
	@Override
	public String toString() {
		return "BranchEntity [branchId=" + branchId + ", branchName=" + branchName + ", branchCountry=" + branchCountry
				+  "]";
	}
	
}
