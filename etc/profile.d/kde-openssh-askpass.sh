if [ -x /usr/bin/ksshaskpass ]; then
    SSH_ASKPASS=/usr/bin/ksshaskpass
    export SSH_ASKPASS
fi
