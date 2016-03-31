import greeting_pb2 as helloworld_pb2
from grpc.beta import implementations
from gevent import monkey

# monkey.patch_all()

channel = implementations.insecure_channel('localhost', 50051)
print("Creating Greeter client...")
stub = helloworld_pb2.beta_create_Greeter_stub(channel)
print("Greeter client created!")
del stub

