var app = require('express')();
var http = require('http').Server(app);
var io = require('socket.io')(http);
var robot = require("robotjs");

require('dotenv').config()

app.get('/', (req,res) => {
	res.sendFile(__dirname+'/index.html');
});

var allowed = {};

io.on('connection', function(socket){
	console.log('a user connected');
	socket.on('auth', password => {
		if(password == process.env.PASSWORD) {
			allowed[socket.id] = true;
			socket.emit('auth', true);
			console.log('Success');
		} else {
			socket.emit('auth', false);
		}
	});
	socket.on('next', () => {
		if(allowed[socket.id])
			robot.keyTap("enter");
	});
	socket.on('prev', () => {
		if(allowed[socket.id])
			robot.keyTap("backspace");
	});
	socket.on('disconnect', () => {
		allowed[socket.id] = undefined;
	});
});

http.listen(3002, function(){
  console.log('listening on *:3002');
});
