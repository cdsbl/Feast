package controllers;

import models.Chapter;
import models.Regulation;
import play.data.DynamicForm;
import play.data.FormFactory;
import play.db.jpa.JPAApi;
import play.db.jpa.Transactional;
import play.mvc.Controller;
import play.mvc.Result;
import javax.inject.Inject;
import java.util.List;

public class ChapterController extends Controller
{
    private JPAApi jpaApi;

    @Inject
    public ChapterController(JPAApi jpaApi)
    {
        this.jpaApi = jpaApi;
    }

    @Transactional(readOnly = true)
    public Result getChapterName()
    {
        String sql = "SELECT c FROM Chapter c";
        List<Chapter> chapters = jpaApi.em().createQuery(sql, Chapter.class).getResultList();
        return ok(views.html.chapter.render(chapters));
    }

    @Transactional(readOnly = true)
    public Result getChapterNumber()
    {
        String sql = "SELECT c FROM Chapter c";
        List<Chapter> chapters = jpaApi.em().createQuery(sql, Chapter.class).getResultList();
        return ok(views.html.chapter.render(chapters));
    }
    @Transactional(readOnly = true)
    public Result getChapter()
    {
        String sql = "SELECT c FROM Chapter c";
        List<Chapter> chapters = jpaApi.em().createQuery(sql, Chapter.class).getResultList();
        return ok(views.html.chapter.render(chapters));
    }

}
