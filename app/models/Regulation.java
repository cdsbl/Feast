package models;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class Regulation
{
    @Id
    private int regulationId;
    private String regulationSpecific;
    private int regulationLevelId;
    private int regulationControlPointId;



    public int getRegulationId()
    {
        return regulationId;
    }

    public String getRegulationSpecific()
    {
        return regulationSpecific;
    }

    public int getRegulationLevelId()
    {
        return regulationLevelId;
    }

    public int getRegulationControlPointId()

    {
        return regulationControlPointId;
    }

}
