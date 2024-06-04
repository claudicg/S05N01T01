package cat.itacademy.barcelonaactiva.Cordero.Claudio.s05.t01.n01.S05T01N01CorderoClaudio.Utils;

public class Validations {
	
	public static boolean isValidName(String name) {
		return name.matches("^[a-zA-ZáéíóúÁÉÍÓÚüÜñÑ\\s]+$");
	}
	
	public static boolean isValidNumber(String id) {
		return id.matches("^[1-9]{1}[0-9]*$");
	}
	
}
