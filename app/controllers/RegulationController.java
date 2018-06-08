package controllers;

import play.mvc.Controller;
import play.mvc.Result;
import views.html.report;

import javax.persistence.Entity;

@Entity
public class RegulationController extends Controller

{



  public Result getReport()
  {
      return ok(report.render());

  }

}

