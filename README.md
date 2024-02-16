## Python footswitch driver

Exported from TRI's Anzu codebase

Meant for using the following device
<https://www.amazon.com/PCsensor-Customized-Computer-Multimedia-Photoelectric/dp/B08SLX75K8>

## Dependencies

Only tested on Ubuntu 22.04

- Bazel
- `sudo apt install libhidapi-dev python3-hid`

## Configuring

Note: This is the only need for `@rgerganov_footswitch` depedency

Plug in device, run:

```sh
sudo ./tools/workspace/rgerganov_footswitch/udev_footpedal.sh
bazel build @rgerganov_footswitch//:footswitch
# Note: You may need to unplug and plug in the device at this point.
bazel-bin/external/rgerganov_footswitch/footswitch -1 -k pageup -2 -k down -3 -k pagedown
```

## Running

You just need to use `FootSwitch` class from `footswitch.py`.
This allows you to query the device without needing to open windows (as you
might need to do using `pygame` or `opencv` to get keyboard strokes).

```sh
bazel run //:footswitch_demo
```
