package com.skilldistillery.filmquery.database;

import java.sql.SQLException;
import java.util.List;

import com.skilldistillery.filmquery.entities.Actor;
import com.skilldistillery.filmquery.entities.Film;

public interface DatabaseAccessor {
	public Film findFilmById(int filmId) throws SQLException;

	public Actor findActorById(int actorId) throws SQLException;

	public List<Actor> findActorsByFilmId(int filmId) throws SQLException;

	public List<Film> searchFilmByKeyword(String keyword);

	public String getLanguage(int languageId);

	public Actor createActor(Actor actor);

	public boolean saveActor(Actor actor);

	public boolean deleteFilm(Film aFilm);

	public Film createFilm(Film aFilm);

	public boolean updateFilm(Film aFilm);
}
