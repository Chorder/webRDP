# # go build -ldflags "-r=/home/zsy/Workspace/code/ubuntu14/FreeRDP/libfreerdp" -v main.go
# export FREERDP_PATH=/home/zsy/Workspace/code/FreeRDP
# # export FREERDP_PATH=/workspace/FreeRDP
# export CGO_CFLAGS="-I$FREERDP_PATH/include -I$FREERDP_PATH/winpr/include"
# export CGO_LDFLAGS="-L$FREERDP_PATH/libfreerdp -lfreerdp -L$FREERDP_PATH/client/common -lfreerdp-client -L$FREERDP_PATH/winpr/libwinpr -lwinpr"
# go build -ldflags "-r=$FREERDP_PATH/libfreerdp:$FREERDP_PATH/client/common:$FREERDP_PATH/winpr/libwinpr" -v .

export FREERDP_PATH=`pwd`/FreeRDP
export CGO_CFLAGS="-I$FREERDP_PATH/include"
export CGO_LDFLAGS="-L$FREERDP_PATH/lib -lfreerdp -lfreerdp-client -lwinpr"
go build -ldflags "-r=$FREERDP_PATH/lib" -v .

