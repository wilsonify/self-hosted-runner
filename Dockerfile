FROM action-runner-builder as builder

FROM action-runner-base
COPY --from=builder entrypoint.sh entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
CMD ["./bin/Runner.Listener", "run", "--startuptype", "service"]