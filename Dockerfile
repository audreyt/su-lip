from    base:latest
run     echo "deb http://ppa.launchpad.net/chris-lea/node.js/ubuntu precise main" >> /etc/apt/sources.list
run     apt-get update
run     apt-get install --force-yes -y nodejs make wget
run     wget http://doc.opalang.org/dl/ubuntu/opa-1.1.1.x64.deb
run     dpkg -i opa-1.1.1.x64.deb
run     rm opa-1.1.1.x64.deb
add     .  /
run     mkdir _build
run     make exe
expose  :8080
env     PORT 8080
cmd     ["sh", "-c", "/IME.exe"]
