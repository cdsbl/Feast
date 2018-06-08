package controllers;

import play.mvc.*;

import views.html.*;

import javax.persistence.Entity;

@Entity
public class HomeController extends Controller
{
    private String name; //FOOD SERVICE NAME

    public String getName()
    {
        System.out.println("RESTAURANT NAME");
        return name;
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
