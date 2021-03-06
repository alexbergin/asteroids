define [

    "game/views/StageView"
    "game/controllers/PlayerController"
    "game/controllers/AsteroidController"
    "game/controllers/BadGuyController"
    "game/controllers/ParticleController"
    "game/controllers/MissleController"
    "game/controllers/UtilityController"
    
] , (
    
    StageView
    PlayerController
    AsteroidController
    BadGuyController
    ParticleController
    MissleController
    UtilityController
    
) ->
    
    App = ->
        
        window.game =
            
            stage: new StageView
            enemies: new BadGuyController
            player: new PlayerController
            asteroids: new AsteroidController
            particles: new ParticleController
            missles: new MissleController
            tools: new UtilityController
            
            start: ->
                i = 0
                run = [ 
                    "stage"
                    "player"
                    "enemies"
                    "asteroids"
                    "particles"
                    "missles"
                ]
                
                while i < run.length
                    game[ run[ i ] ].init()
                    i++
          
        game.start()