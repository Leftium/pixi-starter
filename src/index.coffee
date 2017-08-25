import * as PIXI from 'pixi.js'

import update from './update.coffee'

# based on: http://pixijs.github.io/examples/#/basics/basic.js



app = new PIXI.Application(800, 600, {backgroundColor : 0x1099bb})
document.body.appendChild(app.view)

# create a new Sprite from an image path
bunny = PIXI.Sprite.fromImage('assets/bunny.png')

# center the sprite's anchor point
bunny.anchor.set(0.5)


# move the sprite to the center of the screen
bunny.x = app.renderer.width / 2
bunny.y = app.renderer.height / 2

app.stage.addChild(bunny)

# Listen for animate update
app.ticker.add (delta) ->
    update(delta, bunny)
    
if module.hot
    module.hot.accept './update.coffee', () ->
        console.log 'Accepting the updated update module!'

