package cat.itacademy.barcelonaactiva.Cordero.Claudio.s05.t01.n01.S05T01N01CorderoClaudio.security;

import org.jasypt.util.text.BasicTextEncryptor;

public class JasyptService {

	
	public String getUnencryptedValue(String property) {

		BasicTextEncryptor decryptor = new BasicTextEncryptor();
		decryptor.setPassword(System.getProperty("jasypt.encryptor.password"));  		
		return decryptor.decrypt(property);
	}
}
