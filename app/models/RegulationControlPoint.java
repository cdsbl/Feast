package models;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class RegulationControlPoint
{
    @Id

    private int regulationControlPointId;

    private String regulationControlPoints;


    public int getRegulationControlPointId()
    {
        return regulationControlPointId;
    }

    public String getRegulationControlPoints()
    {
        return regulationControlPoints;
    }

}
