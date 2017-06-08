var fs = require('fs');
var path = require('path');

var sb = "SET NUGET=C:\\src\\ServiceStack\\src\\.nuget\\nuget\r\n";
sb += "%NUGET% setApiKey c6ba1f2e-97e8-470f-8fa0-700301a11891\r\n";
fs.readdir('.',function(err,files){
    if(err) throw err;
    files.forEach(function(file){
        if (file.indexOf(".nupkg") == -1) return;
        sb += "\r\n%NUGET% push " + file + " -Source https://www.nuget.org/api/v2/package";
    });

    fs.writeFileSync("nuget-deploy.bat", sb);
 });