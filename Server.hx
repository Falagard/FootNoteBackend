import tink.http.containers.*;
import tink.http.Handler;
import tink.http.Response;
import tink.http.middleware.Static;
import tink.web.routing.*;

class Server {
    static function main() {
        var container = new NodeContainer(8080);
        var router = new Router<Api>(new Api());
        var handler:Handler = req -> router.route(Context.ofRequest(req)).recover(OutgoingResponse.reportError);
        container.run(handler.applyMiddleware(new Static('public_html', '/static')));
    }
}

class Api {
    public function new() {}

    @:sub public var api:Root = new Root();
}

class Root {
    public function new() {}

    @:get('/')
    @:get('/$name')
    public function hello(name = 'World')
        return 'Hello, $name!';
}