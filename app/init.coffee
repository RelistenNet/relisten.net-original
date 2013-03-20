window.App =
  "Models": {}
  "Collections": {}
  "Views": {}
  "Controllers": {}
  "Router": {}
  "utils": {}

$ ->
  # Initialize App
  Tweezer = new Application().initialize()

  # Bind to every ajax send
  $(document).ajaxSend (e, xhr, options) ->
    token = csrf
    xhr.setRequestHeader("X-CSRF-Token", token) if token and !_.isEmpty(user)

  $(window).resize resize

resize = ->
  playerTop = parseInt $('.player-container').css('margin-top')
  $('.home-page .row-fluid').height $(window).height() - playerTop

toHHMMSS = (seconds) ->
  sec_numb = parseInt(seconds)
  hours = Math.floor(sec_numb / 3600)
  minutes = Math.floor((sec_numb - (hours * 3600)) / 60)
  seconds = sec_numb - (hours * 3600) - (minutes * 60)
  hours = "0" + hours  if hours < 10
  minutes = "0" + minutes  if minutes < 10
  seconds = "0" + seconds  if seconds < 10
  hourStr = if hours isnt "00" then hours + ":" else ""
  time = hourStr + minutes + ":" + seconds
  time

Handlebars.registerHelper "toHHMMSS", ->
  new Handlebars.SafeString toHHMMSS(@duration)
