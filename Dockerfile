FROM ghcr.io/this-is-tobi/mirror/mattermost:latest

COPY --chown=mattermost:mattermost entrypoint-wrapper.sh /
RUN chmod +x /entrypoint-wrapper.sh

ENTRYPOINT ["/entrypoint-wrapper.sh"]

CMD ["mattermost"]