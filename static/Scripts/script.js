const btn = document.getElementById('btn');

btn.addEventListener('click', function handleClick(event) {
    event.preventDefault();
    const firstNameInput = document.getElementById('userInput');
    firstNameInput.value = '';
    }
);
function sendData() { 
    var userInput = document.getElementById("input-text").value;
    var chatMessages = document.getElementById("chat-messages");
    chatMessages.innerHTML += '<div><strong>You:</strong> ' + userInput + '</div>';
    document.getElementById("input-text").value = '';
    $.ajax({ 
        url: '/process', 
        type: 'POST',
        data: { 'data': userInput },
        success: function(response) {
            chatMessages.innerHTML += '<div><strong>Bot:</strong> ' + response + '</div>';
            }, 
        error: function(error) { 
            console.log(error); 
            } 
        }
    );
    chatMessages.scrollTop = chatMessages.scrollHeight;
} 

function handleKeyPress(event) {
    if (event.key === "Enter" && !event.shiftKey) {
        event.preventDefault(); // Prevent the default Enter key behavior (e.g., new line)
        sendData();
        document.getElementById('input-text').style.height = '';
    }
}
function autoExpand(textarea) {
    textarea.style.height = 'auto';
    textarea.style.height = (textarea.scrollHeight + 2) + 'px';
}
