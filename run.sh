export PEACH=$GOPATH/src/peach/peach
$PEACH new --target=/$APP.peach --yes
rm /$APP.peach/custom -fr
git clone $GIT /$APP.peach/custom
pushd /$APP.peach 
$PEACH web
