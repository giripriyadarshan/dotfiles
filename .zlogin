# specify sytem based options in this file's env vars
# example: export DISABLE_TOUCHSCREEN=1
if [ -f ~/.userenv ]; then
    source ~/.userenv
fi


if [ -z "${DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
  exec startx
fi
