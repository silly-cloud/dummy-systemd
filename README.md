# dummy-systemd-service

A minimal systemd service that runs a shell script indefinitely, logging an iteration count every 10 seconds.

## Files

- `dummy.sh` — infinite loop script that writes to a log file
- `dummy.service` — systemd unit with auto-restart and boot persistence

## Setup
```bash
sudo cp dummy.service /etc/systemd/system/
sudo systemctl daemon-reload
sudo systemctl enable dummy
sudo systemctl start dummy
```

## Usage
```bash
sudo systemctl start dummy
sudo systemctl stop dummy
sudo systemctl status dummy
sudo journalctl -u dummy -f
```

## What I learned

- Writing and placing systemd unit files
- `Restart=always` vs `RestartSec` behavior
- Difference between `enable` (boot) and `start` (now)
- Debugging permission errors via `systemctl status`
- `tail -f` vs `journalctl` for log monitoring

## Source
[roadmap.sh — Dummy Systemd Service](https://roadmap.sh/projects/dummy-systemd-service)
