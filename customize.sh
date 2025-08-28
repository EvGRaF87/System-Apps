#!/system/bin/sh

APPS_DIR="/sdcard/Apps"
APPS_FILE="$APPS_DIR/apps.txt"

# Создаём папку, если нет
if [ ! -d "$APPS_DIR" ]; then
    mkdir -p "$APPS_DIR"
    chmod 755 "$APPS_DIR"
fi

# Создаём файл, если нет
if [ ! -f "$APPS_FILE" ]; then
    touch "$APPS_FILE"
    chmod 644 "$APPS_FILE"
fi

ui_print "Папка Apps и файл apps.txt созданы."