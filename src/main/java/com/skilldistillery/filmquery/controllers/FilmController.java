package com.skilldistillery.filmquery.controllers;

import java.sql.SQLException;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.skilldistillery.filmquery.database.DatabaseAccessor;
import com.skilldistillery.filmquery.entities.Film;

@Controller
public class FilmController {

	public final DatabaseAccessor dao;

	public FilmController(DatabaseAccessor dao) {
		this.dao = dao;

	}

	@RequestMapping(path = { "/", "index.do" })
	public ModelAndView home() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("index");
		return mv;
	}

	@RequestMapping(path = { "findById.do" })
	public ModelAndView findFilmById(@RequestParam("id") int id) {
		ModelAndView mv = new ModelAndView();

		try {
			Film film = dao.findFilmById(id);
			if (film != null) {
				mv.addObject("film", film);
				mv.setViewName("film");
			} else {
				mv.addObject("film", null); 
				mv.setViewName("film");
			}
		} catch (SQLException e) {
			e.printStackTrace();
			mv.addObject("film", null); 
			mv.setViewName("film");
		}
		return mv;
	}

	@PostMapping(path = "AddNewFilm.do")
	public ModelAndView addFilm(@RequestParam("title") String title, @RequestParam("desc") String desc) {
		ModelAndView mv = new ModelAndView();

		Film film = new Film();
		film.setTitle(title);
		film.setDescription(desc);
		try {
			dao.createFilm(film);
			System.out.println(film);
			mv.addObject("film", film);
			mv.setViewName("AddNewFilm");
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("Error occurred: " + e.getMessage());
	        mv.addObject("error", "Error while adding the film.");
		}

		return mv;
	}

	@RequestMapping(path = "findByKeyword.do")
	public ModelAndView findFilmsByKeyword(@RequestParam("keyword") String keyword) {
		ModelAndView mv = new ModelAndView();
		List<Film> films = dao.searchFilmByKeyword(keyword);
		if (films != null && !films.isEmpty()) {
			mv.addObject("newFilms", films);
			 mv.setViewName("search-results");
		} else {
			mv.setViewName("search-result");
		}

		return mv;
	}

	
	@PostMapping(path = "deleteFilm.do")
	public ModelAndView deleteFilm(@RequestParam("id") int id) {
	    ModelAndView mv = new ModelAndView();
	    try {
	        Film film = dao.findFilmById(id);
	        if (film != null) {
	            boolean isDeleted = dao.deleteFilm(film);
	            if (isDeleted) {
	                mv.addObject("message", "Film deleted successfully.");
	            } else {
	                mv.addObject("message", "Film not found. Unable to delete.");
	            }
	        } else {
	            mv.addObject("message", "No film exists with the provided ID.");
	        }
	    } catch (SQLException e) {
	        e.printStackTrace();
	        mv.addObject("message", "Error deleting the film.");
	    }
	    mv.setViewName("delete-result");
	    return mv;
	}
	
	@RequestMapping("updateFilmForm.do")
	public ModelAndView showUpdateForm(@RequestParam("id") int id) {
		ModelAndView mv = new ModelAndView(); 
		try {
			Film film = dao.findFilmById(id);
			mv.addObject("film", film);
		    mv.setViewName("update-result");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
		
		
		return mv; 
	}
	
	@PostMapping("updateFilm.do")
	public ModelAndView updateFilm(@RequestParam("id") int id, 
            @RequestParam("title") String title, 
            @RequestParam("description") String description) {
		
		Film film;
		ModelAndView mv = new ModelAndView(); 
		try {
			film = dao.findFilmById(id);
			film.setTitle(title);
		    film.setDescription(description);
		    boolean updated = dao.updateFilm(film);
		    
		    
		    mv.addObject("message", updated ? "Update successful!" : "Update failed." );
		    mv.setViewName("update-result");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	    
	  
	    
	    return mv; 
	}

}
