<% 
						if(session.getAttribute("logout_msg2") != null)
				{
					String successMessage = (String) session.getAttribute("logout_msg2");
					//session.removeAttribute("tnerror");
					
					%> <p><%= successMessage %></p>
					<% 
					
					
				} 

		%>