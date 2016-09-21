gulp = require("gulp")
jade = require("gulp-jade")

gulp.task 'jade', ->
  gulp.src("src/*.jade")
    .pipe jade(pretty: true)
    .pipe gulp.dest("./dist")
  return

gulp.task 'watch', ->
  gulp.watch("src/*.jade", ['jade'])
  gulp.watch("src/layout/*.jade", ['jade'])
  return

gulp.task "default", ['watch']
