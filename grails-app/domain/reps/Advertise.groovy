package reps

class Advertise {

	String adtitle
	String addesc
	String adprice
	String adlocality
	String adtype
	int sellerid
	String adarea
	String adstatus
    static constraints = {
		adtitle (nullable:false)
		addesc (nullable:false)
		adprice (nullable:false)
		adtype (nullable:false)
		adarea(nullable:false)
		adstatus  (nullable:false)
		sellerid (nullable:false)
		adlocality (nullable:false)
    }
	String toString() {
		"${adtitle}"
	}
}
