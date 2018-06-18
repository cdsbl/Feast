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
    //private FormFactory formFactory;

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
    /*@Transactional(readOnly = true)
    public Result getChapter()
    {
        String sql = "SELECT c FROM Chapter c";
        List<Chapter> chapters = jpaApi.em().createQuery(sql, Chapter.class).getResultList();
        return ok(views.html.chapter.render(chapters));
    }
}

        /*String sql = "SELECT c FROM Chapter c " + "WHERE chapterId = :chapterId";

        Chapter chapter = jpaApi.em().createQuery(sql, Chapter.class).
                setParameter("chapterId", getChapter()).
                getSingleResult();


        List<Chapter> chapters = jpaApi.em().createQuery(sql, Chapter.class).getResultList();

        return ok(views.html.chapter.render(chapters));
    }


    @Transactional
    public Result postChapter()
    {
        String sql = "SELECT c FROM Chapter c " +
                "WHERE chapterId = :chapterId";

        Chapter chapter = jpaApi.em().createQuery(sql, Chapter.class).
                setParameter("chapterId", postChapter()).
                getSingleResult();

        DynamicForm form = formFactory.form().bindFromRequest();
        String chapterName = form.get("chapterName");
        chapter.setChapterName(chapterName);

        //oryId = Integer.parseInt(form.get("categoryId"));
        //product.setCategoryId(categoryId);

        jpaApi.em().persist(chapter);

        return redirect(routes.ChapterController.getChapter());

//public ChapterController(FormFactory formFactory)
    //{this.formFactory = formFactory;}































    /*@Transactional(readOnly = true)
    public Result getChapter()
    {
        DynamicForm form = formFactory.form().bindFromRequest();

        String searchCriteria = form.get("searchCriteria") + "%";
        if (searchCriteria == null)
        {
            searchCriteria = "";
        }
        searchCriteria += "%";

        String sql = "SELECT NEW models.Chapter(c.chapterName, c.chapterNumber)" +
                " FROM Chapter c" +
                " WHERE ChapterName LIKE: searchCriteria";

        List<Chapter> chapters = jpaApi.em().
                createQuery(sql, Chapter.class).
                setParameter("searchCriteria", searchCriteria).
                getResultList();

        return ok(views.html.chapter.render(chapters));

    }*/




    /*String sql = "SELECT c FROM Chapter c";
    List<Chapter> chapters = jpaApi.em().createQuery(sql, Chapter.class).getResultList();
        return ok(views.html.chapter.render(chapters));*/

