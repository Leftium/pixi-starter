path = require 'path'
webpack = require 'webpack'

module.exports =
    entry: './src/index.coffee'
    output:
        filename: './bundle.js'
    devServer:
        inline: true # Must be true for some reason...
        hot: true
    resolve:
        extensions: ['.js', '.coffee']
    bail: true
    module:
        rules: [
            test: /\.coffee$/
            use: [
                'coffee-loader'
            ]
        ]
    plugins: [
        new webpack.HotModuleReplacementPlugin()
        new webpack.NamedModulesPlugin()
    ]




