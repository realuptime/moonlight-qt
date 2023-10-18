#stdbuf --output=L ./app/moonlight | tee -i x

#gdb --args ./app/moonlight


STREAM_ARGS="--quit-after"
#STREAM_ARGS="--quit-after --packet-size 1392"
#STREAM_ARGS="--quit-after --packet-size 32"
#STREAM_ARGS="--no-quit-after"

IP=37.50.143.245
APP="Low Res Desktop"

#./app/moonlight stream $IP "$APP"
stdbuf --output=L ./app/moonlight $STREAM_ARGS stream $IP "$APP" | tee -i x

