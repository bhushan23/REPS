package reps

class LoginController {
static def UserLoggedin=null;
    def index() { }
    def login(){

    }
    def signup(){
    	UserLoggedin ="GuestUser"
		session.UserLoggedin= UserLoggedin
		session['usertype']='GuestUser';
		redirect(controller:'user',action:'create')
    }
    def user_login_function(){
    	def temp = User.findWhere(username:params['username'],password:params['password'])
		if(temp==null){
			flash.message="Invalid Username Password Pair"
			redirect(action:'login')
		}
		else{
			session.UserLoggedin= temp
			session['usertype']="USER"
			print session.UserLoggedin
			flash.message="Logged in as USER"
			redirect(controller:'user',action:'index')
		}

    }
	def logout(){
		session.UserLoggedin=null
		session['usertype']=null;
		redirect(uri: "/")
		}
   
}
