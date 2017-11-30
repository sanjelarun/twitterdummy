package twiitter

class User {
    int id
    String email
    String password

    static  hasMany = [posts:Post,followers:User,following:User]
    Profile profile

    static constraints = {
        email(blank: false, unique: true)
        password(blank: false,minSize:5)
        followers(nullable: true)
        following(nullable:true)
        profile(nullable: true)
        posts(nullable: true)
    }
}
