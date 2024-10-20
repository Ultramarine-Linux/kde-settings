
## Make sure KDEDIRS is set
[ -z "$KDEDIRS" ] && KDEDIRS="/usr" && export KDEDIRS

## When/if using prelinking, avoids (some) use of kdeinit
if [ -z "$KDE_IS_PRELINKED" ]; then
  if [ -f /etc/sysconfig/prelink ]; then
    PRELINKING=`grep -s "^PRELINKING=" /etc/sysconfig/prelink | cut -d"=" -f2`
    if [ "$PRELINKING" = "yes" ]; then
      KDE_IS_PRELINKED=1 && export KDE_IS_PRELINKED
    fi
    unset PRELINKING
  fi
fi
