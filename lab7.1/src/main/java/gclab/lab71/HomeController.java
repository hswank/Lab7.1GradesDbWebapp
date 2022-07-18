package gclab.lab71;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class HomeController {
	
	@Autowired
	private GradesRepository repo;
	
	@RequestMapping("/")
	public String index(Model model) {
		List<Grade> grades = repo.findAll();
		int size = grades.size();
		model.addAttribute("grades", grades);
		model.addAttribute("size", size);
		
		return "homepage";
	}
	
	@RequestMapping("/delete")
	public String deleteGrade(@RequestParam String id) {
		repo.deleteById(id);
		return "redirect:/";
	}
	
	@RequestMapping("/addGrade")
	public String addGrade() {
		return "addGrade";
	}
	
	@RequestMapping("/conf")
	public String addConf(@RequestParam String name, @RequestParam String type, @RequestParam double score, @RequestParam double total, Model model) {
		model.addAttribute("name", name);
		model.addAttribute("type", type);
		model.addAttribute("score", score);
		model.addAttribute("total", total);
		Grade grade = new Grade(name, type, score, total);
		repo.insert(grade);
		
		return "conf";
	}
}
