const attachShotlist = () => {
  const shotlistLink = document.querySelector('.shotlist-link');
  shotlistLink.addEventListener('click', (data) => {
    data.preventDefault()
    const msgInput = document.querySelector('#message_content');
    msgInput.value = data.target

    msgInput.insertAdjacentHTML('beforebegin',
      `<div class="attachment-input">
        <p>${data.target.innerText}</p>
        <input class="form-control" value="SEND" type="submit" name="message[content]" id="message_content">
      </div>

      `)
    //document.getElementById('notif-counter').insertAdjacentHTML('beforeend',
      //`<span class="msg-number">${data.notif_counter}</span>`)
  })
}

export { attachShotlist };

