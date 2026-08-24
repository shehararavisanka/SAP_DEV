  /**
 * Created by sabbir on 08/18/2015.
 */
//ref: https://github.com/coreybutler/node-windows
var Service = require('node-windows').Service;

// Create a new service object
var svc = new Service({
  name:'nodeDemoApp',
  description: 'The nodejs.org example web server.',
  script: 'D:\\Projects\\NEW\\index.js'
});

// Listen for the "install" event, which indicates the
// process is available as a service.
svc.on('uninstall',function(){
  svc.start();
});

svc.uninstall();