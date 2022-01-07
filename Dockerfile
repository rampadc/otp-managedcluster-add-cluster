FROM quay.io/openshift/origin-cli:4.8
WORKDIR /
COPY add-clusters.sh add-clusters.sh
RUN chmod +x add-clusters.sh
CMD ["./add-clusters.sh"]