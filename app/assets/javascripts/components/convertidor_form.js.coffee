@ConvertidorForm = React.createClass
  getInitialState: ->
    arabigo: ''
    romano: @props.romano

  handleChange: (e) ->
    name = e.target.name
    @setState "#{ name }": e.target.value

  valid: ->
    @state.arabigo

  handleSubmit: (e) ->
    e.preventDefault()
    #$.post '', { convertidor: @state }
    $.ajax
      method: 'GET'
      #url: "ingestionrequest/#{ @props.ingestion.id }"
      url: "http://localhost:7777/convertidors/new"
      datatype: 'JSON'
      data:
        convertidor: @state
      success: (status, data) =>
        @props.handleNewConvertidor @props.romano, data
      error: (xhr, status, err) =>
        console.log( status, err.toString())

  render: ->
    React.DOM.form
      className: 'form-inline'
      onSubmit: @handleSubmit
      React.DOM.div
        className: 'form-group'
        React.DOM.div
          className: 'input-group'
          React.DOM.input
            type: 'number'
            className: 'form-control'
            placeholder: 'un número entero'
            name: 'arabigo'
            value: @state.arabigo
            onChange: @handleChange
      React.DOM.button
        type: 'submit'
        className: 'btn btn-primary'
        disabled: !@valid()
        'Convertir a Romano'
