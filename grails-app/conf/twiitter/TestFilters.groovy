package twiitter

class TestFilters {

    def filters = {
        all(controller:'user', action:'index') {
            before = {
                println "here"
                if(!session.userId){
                    redirect(uri: '/')
                }

            }
            after = { Map model ->

            }
            afterView = { Exception e ->

            }
        }
    }
}
