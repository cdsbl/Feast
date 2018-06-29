package controllers;


import models.Regulation;
import models.RegulationControlPoint;
import models.RegulationControlTotal;
import play.data.FormFactory;
import play.data.DynamicForm;
import play.db.jpa.JPAApi;
import play.db.jpa.Transactional;
import play.mvc.Controller;
import play.mvc.Result;
import scala.Dynamic;
import views.html.helper.form;
import views.html.regulation;

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
        return ok(views.html.regulationoutcount.render(regulations, null));
    }

    @Transactional
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

        String sql = "SELECT r FROM Regulation r WHERE r.regulationId IN (:regulationIds)";
        List<Regulation> regulations = jpaApi.em().createQuery(sql, Regulation.class).
                setParameter("regulationIds", regulationIds).getResultList();

        String summarySQL = "SELECT NEW RegulationControlTotal (cp.regulationControlPointId, cp.regulationControlPoints, COUNT(*)) " +
                "FROM RegulationControlPoint cp " +
                "JOIN Regulation r ON cp.regulationControlPointId = r.regulationControlPointId " +
                "WHERE r.regulationId IN (:regulationIds) " +
                "GROUP BY cp.regulationControlPointId, cp.regulationControlPoints";

        List<RegulationControlTotal> regulationControlPointIds = jpaApi.em().createQuery(summarySQL, RegulationControlTotal.class).
                setParameter("regulationIds", regulationIds).getResultList();


            return ok(views.html.regulationoutcount.render(regulations, regulationControlPointIds));

    }

}







       /*@Transactional(readOnly = true)
    public Result postRegulationControlPointCount()
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

        String sql = "SELECT NEW RegulationControlTotal (r.regulationControlPointId, r.regulationControlPoints, COUNT(*)) " +
                "FROM Regulation rt " +
                "JOIN RegulationControlPoint r ON rt.regulationControlPointId = r.regulationControlPointId " +
                "GROUP BY r.regulationControlPointId, r.regulationControlPoints " +
                "ORDER BY r.regulationControlPoints";

        List<RegulationControlTotal> regulationControlPointId = jpaApi.em().createQuery(sql, RegulationControlTotal.class).
                setParameter("regulationControlPointIds", regulationControlPointIds).getResultList();

        return ok(views.html.regulationouttotal.render(regulationControlPointId));

    }*/




   /* @Transactional(readOnly = true)
    public Result getRegulationNumber()
    {
        String sql = "SELECT r FROM Regulation r";
        List<Regulation> regulations = jpaApi.em().createQuery(sql, Regulation.class).getResultList();
        return ok(views.html.regulation.render(regulations));
    }
}*/


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


//<p><input type ="checkbox" id="reg-@regulation.getRegulationId" name="reg-@regulation.getRegulationId"/>OUT</p>



 /* @Transactional(readOnly = true)
    public Result getRegulationNumber()
    {
        String sql = "SELECT r FROM Regulation r";
        List<Regulation> regulations = jpaApi.em().createQuery(sql, Regulation.class).getResultList();
        return ok(views.html.regulation.render(regulations));
    }*/

/*<form method="GET" action="/regulationoutcount">
@CSRF.formField*/
// <input type = "hidden" name="reg-@regulationControlPointId.getRegulationControlPointId" value="reg-@regulationControlPointId.getRegulationControlPointId">