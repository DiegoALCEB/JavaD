package co.com.diegoalceb;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class JavaConDockerApplication {

	public static void main(String[] args) {
		SpringApplication.run(JavaConDockerApplication.class, args);
		System.out.println("Entrar a la API con la ruta localhost:8080/tienda");
	}

}
