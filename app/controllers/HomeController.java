package controllers;

import play.data.DynamicForm;
import play.data.FormFactory;
import play.mvc.*;

import views.html.*;

import javax.inject.Inject;
import javax.persistence.Entity;

@Entity
public class HomeController extends Controller
{
    private FormFactory formFactory;

    public Result getFoodServiceName()                         //FOOD SERVICE NAME
    {
        DynamicForm form = formFactory.form().bindFromRequest();
        String foodServiceName = form.get("Food Service Name");

        return ok (views.html.home.render());

    }

    public Result getHome()
    {
        return ok(home.render());
    }
    public Result postHome()
    {
        return ok(views.html.home.render());
    }

}
