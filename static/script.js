

function setCookie(key, value, expirationDays) {
    const date = new Date();
    date.setTime(date.getTime() + (expirationDays * 24 * 60 * 60 * 1000));
    const expires = `expires=${date.toUTCString()}`;
    document.cookie = `${key}=${value}; ${expires}; path=/`;
}

// Example usage
//setCookie('myKey', 'Hello, this is my string!', 7); // Expires in 7 days


function getCookie(key) {
    const name = `${key}=`;
    const decodedCookie = decodeURIComponent(document.cookie);
    const cookieArray = decodedCookie.split(';');

    for (let i = 0; i < cookieArray.length; i++) {
        let cookie = cookieArray[i];
        while (cookie.charAt(0) === ' ') {
            cookie = cookie.substring(1);
        }
        if (cookie.indexOf(name) === 0) {
            return cookie.substring(name.length, cookie.length);
        }
    }

    return null;
}

// Example usage
//const storedString = getCookie('myKey');
//console.log(storedString);







function generateRandomString(length = 20) {
    const characters = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789';
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

  if(getCookie('sessionID')===null){
    setCookie('sessionID',generateRandomString(),365);
  }
  var sessionID = getCookie('sessionID');




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
    userInput = userInput.trim();
    if (userInput == '') { return; }
    else {
        var chatMessages = document.getElementById("chat-messages");
        var userMessageWrapper = document.createElement('div');
        userMessageWrapper.classList.add('message-wrapper', 'reverse');

        userMessageWrapper.innerHTML = '<img class="message-pp" src="/static/portfolio-1.png" alt="profile-pic"><div class="message-box-wrapper"><div class="message-box"></div><span>You</span></div>';

        userMessageWrapper.querySelector('.message-box').textContent = userInput;

        chatMessages.appendChild(userMessageWrapper);
        document.getElementById("input-text").value = '';
        chatMessages.scrollTop = chatMessages.scrollHeight;
        flag = false;
        $.ajax({
            url: '/process',
            type: 'POST',
            data: { 'data': sessionID+userInput },
            success: function (response) {
                chatMessages.innerHTML += '<div class="message-wrapper"><img class="message-pp" src="/static/favicon.ico" alt="profile-pic"><div class="message-box-wrapper"><div class="message-box">' + marked.parse(response) + '&nbsp;&nbsp;&nbsp;</div><span>Bot</span></div></div>';
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
