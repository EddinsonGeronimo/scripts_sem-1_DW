#! /bin/bash

exec 3<>/dev/tcp/en.wikipedia.org/80
echo -e "GET / HTTP/1.1\r\nhost: en.wikipedia.org\r\nConnection: close\r\n\r\n" >&3
cat <&3
