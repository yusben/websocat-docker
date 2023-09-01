# websocat-docker
Getting stream from ws automatically

#### Run container example
```bash
docker run --rm -d \
-e 'JSON_DATA={"id": 1, "start_stream": 1}' \
-e 'WEBSOCKET_URL=ws://example.com:81' \
registry/websocat:latest
```