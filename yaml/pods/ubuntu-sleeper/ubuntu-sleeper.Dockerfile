FROM ubuntu

ENTRYPOINT ["sleep"] # default entrypoint. sleep command will be executed when container is started. Any argument passed to docker run will be passed to sleep command.

CMD ["5"] # Sleep 5 seconds by default. If not argument is passed to sleep command, it will sleep 5 seconds. If argument is passed to sleep command, it will sleep that many seconds.

