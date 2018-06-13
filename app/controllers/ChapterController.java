package controllers;

import models.Chapter;
import models.Regulation;
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
    public Result getChapter()
    {
        String sql = "SELECT c FROM Chapter c";
        List<Chapter> chapters = jpaApi.em().createQuery(sql, Chapter.class).getResultList();
        return ok(views.html.chapter.render(chapters));

    }

}


//TO PULL ONE CHAPTER NAME AT A TIME--------------------
//String sql = "SELECT c FROM Chapter c WHERE chapterid = 8 ORDER BY chapterNumber, chapterName";
//Chapter chapter = jpaApi.em().createQuery(sql,Chapter.class).getSingleResult();
//return ok(views.html.chapter.render(chapter));