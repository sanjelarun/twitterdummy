package twiitter

class Post {

    int id
    String content
    Date dateCreated

    static belongsTo = [user:User]
    static constraints = {
        content (blank:false )
    }
}
