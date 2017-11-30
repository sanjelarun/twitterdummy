package twiitter

class Profile {
    int id
    String name
    String address
    byte[] photo
    int phoneNo
String type
    static belongsTo = User

    static constraints = {
        photo(nullable:true)
    }
}
