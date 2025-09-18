"# FootNoteBackend" 

haxelib install tink_web 
haxelib install hxnodejs

haxe -js server.js -lib hxnodejs -lib tink_web -main Server

node server.js