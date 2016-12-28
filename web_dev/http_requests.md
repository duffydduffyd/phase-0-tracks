9.1 Denise Duffy

Release 0

Network Response Status Codes are all on the following page: 
https://developer.mozilla.org/en-US/docs/Web/HTTP/Status

Question 2, What are some common HTTP status codes?
Common Codes: 200, 307, 304


Question 3, What is the difference between a GET request and a POST request? When might each be used?

From what I can tell, A GET method asks for the data of the resource. A HEAD request just looks for the header of of the page. This saves on bandwidth. 

Methods: 
https://developer.mozilla.org/en-US/docs/Web/HTTP/Status
https://www.w3.org/Protocols/rfc2616/rfc2616-sec9.html

"The HTTP GET method requests a representation of the specified resource. Requests using GET should only retrieve data.

The HTTP HEAD method requests the headers that are returned if the specified resource would be requested with an HTTP GET method. Such a request can be done before deciding to download a large resource to save bandwidth, for example.

A response to a HEAD method should not have a body. If so, it must be ignored. Even so, entity headers describing the content of the body, like Content-Length may be included in the response. They don't relate to the body of the HEAD response, which should be empty, but to the body of similar request using the GET method would have returned as a response.

If the result of a HEAD request shows that a cached resource after a GET request is now outdated, the cache is invalidated, even if no GET request has been made."


Question 4 What is a cookie?
https://en.wikipedia.org/wiki/HTTP_cookie

Is a small piece of data sent from a website and stored on the user's computer by the user's web browser while the user is browsing. Cookies were designed to be a reliable mechanism for websites to remember stateful information (such as items added in the shopping cart in an online store) or to record the user's browsing activity (including clicking particular buttons, logging in, or recording which pages were visited in the past). They can also be used to remember arbitrary pieces of information that the user previously entered into form fields such as names, addresses, passwords, and credit card numbers.

Network Codes that come up on my website:
www.foodfeedback.com

This is the first code that comes up. 
304 - Not Modified
This is used for caching purposes. It is telling to client that response has not been modified. So, client can continue to use same cached version of response.

200 OK - The request has succeeded. The meaning of a success varies depending on the HTTP method:
GET: The resource has been fetched and is transmitted in the message body.
HEAD: The entity headers are in the message body.
POST: The resource describing the result of the action is transmitted in the message body.
TRACE: The message body contains the request message as received by the server

307 Temporary Redirect - probably Google Analytics
Server sent this response to directing client to get requested resource to another URI with same method that used prior request. This has the same semantic than the 302 Found HTTP response code, with the exception that the user agent must not change the HTTP method used: if a POST was used in the first request, a POST must be used in the second request.

www.backcourtdribble.com

307 Temporary Redirect - probably Google Analytics
Server sent this response to directing client to get requested resource to another URI with same method that used prior request. This has the same semantic than the 302 Found HTTP response code, with the exception that the user agent must not change the HTTP method used: if a POST was used in the first request, a POST must be used in the second request.


Release 1



