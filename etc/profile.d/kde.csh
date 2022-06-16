
## Make sure KDEDIRS is set
if ( ! $?KDEDIRS ) setenv KDEDIRS /usr

## When/if using prelinking, avoids use of kdeinit
if ( ! $?KDE_IS_PRELINKED ) then
  grep -qs -qs '^PRELINKING=yes' /etc/sysconfig/prelink && \
  setenv KDE_IS_PRELINKED 1
endif

## Disable Qt threaded rendering if using nouveau
## TODO: Remove after https://gitlab.freedesktop.org/mesa/mesa/-/merge_requests/10752
if ( -d /sys/bus/pci/drivers/nouveau ) then
    setenv QSG_RENDER_LOOP basic
endif
