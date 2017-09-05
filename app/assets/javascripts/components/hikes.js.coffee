@Hikes = React.createClass
  getInitialState: ->
    hikes: @props.data
  getDefaultProps: ->
    hikes: []
  addHike: (hike) ->
    hikes = @state.hikes.slice()
    hikes.push hike
    @setState hikes: hikes
  render: ->
    React.DOM.div
      className: 'hikes'
      React.DOM.h1
        className: 'title'
        'Hikes'
      React.createElement HikeForm, handleNewHike: @addHike
      React.DOM.table
        className: 'table table-bordered'
        React.DOM.thead null
            React.DOM.th null, 'Name'
            React.DOM.th null, 'Date'
            React.DOM.th null, 'Miles'
            React.DOM.th null, 'Elevation'
            React.DOM.th null, 'Rating'
          React.DOM.tbody null,
            for hike in @state.hikes
              React.createElement Hike, key: hike.id, hike: hike