package controllers;

import models.Regulation;
import models.RegulationOutCount;
import play.data.FormFactory;
import play.data.DynamicForm;
import play.db.jpa.JPAApi;
import play.db.jpa.Transactional;
import play.mvc.Controller;
import play.mvc.Result;
import scala.math.Ordering;
import views.html.regulation;

import javax.inject.Inject;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;

import static javafx.scene.input.KeyCode.R;
import static org.h2.expression.Aggregate.COUNT;
import static org.hibernate.loader.Loader.SELECT;


public class RegulationController extends Controller
{
    private JPAApi jpaApi;
    private FormFactory formFactory;

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

   /* @Transactional(readOnly = true)
    public Result getRegulationNumber()
    {
        String sql = "SELECT r FROM Regulation r";
        List<Regulation> regulations = jpaApi.em().createQuery(sql, Regulation.class).getResultList();
        return ok(views.html.regulation.render(regulations));
    }*/

    @Transactional(readOnly = true)
    public Result postRegulationOutCount()
    {
        DynamicForm form = formFactory.form().bindFromRequest();

        Set<String> formNames = form.rawData().keySet();

        List<Integer> regulationOutCounts = new ArrayList<>();

        for (String formName : formNames)
        {
            if (formName.startsWith("reg-"))
            {
                int regulationOutCount = Integer.parseInt(formName.replace("reg-", ""));
                regulationOutCounts.add(regulationOutCount);
            }
        }
        String sql = "SELECT r FROM Regulation r WHERE regulationOutCount IN (:regulationOutCounts) ORDER BY regulationNumber";
        List<Regulation> regulationOutCount = jpaApi.em().createQuery(sql, Regulation.class).
                setParameter("regulationOutCounts", regulationOutCounts).getResultList();

        return ok(views.html.regulationoutcount.render(regulationOutCount));

    }
}

           /* for (String formName : formNames)
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







//int regulationOutCountSize = Integer.parseInt(form.get(regulationOutCountSize));
//jpaApi.em().persist(regulationOutCountSize);
// return ok("reg: " + regulationOutCounts.getClass());

//String typeOptionValue = form.get(formName);
//System.out.println(formName + " " + typeOptionValue);*/