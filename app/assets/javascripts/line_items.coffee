$(document).on "change", "#cart-qty", ->
	line_item_id 	= $(@).data("line-item-id")
	unit_price		= $("#cart-unit-price-#{line_item_id}").text()
	qty 					= $(@).val()

	$.ajax
		url: "carts/#{line_item_id}/update_lineitem"
		method: 'PUT'
		beforeSend: (xhr) ->
		 xhr.setRequestHeader('X-CSRF-Token', $('meta[name="csrf-token"]').attr('content'))
		data:
			line_item:
				quantity: qty
		success: (data) ->