package models;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class RegulationControlPoint
{
    @Id

    private int regulationControlPointId;//do not touch

    private String regulationControlPoints;//do not touch


    public int getRegulationControlPointId()
    {
        return regulationControlPointId;
    }

    public String getRegulationControlPoints()
    {
        return regulationControlPoints;
    }

}
