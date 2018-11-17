
($let url ($node-require "url"))
($let lib ($require "./index"))


(::lib:#get @"/" (-> (req res)
    ($let u (::url:parse ::req:url))
    (::res@writeHead 200 (# (Content-Type "text/html")))
    (::res@end ($concat "hit / ," ::req:method "," ::u:path)) ))


(::lib:serve 3000) ($last "start server")
