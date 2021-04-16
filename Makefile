loadtest-actix:
	wrk -c 10000 -d 60 -t 4 http://localhost:4000

loadtest-fiber:
	wrk -c 10000 -d 60 -t 4 http://localhost:3000