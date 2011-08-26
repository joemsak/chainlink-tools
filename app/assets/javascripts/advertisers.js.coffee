$ = jQuery
$ ->
	$("#sortable").sortable
	  items: 'tr'
	  handle: 'td.handle'
	  update: (event, ui) ->
	    i = 1
	    $('.odd, .even').removeClass 'odd even'
	    $('.item').each ->
	      $(this).addClass 'even' if i%2 is 0
	      $(this).addClass 'odd' if i%2 isnt 0
	      i++