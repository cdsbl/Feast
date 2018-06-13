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

}
