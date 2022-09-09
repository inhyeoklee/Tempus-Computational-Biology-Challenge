
def log_it(fn):
    from datetime import datetime, timezone
    def log_fn(*args, **kwargs):
        logfile = open("log.txt","a")
        try:
            to_execute = fn(*args, **kwargs)
        except Exception as error:
            to_execute = error
        logfile.write('[LOG] {0} ({1},{2}) ==> {3} {4}\n'.format(fn,args,kwargs,to_execute, type(to_execute)))
        logfile.close()
    return log_fn