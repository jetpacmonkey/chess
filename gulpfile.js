var gulp = require('gulp');
var bower = require('gulp-bower');
var mainBowerFiles = require('main-bower-files');
var sourcemaps = require('gulp-sourcemaps');
var babel = require('gulp-babel');
var concat = require('gulp-concat');
var sass = require('gulp-sass');

gulp.task('bower-install', function() {
    return bower();
});

gulp.task('bower', ['bower-install'], function() {
    return gulp.src(mainBowerFiles())
        .pipe(gulp.dest('static/vendor'));
});

gulp.task('babel', function() {
    return gulp.src('static/{js,vendor}/**/*.js')
        .pipe(sourcemaps.init())
            .pipe(babel())
            .pipe(concat('app.js'))
        .pipe(sourcemaps.write('.'))
        .pipe(gulp.dest('dist'));
});

gulp.task('styles', function() {
    return gulp.src('static/styles/**/*.scss')
        .pipe(sourcemaps.init())
            .pipe(sass())
            .pipe(concat('app.css'))
        .pipe(sourcemaps.write('.'))
        .pipe(gulp.dest('dist'));
});

gulp.task('default', ['babel', 'styles']);
