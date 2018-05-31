package controllers;

import play.data.DynamicForm;
import play.data.FormFactory;
import play.mvc.Controller;
import play.mvc.Result;

import javax.inject.Inject;

public class FavoritesController extends Controller
{
    private FormFactory formFactory;

    @Inject
    public FavoritesController(FormFactory formFactory)
    {
        this.formFactory = formFactory;
    }

    public Result getStart()
    {
        return ok(views.html.favorites.render());
    }

    public Result postFavs()
    {
        DynamicForm form = formFactory.form().bindFromRequest();
        String food = form.get("food");
        String movie = form.get("movie");
        String language = form.get("language");

        session().put("fav food", food);

        return ok(views.html.findFavorites.render());
    }

    public Result getFood()
    {
        String food=session().get("fav food");
        return ok(views.html.favoriteFood.render(food));
    }

    public Result getMovie()
    {
        String movie=session().get("fav movie");
        return ok(views.html.favoriteMovie.render(movie));
    }
}
