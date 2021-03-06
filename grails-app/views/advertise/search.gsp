
<%@ page import="reps.Advertise" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'advertise.label', default: 'Advertise')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-advertise" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-advertise" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="adtitle" title="${message(code: 'advertise.adtitle.label', default: 'Adtitle')}" />
					
						<g:sortableColumn property="addesc" title="${message(code: 'advertise.addesc.label', default: 'Addesc')}" />
					
						<g:sortableColumn property="adprice" title="${message(code: 'advertise.adprice.label', default: 'Adprice')}" />
					
						<g:sortableColumn property="adtype" title="${message(code: 'advertise.adtype.label', default: 'Adtype')}" />
					
						<g:sortableColumn property="adarea" title="${message(code: 'advertise.adarea.label', default: 'Adarea')}" />
					
						<g:sortableColumn property="adstatus" title="${message(code: 'advertise.adstatus.label', default: 'Adstatus')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${advertiseInstanceList}" status="i" var="advertiseInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${advertiseInstance.id}">${fieldValue(bean: advertiseInstance, field: "adtitle")}</g:link></td>
					
						<td>${fieldValue(bean: advertiseInstance, field: "addesc")}</td>
					
						<td>${fieldValue(bean: advertiseInstance, field: "adprice")}</td>
					
						<td>${fieldValue(bean: advertiseInstance, field: "adtype")}</td>
					
						<td>${fieldValue(bean: advertiseInstance, field: "adarea")}</td>
					
						<td>${fieldValue(bean: advertiseInstance, field: "adstatus")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			
			<div class="pagination">
				<g:paginate total="${advertiseInstanceCount ?: 0}" />
			</div>
					
 <div class="table-responsive">
         
         <table class="table table-striped">
                  <tr id="searchtext">
               Title   <g:remoteField name="stitle" controller="advertise" action="stitlefunc" update="searchresult"/>
                 low price <g:remoteField name="slprice" controller="advertise" action="slpricefunc" update="searchresult"/>
                 high price <g:remoteField name="shprice" controller="advertise" action="shpricefunc" update="searchresult" />
                locality  <g:remoteField name="slocality" controller="advertise" action="slocalityfunc" update="searchresult"/>
                type  <g:remoteField name="stype" controller="advertise"  action="stypefunc" update="searchresult"/>
                  low area<g:remoteField name="slarea" controller="advertise"  action="slareafunc" update="searchresult"/>
                   high area <g:remoteField name="sharea" controller="advertise"  action="shareafunc" update="searchresult"/>
               </tr>
               </table>
              <div id="searchresult">
           
            <table class="table table-striped">
            
           
              <thead>
                 
                <tr>
              
                  <th>Title</th>
                  <th>Locality</th>
                    <th>City</th> 
                  <th>Area</th> 
                  <th>Price</th>
                  <th>Read more</th>
                  
                </tr>
              </thead>
              <tbody>
               <g:each in="${result}">
									<tr>
								
											<td>
										${it.adtitle}
									</td>
									<td>
										${it.adlocality}
									</td>
										<td>
										${it.adcity}
									</td>
									<td>
										${it.adarea}
									</td>
									<td>
										${it.adprice}
									</td>
								


								</tr>
							</g:each>
              </tbody>
            </table>
            </div>
          </div>
			</div>
		</div>
		</div>
	</body>
</html>
