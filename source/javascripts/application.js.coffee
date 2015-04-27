//= require "jquery"
google.load("feeds", "1")
$ ->
  feed = new google.feeds.Feed('http://kumonos.jp/blog/feed/')
  feed.setNumEntries(10)
  feed.load(dispfeed)

dispfeed = (result) ->
  if !result.error
    html = '<ul>'
    for entry in result.feed.entries
      console.log entry
      html += "<li><a href=\"#{entry.link}\" target=\"_blank\">#{entry.title}</a></li>"
    html += '</ul>'
    $('#blog').append(html)
