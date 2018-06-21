package controllers;

import models.Regulation;
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
    public Result getRegulationNumber()
    {
        String sql = "SELECT r FROM Regulation r";
        List<Regulation> regulations = jpaApi.em().createQuery(sql, Regulation.class).getResultList();
        return ok(views.html.regulation.render(regulations));
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
        String sql = "SELECT r FROM Regulation r WHERE RegulationId IN (:regulationIds) ORDER BY RegulationSpecific";
        List<Regulation> regulations = jpaApi.em().createQuery(sql, Regulation.class).
                setParameter("regulationIds", regulationIds).getResultList();

        return ok(views.html.regulationoutcount.render(regulations));

    }

}


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

