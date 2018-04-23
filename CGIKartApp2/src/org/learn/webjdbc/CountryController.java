package org.learn.webjdbc;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class CountryController{
	@Autowired
	private CountryDAO dao;

	@RequestMapping(value="/getCtry")
	public String getCountry(@RequestParam("ctryId") String id,ModelMap model) {  
		Country ctry = dao.getCountry(id);  
		System.out.println(id);
		model.addAttribute("ctry",ctry);
		return "CountryDisp";  
	}
	
	
	@RequestMapping(value="/createCtry")
	public String createNewCountry(@RequestParam("countr") String countryId,@RequestParam("countryName") String countryName ,@RequestParam("regionId") String regionId, ModelMap model) {
		Country ctry=new Country();
		ctry.setCountryId(countryId);
		ctry.setCountryName(countryName);
		ctry.setRegionId(Integer.parseInt(regionId));
		 dao.insertCountry(ctry);
		
		model.addAttribute("ctry",ctry);
		return "CountryDisp";  
	}
	
	@RequestMapping(value="/login")
	public String login()
	{
		System.out.println("inside login");
		return "customeradded";
	}
}
