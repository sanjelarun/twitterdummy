package twiitter

class UserService {

    def serviceMethod() {


    }
    boolean register( User u ){

        if(u.save()){
            return true;
        }
        return false;

    }
}
