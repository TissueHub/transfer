# TissueHub Transfer

A makefile for transferring data from http://tissuehub.meteor.com to https://tissuehub.org

## Use

First, get a temporary username and password:

```
$ meteor mongo --url tissuehub.meteor.com
mongodb://username:password@production-db-b1.meteor.io:27017/tissuehub_meteor_com
```

Copy these into `makefile` in the `dump` task.

Then a simple `make restore` should suffice, provided all the correct ssl keys are in place.
