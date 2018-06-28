package models;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class RegulationControlTotal
{
    @Id

    private int regulationControlPointId;

    private String regulationControlPoints;

    private long count;

    public int getRegulationControlPointIds()
    {
        return regulationControlPointId;
    }

    public String getRegulationControlPoints()
    {
        return regulationControlPoints;
    }

    public long getCount()
    {
        return count;
    }

}
