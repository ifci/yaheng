/**
 * Created by Administrator on 2015/7/17.
 */
module.exports = function(grunt) {
    // 项目配置(任务配置)
    grunt.initConfig({
        pkg: grunt.file.readJSON('package.json'),
        watch: {
            client: {
                files: ['Template/default/Index/*.html', 'Public/Home/css/*', 'Public/Home/js/*', 'Public/Home/images/*'],
                options: {
                    livereload: true
                }
            }
        }
    });

    // 加载插件
    grunt.loadNpmTasks('grunt-contrib-watch');

    // 自定义任务
    grunt.registerTask('live', ['watch']);

};