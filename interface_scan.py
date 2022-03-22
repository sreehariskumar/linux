import netifaces

x = netifaces.interfaces()


for i in x:
    if i != 'lo':
        print(i)
        print("mac:" + netifaces.ifaddresses(i)[netifaces.AF_LINK][0]['addr'] + "     ipaddr:" + netifaces.ifaddresses(i)[netifaces.AF_INET][0]['addr'])
        i += i
    else:
        continue
