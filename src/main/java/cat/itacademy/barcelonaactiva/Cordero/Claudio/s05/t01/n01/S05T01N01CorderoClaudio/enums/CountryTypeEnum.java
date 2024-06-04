package cat.itacademy.barcelonaactiva.Cordero.Claudio.s05.t01.n01.S05T01N01CorderoClaudio.enums;

public enum CountryTypeEnum {

	EU("EU"),
	NON_EU("NON-EU");
	
	private String type;

	private CountryTypeEnum(String type) {
		this.type = type;
	}
	
	public String getType() {
		return type;
	}	
}
