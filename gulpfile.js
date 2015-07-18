var gulp = require('gulp');
var bower = require('gulp-bower');
var sourcemaps = require('gulp-sourcemaps');
var babel = require('gulp-babel');
var concat = require('gulp-concat');

gulp.task('bower', function() {
    return bower('static/vendor');
});

gulp.task('babel', function() {
    return gulp.src('static/{js,vendor}/**/*.js')
        .pipe(sourcemaps.init())
        .pipe(babel())
        .pipe(concat('all.js'))
        .pipe(sourcemaps.write('.'))
        .pipe(gulp.dest('dist'));
});
