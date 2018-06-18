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
    private long count;

    public int getRegulationId()
    {
        return regulationId;
    }

    public String getRegulationNumber()
    {
        return regulationNumber;
    }

    public long getCount()
    {
        return count;
    }

    public String getRegulationSpecific()
    {
        return regulationSpecific;
    }

    public RegulationOutCount(int regulationId, String regulationNumber, String regulationSpecific, long count)
    {
        this.regulationId = regulationId;
        this.regulationNumber = regulationNumber;
        this.regulationSpecific = regulationSpecific;
        this.count = count;
    }

    /*public Result getRegulationOutCount()
    {
        return ok(views.html.regulationoutcount.render());
    }*/
}
