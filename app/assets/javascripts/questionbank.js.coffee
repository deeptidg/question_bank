Questionbank = {}

Questionbank.autoSelectSearch = ->
  window.onload = ->
    keyword = document.getElementById 'keyword'
    keyword.onclick = ->
      @select()

Questionbank.autoSelectSearch()