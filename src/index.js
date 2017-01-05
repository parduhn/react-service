var restify = require('restify');

var server = restify.createServer({
  name: 'myapp',
  version: '1.0.0'
});

server.use(restify.CORS({

  // Defaults to ['*'].
  origins: ['https://localhost:80'], 
  // Defaults to false.
  // credentials: true,
  // Sets expose-headers.
  headers: [    'accept',
        'accept-version',
        'content-type',
        'request-id',
        'origin',
        'x-api-version',
        'x-request-id'
        ] 

}));

server.use(restify.acceptParser(server.acceptable));
server.use(restify.queryParser());
server.use(restify.bodyParser());

server.get('/echo/:name', function (req, res, next) {
  res.setHeader('Access-Control-Allow-Origin','*');
  res.send(req.params);
  return next();
});

server.listen(5001, function () {
  console.log('%s listening at %s', server.name, server.url);
});
