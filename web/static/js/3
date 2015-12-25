import {Socket} from "deps/phoenix/web/static/js/phoenix"

let socket = new Socket("/socket", {params: {token: window.userToken}})
socket.connect()

let channel = socket.channel("rooms:lobby", {});
let chatInput = $("#chat-input");
let messageContainer = $("#messages");

chatInput.on("keypress", event => {
    if(event.keyCode === 13) {
        channel.push("new_msg", {body: chatInput.val()});
        chatInput.val("");
    }
})

channel.on("new_msg", payload => {
    messageContainer.append(`<br/>[${Date()}] ${payload.body}`)
})

channel.join()
  .receive("ok", resp => { console.log("Joined successfully", resp) })
  .receive("error", resp => { console.log("Unable to join", resp) })

export default socket
