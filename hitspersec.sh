while true; do tail -n0 -f /var/log/apache2/access.log>/tmp/tmp.log & sleep 1; kill $! ; wc -l /tmp/tmp.log | cut -c-2; done 2>/dev/null
