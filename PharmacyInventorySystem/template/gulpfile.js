'use strict'
var gulp = require('gulp');
var requireDir = require('require-dir');
requireDir('gulp-tasks');


gulp.paths = {
    dist: 'dist',
};

var paths = gulp.paths;

gulp.task('default', gulp.series('serve'));


  document.addEventListener("DOMContentLoaded", function () {
      // Find the "System Overview" tab link
      let systemOverviewTab = document.querySelector('.nav-link[href="index.html"]');

      // Simulate a click event if the tab exists
      if (systemOverviewTab) {
          systemOverviewTab.click();
      }
  });


  function loadPage(pageUrl) {
    document.getElementById('content-frame').src = pageUrl;
  }



