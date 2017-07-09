#!/bin/bash
#GENERAL
if [ -z "$BOT_HOST_PORT" ]; then
    BOT_HOST_PORT="6116"
fi
if [ -z "$BOT_MAX_GAMES" ]; then
    BOT_MAX_GAMES="5"
fi
if [ -z "$BOT_ID" ]; then
    BOT_ID="1"
fi
if [ -z "$BOT_SAVE_REPLAYS" ]; then
    BOT_SAVE_REPLAYS="1"
fi
if [ -z "$BOT_COMMAND_TRIGGER" ]; then
    BOT_COMMAND_TRIGGER="."
fi
if [ -z "$BOT_NAME" ]; then
    BOT_NAME="|cFFFF80FFLMK"
fi
if [ -z "$BOT_SPOOF_CHECK" ]; then
    BOT_SPOOF_CHECK="1"
fi
if [ -z "$BOT_AUTOKICK_PING" ]; then
    BOT_AUTOKICK_PING="400"
fi
if [ -z "$BOT_DEFAULT_MAP" ]; then
    BOT_DEFAULT_MAP="dota"
fi
if [ -z "$ADMIN_PORT" ]; then
    ADMIN_PORT="6113"
fi
if [ -z "$ADMIN_PASSWORD" ]; then
    ADMIN_PASSWORD=""
fi

#GPROXY
if [ -z "$BOT_GPROXY_RECONNECT" ]; then
    BOT_GPROXY_RECONNECT="6117"
fi
if [ -z "$BOT_GPROXY_PORT" ]; then
    BOT_GPROXY_PORT="6114"
fi
if [ -z "$BOT_RECONNECT_TIMEOUT" ]; then
    BOT_RECONNECT_TIMEOUT="3"
fi

#AUTOHOST
if [ -z "$AUTOHOST_MAX_GAMES" ]; then
    AUTOHOST_MAX_GAMES="0"
fi
if [ -z "$AUTO_HOST_PLAYERS" ]; then
    AUTO_HOST_PLAYERS="0"
fi
if [ -z "$AUTOHOST_GAME_NAME" ]; then
    AUTOHOST_GAME_NAME=""
fi
if [ -z "$AUTOHOST_OWNER" ]; then
    AUTOHOST_OWNER=""
fi

#MYSQL
if [ -z "$MYSQL_SERVER" ]; then
    MYSQL_SERVER="127.0.0.1"
fi
if [ -z "$MYSQL_DB_NAME" ]; then
    MYSQL_DB_NAME="ghost"
fi
if [ -z "$MYSQL_USER" ]; then
    MYSQL_USER="root"
fi
if [ -z "$MYSQL_PASSWORD" ]; then
    MYSQL_PASSWORD="mysql"
fi
if [ -z "$MYSQL_PORT" ]; then
    MYSQL_PORT="3306"
fi

#BNET
if [ -z "$BNET_SERVER_HOST" ]; then
    BNET_SERVER_HOST="lmkserver.zapto.org"
fi
if [ -z "$BNET_SERVER_ALIAS" ]; then
    BNET_SERVER_ALIAS="LMK SERVER"
fi
if [ -z "$BNET_BOT_USERNAME" ]; then
    BNET_BOT_USERNAME="LMKBOT"
fi
if [ -z "$BNET_BOT_PASSWORD" ]; then
    BNET_BOT_PASSWORD="123456"
fi
if [ -z "$BNET_BOT_CHANNEL" ]; then
    BNET_BOT_CHANNEL="Bots"
fi
if [ -z "$BNET_BOT_ADMIN" ]; then
    BNET_BOT_ADMIN="danfercf"
fi
if [ -z "$BNET_BOT_TRIGGER" ]; then
    BNET_BOT_TRIGGER="."
fi

sed -i 's/{BOT_HOST_PORT}/'"${BOT_HOST_PORT}"'/' default.cfg
sed -i 's/{BOT_MAX_GAMES}/'"${BOT_MAX_GAMES}"'/' default.cfg
sed -i 's/{BOT_ID}/'"${BOT_ID}"'/' default.cfg
sed -i 's/{BOT_SAVE_REPLAYS}/'"${BOT_SAVE_REPLAYS}"'/' default.cfg
sed -i 's/{BOT_COMMAND_TRIGGER}/'"${BOT_COMMAND_TRIGGER}"'/' default.cfg
sed -i 's/{BOT_NAME}/'"${BOT_NAME}"'/' default.cfg
sed -i 's/{BOT_SPOOF_CHECK}/'"${BOT_SPOOF_CHECK}"'/' default.cfg
sed -i 's/{BOT_AUTOKICK_PING}/'"${BOT_AUTOKICK_PING}"'/' default.cfg
sed -i 's/{BOT_DEFAULT_MAP}/'"${BOT_DEFAULT_MAP}"'/' default.cfg
sed -i 's/{ADMIN_PORT}/'"${ADMIN_PORT}"'/' default.cfg
sed -i 's/{ADMIN_PASSWORD}/'"${ADMIN_PASSWORD}"'/' default.cfg
sed -i 's/{BOT_GPROXY_RECONNECT}/'"${BOT_GPROXY_RECONNECT}"'/' default.cfg
sed -i 's/{BOT_GPROXY_PORT}/'"${BOT_GPROXY_PORT}"'/' default.cfg
sed -i 's/{BOT_RECONNECT_TIMEOUT}/'"${BOT_RECONNECT_TIMEOUT}"'/' default.cfg
sed -i 's/{AUTOHOST_MAX_GAMES}/'"${AUTOHOST_MAX_GAMES}"'/' default.cfg
sed -i 's/{AUTO_HOST_PLAYERS}/'"${AUTO_HOST_PLAYERS}"'/' default.cfg
sed -i 's/{AUTOHOST_GAME_NAME}/'"${AUTOHOST_GAME_NAME}"'/' default.cfg
sed -i 's/{AUTOHOST_OWNER}/'"${AUTOHOST_OWNER}"'/' default.cfg
sed -i 's/{MYSQL_SERVER}/'"${MYSQL_SERVER}"'/' default.cfg
sed -i 's/{MYSQL_DB_NAME}/'"${MYSQL_DB_NAME}"'/' default.cfg
sed -i 's/{MYSQL_USER}/'"${MYSQL_USER}"'/' default.cfg
sed -i 's/{MYSQL_PASSWORD}/'"${MYSQL_PASSWORD}"'/' default.cfg
sed -i 's/{MYSQL_PORT}/'"${MYSQL_PORT}"'/' default.cfg
sed -i 's/{BNET_SERVER_HOST}/'"${BNET_SERVER_HOST}"'/' default.cfg
sed -i 's/{BNET_SERVER_ALIAS}/'"${BNET_SERVER_ALIAS}"'/' default.cfg
sed -i 's/{BNET_BOT_USERNAME}/'"${BNET_BOT_USERNAME}"'/' default.cfg
sed -i 's/{BNET_BOT_PASSWORD}/'"${BNET_BOT_PASSWORD}"'/' default.cfg
sed -i 's/{BNET_BOT_CHANNEL}/'"${BNET_BOT_CHANNEL}"'/' default.cfg
sed -i 's/{BNET_BOT_ADMIN}/'"${BNET_BOT_ADMIN}"'/' default.cfg
sed -i 's/{BNET_BOT_TRIGGER}/'"${BNET_BOT_TRIGGER}"'/' default.cfg

./ghost++ && tail -f /dev/null
