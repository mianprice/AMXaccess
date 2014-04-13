import SocketServer
import os

class MyTCPHandler(SocketServer.BaseRequestHandler):

    def handle(self):
        self.data = self.request.recv(1024).strip()
        print "{} wrote:".format(self.client_address)
        print self.data
        self.request.sendall(os.system('C:\\wamp\\www\\structuredAMX\sikuli\\runIDE.cmd -r C:\\wamp\\www\\structuredAMX\\sikuli\\amx.sikuli'))


if __name__ == "__main__":
    HOST, PORT = "localhost", 8080
    server = SocketServer.TCPServer((HOST, PORT), MyTCPHandler)
    server.serve_forever()
