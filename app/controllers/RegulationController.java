package controllers;

import models.Regulation;
import models.RegulationOutCount;
import play.data.FormFactory;
import play.data.DynamicForm;
import play.db.jpa.JPAApi;
import play.db.jpa.Transactional;
import play.mvc.Controller;
import play.mvc.Result;
import views.html.regulation;

import javax.inject.Inject;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;

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

    @Transactional(readOnly = true)
    public Result getRegulationNumber()
    {
        String sql = "SELECT r FROM Regulation r";
        List<Regulation> regulations = jpaApi.em().createQuery(sql, Regulation.class).getResultList();
        return ok(views.html.regulation.render(regulations));
    }

    @Transactional
    public Result postRegulationOutCount()
    {
        DynamicForm form = formFactory.form().bindFromRequest();
        Set<String> formNames = form.rawData().keySet();

        //int regulationOutCountsId = Integer.parseInt();
        //int regulationsOutCountsId = Integer.parseInt(form.get("regulationOutCountsId"));


        for (String formName : formNames)
        {
            if (formName.startsWith("reg"))
            {
                String typeOptionValue = form.get(formName);
                System.out.println(formName + " " + typeOptionValue);
            }
        }

        List<RegulationOutCount> regulationOutCounts = new ArrayList<>();

        return ok(views.html.regulationoutcount.render(regulationOutCounts));
    }

}

