# gogogo

Fastest way to develop golang.

```
$ docker-compose up --build
Building app
Step 1/8 : FROM golang:1.15.0-alpine3.12
...
Successfully built c86e9efb1228
...
app_1  | [00] Starting service
app_1  | [00] gogogo!

... <modify a file>

app_1  | [info] fsnotify event: "cmd/main.go": WRITE
app_1  | [00] Killing service
app_1  | [00] ^CINT (reflex-wrapper) -> killing PID 16
app_1  | [00] exiting
app_1  | [00] EXIT 0 (reflex-wrapper)
app_1  | [00] Starting service
app_1  | [00] modified!
```
