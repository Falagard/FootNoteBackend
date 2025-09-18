"# FootNoteBackend" 


haxelib install hxnodejs
haxelib install mime

git clone https://github.com/haxetink/tink_http

haxelib dev tink_http tink_http

git clone https://github.com/haxetink/tink_http_middleware

haxelib dev tink_http_middleware tink_http_middleware

git clone https://github.com/haxetink/tink_core

haxelib dev tink_core tink_core

git clone https://github.com/benmerckx/asys

haxelib dev asys asys

haxe -js server.js -lib hxnodejs -lib tink_web -lib tink_http_middleware -main Server

node server.js