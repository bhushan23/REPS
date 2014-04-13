<html>
	<head>
		<title>
			Scan My Appointments
		</title>
		<g:javascript library="jquery" />
		<r:layoutResources />
	</head>
	<body>
		 <table class="table table-striped">
            
           
              <thead>
                 
                 <tr>
              
                  <th>Title</th>
                  <th>Locality</th>
                 
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
										${it.adarea}
									</td>
									<td>
										${it.adprice}
									</td>
								


								</tr>
							</g:each>
              </tbody>
            </table>
	</body>
</html>