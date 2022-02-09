public class Util {

    public static final Collections collections = new Collections();
    public static final Legalperson legalperson = new Legalperson();

    public class Collections{

    }

    public class Legalperson{

        public Boolean isCnpj(String cnpj){
            return true;
        }

        public Boolean isValid(String cnpj){
            return true;
        }

        public String format(String cnpj){
            return null;
        }

        public String toNumber(String cnpj){
            return null;
        }

    }

    public class Person{

        public Boolean isCpf(String cnpj){
            return true;
        }

        public Boolean isValid(String cnpj){
            return true;
        }

        public String format(String cnpj){
            return null;
        }

        public String toNumber(String cnpj){
            return null;
        }
        
    }

}
