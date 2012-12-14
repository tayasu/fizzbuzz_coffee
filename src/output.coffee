class Output
  display: (str) ->
    str

class Stub extends Output

class Browser extends Output
  colors = ['#F2385A', '#F5A503', '#E9F1DF', '#4AD9D9', '#36B1BF']
  numSize = ['18px','18px', '18px', '18px', '20px', '20px', '24px']
  strSize = ['32px','32px', '32px', '32px', '36px', '36px', '48px']

  display: (str) ->
    (@_decorateStr str).appendTo($('body')).fadeIn()

  _decorateStr: (str) ->
    webfonts = WebFontConfig.google.families
    top = @_rand $(window).height()
    left = @_rand $(window).width()
    color = colors[@_rand colors.length]
    rotate = @_rand 360
    fontSize = numSize[@_rand numSize.length]
    fontSize = strSize[@_rand strSize.length] if isNaN str
    fontFamily = webfonts[@_rand webfonts.length]
    $('<div>').attr('id', str).css({
      display: 'none',
      width: '50px',
      position: 'absolute',
      top: top,
      left: left,
      color: color,
      'font-size': fontSize,
      'font-family': fontFamily,
      '-webkit-transform': 'rotate(' + rotate + 'deg)',
      '-moz-transform': 'rotate(' + rotate + 'deg)'
    }).html(str)

  _rand: (num) ->
    Math.floor(Math.random() * num)

class Photoshop extends Output

exports = {} if !exports
exports.Stub = Stub
exports.Browser = Browser
exports.Photoshop = Photoshop
