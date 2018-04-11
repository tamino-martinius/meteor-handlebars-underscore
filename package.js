Package.describe({
  name: 'zaku:handlebars-underscore',
  summary: 'Port of some underscore-js functions for handlebars.',
  version: '0.2.0',
  git: 'https://github.com/tamino-martinius/meteor-handlebars-underscore.git'
});

Package.onUse(function (api) {
  api.use([
    'underscore',
    'coffeescript@1.0.17',
    'standard-app-packages',
  ], 'client');

  api.addFiles('client.coffee', 'client');
});

Package.onTest(function (api) {
  api.use([
    'coffeescript',
    'zaku:handlebars-underscore',
    'standard-app-packages',
    'test-helpers',
    'tinytest'
  ], 'client');
  api.addFiles([
    'test.html',
    'test.coffee'
  ], 'client');
});
