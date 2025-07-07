package dto;

public class Concert {
	
	private String c_Id;
	private String c_name;
	private int c_unitPrice;
	private String c_artist;
	private String c_description;
	private String c_publisher;
	private String c_category;
	private long c_unitsInStock;
	private String c_releaseDate;
	private String c_filename;
	
	public Concert() {
		super();
	}

	public Concert(String c_Id, String c_name, int c_unitPrice) {
		super();
		this.c_Id = c_Id;
		this.c_name = c_name;
		this.c_unitPrice = c_unitPrice;
	}

	public String getC_Id() {
		return c_Id;
	}

	public void setC_Id(String c_Id) {
		this.c_Id = c_Id;
	}

	public String getC_name() {
		return c_name;
	}

	public void setC_name(String c_name) {
		this.c_name = c_name;
	}

	public int getC_unitPrice() {
		return c_unitPrice;
	}

	public void setC_unitPrice(int c_unitPrice) {
		this.c_unitPrice = c_unitPrice;
	}

	public String getC_artist() {
		return c_artist;
	}

	public void setC_artist(String c_artist) {
		this.c_artist = c_artist;
	}

	public String getC_description() {
		return c_description;
	}

	public void setC_description(String c_description) {
		this.c_description = c_description;
	}

	public String getC_publisher() {
		return c_publisher;
	}

	public void setC_publisher(String c_publisher) {
		this.c_publisher = c_publisher;
	}

	public String getC_category() {
		return c_category;
	}

	public void setC_category(String c_category) {
		this.c_category = c_category;
	}

	public long getC_unitsInStock() {
		return c_unitsInStock;
	}

	public void setC_unitsInStock(long c_unitsInStock) {
		this.c_unitsInStock = c_unitsInStock;
	}

	public String getC_releaseDate() {
		return c_releaseDate;
	}

	public void setC_releaseDate(String c_releaseDate) {
		this.c_releaseDate = c_releaseDate;
	}

	public String getC_filename() {
		return c_filename;
	}

	public void setC_filename(String c_filename) {
		this.c_filename = c_filename;
	}
	
	
	
}
