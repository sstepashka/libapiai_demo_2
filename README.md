Demo for C++ library of api.ai
==============

## Guide

* ```git clone git@github.com:api-ai/libapiai.git```
* ```cd libapiai```
* ```mkdir build```
* ```cd build```
* ```cmake ../```
* ```make```
* ```sudo make install```

Now you can compile use **_pkg-config_**

```g++ main.cpp $(pkg-config --libs --cflags apiai)```

...or use it in **_Makefile_**
```
CFLAGS += `pkg-config --cflags apiai`
LDFLAGS += `pkg-config --libs apiai````