# liyad-lisp-pkg-example

NPM package example for [Liyad](https://www.npmjs.com/package/liyad) Lisp interpreter.

## Install

```bash
$ npm install -g liyad-cli

$ mkdir myapp
$ cd myapp
$ npm install liyad-lisp-pkg-example
```

## Code

app.lisp
```lisp
($let ex ($require "liyad-lisp-pkg-example"))

;; Benchmarks
($console-log (::ex:tarai 12 6 0))
($console-log (::ex:fib 10))
($console-log (::ex:fac 10))

;; Run the web server on port 3000.
($let url ($node-require "url"))

(::ex:#get "/" (-> (req res)
    ($let u (::url:parse ::req:url))
    (::res@writeHead 200 (# (Content-Type "text/html")))
    (::res@end ($concat "hit / ," ::req:method "," ::u:path)) ) )

(::ex:serve 3000) ($last "start server")
```

## Run

```bash
liyad app.lisp
```
