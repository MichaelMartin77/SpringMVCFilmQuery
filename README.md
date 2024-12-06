# SpringMVCFilmQuery

## Description  
The **MVC Film Query Application** is a web-based tool for managing film data with full C.R.U.D. (Create, Read, Update, Delete) functionality. Built using Spring MVC and JDBC, it applies the DAO pattern to interact with the database and uses JSPs for the user interface. The project follows MVC principles to ensure clean separation of concerns between data, logic, and presentation.  

---

## Features  
1. **Film Lookup**: Search films by ID and view details like title and description.  
2. **Add Films**: Submit new films with a form, automatically assigning a default language.  
3. **Delete Films**: Remove only newly added films, avoiding database dependency conflicts.  
4. **Update Films**: Edit film title or description via a simple update form.  

---

## Technologies  
- **Spring MVC**: Handles routing and user requests.  
- **JDBC**: Executes database operations.  
- **DAO Pattern**: Structures database logic into modular components.  
- **JSP**: Renders dynamic web pages.  

---

## Lessons Learned  
1. Implemented Spring MVC for routing and data flow between views and controllers.  
2. Improved database operations using the DAO pattern and parameterized queries.  
3. Designed dynamic web forms for creating, updating, and deleting records.  
4. Enhanced understanding of MVC architecture for scalable and maintainable code.  
5. Implemented user feedback and robust error handling.  

---

## Future Improvements  
- Add keyword search with paginated results.  
- Enhance the interface with CSS or Bootstrap.  
- Integrate actor and category data management.  
- Build RESTful APIs for scalability.  
- Develop unit tests for DAO and controller functionality.  