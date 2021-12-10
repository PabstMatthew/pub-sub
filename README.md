# Pub-Sub
A distributed pub/sub specification/implementation, written as a consistent hash ring in Ivy.

## Build
I'm assuming you already have installed Ivy. If you haven't, [here's a guide](http://microsoft.github.io/ivy/install.html).

To compile the program in an interactive mode, simply run `make`.

To compile the program for testing, run `make test`.

## Run
There are a few command line arguments you need to set to configure the program:
- `key_t.max`: The number of channels to support. This can be any number, 
  but using small numbers (1-3) makes testing much faster and easier, since operations on each key are independent.
- `pub_id.max`: The maximum number of publications that can be published to a server. Make this a large number, 
  because if the maximum is reached for a channel, it will stop working as specified.
- `server_id.max`: The number of servers to support. This should be any number greater than or equal to 1.
- `client_id.max`: The number of clients to support. This can be any number.
- `manager_id.max`: The numebr of managers to support. This should be any number greater than or equal to 1.

To run the program interactively (after compiling it for interactive mode), run something like this:
```bash
ivy_launch key_t.max=1 pub_id.max=100 server_id.max=5 client_id.max=3 manager_id.max=1 pub_sub
```

To randomly test the program (after compiling for testing), run something like this:
```bash
ivy_launch key_t.max=1 pub_id.max=100 server_id.max=5 client_id.max=3 manager_id.max=1 iters=500 runs=50 pub_sub
```

The variable `runs` controls the number of tests to run.
The variable `iters` controls the number of actions to perform before test completion. The implementation is not 
particularly efficient so values above 1000 may cause tests to take a very long time to complete.


