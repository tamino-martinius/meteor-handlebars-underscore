Package.describe({
    summary: 'Port of some underscore-js functions for handlebars.'
});
 
Package.on_use(function (api) {
  api.use([
    'underscore',
    'coffeescript',
    'handlebars'
  ],'client');
 
  api.add_files('client.coffee', 'client');
});

Package.on_test(function (api) {
  api.use([
    'coffeescript',
    'handlebars-underscore',
    'templating',
    'test-helpers',
    'tinytest'
  ], 'client');
  api.add_files([
    'test.html',
    'test.coffee'
  ], 'client');
});