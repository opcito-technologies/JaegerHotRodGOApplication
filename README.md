
This setup the jaeger(on docker container) with hotrod go application 

### Steps -

0. sudo su
1. chmod +x runhotrod.sh
2. ./runhotrod.sh

3. browse the jaeger on http://hostip:16686/search

4. browse the hotrod app on http://hostip:8080
   1. In the top left corner there is a web client id: <id>. It is a random session ID assigned by Javascript UI; if we reload the page we get a different session ID.
   2.randomly click on listed "customer name".
   
5. check the jager -
	1. go to the Dependencies page, and click on the DAG tab:
	   The single HotROD binary is actually running four microservices with two storage backends
	2. go to the Search page in the Jaeger UI

	3. Select the Find Traces caption

	4. the Services dropdown contains the names of the services- select "frontend"

	5. hit the "Find Traces"

	6. This will show the some traces with some meta-data about it, such as the names of different services that participated in the trace, and the number of spans each service emitted to Jaeger.
