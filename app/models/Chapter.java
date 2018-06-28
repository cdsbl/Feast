package models;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity

public class Chapter
{
    @Id
    private int chapterId;
    private int chapterNumber;
    private String chapterName;

    public int getChapterId()
    {
        return chapterId;
    }

    public int getChapterNumber()
    {
        return chapterNumber;
    }

    public String getChapterName()
    {
        return chapterName;
    }


}

