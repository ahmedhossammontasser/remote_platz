

## Email Validation API integration using  3rd party api (https://mailboxlayer.com) 
### Tech Stack: Ruby on Rails 5.1 


**Example 1 :  for validate email: cv@internsvalley.com**
https://remote-api-integrate.herokuapp.com/?utf8=%E2%9C%93&email=cv%40internsvalley.com&commit=check 
**Expected output**
> Result for EMAIL = cv@internsvalley.com 
> SMTP Check = true


**Example 2 :  for invalidate email: cv@inte.commmmm**
https://remote-api-integrate.herokuapp.com/?utf8=%E2%9C%93&email=cv%40inte.commmmm&commit=check
**Expected output**
> Result for EMAIL = cv@inte.commmmm 
> SMTP Check = false


**Example 3 :  for empty input**
https://remote-api-integrate.herokuapp.com/?utf8=%E2%9C%93&email=&commit=check
**Expected output**
> Result for EMAIL = 
> Error code = 210 
> Message = Please specify an email address. [Example: support@apilayer.com]



