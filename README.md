gRPC + gevent monkey patch
==========================

Prerequisite:
------------

- docker


How to run sample?
------------------

###### To run grpc sample code with gevent monkey patching.

`$ ./run_greeter_with_patch.sh`

This will build and run docker container that executes [greeter_client_with_patch.py](https://github.com/vinays/grpc-gevent-mokey/blob/master/greeter_client_with_patch.py).
As of current gRPC implementation (grpcio==0.13.0), it will HANG. Press `<ctrl+c>` to exit docker term and then `docker rm -f greeter_with_patch` to kill and remove the container.



###### To run grpc sample code __without__ gevent monkey patching -- to show expected behavior.

`$ ./run_greeter_wo_patch.sh`

This will build and run docker container that executes [greeter_client_wo_patch.py](https://github.com/vinays/grpc-gevent-mokey/blob/master/greeter_client_wo_patch.py)
It will execute successfully and print
```
<docker build output>
...
Creating Greeter client...
Greeter client created!
```
