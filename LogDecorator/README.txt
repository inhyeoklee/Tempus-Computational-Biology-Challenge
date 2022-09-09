# What is log_it

log_it is a decorator function that can be applied to any function that appends a log message to a log file with a one-line report including.
1. [LOG] tag
2. Function name
3. All arguments and keyword arguments used in the call signature
4. Error if any
5. The returned result

## How to use
see example code, loggingTest.py.
```
@log_it
def cat(path):
  .......

@log_it
def add(*args):
  .......

```

## Run example code

run loggingTest.py.

```
python loggingTest.py
```

then, you can find 'log.txt' created in the same folder.

## PyTest log_it

```
pytest test_logit.py -v
```

## Developer
Inhyeok Lee