
# Actix vs Fiber

## actix-api

- Run

```
$ cd actix-api
$ cargo run
```

- Loadtest

```
$ wrk -c 10000 -d 60 -t 4 http://localhost:4000

Running 1m test @ http://localhost:4000
  4 threads and 10000 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    38.95ms    9.53ms 171.24ms   79.94%
    Req/Sec    15.57k     4.36k   24.69k    83.57%
  3510797 requests in 1.00m, 314.73MB read
  Socket errors: connect 7450, read 47750, write 0, timeout 2550
Requests/sec:  58475.77
Transfer/sec:      5.24MB
```

## fiber-api

- Run

```
$ cd fiber-api
$ go run main.go
```

- Loadtest

```
$ wrk -c 10000 -d 60 -t 4 http://localhost:3000

Running 1m test @ http://localhost:3000
  4 threads and 10000 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency   264.51ms  132.56ms   1.99s    78.60%
    Req/Sec     2.33k     1.06k    4.56k    59.65%
  539230 requests in 1.00m, 2.65GB read
  Socket errors: connect 7450, read 45176, write 0, timeout 0
Requests/sec:   8975.44
Transfer/sec:     45.18MB
```