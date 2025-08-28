#!/system/bin/sh

APPS_FILE="/sdcard/Apps/apps.txt"
MODULE_DIR="/data/adb/modules/remosysapps"
TARGET_FILE="$MODULE_DIR/debloat_list.txt"

sleep 1

if [ ! -f "$APPS_FILE" ]; then
    echo "Файл $APPS_FILE не найден."
    exit 1
fi

# Выбор режима
echo "========================================"
echo "Выберите режим переноса:"
echo "Громкость + → Заменить содержимое"
echo "Громкость - → Добавить к существующему"
echo "========================================"

choice=$(getevent -lqc 1 | awk '/KEY_VOLUMEUP|KEY_VOLUMEDOWN/ {print $3; exit}')

case "$choice" in
    KEY_VOLUMEUP)
        > "$TARGET_FILE"
        while IFS= read -r line || [ -n "$line" ]; do
            echo "$line" >> "$TARGET_FILE"
        done < "$APPS_FILE"
        echo "Содержимое успешно заменено."
        ;;
    KEY_VOLUMEDOWN)
        while IFS= read -r line || [ -n "$line" ]; do
            echo "$line" >> "$TARGET_FILE"
        done < "$APPS_FILE"
        echo "Содержимое успешно добавлено."
        ;;
    *)
        echo "Неизвестный ввод. Операция отменена."
        exit 1
        ;;
esac

chmod 644 "$TARGET_FILE"
echo "Done: $TARGET_FILE"