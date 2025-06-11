FROM soulteary/cronicle:latest

# Create cronicle user
RUN adduser -D -H cronicle

# Create necessary directories
RUN mkdir -p /opt/cronicle/data /opt/cronicle/logs /opt/cronicle/queue

# Set proper ownership
RUN chown -R cronicle:cronicle /opt/cronicle/data /opt/cronicle/logs /opt/cronicle/queue

# Switch to cronicle user
USER cronicle

EXPOSE 3012
CMD ["/opt/cronicle/bin/control.sh", "start"]