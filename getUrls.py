LEN_CSS = 0
LEN_JS = 0

with open("out.txt", "r") as old_conf:
    lines = [line for line in old_conf]
    for eee in lines:
        if eee.find('.css') != -1:
            LEN_CSS += 1
        if eee.find('.js') != -1:
            LEN_JS += 1
    with open("css.txt", "w") as new_conf:
        new_conf.write(str(LEN_CSS))
    with open("js.txt", "w") as new_conf:
        new_conf.write(str(LEN_JS))
