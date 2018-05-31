package controllers;

import play.mvc.Controller;
import play.mvc.Result;

public class MyController extends Controller
{
    public Result getHelloWorld()
    {
        return ok(views.html.helloworld.render("Maggie"));
    }








}
