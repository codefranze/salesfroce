public class CaseDAO {

    public CaseDAO() {}

    public static final CaseDAO instance = new CaseDAO();

    public static CaseDAO getInstance(){
        return instance;
    }
    
}
