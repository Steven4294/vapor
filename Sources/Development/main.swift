import Vapor
import NIO
import AsyncHTTPClient

var env = try Environment.detect()
try LoggingSystem.bootstrap(from: &env)

let app = Application(env)
defer { app.shutdown() }

try configure(app)

try app.run()
