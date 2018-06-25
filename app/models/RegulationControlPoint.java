package models;

import javax.persistence.Id;

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
}
