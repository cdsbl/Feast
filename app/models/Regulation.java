package models;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Regulation
{
    @Id
    private int regulationId;
    private String regulationNumber;
    private String regulationSpecific;
    private int regulationLevelId;
    private int regulationControlPointId;
    private int regulationOutCount;

    public int getRegulationId()
    {
        return regulationId;
    }

    public String getRegulationNumber()
    {
        return regulationNumber;
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

    public void setRegulationNumber(String regulationNumber)

    {
        this.regulationNumber = regulationNumber;
    }

    public void setRegulationSpecific(String regulationSpecific)

    {
        this.regulationSpecific = regulationSpecific;
    }

    public int getRegulationOutCount()
    {
        return regulationOutCount;
    }
}
