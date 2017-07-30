const local_ip = require('my-local-ip');
const child_process = require('child_process');

child_process.execSync('qrcode "http://'+local_ip()+':3002" qrcode.txt');
