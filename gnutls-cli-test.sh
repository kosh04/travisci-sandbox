#!/bin/bash
set -eu

https_get() {
    host=${1}; path=${2}
    printf "GET %s HTTP/1.0\r\n\r\n" "${path}" | gnutls-cli "${host}"
}

https_get "httpbin.org" "/get"

# https://travis-ci.org/kosh04/emacs-wandbox/jobs/534401766
https_get "wandbox.fetus.jp" "/404"
https_get "wandbox.fetus.jp" "/api/list.json"
