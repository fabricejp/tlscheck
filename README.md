# tlscheck
quickly check the certificate in use for a website

Example

(assuming tlscheck is located in /usr/local/bin)

$ tlscheck mozilla.org

$ openssl s_client -showcerts -servername mozilla.org -connect mozilla.org:443 2> /dev/null | openssl x509 -text | grep -E "(CN=)|(Subject Alternative Name)" -A1

        Issuer: C=US, O=Let's Encrypt, CN=R3
        Validity
--
        Subject: CN=mozilla.org
        Subject Public Key Info:
--
            X509v3 Subject Alternative Name:
                DNS:mozilla.org


$ openssl s_client -connect mozilla.org:443 -servername mozilla.org 2>/dev/null | openssl x509 -noout -dates

notBefore=Feb 20 06:32:29 2023 GMT
notAfter=May 21 06:32:28 2023 GMT
