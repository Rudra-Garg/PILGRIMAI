const btn = document.getElementById('btn');
let flag = true;

btn.addEventListener('click', function handleClick(event) {
    event.preventDefault();
    const firstNameInput = document.getElementById('userInput');
    firstNameInput.value = '';
    }
);
function sendData() { 
    var userInput = document.getElementById("input-text").value;
    if (userInput == '') { return; }
    var chatMessages = document.getElementById("chat-messages");
    chatMessages.innerHTML += '<div class="message-wrapper reverse"><img class="message-pp" src="/static/portfolio-1.png" alt="profile-pic"><div class="message-box-wrapper"><div class="message-box">' + userInput + '&nbsp;&nbsp;&nbsp;</div><span>You</span></div></div>';
    document.getElementById("input-text").value = '';
    chatMessages.scrollTop = chatMessages.scrollHeight;
    flag=false;
    $.ajax({ 
        url: '/process', 
        type: 'POST',
        data: { 'data': userInput },
        success: function(response) {
            chatMessages.innerHTML += '<div class="message-wrapper"><img class="message-pp" src="/static/favicon.ico" alt="profile-pic"><div class="message-box-wrapper"><div class="message-box">' + response + '&nbsp;&nbsp;&nbsp;</div><span>Bot</span></div></div>';
            flag=true;
            chatMessages.scrollTop = chatMessages.scrollHeight;
                        }, 
        error: function(error) { 
            console.log(error); 
            } 
        }
    );
    

}

function handleKeyPress(event) {
    if (event.key === "Enter" && !event.shiftKey) {
        event.preventDefault(); // Prevent the default Enter key behavior (e.g., new line)
        if(flag) {
        sendData();}
        else {
            return;
        }
        document.getElementById('input-text').style.height = '';
    }
}
function autoExpand(textarea) {
    textarea.style.height = 'auto';
    textarea.style.height = (textarea.scrollHeight + 2) + 'px';
}
