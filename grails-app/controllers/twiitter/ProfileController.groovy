package twiitter

class ProfileController {

    def index() {
        def c = Post.list();
        render view: "/home",model: [user:User.get(session.userId),posts:c]
    }
    def upload(){
        def user = User.get(session.userId)
        def f = request.getFile('photo')
        def profile = new Profile()
        user.profile = profile
        user.profile.properties['address', 'name']=params
        user.profile.photo = f.bytes
        user.profile.type = f.contentType

        if (user.save()) {
            render(view: '/home.gsp',model: [user: user])
            return
    }
        else{
        render user.errors
        }

    }
    def editprofile(){
        def u = User.get(session.userId)
        render view: '/profile',model: [user:u]
    }
    def display_picture(){
        def user = User.get(params.id)
        if (!user || !user.profile.photo || !user.profile.type) {
            response.sendError(404)
            return
        }
        response.contentType = user.profile.type
        response.contentLength = user.profile.photo.size()
        OutputStream out = response.outputStream
        out.write(user.profile.photo)
        out.close()
    }
    def viewprofile(){
        def p  = User.get(params.id)
        def s = User.get(session.userId)

        render view:"/profileview",model: [p:p,s:s]

    }



}
