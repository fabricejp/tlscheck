#!/bin/bash
echo
echo '$ openssl s_client -showcerts -servername '$1 '-connect '$1':443 2> /dev/null | openssl x509 -text | grep -E "(CN=)|(Subject Alternative Name)" -A1'
echo
echo |openssl s_client -showcerts -servername $1 -connect $1:443 2> /dev/null | openssl x509 -text | grep -E "(CN=)|(Subject Alternative Name)" -A1
echo
echo
echo '$ openssl s_client -connect '$1':443 -servername '$1' 2>/dev/null | openssl x509 -noout -dates'
echo
echo | openssl s_client -connect $1:443 -servername $1 2>/dev/null | openssl x509 -noout -dates
echo
