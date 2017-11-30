package twiitter

import org.apache.catalina.Session

class UserController {
    def userService
    def index() {
        def c = Post.list();
        render view:"/home", model :[user: User.get(session.userId),posts:c]
    }


    def login(){
        //User u=User.findByEmailLikeAndPasswordLike(params.email,params.password)
        def users = User.createCriteria().list {
            and {
                like('email',params.email)
                like('password',params.password)
            }
        }
        User u = users[0]
        if (u){
            session.userId=u.id
            render view: "/home",model: [message1:"Login Successful!!",user: u]
        }
        else{
            render view: "/index",model: [message1:"Login Unsuccessful!!"]
        }
    }



    def register(){
        User s= new User(params)
        boolean saved = userService.register(s);

        if(saved)
        {
            render view: "/index",model: [message2:"Registration Successful!!"]
        }
        else {
            render view:"/index",model:[message2: "Registration not successful!!Try again" ]
        }
    }
    def testAjax(){
        render "Ajax Test Successful"
    }
    def remoteLinkTest(){
        render "This is ok"
    }
    def listAllPost(){
        User u = User.get(session.userId)
        Post p = new Post(params)

        u.addToPosts(p)
        println p.id
        println u.errors
        render(template: "/postentries",
            collection: u.getPosts().last(),
            var:'posts')
    }
    def search(){
        def query = "%"+params.query+"%"
        println query
        def c = User.createCriteria()
        def results = c.list{
            like('email',query)
        }
        render view:"/search",model:[results:results]
    }
    def logout(){
        log.info "User agent: " + request.getHeader("User-Agent")
        session.invalidate()
        render view: "/index",model: [message1:"You have logged out"]
    }
}
