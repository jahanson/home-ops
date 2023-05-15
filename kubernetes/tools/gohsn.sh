#!/bin/bash

kubectl ingress-nginx logs -f -n network | grep -o '{.*}' | goaccess --log-format='%^: "%dT%t-%^", %^, %^: "~h{, }", %^, %^, %^:%b, %^: %L, %^: %s, %^: "%v", %^: "%H", %^:%U, %^, %^, %^,%^: "%m", %^: "%R", %^: "%u"' --date-format=%Y-%m-%d --time-format=%T -
