# ros12bridge


# Install prerequisites


1. Enter the repo folder
```
cd <ros12bridge> repo
```

2. Install ros dependecies
```
rosdep update
```

```
rosdep install --from-paths src --ignore-src -r -y
```

3. Install system dependecies

```
bash requirements/system-requirements.txt
```

# How to run

1. Enter the repo folder
```
cd <ros12bridge> repo
```

2. Launch the bridge
```
bash scripts/launch_bridge.bash
```