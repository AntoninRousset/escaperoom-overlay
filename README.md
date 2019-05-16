# room-overlay
A portage overlay for all room monitoring and controlling

## Installation
To add this overlay create the file /etc/portage/repos.conf/room.conf containing:
```
[room]
location = /var/lib/overlays/room
sync-type = git
sync-uri = https://github.com/AntoninRousset/room-overlay.git
```
and sync your portage tree with `emerge --sync room`
