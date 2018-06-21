package models;
import play.db.jpa.Transactional;
import play.mvc.Result;
import javax.persistence.Entity;
import javax.persistence.Id;
import static play.mvc.Results.ok;


@Entity
public class RegulationOutCount
{
    @Id
    private int regulationId;
    private String regulationNumber;
    private String regulationSpecific;
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

    public int getRegulationOutCount()
    {
        return regulationOutCount;
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

    public void setRegulationOutCount(int regulationOutCount)
    {
        this.regulationOutCount = regulationOutCount;
    }
}
