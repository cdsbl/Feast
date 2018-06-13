package models;


import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class RegulationOutCount
{
    @Id
    private int regulationId;
    private String regulationNumber;
    private String regulationSpecific;
    private long count;

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

    public long getCount()
    {
        return count;
    }

    public RegulationOutCount (int regulationId, String regulationNumber, String regulationSpecific, long count)
    {
        this.regulationId = regulationId;
        this.regulationNumber = regulationNumber;
        this.regulationSpecific = regulationSpecific;
        this.count = count;
    }
}
