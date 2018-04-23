package org.learn.webjdbc;

public class Country {
	private String countryId;
	private String countryName;
	private int regionId;
	
	public Country() {
	}

	public Country(String countryId, String countryName, int regionId) {
		super();
		this.countryId = countryId;
		this.countryName = countryName;
		this.regionId = regionId;
	}

	@Override
	public String toString() {
		return "Country [countryId=" + countryId + ", countryName="
				+ countryName + ", regionId=" + regionId + "]";
	}

	public String getCountryId() {
		return countryId;
	}

	public void setCountryId(String countryId) {
		this.countryId = countryId;
	}

	public String getCountryName() {
		return countryName;
	}

	public void setCountryName(String countryName) {
		this.countryName = countryName;
	}

	public int getRegionId() {
		return regionId;
	}

	public void setRegionId(int regionId) {
		this.regionId = regionId;
	}
}
