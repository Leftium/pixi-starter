webpack = require 'webpack'
module.exports =
    entry: './src/index.coffee'
    output:
        filename: './src/bundle.js'
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

