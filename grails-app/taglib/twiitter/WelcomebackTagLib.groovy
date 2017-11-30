package twiitter

class WelcomebackTagLib {
    static namespace = "a"
    def back = {
        attrs,body->
            String username =attrs.username

            if(username =="sanjelarun"){
                out << body()
            }
    }

}
