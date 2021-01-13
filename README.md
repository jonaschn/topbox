# topbox
A small Python 3 wrapper around the Stanford Topic Modeling Toolbox (STMT) that makes working with L-LDA a bit easier; no need to leave the Python environment. More information on its workings can be found [here](https://cmry.github.io/notes/topbox).

# Setting up

## Docker Setup

On Linux, this would look something like this:

``` shell
git clone https://github.com/jonaschn/topbox
cd ~/topbox/box
wget http://nlp.stanford.edu/software/tmt/tmt-0.4/tmt-0.4.0.jar
cd ..
docker build -t jonaschn/topbox:latest .
docker run -v `pwd`:/opt/topbox -it jonaschn/topbox:latest /bin/bash
```
You can run the script with `python test.py` to test if it's working.


## Manual Setup
You need to have an old Java SDK, version 6 or 7. Otherwise it will [not work](https://github.com/clips/topbox/issues/9).
