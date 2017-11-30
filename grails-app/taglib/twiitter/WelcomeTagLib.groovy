package twiitter

class WelcomeTagLib {
    def welcomeUser ={
        attrs->
            def username =  attrs.username
            def photo = grailsApplication.ge
            out << "<img src="+ photo  +  " width=100 height=100>"
    }

}
