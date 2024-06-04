package cat.itacademy.barcelonaactiva.Cordero.Claudio.s05.t01.n01.S05T01N01CorderoClaudio.model.domain;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name="countries", schema="branches")
public class CountryEntity {

	@Id
	@Column(name = "country_name")
	private String branchCountry;
	
	@Column(name = "country_type")
	private String branchType;

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
		return "CountryEntity [branchCountry=" + branchCountry + ", branchType=" + branchType + "]";
	}
}
