# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

currentFridge = null

selectFridge = ->
  currentFridge = document.getElementById("fridgeSelect").value
  fridgeName = document.getElementById("fridgeSelect").name
  writeData fridgeLabel1, fridgeName
  
writeData = (element, data) ->
  e = document.getElementById(element)
  unless e.firstChild
    e.appendChild document.createTextNode(data)
  else
    e.firstChild.data = data

registerHandlers = ->
  document.getElementById("fridgeChangeButton").onclick = selectFridge