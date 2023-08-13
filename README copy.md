# Install requirements

1. Execute:

2. Create virtual env
```
python -m venv robot-i-ros1-venv
```
3. Activate virtual env

```
source robot-i-ros1-venv/bin/activate
```

4. Install python dependencies 

```
pip3 install -r requirements/python-requirements.txt
```

5. Install ros dependecies
```
rosdep update
```

```
rosdep install --from-paths src --ignore-src -r -y
```

6. Install system dependecies

```
bash requirements/system-requirements.txt
```

7. Download repos

```
vcs import --input requirements/repos-requirements.txt
```

8. Catkin build
```
catkin clean
```

```
catkin build
```