package models;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class RegulationControlPoint
{
    @Id
    private int regulationId;

    private int regulationControlPointId;

    private String regulationControlPoints;

    private long count;

    public int getRegulationId()
    {
        return regulationId;
    }

    public int getRegulationControlPointId()
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

    public RegulationControlPoint(int regulationId, int regulationControlPointId, String regulationControlPoints, long count)
    {
        this.regulationId = regulationId;
        this.regulationControlPointId = regulationControlPointId;
        this.regulationControlPoints = regulationControlPoints;
        this.count = count;
    }
}
