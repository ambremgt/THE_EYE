const attachShotlist = () => {
  const shotlistLink = document.querySelector('.shotlist-link');
  shotlistLink.addEventListener('click', (data) => {
    data.preventDefault()
    const msgInput = document.querySelector('#message_content');
    msgInput.value = data.target
    msgInput.classList.add("invisible-text")
    const newMessage = document.querySelector('#new_message');
    msgInput.insertAdjacentHTML('afterend',
      `
        <div class="attachment-input btn-tag">${data.target.innerText}</div>


      `)
    //document.getElementById('notif-counter').insertAdjacentHTML('beforeend',
      //`<span class="msg-number">${data.notif_counter}</span>`)
  })
}

export { attachShotlist };

