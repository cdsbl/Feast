package controllers;

import models.Chapter;
import models.Regulation;
import models.RegulationControlPoint;
import play.data.FormFactory;
import play.data.DynamicForm;
import play.db.jpa.JPAApi;
import play.db.jpa.Transactional;
import play.mvc.Controller;
import play.mvc.Result;
import scala.Dynamic;

import javax.inject.Inject;
import javax.persistence.Entity;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;

public class RegulationController extends Controller
{
    JPAApi jpaApi;
    FormFactory formFactory;

    @Inject
    public RegulationController(FormFactory formFactory, JPAApi jpaApi)
    {
        this.formFactory = formFactory;
        this.jpaApi = jpaApi;
    }

    @Transactional(readOnly = true)
    public Result getRegulationSpecific()
    {
        String sql = "SELECT r FROM Regulation r";
        List<Regulation> regulations = jpaApi.em().createQuery(sql, Regulation.class).getResultList();
        return ok(views.html.regulation.render(regulations));
    }

    @Transactional(readOnly = true)
    public Result getRegulationOutCount()
    {
        String sql = "SELECT r FROM Regulation r";
        List<Regulation> regulations = jpaApi.em().createQuery(sql, Regulation.class).getResultList();
        return ok(views.html.regulationoutcount.render(regulations));
    }

    @Transactional(readOnly = true)
    public Result postRegulationOutCount()
    {
        DynamicForm form = formFactory.form().bindFromRequest();
        Set<String> formNames = form.rawData().keySet();
        List<Integer> regulationIds = new ArrayList<>();

        for (String formName : formNames)
        {
            if (formName.startsWith("reg-"))
            {
                int regulationId = Integer.parseInt(formName.replace("reg-", ""));
                regulationIds.add(regulationId);
            }
        }

        String sql = "SELECT r FROM Regulation r WHERE r.regulationId IN (:regulationIds) GROUP BY r.regulationSpecific";
        List<Regulation> regulations = jpaApi.em().createQuery(sql, Regulation.class).
                setParameter("regulationIds", regulationIds).getResultList();

        return ok(views.html.regulationoutcount.render(regulations));
    }

    @Transactional(readOnly = true)
    public Result getRegulationControlPointCount()
    {
        DynamicForm form = formFactory.form().bindFromRequest();
        Set<String> formNames = form.rawData().keySet();
        List<Integer> regulationControlPointIds = new ArrayList<>();

        for (String formName : formNames)
        {
            if (formName.startsWith("reg-"))
            {
                int regulationControlPointId = Integer.parseInt(formName.replace("reg-", ""));
                regulationControlPointIds.add(regulationControlPointId);
            }
        }

        String sql = "SELECT r FROM RegulationControlPoint r WHERE r.regulationControlPointId IN (:regulationControlPointIds)";
        List<RegulationControlPoint> regulationControlPointId = jpaApi.em().createQuery(sql, RegulationControlPoint.class).
                setParameter("regulationControlPointIds", regulationControlPointIds).getResultList();

        return ok(views.html.regulationouttotal.render(regulationControlPointId));


        /*String sql = "SELECT NEW RegulationControlPoint (r.regulationControlPointId, r.regulationControlPoints, COUNT(*)) " +
                "FROM Regulation rt " +
                "JOIN RegulationControlPoint r ON rt.regulationControlPointId = r.regulationControlPointId " +
                "GROUP BY r.regulationControlPointId, r.regulationControlPoints " +
                "ORDER BY r.regulationControlPoints";*/

       // List<RegulationControlPoint> regulationControlPoints = jpaApi.em().createQuery(sql, RegulationControlPoint.class).getResultList();
    }


    @Transactional(readOnly = true)
    public Result getRegulationNumber()
    {
        String sql = "SELECT r FROM Regulation r";
        List<Regulation> regulations = jpaApi.em().createQuery(sql, Regulation.class).getResultList();
        return ok(views.html.regulation.render(regulations));
    }
}



// DO NOT DELETE THIS!!
    /*String sql = "SELECT r FROM Regulation r WHERE r.regulationId IN (:regulationIds) GROUP BY r.regulationSpecific";
    List<Regulation> regulations = jpaApi.em().createQuery(sql, Regulation.class).
            setParameter("regulationIds", regulationIds).getResultList();*/


// DO NOT DELETE THIS EITHER!

   /* public Result getRegulationControlPointCount()
    {
        String sql = "SELECT NEW RegulationControlPoint(r.regulationControlPointId, r.regulationControlPoints, COUNT(*)) "+
                "FROM Regulation rt " +
                "JOIN RegulationControlPoint r ON rt.regulationControlPointId = r.regulationControlPointId " +
                "GROUP BY r.regulationControlPointId, r.regulationControlPoints " +
                "ORDER BY r.regulationControlPoints";

        List<RegulationControlPoint> regulationControlPoints = jpaApi.em().createQuery(sql,RegulationControlPoint.class).getResultList();
        return ok(views.html.regulationouttotal.render(regulationControlPoints));
    }*/



/*<div class="container">
<div class="panel-heading"><strong>CONTENTS</strong></div>
<div class="panel-body">
<ul class="list-group">
<li class="list-group-item">1.  Purpose and Definitions</li>
<li class="list-group-item">2.  Management and Personnel</li>
<li class="list-group-item">3.  Food</li>
<li class="list-group-item">4.  Equipment, Utensils, and Linens</li>
<li class="list-group-item">5.  Water, Plumbing, and Waste</li>
<li class="list-group-item">6.  Physical Facilities</li>
<li class="list-group-item">7.  Poisonous or Toxic Materials</li>
<li class="list-group-item">8.  Compliance and Enforcement</li>
</ul>
</div>
</div>*/


//<table class="table table-hover table-bordered">
//<p><input type ="checkbox" id="reg-@regulation.getRegulationId" name="reg-@regulation.getRegulationId"/>OUT</p>

/*<tr>
<td>

<p>@regulation.getRegulationSpecific</p>

</td>
<td>
<div class="checkbox">
<label><input type="checkbox" id="reg-@regulation.getRegulationId" name="reg-@regulation.getRegulationId">OUT</label>
</div>


</td>
</tr>*/

//<p><input type ="checkbox" id="reg-@regulation.getRegulationId" name="reg-@regulation.getRegulationId"/>OUT</p>






/*<a href="regulation.getRegulationId">*/
/* @for(regulation <- regulations){*/

           /*
           for (String formName : formNames)
            {
                if (formName.startsWith("cat-"))
                {
                    int categoryId = Integer.parseInt(formName.replace("cat-", ""));
                    categoryIds.add(categoryId);
                }
            }

            String sql = "SELECT c FROM Category c WHERE categoryId IN (:categoryIds) ORDER BY name";
            List<Category> categories = jpaApi.em().createQuery(sql, Category.class).
                    setParameter("categoryIds", categoryIds).getResultList();

            return ok(views.html.CategoriesSelected.render(categories));
        }






 /* @Transactional(readOnly = true)
    public Result getRegulationNumber()
    {
        String sql = "SELECT r FROM Regulation r";
        List<Regulation> regulations = jpaApi.em().createQuery(sql, Regulation.class).getResultList();
        return ok(views.html.regulation.render(regulations));
    }*/

