package reps


import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional


@Transactional(readOnly = true)
class AdvertiseController {

	static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

	def index(Integer max) {
		params.max = Math.min(max ?: 10, 100)
		respond Advertise.list(params), model:[advertiseInstanceCount: Advertise.count()]
	}
	static scaffold=Advertise
	def show(Advertise advertiseInstance) {
		respond advertiseInstance
	}
	def create() {
		respond new Advertise(params)
	}
	def search(){
	}

	@Transactional
	def save(Advertise advertiseInstance) {
		if (advertiseInstance == null) {
			notFound()
			return
		}

		if (advertiseInstance.hasErrors()) {
			respond advertiseInstance.errors, view:'create'
			return
		}

		advertiseInstance.save flush:true

		request.withFormat {
			form {
				flash.message = message(code: 'default.created.message', args: [
					message(code: 'advertiseInstance.label', default: 'Advertise'),
					advertiseInstance.id
				])
				redirect advertiseInstance
			}
			'*' { respond advertiseInstance, [status: CREATED] }
		}
	}

	def edit(Advertise advertiseInstance) {
		respond advertiseInstance
	}

	@Transactional
	def update(Advertise advertiseInstance) {
		if (advertiseInstance == null) {
			notFound()
			return
		}

		if (advertiseInstance.hasErrors()) {
			respond advertiseInstance.errors, view:'edit'
			return
		}

		advertiseInstance.save flush:true

		request.withFormat {
			form {
				flash.message = message(code: 'default.updated.message', args: [
					message(code: 'Advertise.label', default: 'Advertise'),
					advertiseInstance.id
				])
				redirect advertiseInstance
			}
			'*'{ respond advertiseInstance, [status: OK] }
		}
	}

	@Transactional
	def delete(Advertise advertiseInstance) {

		if (advertiseInstance == null) {
			notFound()
			return
		}

		advertiseInstance.delete flush:true

		request.withFormat {
			form {
				flash.message = message(code: 'default.deleted.message', args: [
					message(code: 'Advertise.label', default: 'Advertise'),
					advertiseInstance.id
				])
				redirect action:"index", method:"GET"
			}
			'*'{ render status: NO_CONTENT }
		}
	}

	protected void notFound() {
		request.withFormat {
			form {
				flash.message = message(code: 'default.not.found.message', args: [
					message(code: 'advertiseInstance.label', default: 'Advertise'),
					params.id
				])
				redirect action: "index", method: "GET"
			}
			'*'{ render status: NOT_FOUND }
		}
	}

	def stitle="^"
	def slprice="0"
	def shprice="10000000"
	def slocality="^"
	def stype="^"
	def slarea="0"
	def sharea="100000"
	def dataSource

	
	def stitlefunc(){

		def db= new groovy.sql.Sql(dataSource)
		stitle="^"+params.value
		print "tite"+ stitle
		def estate
		int lp=1
		int hp=10000000
		int lprice=Integer.parseInt(String.valueOf(slprice))
		int hprice=Integer.parseInt(String.valueOf(shprice))
		int larea=Integer.parseInt(String.valueOf(slarea))
		int harea=Integer.parseInt(String.valueOf(sharea))
		estate=db.rows("select * from advertise where adtitle REGEXP ${stitle} and adlocality REGEXP ${slocality}  and adtype REGEXP ${stype} and adprice between ${lprice} and  ${hprice} and adarea between ${larea} and ${harea}")
	
		print estate
		if(estate==null || estate.size()==0)
			render("No Results..")
		else
			render(view:"searchproperty",model:[result:estate])
	}
	def slpricefunc(){
		slprice=params.value
		if(slprice=="")
			slprice=0
		else{
			
		def estate
		int lprice=Integer.parseInt(String.valueOf(slprice))
		int hprice=Integer.parseInt(String.valueOf(shprice))
		int larea=Integer.parseInt(String.valueOf(slarea))
		int harea=Integer.parseInt(String.valueOf(sharea))
		estate=db.rows("select * from advertise where adtitle REGEXP ${stitle} and adlocality REGEXP ${slocality}  and adtype REGEXP ${stype} and adprice between ${lprice} and  ${hprice} and adarea between ${larea} and ${harea}")
	
			print estate
			render(view:"searchproperty",model:[result:estate])
		}
	}
	def shpricefunc(){
		shprice=params.value
		if(shprice=="")
			shprice="10000000"
		else{
			int lprice=Integer.parseInt(String.valueOf(slprice))
			int hprice=Integer.parseInt(String.valueOf(shprice))
			int larea=Integer.parseInt(String.valueOf(slarea))
			int harea=Integer.parseInt(String.valueOf(sharea))
			print "hi price"+params.value+" prices "+lprice+"  "+hprice
			def estate
			estate=db.rows("select * from advertise where adtitle REGEXP ${stitle} and adlocality REGEXP ${slocality}  and adtype REGEXP ${stype} and adprice between ${lprice} and  ${hprice} and adarea between ${larea} and ${harea}")
		print estate
			render(view:"searchproperty",model:[result:estate])
		}
	}
	def slocalityfunc(){
		slocality="^"+params.value
		print params.value
		int lprice=Integer.parseInt(String.valueOf(slprice))
			int hprice=Integer.parseInt(String.valueOf(shprice))
			int larea=Integer.parseInt(String.valueOf(slarea))
			int harea=Integer.parseInt(String.valueOf(sharea))
			print "hi price"+params.value+" prices "+lprice+"  "+hprice
			def estate
			estate=db.rows("select * from advertise where adtitle REGEXP ${stitle} and adlocality REGEXP ${slocality}  and adtype REGEXP ${stype} and adprice between ${lprice} and  ${hprice} and adarea between ${larea} and ${harea}")
		print estate
		render(view:"searchproperty",model:[result:estate])
	}
	def stypefunc(){
		stype="^"+params.value
		print params.value
		int lprice=Integer.parseInt(String.valueOf(slprice))
			int hprice=Integer.parseInt(String.valueOf(shprice))
			int larea=Integer.parseInt(String.valueOf(slarea))
			int harea=Integer.parseInt(String.valueOf(sharea))
			print "hi price"+params.value+" prices "+lprice+"  "+hprice
			def estate
			estate=db.rows("select * from advertise where adtitle REGEXP ${stitle} and adlocality REGEXP ${slocality}  and adtype REGEXP ${stype} and adprice between ${lprice} and  ${hprice} and adarea between ${larea} and ${harea}")
		print estate
		render(view:"searchproperty",model:[result:estate])
	}
	def slareafunc(){
		slarea=params.value
		if(slarea=="")
			slarea="0"
		else{
			print params.value
			def estate
			int lprice=Integer.parseInt(String.valueOf(slprice))
			int hprice=Integer.parseInt(String.valueOf(shprice))
			int larea=Integer.parseInt(String.valueOf(slarea))
			int harea=Integer.parseInt(String.valueOf(sharea))
		estate=db.rows("select * from advertise where adtitle REGEXP ${stitle} and adlocality REGEXP ${slocality}  and adtype REGEXP ${stype} and adprice between ${lprice} and  ${hprice} and adarea between ${larea} and ${harea}")
		print estate
			render(view:"searchproperty",model:[result:estate])
		}
	}
	def shareafunc(){
		sharea=params.value
		if(sharea=="")
			sharea="10000000"
		else{
			print params.value
			def estate
			int lprice=Integer.parseInt(String.valueOf(slprice))
			int hprice=Integer.parseInt(String.valueOf(shprice))
			int larea=Integer.parseInt(String.valueOf(slarea))
			int harea=Integer.parseInt(String.valueOf(sharea))
		estate=db.rows("select * from advertise where adtitle REGEXP ${stitle} and adlocality REGEXP ${slocality}  and adtype REGEXP ${stype} and adprice between ${lprice} and  ${hprice} and adarea between ${larea} and ${harea}")
	print estate
			render(view:"searchproperty",model:[result:estate])
		}
	}
}
