update = (delta, bunny) ->
    #  just for fun, let's rotate mr rabbit a little
    # delta is 1 if running at 100% performance
    # creates frame-independent tranformation
    bunny.rotation += .1 * delta * 0

export default update

