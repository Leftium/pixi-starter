path = require 'path'
webpack = require 'webpack'

module.exports =
    entry: './src/index.coffee'
    output:
        path: path.resolve(__dirname, 'build')
        filename: './bundle.js'
        publicPath: '/build/'
    devServer:
        publicPath: '/build/'
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




