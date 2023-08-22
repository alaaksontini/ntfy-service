FROM binwiederhier/ntfy
COPY server.yml /etc/ntfy/server.yml
RUN mkdir -p /var/cache/ntfy
RUN touch /var/cache/ntfy/cache.db
RUN mkdir -p /var/cache/ntfy/attachments
EXPOSE 2586
ENTRYPOINT ["ntfy", "serve"]