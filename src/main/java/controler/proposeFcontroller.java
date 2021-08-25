package controler;

import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import DAO.Formation;
import DAO.User;
import Modele.formationOperations;
import Modele.userOperations;


@Controller
public class proposeFcontroller {
	static ModelAndView modelViewObj;
	
	formationOperations obj=new formationOperations(); 
	userOperations obj2=new userOperations(); 
	@RequestMapping(value="/listf",method=RequestMethod.GET)
	public ModelAndView formShow() { return new ModelAndView("formation/formproposeformation2","formation",new Formation()); }
	
	  
	  @RequestMapping(value="/addform",method= RequestMethod.POST)
	  public ModelAndView ajout(@ModelAttribute("formation") Formation formation,Model model  ) {
		boolean bl=obj.addformation(formation.getName(),formation.getNiveau(),formation.getDescription(),formation.getE_mail(),formation.getEmail());
		if(bl==true) {
	  obj.addformation(formation.getName(),formation.getNiveau(),formation.getDescription(),formation.getE_mail(),formation.getEmail()); 
	  modelViewObj = new ModelAndView("view","messageObj","The message has been successfully sent"); 
	 return modelViewObj;
	  //  return "redirect:/listet"; 
		}else {
			modelViewObj = new ModelAndView("view","messageObj","Sorry,you are not accepted by the company yet");
			//return  "redirect:/listf";
			return modelViewObj;
		}
		}
	   
	  
	    @RequestMapping("/Result")   
	    public String showData(@ModelAttribute("formation") Formation formation,ModelMap m) throws SQLException {
	    	
	    	
	    	ArrayList<Formation> list = obj.showformPropose();
	    	ArrayList<Formation> lis = obj.showPropose();
	        
	        m.addAttribute("ls",list);
	        m.addAttribute("tl",lis);
	        return "etablissement/gereOffreFormation";
	}

	    @RequestMapping(value="/valideform/{Id_formation}")
	    public String editEttab(@PathVariable int Id_formation, Model m) throws SQLException{
	    	
	        obj2.UpEtatform(Id_formation);
	        return "redirect:/Result";
	    }
		

	    @RequestMapping(value="/deleteform/{Id_formation}",method = RequestMethod.GET)
		public String  deleteProduct(@PathVariable("Id_formation") int Id_formation ){
			obj2.deleteForm(Id_formation);
			
			
			return "redirect:/Result";
		} 





}
	    

