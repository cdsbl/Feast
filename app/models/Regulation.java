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

    public void setRegulationId(int regulationId)
    {
        this.regulationId = regulationId;
    }

    public void setRegulationSpecific(String regulationSpecific)
    {
        this.regulationSpecific = regulationSpecific;
    }

    public void setRegulationLevelId(int regulationLevelId)
    {
        this.regulationLevelId = regulationLevelId;
    }

    public void setRegulationControlPointId(int regulationControlPointId)
    {
        this.regulationControlPointId = regulationControlPointId;
    }


}
