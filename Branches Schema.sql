DROP DATABASE IF EXISTS branches;

CREATE DATABASE branches CHARACTER SET utf8mb4;

USE branches;

CREATE TABLE countries	(
    country_name VARCHAR(100) PRIMARY KEY NOT NULL,
    country_type ENUM("EU", "NON-EU") NOT NULL
);

CREATE TABLE branches	(
	branch_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY NOT NULL,
    branch_name VARCHAR(100) UNIQUE NOT NULL,
    branch_country VARCHAR(100) NOT NULL,
    FOREIGN KEY(branch_country) REFERENCES countries(country_name)
);



INSERT INTO countries(country_name, country_type) VALUES ("Austria" , "EU");
INSERT INTO countries(country_name, country_type) VALUES ("Belgium" , "EU");
INSERT INTO countries(country_name, country_type) VALUES ("Bulgaria" , "EU");
INSERT INTO countries(country_name, country_type) VALUES ("Croatia" , "EU");
INSERT INTO countries(country_name, country_type) VALUES ("Republic of Cyprus" , "EU");
INSERT INTO countries(country_name, country_type) VALUES ("Czech Republic" , "EU");
INSERT INTO countries(country_name, country_type) VALUES ("Denmark" , "EU");
INSERT INTO countries(country_name, country_type) VALUES ("Estonia" , "EU");
INSERT INTO countries(country_name, country_type) VALUES ("Finland" , "EU");
INSERT INTO countries(country_name, country_type) VALUES ("France" , "EU");
INSERT INTO countries(country_name, country_type) VALUES ("Germany" , "EU");
INSERT INTO countries(country_name, country_type) VALUES ("Greece" , "EU");
INSERT INTO countries(country_name, country_type) VALUES ("Hungary" , "EU");
INSERT INTO countries(country_name, country_type) VALUES ("Ireland" , "EU");
INSERT INTO countries(country_name, country_type) VALUES ("Italy" , "EU");
INSERT INTO countries(country_name, country_type) VALUES ("Latvia" , "EU");
INSERT INTO countries(country_name, country_type) VALUES ("Lithuania" , "EU");
INSERT INTO countries(country_name, country_type) VALUES ("Luxembourg" , "EU");
INSERT INTO countries(country_name, country_type) VALUES ("Malta" , "EU");
INSERT INTO countries(country_name, country_type) VALUES ("Netherlands" , "EU");
INSERT INTO countries(country_name, country_type) VALUES ("Poland" , "EU");
INSERT INTO countries(country_name, country_type) VALUES ("Portugal" , "EU");
INSERT INTO countries(country_name, country_type) VALUES ("Romania" , "EU");
INSERT INTO countries(country_name, country_type) VALUES ("Slovakia" , "EU");
INSERT INTO countries(country_name, country_type) VALUES ("Slovenia" , "EU");
INSERT INTO countries(country_name, country_type) VALUES ("Spain" , "EU");
INSERT INTO countries(country_name, country_type) VALUES ("Sweden" , "EU");

INSERT INTO countries(country_name, country_type) VALUES ("Afghanistan", "NON-EU");

INSERT INTO countries(country_name, country_type) VALUES ("Albania", "NON-EU");

INSERT INTO countries(country_name, country_type) VALUES ("Algeria", "NON-EU");

INSERT INTO countries(country_name, country_type) VALUES ("Andorra", "NON-EU");

INSERT INTO countries(country_name, country_type) VALUES ("Angola", "NON-EU");

INSERT INTO countries(country_name, country_type) VALUES ("Antigua and Barbuda", "NON-EU");

INSERT INTO countries(country_name, country_type) VALUES ("Argentina", "NON-EU");

INSERT INTO countries(country_name, country_type) VALUES ("Armenia", "NON-EU");

INSERT INTO countries(country_name, country_type) VALUES ("Australia", "NON-EU");

INSERT INTO countries(country_name, country_type) VALUES ("Azerbaijan", "NON-EU");

INSERT INTO countries(country_name, country_type) VALUES ("Bahamas", "NON-EU");

INSERT INTO countries(country_name, country_type) VALUES ("Bahrain", "NON-EU");

INSERT INTO countries(country_name, country_type) VALUES ("Bangladesh", "NON-EU");

INSERT INTO countries(country_name, country_type) VALUES ("Barbados", "NON-EU");

INSERT INTO countries(country_name, country_type) VALUES ("Belarus", "NON-EU");

INSERT INTO countries(country_name, country_type) VALUES ("Belize", "NON-EU");

INSERT INTO countries(country_name, country_type) VALUES ("Benin", "NON-EU");

INSERT INTO countries(country_name, country_type) VALUES ("Bhutan", "NON-EU");

INSERT INTO countries(country_name, country_type) VALUES ("Bolivia", "NON-EU");

INSERT INTO countries(country_name, country_type) VALUES ("Bosnia and Herzegovina", "NON-EU");

INSERT INTO countries(country_name, country_type) VALUES ("Botswana", "NON-EU");

INSERT INTO countries(country_name, country_type) VALUES ("Brazil", "NON-EU");

INSERT INTO countries(country_name, country_type) VALUES ("Brunei", "NON-EU");

INSERT INTO countries(country_name, country_type) VALUES ("Burkina Faso", "NON-EU");

INSERT INTO countries(country_name, country_type) VALUES ("Burundi", "NON-EU");

INSERT INTO countries(country_name, country_type) VALUES ("Cabo Verde", "NON-EU");

INSERT INTO countries(country_name, country_type) VALUES ("Cambodia", "NON-EU");

INSERT INTO countries(country_name, country_type) VALUES ("Cameroon", "NON-EU");

INSERT INTO countries(country_name, country_type) VALUES ("Canada", "NON-EU");

INSERT INTO countries(country_name, country_type) VALUES ("Central African Republic", "NON-EU");

INSERT INTO countries(country_name, country_type) VALUES ("Chad", "NON-EU");

INSERT INTO countries(country_name, country_type) VALUES ("Chile", "NON-EU");

INSERT INTO countries(country_name, country_type) VALUES ("China", "NON-EU");

INSERT INTO countries(country_name, country_type) VALUES ("Colombia", "NON-EU");

INSERT INTO countries(country_name, country_type) VALUES ("Comoros", "NON-EU");

INSERT INTO countries(country_name, country_type) VALUES ("Congo", "NON-EU");

INSERT INTO countries(country_name, country_type) VALUES ("Costa Rica", "NON-EU");

INSERT INTO countries(country_name, country_type) VALUES ("Cuba", "NON-EU");

INSERT INTO countries(country_name, country_type) VALUES ("Democratic Republic of the Congo", "NON-EU");

INSERT INTO countries(country_name, country_type) VALUES ("Djibouti", "NON-EU");

INSERT INTO countries(country_name, country_type) VALUES ("Dominica", "NON-EU");

INSERT INTO countries(country_name, country_type) VALUES ("Dominican Republic", "NON-EU");

INSERT INTO countries(country_name, country_type) VALUES ("Ecuador", "NON-EU");

INSERT INTO countries(country_name, country_type) VALUES ("Egypt", "NON-EU");

INSERT INTO countries(country_name, country_type) VALUES ("El Salvador", "NON-EU");

INSERT INTO countries(country_name, country_type) VALUES ("Equatorial Guinea", "NON-EU");

INSERT INTO countries(country_name, country_type) VALUES ("Eritrea", "NON-EU");

INSERT INTO countries(country_name, country_type) VALUES ("Eswatini", "NON-EU");

INSERT INTO countries(country_name, country_type) VALUES ("Ethiopia", "NON-EU");

INSERT INTO countries(country_name, country_type) VALUES ("Fiji", "NON-EU");

INSERT INTO countries(country_name, country_type) VALUES ("Gabon", "NON-EU");

INSERT INTO countries(country_name, country_type) VALUES ("Gambia", "NON-EU");

INSERT INTO countries(country_name, country_type) VALUES ("Georgia", "NON-EU");

INSERT INTO countries(country_name, country_type) VALUES ("Ghana", "NON-EU");

INSERT INTO countries(country_name, country_type) VALUES ("Grenada", "NON-EU");

INSERT INTO countries(country_name, country_type) VALUES ("Guatemala", "NON-EU");

INSERT INTO countries(country_name, country_type) VALUES ("Guinea", "NON-EU");

INSERT INTO countries(country_name, country_type) VALUES ("Guinea-Bissau", "NON-EU");

INSERT INTO countries(country_name, country_type) VALUES ("Guyana", "NON-EU");

INSERT INTO countries(country_name, country_type) VALUES ("Haiti", "NON-EU");

INSERT INTO countries(country_name, country_type) VALUES ("Holy See", "NON-EU");

INSERT INTO countries(country_name, country_type) VALUES ("Honduras", "NON-EU");

INSERT INTO countries(country_name, country_type) VALUES ("Iceland", "NON-EU");

INSERT INTO countries(country_name, country_type) VALUES ("India", "NON-EU");

INSERT INTO countries(country_name, country_type) VALUES ("Indonesia", "NON-EU");

INSERT INTO countries(country_name, country_type) VALUES ("Iran", "NON-EU");

INSERT INTO countries(country_name, country_type) VALUES ("Iraq", "NON-EU");

INSERT INTO countries(country_name, country_type) VALUES ("Israel", "NON-EU");

INSERT INTO countries(country_name, country_type) VALUES ("Jamaica", "NON-EU");

INSERT INTO countries(country_name, country_type) VALUES ("Japan", "NON-EU");

INSERT INTO countries(country_name, country_type) VALUES ("Jordan", "NON-EU");

INSERT INTO countries(country_name, country_type) VALUES ("Kazakhstan", "NON-EU");

INSERT INTO countries(country_name, country_type) VALUES ("Kenya", "NON-EU");

INSERT INTO countries(country_name, country_type) VALUES ("Kiribati", "NON-EU");

INSERT INTO countries(country_name, country_type) VALUES ("Kuwait", "NON-EU");

INSERT INTO countries(country_name, country_type) VALUES ("Kyrgyzstan", "NON-EU");

INSERT INTO countries(country_name, country_type) VALUES ("Laos", "NON-EU");

INSERT INTO countries(country_name, country_type) VALUES ("Lebanon", "NON-EU");

INSERT INTO countries(country_name, country_type) VALUES ("Lesotho", "NON-EU");

INSERT INTO countries(country_name, country_type) VALUES ("Liberia", "NON-EU");

INSERT INTO countries(country_name, country_type) VALUES ("Libya", "NON-EU");

INSERT INTO countries(country_name, country_type) VALUES ("Liechtenstein", "NON-EU");

INSERT INTO countries(country_name, country_type) VALUES ("Madagascar", "NON-EU");

INSERT INTO countries(country_name, country_type) VALUES ("Malawi", "NON-EU");

INSERT INTO countries(country_name, country_type) VALUES ("Malaysia", "NON-EU");

INSERT INTO countries(country_name, country_type) VALUES ("Maldives", "NON-EU");

INSERT INTO countries(country_name, country_type) VALUES ("Mali", "NON-EU");

INSERT INTO countries(country_name, country_type) VALUES ("Marshall Islands", "NON-EU");

INSERT INTO countries(country_name, country_type) VALUES ("Mauritania", "NON-EU");

INSERT INTO countries(country_name, country_type) VALUES ("Mauritius", "NON-EU");

INSERT INTO countries(country_name, country_type) VALUES ("Mexico", "NON-EU");

INSERT INTO countries(country_name, country_type) VALUES ("Micronesia", "NON-EU");

INSERT INTO countries(country_name, country_type) VALUES ("Moldova", "NON-EU");

INSERT INTO countries(country_name, country_type) VALUES ("Monaco", "NON-EU");

INSERT INTO countries(country_name, country_type) VALUES ("Mongolia", "NON-EU");

INSERT INTO countries(country_name, country_type) VALUES ("Montenegro", "NON-EU");

INSERT INTO countries(country_name, country_type) VALUES ("Morocco", "NON-EU");

INSERT INTO countries(country_name, country_type) VALUES ("Mozambique", "NON-EU");

INSERT INTO countries(country_name, country_type) VALUES ("Myanmar", "NON-EU");

INSERT INTO countries(country_name, country_type) VALUES ("Namibia", "NON-EU");

INSERT INTO countries(country_name, country_type) VALUES ("Nauru", "NON-EU");

INSERT INTO countries(country_name, country_type) VALUES ("Nepal", "NON-EU");

INSERT INTO countries(country_name, country_type) VALUES ("New Zealand", "NON-EU");

INSERT INTO countries(country_name, country_type) VALUES ("Nicaragua", "NON-EU");

INSERT INTO countries(country_name, country_type) VALUES ("Niger", "NON-EU");

INSERT INTO countries(country_name, country_type) VALUES ("Nigeria", "NON-EU");

INSERT INTO countries(country_name, country_type) VALUES ("North Korea", "NON-EU");

INSERT INTO countries(country_name, country_type) VALUES ("North Macedonia", "NON-EU");

INSERT INTO countries(country_name, country_type) VALUES ("Norway", "NON-EU");

INSERT INTO countries(country_name, country_type) VALUES ("Oman", "NON-EU");

INSERT INTO countries(country_name, country_type) VALUES ("Pakistan", "NON-EU");

INSERT INTO countries(country_name, country_type) VALUES ("Palau", "NON-EU");

INSERT INTO countries(country_name, country_type) VALUES ("Palestine State", "NON-EU");

INSERT INTO countries(country_name, country_type) VALUES ("Panama", "NON-EU");

INSERT INTO countries(country_name, country_type) VALUES ("Papua New Guinea", "NON-EU");

INSERT INTO countries(country_name, country_type) VALUES ("Paraguay", "NON-EU");

INSERT INTO countries(country_name, country_type) VALUES ("Peru", "NON-EU");

INSERT INTO countries(country_name, country_type) VALUES ("Philippines", "NON-EU");

INSERT INTO countries(country_name, country_type) VALUES ("Qatar", "NON-EU");

INSERT INTO countries(country_name, country_type) VALUES ("Russia", "NON-EU");

INSERT INTO countries(country_name, country_type) VALUES ("Rwanda", "NON-EU");

INSERT INTO countries(country_name, country_type) VALUES ("Saint Kitts and Nevis", "NON-EU");

INSERT INTO countries(country_name, country_type) VALUES ("Saint Lucia", "NON-EU");

INSERT INTO countries(country_name, country_type) VALUES ("Saint Vincent and the Grenadines", "NON-EU");

INSERT INTO countries(country_name, country_type) VALUES ("Samoa", "NON-EU");

INSERT INTO countries(country_name, country_type) VALUES ("San Marino", "NON-EU");

INSERT INTO countries(country_name, country_type) VALUES ("Sao Tome and Principe", "NON-EU");

INSERT INTO countries(country_name, country_type) VALUES ("Saudi Arabia", "NON-EU");

INSERT INTO countries(country_name, country_type) VALUES ("Senegal", "NON-EU");

INSERT INTO countries(country_name, country_type) VALUES ("Serbia", "NON-EU");

INSERT INTO countries(country_name, country_type) VALUES ("Seychelles", "NON-EU");

INSERT INTO countries(country_name, country_type) VALUES ("Sierra Leone", "NON-EU");

INSERT INTO countries(country_name, country_type) VALUES ("Singapore", "NON-EU");

INSERT INTO countries(country_name, country_type) VALUES ("Solomon Islands", "NON-EU");

INSERT INTO countries(country_name, country_type) VALUES ("Somalia", "NON-EU");

INSERT INTO countries(country_name, country_type) VALUES ("South Africa", "NON-EU");

INSERT INTO countries(country_name, country_type) VALUES ("South Korea", "NON-EU");

INSERT INTO countries(country_name, country_type) VALUES ("South Sudan", "NON-EU");

INSERT INTO countries(country_name, country_type) VALUES ("Sri Lanka", "NON-EU");

INSERT INTO countries(country_name, country_type) VALUES ("Sudan", "NON-EU");

INSERT INTO countries(country_name, country_type) VALUES ("Suriname", "NON-EU");

INSERT INTO countries(country_name, country_type) VALUES ("Switzerland", "NON-EU");

INSERT INTO countries(country_name, country_type) VALUES ("Syria", "NON-EU");

INSERT INTO countries(country_name, country_type) VALUES ("Tajikistan", "NON-EU");

INSERT INTO countries(country_name, country_type) VALUES ("Tanzania", "NON-EU");

INSERT INTO countries(country_name, country_type) VALUES ("Thailand", "NON-EU");

INSERT INTO countries(country_name, country_type) VALUES ("Timor-Leste", "NON-EU");

INSERT INTO countries(country_name, country_type) VALUES ("Togo", "NON-EU");

INSERT INTO countries(country_name, country_type) VALUES ("Tonga", "NON-EU");

INSERT INTO countries(country_name, country_type) VALUES ("Trinidad and Tobago", "NON-EU");

INSERT INTO countries(country_name, country_type) VALUES ("Tunisia", "NON-EU");

INSERT INTO countries(country_name, country_type) VALUES ("Turkey", "NON-EU");

INSERT INTO countries(country_name, country_type) VALUES ("Turkmenistan", "NON-EU");

INSERT INTO countries(country_name, country_type) VALUES ("Tuvalu", "NON-EU");

INSERT INTO countries(country_name, country_type) VALUES ("Uganda", "NON-EU");

INSERT INTO countries(country_name, country_type) VALUES ("Ukraine", "NON-EU");

INSERT INTO countries(country_name, country_type) VALUES ("United Arab Emirates", "NON-EU");

INSERT INTO countries(country_name, country_type) VALUES ("United Kingdom", "NON-EU");

INSERT INTO countries(country_name, country_type) VALUES ("United States of America", "NON-EU");

INSERT INTO countries(country_name, country_type) VALUES ("Uruguay", "NON-EU");

INSERT INTO countries(country_name, country_type) VALUES ("Uzbekistan", "NON-EU");

INSERT INTO countries(country_name, country_type) VALUES ("Vanuatu", "NON-EU");

INSERT INTO countries(country_name, country_type) VALUES ("Venezuela", "NON-EU");

INSERT INTO countries(country_name, country_type) VALUES ("Vietnam", "NON-EU");

INSERT INTO countries(country_name, country_type) VALUES ("Yemen", "NON-EU");

INSERT INTO countries(country_name, country_type) VALUES ("Zambia", "NON-EU");

INSERT INTO countries(country_name, country_type) VALUES ("Zimbabwe", "NON-EU");


INSERT INTO branches(branch_name, branch_country) VALUES ("Deutsche Bank Barcelona", "Spain");
INSERT INTO branches(branch_name, branch_country) VALUES ("Deutsche Bank Pisa", "Italy");
INSERT INTO branches(branch_name, branch_country) VALUES ("Deutsche Bank Oxford", "United Kingdom");
INSERT INTO branches(branch_name, branch_country) VALUES ("Deutsche Bank Andorra", "Andorra");



