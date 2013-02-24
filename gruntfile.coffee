module.exports = (grunt)  ->
  grunt.initConfig
    pkg: grunt.file.readJSON 'package.json'
    concat:
      options: ';'
      dist:
        src: ['src/js/*.js']
        dest: 'src/js/build/build.js'
    uglify:
      compress:
        src: 'src/js/build/build.js'
        dest: 'src/js/build/build.min.js'
    jshint:
      options:
        eqeqeq: true
        forin: true
      all: ['src/js/compilecoffee.js']
    coffee:
        'src/js/compilecoffee.js': 'src/coffee/*.coffee'
    watch:
      files: 'src/coffee/*.coffee'
      tasks: ['coffee','concat', 'uglify']

  grunt.loadNpmTasks 'grunt-contrib'
  grunt.registerTask 'default', ['watch']

