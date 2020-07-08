import consumer from "./consumer"

consumer.subscriptions.create("PlaneStatesChannel", {
  connected() {
    console.log("Connected to the room!");
  },

  disconnected() {
  },

  received(data) {
    console.log('Some data come here!')

    var plane = data.plane
    var stateId = 'state:' + plane.number

    $(`td[data-id='${stateId}']`).html(plane.state)

    if (plane.state == 'hangar') {
      var linkId = 'link:' + plane.number
      var link = '<a class="my_button" data-method="patch" href="/planes/' + plane.number + '?plane%5Bstate%5D=takeoff">On take-off</a>'

      $(`td[data-id='${linkId}']`).html(link)
    }
  }
});
