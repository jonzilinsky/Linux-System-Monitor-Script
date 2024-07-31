#!/bin/bash

TITLE="System Info Report For $HOSTNAME"
CURRENT_TIME="$(date +"%x%r%Z")"
TIMESTAMP="Generated $CURRENT_TIME, by $USER"

report_uptime(){
    cat<<- _EOF_
        <h2>Uptime</h2>
        <pre>$(uptime)</pre>
_EOF_
    return
}

report_disk_space(){
    cat<<- _EOF_
        <h2>Disk Space</h2>
        <pre>$(df -h)</pre>
_EOF_
    return
}

report_home_space(){
    cat<<- _EOF_
        <h2>Home Space</h2>
        <pre>$(du -sh /home/*)</pre>
_EOF_
    return
}

#html
cat<<- _EOF_ > ~/sys_info_page.html
<html>
<head>
    <title>$TITLE</title>
    <style>
        body {
            background-color: #2E2E2E;
            color: #D3D3D3;
            font-family: Arial, sans-serif;
            padding: 20px;
        }
        h1 {
            color: #00BFFF;
            margin-bottom: 20px;
        }
        h2 {
            color: #FFD700;
            margin-top: 20px;
            margin-bottom: 10px;
        }
        pre {
            background-color: #333;
            color: #D3D3D3;
            padding: 10px;
            border-radius: 5px;
        }
        p {
            margin-bottom: 20px;
        }
    </style>
</head>
<body>
    <h1>$TITLE</h1>
    <p>$TIMESTAMP</p>
    $(report_uptime)
    $(report_disk_space)
    $(report_home_space)
</body>
</html>
_EOF_

#open in firefox
firefox ~/sys_info_page.html > /dev/null 2>&1 &
