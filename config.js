'use strict';
const Config = require('electron-store');

module.exports = new Config({
  defaults: {
    zoomFactor: 1,
    lastWindowState: {
      width: 800,
      height: 600
    }
  }
});
