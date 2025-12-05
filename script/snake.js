const canvas = document.getElementById("game");
const ctx = canvas.getContext("2d");

// 🆕 Éléments HTML pour le HUD
const scoreElement = document.getElementById("score");
const messageElement = document.getElementById("message");

// Taille de la grille
const size = 20;
const tileCountX = canvas.width / size;
const tileCountY = canvas.height / size;

// Snake
let snake = [{ x: 10, y: 10 }];
let velocity = { x: 0, y: 0 };

// Food (startup)
let food = {
    x: Math.floor(Math.random() * tileCountX),
    y: Math.floor(Math.random() * tileCountY)
};

let score = 0;
let messageTimer = 0;
let gameOver = false;
let gameOverMessage = "";

// Couleurs Google
const googleColors = ["#4285F4", "#DB4437", "#F4B400", "#0F9D58"];

// 📢 Messages quand on mange une startup
const eatMessages = [
    "💀 Startup absorbée !",
    "🤝 Acquisition réussie !",
    "📈 Monopole +1 !",
    "💡 Innovation rachetée !",
    "🦈 Compétiteur avalé !",
    "💰 Talent acqui-hired !",
    "🏴‍☠️ Disruption du disrupteur !",
    "📱 Brevet volé... euh, acheté !",
    "🤫 NDA signé, startup enterrée !",
    "🎯 Concurrent éliminé !",
    "Monopole renforcé !",
    "🚀 Expansion du marché !",
    "🔒 Barrière à l'entrée augmentée !",
    "🌐 Écosystème élargi !",
    "🛡️ Protection contre la concurrence !",
    "📊 Part de marché augmentée !",
    "💼 Portefeuille de produits diversifié !",
    "🧠 Capital intellectuel accru !",
    "🌟 Synergies créées !",
    "📣 Influence accrue dans l'industrie !"
];

// 🏢 Noms de startups fictives
const startupNames = [
    "TinyAI", "CloudBuddy", "DataFrog", "PixelPanda",
    "ByteMe", "CodeMonkey", "AppVenture", "StartupBro",
    "DisruptThis", "InnovateCo", "TechNest", "LaunchPad",
    "ScaleUp", "PivotNow", "MoveFirst", "AgileBean",
    "CryptoFish", "BlockBuddy", "AIStartup", "MLMagic"
];
let currentStartup = startupNames[Math.floor(Math.random() * startupNames.length)];

// 💀 Messages de Game Over
const gameOverMessages = [
    "🏛️ L'antitrust a frappé ! Monopole démantelé !",
    "⚖️ Amende de 4.3 milliards € ! Faillite !",
    "📰 Scandale de données ! Le CEO démissionne !",
    "🔥 Burn rate trop élevé ! Plus de cash !",
    "👨‍⚖️ Le Sénat vous convoque ! Game Over !",
    "📉 Les investisseurs fuient ! Valorisation : 0$",
    "🐦 Thread Twitter viral... vous êtes cancelled !",
    "💸 Les régulateurs européens ont gagné !"
];

// Déplacement clavier
document.addEventListener("keydown", (e) => {
    if (gameOver) {
        if (e.key === " " || e.key === "Enter") {
            resetGame();
            return;
        }
    }
    
    switch (e.key) {
        case "ArrowUp":
            if (velocity.y !== 1) velocity = { x: 0, y: -1 };
            break;
        case "ArrowDown":
            if (velocity.y !== -1) velocity = { x: 0, y: 1 };
            break;
        case "ArrowLeft":
            if (velocity.x !== 1) velocity = { x: -1, y: 0 };
            break;
        case "ArrowRight":
            if (velocity.x !== -1) velocity = { x: 1, y: 0 };
            break;
    }
});

function gameLoop() {
    if (!gameOver) {
        update();
    }
    draw();
}

function update() {
    // Ne rien faire tant que le joueur n'a pas bougé
    if (velocity.x === 0 && velocity.y === 0) {
        return;
    }

    // Timer pour les messages
    if (messageTimer > 0) {
        messageTimer--;
    } else {
        messageElement.textContent = "";
    }

    // Nouvelle tête
    const head = {
        x: snake[0].x + velocity.x,
        y: snake[0].y + velocity.y
    };

    // Mur = game over
    if (
        head.x < 0 ||
        head.x >= tileCountX ||
        head.y < 0 ||
        head.y >= tileCountY
    ) {
        return triggerGameOver("🧱 Mur de régulation atteint !");
    }

    // Collision avec soi-même
    for (let part of snake) {
        if (part.x === head.x && part.y === head.y) {
            return triggerGameOver("🐍 Auto-cannibalisation corporate !");
        }
    }

    snake.unshift(head);

    // Mange une startup
    if (head.x === food.x && head.y === food.y) {
        score++;
        
        // 🆕 Mise à jour du score dans le HTML
        updateScore();
        
        // 🆕 Message d'acquisition dans le HTML
        const eatMsg = eatMessages[Math.floor(Math.random() * eatMessages.length)];
        messageElement.textContent = `${eatMsg} (${currentStartup} racheté pour ${score * 100}M$)`;
        messageTimer = 25;

        // Nouvelle startup
        food = {
            x: Math.floor(Math.random() * tileCountX),
            y: Math.floor(Math.random() * tileCountY)
        };
        currentStartup = startupNames[Math.floor(Math.random() * startupNames.length)];
    } else {
        snake.pop();
    }
}

// 🆕 Fonction pour mettre à jour le score
function updateScore() {
    scoreElement.textContent = `💰 Valorisation : ${score} Milliards $`;
}

function triggerGameOver(reason) {
    gameOver = true;
    const randomMsg = gameOverMessages[Math.floor(Math.random() * gameOverMessages.length)];
    gameOverMessage = `${reason}\n${randomMsg}`;
}

function draw() {
    // Fond noir rétro
    ctx.fillStyle = "#111";
    ctx.fillRect(0, 0, canvas.width, canvas.height);

    // Grille subtile
    ctx.strokeStyle = "#222";
    ctx.lineWidth = 0.5;
    for (let i = 0; i < tileCountX; i++) {
        for (let j = 0; j < tileCountY; j++) {
            ctx.strokeRect(i * size, j * size, size, size);
        }
    }

    // --------------------
    // Dessin du Snake GAFAM
    // --------------------
    snake.forEach((part, index) => {
        ctx.fillStyle = googleColors[index % googleColors.length];
        ctx.shadowColor = ctx.fillStyle;
        ctx.shadowBlur = 12;
        
        if (index === 0) {
            ctx.fillRect(part.x * size - 2, part.y * size - 2, size + 4, size + 4);
        } else {
            ctx.fillRect(part.x * size + 1, part.y * size + 1, size - 2, size - 2);
        }
    });
    ctx.shadowBlur = 0;

    // --------------------
    // Dessin de la "startup"
    // --------------------
    if (!gameOver) {
        const x = food.x * size;
        const y = food.y * size;

        ctx.fillStyle = "#ff9900";
        ctx.shadowColor = "#ff9900";
        ctx.shadowBlur = 8;
        ctx.fillRect(x, y, size, size);
        ctx.shadowBlur = 0;

        ctx.fillStyle = "#663300";
        ctx.fillRect(x + 7, y + 12, 6, 8);

        ctx.fillStyle = "#ffeecc";
        ctx.fillRect(x + 3, y + 3, 5, 4);
        ctx.fillRect(x + 12, y + 3, 5, 4);

        // Nom de la startup
        ctx.fillStyle = "#ff9900";
        ctx.font = "10px monospace";
        ctx.textAlign = "center";
        ctx.fillText(currentStartup, x + size / 2, y - 5);
        ctx.textAlign = "left";
    }

    // --------------------
    // Écran Game Over (reste sur le canvas)
    // --------------------
    if (gameOver) {
        ctx.fillStyle = "rgba(0, 0, 0, 0.8)";
        ctx.fillRect(0, 0, canvas.width, canvas.height);

        ctx.fillStyle = "#DB4437";
        ctx.font = "bold 36px monospace";
        ctx.textAlign = "center";
        ctx.fillText("💀 GAME OVER 💀", canvas.width / 2, canvas.height / 2 - 60);

        ctx.fillStyle = "#fff";
        ctx.font = "16px monospace";
        const lines = gameOverMessage.split('\n');
        lines.forEach((line, i) => {
            ctx.fillText(line, canvas.width / 2, canvas.height / 2 - 10 + (i * 25));
        });

        ctx.fillStyle = "#F4B400";
        ctx.font = "bold 20px monospace";
        ctx.fillText(`Startups dévorées : ${score}`, canvas.width / 2, canvas.height / 2 + 50);

        ctx.fillStyle = "#4285F4";
        ctx.font = "14px monospace";
        ctx.fillText("ESPACE ou ENTRÉE pour recommencer", canvas.width / 2, canvas.height / 2 + 90);
        ctx.textAlign = "left";
    }

    // Instructions de démarrage
    if (!gameOver && velocity.x === 0 && velocity.y === 0) {
        ctx.fillStyle = "rgba(255, 255, 255, 0.7)";
        ctx.font = "16px monospace";
        ctx.textAlign = "center";
        ctx.fillText("🎮 Flèches pour conquérir le marché !", canvas.width / 2, canvas.height / 2);
        ctx.textAlign = "left";
    }
}

function resetGame() {
    snake = [{ x: 10, y: 10 }];
    velocity = { x: 0, y: 0 };
    score = 0;
    messageTimer = 0;
    gameOver = false;
    gameOverMessage = "";
    currentStartup = startupNames[Math.floor(Math.random() * startupNames.length)];
    food = {
        x: Math.floor(Math.random() * tileCountX),
        y: Math.floor(Math.random() * tileCountY)
    };
    
    // 🆕 Reset du HUD
    updateScore();
    messageElement.textContent = "";
}
// 🖱️ Déplacement à la souris
canvas.addEventListener("click", (e) => {
    if (gameOver) {
        resetGame();
        return;
    }
    
    const rect = canvas.getBoundingClientRect();
    const clickX = e.clientX - rect.left;
    const clickY = e.clientY - rect.top;
    
    // Position de la tête du snake (en pixels)
    const headX = snake[0].x * size + size / 2;
    const headY = snake[0].y * size + size / 2;
    
    // Différence entre le clic et la tête
    const diffX = clickX - headX;
    const diffY = clickY - headY;
    
    // Déterminer la direction principale (horizontale ou verticale)
    if (Math.abs(diffX) > Math.abs(diffY)) {
        // Mouvement horizontal
        if (diffX > 0 && velocity.x !== -1) {
            velocity = { x: 1, y: 0 }; // Droite
        } else if (diffX < 0 && velocity.x !== 1) {
            velocity = { x: -1, y: 0 }; // Gauche
        }
    } else {
        // Mouvement vertical
        if (diffY > 0 && velocity.y !== -1) {
            velocity = { x: 0, y: 1 }; // Bas
        } else if (diffY < 0 && velocity.y !== 1) {
            velocity = { x: 0, y: -1 }; // Haut
        }
    }
});

setInterval(gameLoop, 100);
