FROM plesk/plesk

# Install tini
RUN apt-get update && apt-get install -y tini

# Use tini as the init system
ENTRYPOINT ["/usr/bin/tini", "--", "sh", "-c"]

# Expose necessary ports
EXPOSE 80
EXPOSE 443
EXPOSE 8443

# Run the Plesk start command
CMD ["plesk start"]
