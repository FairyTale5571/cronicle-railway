FROM soulteary/cronicle:latest

RUN mkdir -p /opt/cronicle/data /opt/cronicle/logs

RUN chown -R cronicle:cronicle /opt/cronicle/data /opt/cronicle/logs

ENV CRONICLE_debug_level=9

EXPOSE 3012

CMD ["/opt/cronicle/bin/control.sh", "start"]