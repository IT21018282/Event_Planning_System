package servelet;

public class event {
	
	private int id;
	private String type;
	private String description;
	private String services;
	
	//Setters for id
	public void setId(int id) {
		this.id = id;
	}
	
	//Getters for id
	public int getId() {
		return id;
	}

	//Constructor
	public event( String type, String description, String services) {
		
		this.type = type;
		this.description = description;
		this.services = services;
	}

	//getters
	public String getType() {
		return type;
	}

	public String getDescription() {
		return description;
	}


	public String getServices() {
		return services;
	}

}
