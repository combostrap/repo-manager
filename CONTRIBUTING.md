# Contrib (Documentation for dev)


## How do you release this repo

To create
* a patch release:
```bash
./release
# or
task release
```
* a minor release:
```bash
./release "minor"
# or
task release -- "minor"
```

It runs this [release](release) script
