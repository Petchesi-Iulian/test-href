import os

LEN_CSS = 0
LEN_JS = 0

with open("out.txt", "r") as old_conf:
    lines = [line for line in old_conf]
    for eee in lines:
        if eee.find('.css') != -1:
            LEN_CSS += 1
        if eee.find('.js') != -1:
            LEN_JS += 1
    print ("Got %s css requests" % LEN_CSS)
    print ("Got %s javascript requests" % LEN_JS)
    if LEN_CSS > int(os.environ['CSS_ORG']) or LEN_JS > int(os.environ['JS_ORG']):
        print ("Failed with %s javascript requests and %s css requests" % (LEN_JS, LEN_CSS))
    else:
        print ("Passed with %s javascript requests and %s css requests" % (LEN_JS, LEN_CSS))
