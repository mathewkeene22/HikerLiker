@HikeForm = React.createClass
  getInitialState: ->
    name: ''
    date: ''
    miles: ''
    elevation: ''
    rating: ''
  handleValueChange: (e) ->
    valueName = e.target.name
    @setState "#{ valueName }": e.target.value
  valid: ->
    @state.name && @state.date && @state.miles && @state.elevation && @state.rating
  handleSubmit: (e) ->
    e.preventDefault()
    $.post '', { hike: @state }, (data) =>
      @props.handleNewHike data
      @setState @getInitialState()
    , 'JSON'
  render: ->
    React.DOM.form
      className: 'form-inline'
      onSubmit: @handleSubmit
      React.DOM.div
        className: 'form-group'
        React.DOM.input
          type: 'text'
          className: 'form-control'
          placeholder: 'name'
          name: 'name'
          value: @state.date
          onChange: @handleValueChange
        React.DOM.input
          type: 'date'
          className: 'form-control'
          placeholder: 'date'
          name: 'date'
          value: @state.date
          onChange: @handleValueChange
        React.DOM.input
          type: 'number'
          className: 'form-control'
          placeholder: 'miles'
          name: 'miles'
          value: @state.miles
          onChange: @handleValueChange
        React.DOM.input
          type: 'number'
          className: 'form-control'
          placeholder: 'elevation'
          name: 'elevation'
          value: @state.elevation
          onChange: @handleValueChange
        React.DOM.input
          type: 'number'
          className: 'form-control'
          placeholder: 'rating'
          name: 'rating'
          value: @state.rating
          onChange: @handleValueChange
        React.DOM.button
          type: 'submit'
          className: 'btn btn-primary'
          disabled: !@valid()
          'Create Hike'