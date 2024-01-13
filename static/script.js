function generateRandomString(length = 20) {
    const characters = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789!@#$%^&*()_+-=[]{}|;:,.<>?';
    let result = '';
  
    for (let i = 0; i < length; i++) {
      // Use crypto.getRandomValues() for more secure randomness (if available)
      if (typeof crypto !== 'undefined' && crypto.getRandomValues) {
        const randomIndex = crypto.getRandomValues(new Uint32Array(1))[0] % characters.length;
        result += characters.charAt(randomIndex);
      } else {
        // Fallback to Math.random() if crypto.getRandomValues() is not available
        result += characters.charAt(Math.floor(Math.random() * characters.length));
      }
    }
  
    return result;
  }

  var sessionID = generateRandomString();




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
    var userInput = userInput.trim();
    if (userInput == '') { return; }
    else {
        var chatMessages = document.getElementById("chat-messages");
        chatMessages.innerHTML += '<div class="message-wrapper reverse"><img class="message-pp" src="/static/portfolio-1.png" alt="profile-pic"><div class="message-box-wrapper"><div class="message-box">' + userInput + '&nbsp;&nbsp;&nbsp;</div><span>You</span></div></div>';
        document.getElementById("input-text").value = '';
        chatMessages.scrollTop = chatMessages.scrollHeight;
        flag = false;
        $.ajax({
            url: '/process',
            type: 'POST',
            data: { 'data': userInput },
            success: function (response) {
                chatMessages.innerHTML += '<div class="message-wrapper"><img class="message-pp" src="/static/favicon.ico" alt="profile-pic"><div class="message-box-wrapper"><div class="message-box">' + response + '&nbsp;&nbsp;&nbsp;</div><span>Bot</span></div></div>';
                flag = true;
                chatMessages.scrollTop = chatMessages.scrollHeight;
            },
            error: function (error) {
                console.log(error);
            }
        }
        );
    }


}

function handleKeyPress(event) {
    if (event.key === "Enter" && !event.shiftKey) {
        event.preventDefault(); // Prevent the default Enter key behavior (e.g., new line)
        if (flag) {
            sendData();
            document.getElementById('input-text').style.height = '';
        }
        else {
            return;
        }
        
    }
}
function autoExpand(textarea) {
    textarea.style.height = 'auto';
    textarea.style.height = (textarea.scrollHeight + 2) + 'px';
}
