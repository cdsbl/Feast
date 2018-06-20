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

    public RegulationOutCount(int regulationId, String regulationNumber, String regulationSpecific, int regulationOutCount)
    {
        this.regulationId = regulationId;
        this.regulationNumber = regulationNumber;
        this.regulationSpecific = regulationSpecific;
        this.regulationOutCount = regulationOutCount;
    }

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


}
