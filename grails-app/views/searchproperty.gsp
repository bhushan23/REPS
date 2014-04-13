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
										${it.title}
									</td>
									<td>
										${it.locality}
									</td>
									<td>
										${it.area}
									</td>
									<td>
										${it.price}
									</td>
									<td>
										
									</td>

								</tr>
							</g:each>
              </tbody>
            </table>
	</body>
</html>