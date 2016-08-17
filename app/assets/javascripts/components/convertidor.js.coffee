@Convertidor = React.createClass
  getInitialState: ->
    romano: @props.romano

  addConvertidor: (convertidor) ->
    @replaceState convertidor: @props.romano

  render: ->
    React.DOM.div
      className: 'container'
      React.DOM.div
        className: 'convertidor'
        React.DOM.h2
          className: 'to_roman'
          'Convertir de Arábigos a Romanos'
        React.DOM.div
          className: 'row'
          React.createElement ConvertidorForm, romano: @props.romano, handleNewConvertidor: @addConvertidor
        React.DOM.hr null
        React.DOM.div
          className: 'row'
          React.DOM.a null, @props.romano

