package models;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class RegulationControlTotal
{
    @Id

    private int regulationControlPointId;//DO NOT TOUCH

    private String regulationControlPoints;//DO NOT TOUCH

    private long count;//DO NOT TOUCH

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

    public RegulationControlTotal(int regulationControlPointId, String regulationControlPoints, long count)
    {
        this.regulationControlPointId = regulationControlPointId;
        this.regulationControlPoints = regulationControlPoints;
        this.count = count;
    }
}
