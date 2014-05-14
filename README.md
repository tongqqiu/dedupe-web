# Spreadsheet Deduper

Dedupe files via a web interface

### Setup

**Install OS level dependencies:** 

* Python 2.7
* Redis

**Install app requirements**

```bash
$ pip install "numpy>=1.6"
$ pip install -r requirements.txt
```

### Running the app

There are three components that should be running simultaneously for the app to
work: Redis, the Flask app, and the worker process that actually does the final
deduplication:

``` bash 
$ redis-server # This command may differ depending on your OS
$ nohup python run_queue.py &
$ python app.py
```

For debugging purposes, it is useful to run these three processes in separate
terminal sessions. 

### Running locally as a standalone app

Located in the ``delpoy_scripts`` directory, there are a collection of bash
scripts that, once run, should give you a standalone instance of the spreadsheet
deduper to run locally. Once you have the OS level dependencies installed (see
above) as well as a C compiler, you should be able to run the scripts like this:

``` bash
$ bash dedupe_setup.sh
$ bash start_dedupe.sh
```

Once the app is started, you should be able to navigate to http://127.0.0.1:9999
in a web browser and start deduplicating. To stop the app, do this:

``` bash 
$ bash stop_dedupe.sh
```

## Community
* [Dedupe Google group](https://groups.google.com/forum/?fromgroups=#!forum/open-source-deduplication)
* IRC channel, #dedupe on irc.freenode.net
