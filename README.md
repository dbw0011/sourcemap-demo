# sourcemap demo

How to use:

1. npm install
2. in build.sh and index.html, edit the access tokens, and the endpoints to point to your dev/sandbox/etc. instance

To upload a source map:

```
./build.sh 123
```

(where `123` is the code version)

To use the simple app:

1. run a web server in a shell: `python -m SimpleHTTPServer 8080`
2. navigate to `http://localhost:8080/`
