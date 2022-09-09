
def test_add_log():
    logfile = open("log.txt", "r")
    assert logfile != None
    lines = logfile.readlines()
    log_line = ''
    for line in lines:
        if 'function add' in line:
            log_line = line
            break
    assert '[LOG]' in line
    assert '(1, 10)' in line
    assert '==> 11' in line
    assert "<class 'int'>" in line

def test_cat_invalid_path():
    logfile = open("log.txt", "r")
    assert logfile != None
    lines = logfile.readlines()
    log_line = ''
    for line in lines:
        if 'my_file.txt' in line:
            log_line = line
            break
    assert '[LOG]' in line
    assert 'gs://my_bucket/my_file.txt' in line
    assert '==> [Errno 2' in line



def test_cat_valid_path():
    logfile = open("log.txt", "r")
    assert logfile != None
    lines = logfile.readlines()
    log_line = ''
    for line in lines:
        if 'LN2TransferREADME.txt' in line:
            log_line = line
            break
    assert '[LOG]' in line
    assert 'LN2TransferREADME.txt' in line
    assert '==> None' in line
    assert "<class 'NoneType'>" in line
