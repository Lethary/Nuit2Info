const bBtn = document.getElementById("chatbot-button");
const win = document.getElementById("chatbot-window");
const closeBtn = document.getElementById("chatbot-close");
const sendBtn = document.getElementById("chatbot-send");
const input = document.getElementById("chatbot-input");
const messages = document.getElementById("chatbot-messages");

// Ouvrir
bBtn.onclick = () => {
    win.style.display = "flex";
};

// Fermer
closeBtn.onclick = () => {
    win.style.display = "none";
};

// Fermer en cliquant en dehors
document.addEventListener("click", (event) => {
    if (
        win.style.display === "flex" &&
        !win.contains(event.target) &&
        !bBtn.contains(event.target)
    ) {
        win.style.display = "none";
    }
});

input.addEventListener("keydown", (event) => {
    if (event.key === "Enter") {
        sendBtn.click();
    }
});

// Ajouter un message
function addMessage(text, sender) {
    const wrapper = document.createElement("div");
    wrapper.style.display = "flex";
    wrapper.style.alignItems = "flex-start";
    wrapper.style.gap = "8px";
    wrapper.style.margin = "5px 0";

    const div = document.createElement("div");
    div.classList.add("msg", sender);
    div.innerText = text;

    if (sender === "bot") {
        const img = document.createElement("img");
        img.src = "img/chatBotIcon.png";
        img.style.width = "30px";
        img.style.height = "30px";
        img.style.borderRadius = "50%";

        wrapper.appendChild(img);
        wrapper.appendChild(div);
    } else {
        wrapper.appendChild(div);
    }

    messages.appendChild(wrapper);
    messages.scrollTop = messages.scrollHeight;
}

// Appel au backend Flask
async function getBotResponse(userMessage) {

    showTyping();
    try {
        const response = await fetch("/chat", {
            method: "POST",
            headers: { "Content-Type": "application/json" },
            body: JSON.stringify({ message: userMessage })
        });

        const data = await response.json();
        hideTyping();
        addMessage(data.reply, "bot");
    }
    catch (error) {
        hideTyping();
        addMessage("❌ Erreur: Impossible de contacter le serveur.", "bot");
        console.error(error);
    }
}

// Envoi d’un message
sendBtn.onclick = () => {
    if (input.value.trim() === "") return;

    const userMsg = input.value;
    addMessage(userMsg, "user");

    getBotResponse(userMsg);

    input.value = "";
};

let typingBubble = null;

// Afficher l’indicateur de saisie
function showTyping() {
    typingBubble = document.createElement("div");
    typingBubble.classList.add("msg", "bot", "typing");

    // Avatar
    const img = document.createElement("img");
    img.src = "img/chatBotIcon.png";
    img.style.width = "30px";
    img.style.height = "30px";
    img.style.borderRadius = "50%";

    // Dots container
    const dots = document.createElement("div");
    dots.style.display = "flex";
    dots.style.gap = "4px";

    // Three dots
    for (let i = 0; i < 3; i++) {
        const dot = document.createElement("div");
        dot.classList.add("typing-dot");
        dots.appendChild(dot);
    }

    const wrapper = document.createElement("div");
    wrapper.style.display = "flex";
    wrapper.style.alignItems = "center";
    wrapper.style.gap = "8px";

    wrapper.appendChild(img);
    wrapper.appendChild(dots);

    typingBubble.appendChild(wrapper);

    messages.appendChild(typingBubble);
    messages.scrollTop = messages.scrollHeight;
}


// Cacher l’indicateur de saisie
function hideTyping() {
    if (typingBubble) {
        typingBubble.remove();
        typingBubble = null;
    }
}

