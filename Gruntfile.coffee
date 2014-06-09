module.exports = (grunt) ->
  grunt.initConfig
    # 使用するライブラリ取り込み
    copy:
      build:
        files:
          'js/modal.js': 'vendor/bootstrap-sass/vendor/assets/javascripts/bootstrap/modal.js'
    coffee:
      build:
        expand: true
        src: ['js/*.coffee']
        dest: './'
        ext: '.js'
    uglify:
      build:
        src: ['js/*.js']
        dest: 'build/js/application.min.js'
  grunt.loadNpmTasks 'grunt-contrib-copy'
  grunt.loadNpmTasks 'grunt-contrib-coffee'
  grunt.loadNpmTasks 'grunt-contrib-uglify'
  grunt.registerTask 'default', ['copy', 'coffee', 'uglify']

