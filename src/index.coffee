import * as PIXI from 'pixi.js'

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
    #  just for fun, let's rotate mr rabbit a little
    # delta is 1 if running at 100% performance
    # creates frame-independent tranformation
    bunny.rotation += 0.1 * delta

