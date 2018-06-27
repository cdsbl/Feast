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

    public RegulationControlTotal(int regulationControlPointId, String regulationControlPoints, long count)
    {

        this.regulationControlPointId = regulationControlPointId;
        this.regulationControlPoints = regulationControlPoints;
        this.count = count;
    }
}
