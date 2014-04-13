package reps

class User {
String firstname
String lastname
String username
String password
String locality

String address
int pincode
String city
String mobile
String email

int comaccount
String comname
String comadd
String comcontact
    static constraints = {
		firstname(nullable:false)
		lastname (nullable:true)
		
		city(nullable:false)
	
		pincode (nullable:false)
		username (nullable:false, unique:true)
		password (nullable:false)
		address (nullable:false, maxSize:250)
		mobile (nullable:false, maxSize:10, minSize:10, unique:true)
		email(email:true)
		comaccount (nullable:false)
		comname(nullable:true)
		comadd(nullable:true)
		comcontact(nullable:true)
    }
	String toString() {
		"${username}"
	}
}
