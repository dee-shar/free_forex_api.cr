# free_forex_api.cr
Web-API for [freeforexapi.com](https://freeforexapi.com/) a simple REST API providing real-time foreign exchange rates for the major currency pairs. No more, no less.

## Example
```cr
require "./free_forex_api"

free_forex_api = FreeForexApi.new
currency_pairs = free_forex_api.get_currency_pairs()
puts currency_pairs
```
