public class Util {

    public static final Collection collection = new Collection();
    public static final Cnpj cnpj = new Cnpj();
    public static final Cpf cpf = new Cpf();

    public class Collection{

    }

    public class Cnpj{

        public Boolean isValid(String cnpj){
            return null;
        }

        public void format(List<String> cnpj){}

        public void format(String cnpj){}

        public void clear(List<String> lstCnpj){}

        public void clear(String cnpj){}

    }

    public class Cpf{

        public Boolean isValid(String cpf){
            return null;
        }

        public void format(List<String> lstCpf){}

        public void format(String cpf){}

        public void clear(List<String> lstCpf){}

        public void clear(String cnpj){}

    }
    
}
