
## Make sure KDEDIRS is set
if ( ! $?KDEDIRS ) setenv KDEDIRS /usr

## When/if using prelinking, avoids use of kdeinit
if ( ! $?KDE_IS_PRELINKED ) then
  if ( -f /etc/sysconfig/prelink ) then
    set PRELINKING = `grep -s "^PRELINKING=" /etc/sysconfig/prelink | cut -d"=" -f2`
    if ( "$PRELINKING" == "yes" )  then
      setenv KDE_IS_PRELINKED 1
    endif
    unset PRELINKING
  endif
endif
