export PEACH=$GOPATH/src/peach/peach
$PEACH new --target=/$APP.peach
git clone $GIT /$APP.peach/custom
pushed /$APP.peach 
$PEACH web
