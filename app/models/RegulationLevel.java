package models;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class RegulationLevel
{
    @Id
    private int regulationLevelId;
    private String regulationLevelName;
    private long count;

    public int getRegulationLevelId()
    {
        return regulationLevelId;
    }

    public String getRegulationLevelName()
    {
        return regulationLevelName;
    }

    public long getCount()
    {
        return count;
    }

    public RegulationLevel(int regulationLevelId, String regulationLevelName)
    {
        this.regulationLevelId = regulationLevelId;
        this.regulationLevelName = regulationLevelName;
        this.count = count;

    }

}
