public class Util {

    public static final Collection collection = new Collection();
    public static final Salesforce salesforce = new Salesforce();
    public static final Cnpj cnpj = new Cnpj();
    public static final Cpf cpf = new Cpf();
    

    public class Collection{

    }

    public class Salesforce{

    }

    public class UtilException extends Exception{}

    private interface iDoc{

        Boolean isValid(String doc);
        String format(String doc);
        void format(List<String> lstDoc);
        void format(Map<String, String> mapDoc);
        String clear(String doc);
        void clear(List<String> lstDoc);
        void clear(Map<String,String> mapDoc);

    }

    private virtual class Doc implements iDoc{

        public virtual Boolean isValid(String doc){
            return null;
        }

        public virtual String format(String doc){
            return null;
        }

        public virtual void format(List<String> lstDoc){}
        public virtual void format(Map<String,String> mapDoc){}

        public String clear(String doc){
            return doc.replaceAll('[^\\d]','');
        }

        public void clear(List<String> lstDoc){
            for (Integer i = 0; i < lstDoc.size(); i++) {
                lstDoc.set(i, clear(lstDoc.get(i)));
            }
        }

        public void clear(Map<String,String> mapDoc){
            for(String key : mapDoc.keySet()){ 
                mapDoc.put(key, clear(mapDoc.get(key)));
            }
        }

    }

    public class Cnpj extends Doc{

        public override Boolean isValid(String doc){
            return false;
        }

        public override String format(String doc){
            return doc;
        }

        public override void format(List<String> lstDoc){}
        public override void format(Map<String, String> mapDoc){}
        
    }

    public class Cpf extends Doc{

        public override Boolean isValid(String doc){
            return false;
        }

        public override String format(String doc){
            return doc;
        }

        public override void format(List<String> lstDoc){}
        public override void format(Map<String, String> mapDoc){}
       
    }
    
}