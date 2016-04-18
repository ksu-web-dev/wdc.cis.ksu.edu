// http://nodejs.org/api.html#_child_processes
var http = require('http');
var sys = require('sys')
var exec = require('child_process').exec;
function puts(error, stdout, stderr) { sys.puts(stdout) }

var app = http.createServer(function(req, res){
  console.log("hi");
  res.end("You did the thing!");
  exec("git --git-dir=/net/files.cis.ksu.edu/exports/web/hack/htdocs/.git --work-tree=/net/files.cis.ksu.edu/exports/web/hack/htdocs pull; sh /net/files.cis.ksu.edu/exports/web/hack/htdocs/assets/compile_scss.sh", puts);
});

app.listen(3001);
