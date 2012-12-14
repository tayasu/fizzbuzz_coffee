WebFontConfig =
  google:
    families: ['Lobster', 'Dancing Script', 'Josefin Slab', 'Abril Fatface', 'Vollkorn', 'Hammersmith One', 'Orbitron', 'Atomic Age', 'Quicksand', 'VT323', 'Special Elite', 'Miltonian', 'Changa One', 'Passion One', 'Codystar', 'Astloch', 'Tangerine', 'Stardos Stencil', 'Skranji', 'Oleo Script', 'New Rocker', 'Keania One', 'Text Me One', 'Hanalei', 'Anaheim', 'Norican', 'Unica One', 'Archivo Black', 'Londrina Solid', 'Chela One', 'Arbutus', 'Rye', 'Bilbo Swash Caps', 'Titan One', 'Raleway Dots', 'Sancreek', 'Bowlby One', 'Bigshot One', 'Smokum', 'Monoton', 'Poiret One', 'Spicy Rice', 'Anton', 'Alfa Slab One', 'Economica', 'Abril Fatface', 'Wallpoet', 'UnifrakturMaguntia', 'Luckiest Guy', 'Rouge Script', 'Paytone One', 'Ultra', 'Creepster']

  loading: ->
    $('<div id="loading">').css({
      position: 'absolute',
      display: 'none'
      height: '100px',
      width: '500px',
      top: Math.floor(($(window).height() - 100) / 2),
      left: Math.floor(($(window).width() - 500) / 2),
      'text-align': 'center',
      'font-family': 'Arial'
    }).html('FizzBuzz').appendTo($('body')).fadeIn((->
      $('#loading').delay(2000).fadeOut((->
        $('#loading').html('by Kazuya Takahashi').fadeIn((->
          $('#loading').delay(3000).fadeOut()
        ))
      ))
    ))

  active: ->
    fizzbuzz = new FizzBuzz new Browser
    num = (i for i in [1..1000])
    run = ->
      return  if num.length is 0
      fizzbuzz.say num[0]
      num.shift()
      setTimeout (->
        run()
      ), 100
    run()

(->
  wf = document.createElement('script')
  wf.src = ((if 'https:' is document.location.protocol then 'https' else 'http')) + '://ajax.googleapis.com/ajax/libs/webfont/1/webfont.js'
  wf.type = 'text/javascript'
  wf.async = 'true'
  s = document.getElementsByTagName('script')[0]
  s.parentNode.insertBefore wf, s
)()