@Hikes = React.createClass
	getInitialState: ->
		hikes: @props.data
	getDefaultProps: ->
		hikes: []
	render: ->
		React.DOM.div
			className: 'hikes'
			React.DOM.h2
				className: 'title'
				'Hikes'
			React.DOM.table
				className: 'table table-bordered'
				React.DOM.thead null,
					React.DOM.tr null
						React.DOM.th null, 'Name'
						React.DOM.th null, 'Date'
						React.DOM.th null, 'Miles'
						React.DOM.th null, 'Elevation'
						React.DOM.th null, 'Rating'
				React.DOM.tbody null,
					for hike in @state.hikes
						React.createElement Hike, key: hike.id, hike: hike