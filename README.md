# room-overlay
A portage overlay for all room monitoring and controlling

## Installation
To add this overlay create the file /etc/portage/repos.conf/room.conf containing:
```
[room]
location = /usr/room/portage
sync-type = git
sync-uri = https://github.com/AntoninRousset/room-overlay
```
and sync your portage tree with `emerge --sync room`
