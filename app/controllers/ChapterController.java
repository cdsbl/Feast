package controllers;

import play.mvc.Controller;
import play.mvc.Result;
import views.html.chapter;

import javax.persistence.Entity;

@Entity
public class ChapterController extends Controller
{

    public Result getChapter()
    {
        return ok(chapter.render());
    }

    public Result postChapter()
    {
        return ok(views.html.chapter.render());
    }

    public Result postReport()
    {
        return ok(views.html.report.render());
    }


}

   /* public Result getOutSelection()                             // This is the method to select and calculate OUTS...
    {
    Scanner scanner = new Scanner (System.in)
        if (choice.equalsIgnoreCase("O"))                          // here or regulation controller???
        {
            outSelection=add.totalOutSelection;
        }

        {
            System.out.println("SELECTED OUT");
        }
        return getOutSelection();
    }*/

   /* METHODS FOR EACH CHAPTER*/





