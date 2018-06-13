package controllers;

import models.Regulation;
import models.RegulationOutCount;
import play.db.jpa.JPAApi;
import play.db.jpa.Transactional;
import play.mvc.Controller;
import play.mvc.Result;
import views.html.report;

import javax.inject.Inject;
import java.util.List;


public class RegulationController extends Controller
{
    private JPAApi jpaApi;

    @Inject
    public RegulationController(JPAApi jpaApi)
    {
        this.jpaApi = jpaApi;
    }

    @Transactional(readOnly = true)
    public Result getRegulationSpecific()
    {
        String sql = "SELECT r FROM Regulation r";
        List<Regulation> regulations = jpaApi.em().createQuery(sql, Regulation.class).getResultList();
        return ok(views.html.regulation.render(regulations));
    }


    public Result getRegulationNumber()
    {
        String sql = "SELECT r FROM Regulation r";
        List<Regulation> regulations = jpaApi.em().createQuery(sql, Regulation.class).getResultList();
        return ok(views.html.regulation.render(regulations));
    }

   /* public Result getRegulationOutCount()
    {
        String sql = "SELECT NEW RegulationOutCount(r.regulationId, r.regulationSpecific, COUNT(*)) FROM Regulation r";
        List<RegulationOutCount> regulationOutCounts = jpaApi.em().createQuery(sql,RegulationOutCount.class).getResultList();
        return ok(views.html.regulation.render(regulation));

    }*/





}