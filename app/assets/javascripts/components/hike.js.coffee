@Hike = React.createClass
	render: ->
		React.DOM.tr null,
			React.DOM.td null, @props.hike.name
			React.DOM.td null, @props.hike.date
			React.DOM.td null, @props.hike.miles
			React.DOM.td null, @props.hike.elevation
			React.DOM.td null, @props.hike.rating