# Show URL of cache misses
varnishlog -q "RespHeader ~ 'X-Cache: MISS'" -i ReqURL

# Show URL of cache misses along with Request Headers
varnishlog -q "RespHeader ~ 'X-Cache: MISS'" -i ReqURL -i ReqHeader

# Show log for particular URL pattern
varnishlog -q 'ReqURL ~ "^/foo"'

# Only show requests from particular clients
varnishlog -q "ReqHeader ~ 'X-Forwarded-For: 10.10.10.10'"
