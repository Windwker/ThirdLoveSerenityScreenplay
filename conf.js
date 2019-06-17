const crew = require('serenity-js/lib/stage_crew');

exports.config = {


    // Framework definition - tells Protractor to use Serenity/JS
    serenity: {
        crew: [
            crew.serenityBDDReporter(),
            crew.photographer()
        ]
    },


    framework: 'custom',
    frameworkPath: require.resolve('serenity-js'),
    cucumberOpts: {
        require: [
            'features/**/*.ts',
            'features/**/*.js'],// loads step definitions
        format: 'pretty',               // enable console output
        compiler: 'ts:ts-node/register'   // interpret step definitions as TypeScript
    }
}