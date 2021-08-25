<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
	@import url('https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600;700&family=Ubuntu:wght@400;500;700&display=swap');
:root{
    --main: #ffb606;  
    --bg:#0b1218;
    --bg-body:#131d28;
}


*{
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    text-decoration: none;
}

.max-width {
    max-width: 50%;
    padding: 0 80px;
    margin: auto;
}


/* contact start stayling */

.contact{
	font-family:'Ubunto',sans-serif;
    background:#f958f47a;
    color: #222;
    padding: 30px 0;
    height: 626px;
    font-weight: 800
}

.contact .right{
	background: #f9f9f9;
	padding:30px;
	border-radius: 6px;
	 box-shadow: rgba(50, 50, 93, 0.25) 0px 50px 100px -20px, rgba(0, 0, 0, 0.3) 0px 30px 60px -30px;
}

.contact .right .text{
	font-size: 25px;
	margin-bottom: 20px;
}



.contact .right form .fields{
    display: flex;
}
.contact .right form .field,
.contact .right form .fields .field{
    height: 45px;
    width: 100%;
    margin-bottom: 15px;
   
}
.contact .right form .textarea{
    height: 80px;
    width: 100%;
   
}



.contact .right form .field input,
.contact .right form .textarea textarea{
    height: 100%;
    width: 100%;
    border: 1px solid lightgrey;
    border-radius: 6px;
    outline: none;
    padding: 0 15px;
    font-size: 17px;
    font-family: 'Poppins', sans-serif;
    transition: all 0.3s ease;
}
.contact .right form .field input:focus,
.contact .right form .textarea textarea:focus{
    border-color: #b3b3b3;
}
.contact .right form .textarea textarea{
    padding-top: 10px;
    resize: none;
}
.contact .right form .button{
    height: 47px;
    width: 170px;
    display: flex;
    align-items: center;
    flex-direction: row;
    justify-content: space-between;
    width: 100%;
}
.contact .right form .button button{
    width: 100%;
    height: 100%;
    border: 2px solid var(--main);
    background: var(--main);
    color: #fff;
    outline: none;
    font-size: 20px;
    font-weight: 500;
    border-radius: 6px;
    cursor: pointer;
    transition: all 0.3s ease;
    margin: 0 5px;
    
}
.contact .right form .button button:hover{
    color: var(--main);
    background: none;
}

.contact .right form .button a{
    width: 100%;
    height: 100%;
    padding:10px 20px;
    border: 2px solid var(--main);
    color: var(--main);
    background: none;
    outline: none;
    font-size: 20px;
    font-weight: 500;
    border-radius: 6px;
    cursor: pointer;
    transition: all 0.3s ease;
     margin: 0 5px;
     text-align: center;
}

.contact .right form .button a:hover{
    color: #222;
    border: 2px solid #222;
}
</style>
</head>
<body>
   
	<section class="contact" id="contact">
        <div class="max-width">
                
                
					<div class="column right">
                    <div class="text">apload file (pdf)</div>
                   <form:form method="POST" action="/addUser" modelAttribute="user" enctype="multipart/form-data">
                        <div class="fields">
                            
                            <div class="field email">
                               
								<form:input  type="text" path="Nom" placeholder="name"  required="required" autocomplete="off" />
                            </div>
                        </div>
                        <div class="field">
                           
							<form:input  type="text" path="E_mail" placeholder="email"  required="required" autocomplete="off" />
                        </div>
                        
                        <div class="field">
                        
						<form:input  type="password" path="Password" placeholder="password"  required="required" autocomplete="off" />
						</div>
						
						<div class="field">
                       		<form:input path="profileImage" type="file"  required="required" autocomplete="off" />
						</div>
                        
                        <div class="button">
                        	<a href="/listet">Anuller</a>
                            <button id="sendEmailBtn" type="submit" value="Send Email">apload cv</button>
                        </div>
                        
                        
                   	</form:form>
                	</div>
	    		
                
            </div>
        
    </section>
	
	<a href="#" id="show">show</a>
</body>
</html>