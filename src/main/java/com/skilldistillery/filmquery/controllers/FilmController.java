package com.skilldistillery.filmquery.controllers;

import java.sql.SQLException;

import org.springframework.stereotype.Controller;
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
			} 
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return mv;
	}
	
	@RequestMapping(path ="AddNewFilm.do")
	public ModelAndView addFilm(@RequestParam("title") String title, @RequestParam("desc") String desc) {
		ModelAndView mv = new ModelAndView();

		Film film = new Film(); 
		film.setTitle(title);
		film.setDescription(desc);
		try {
			dao.createFilm(film);
			mv.addObject("film", film);
			mv.setViewName("AddNewFilm");
	    } catch (Exception e) {
	        e.printStackTrace();
	        mv.addObject("error", "Error while adding the film.");
	        mv.setViewName("ErrorPage");
	    }
		

		return mv;
	}

}
