$ = jQuery
$ ->
	$("#sortable").sortable
	  items: 'tr'
	  handle: 'td.handle'
	  helper: (e, tr) ->
      $originals = tr.children()
      $helper = tr.clone()
      $helper.children().each (index) ->
         $(this).width($originals.eq(index).width())
      return $helper
	  update: (event, ui) ->
	    $('.odd, .even').removeClass 'odd even'
	    $('.item').each (index)->
	      index += 1
	      $(this).addClass 'even' if index%2 is 0
	      $(this).addClass 'odd' if index%2 isnt 0