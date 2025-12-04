# 🐾 Chat’bruti – Le chatbot délicieusement inutile  
Projet réalisé pour le défi **Viveris – Nuit de l’Info**

---

## 🎯 Objectif du Défi  
Pourquoi créer un site web sérieux quand on peut discuter avec un chatbot totalement à côté de la plaque ?

Le défi **Chat’bruti** consiste à créer un chatbot :
- qui **ne répond pas aux questions**,  
- qui les **oublie**, **les sublime**, **les détourne**,  
- mais qui reste **vivant**, drôle, inutile et attachant.  
Un compagnon de discussion aussi pertinent… qu’un grille-pain sous la pluie.

Les IA sont autorisées, mais pas obligatoires.  
La seule règle : **être créatif**.

---

## 🏢 Présentation du sponsor – Viveris

Viveris recrute des ingénieurs en informatique et électronique pour :

- Proposer des solutions innovantes et pérennes,  
- Accompagner leurs clients dans leur développement,  
- Renforcer leurs équipes.

Leurs domaines d’intervention couvrent :  
✔ Systèmes d'information  
✔ Informatique technique  
✔ Systèmes embarqués  
✔ Systèmes & réseaux  

**Quelques chiffres :**
- Création : 1986  
- 12 implantations (France, Maroc, Belgique)  
- 910 collaborateurs  
- 97M€ de chiffre d’affaires  
- 4 métiers, 10 expertises, 2 solutions  

Viveris est aussi un sponsor historique de la Nuit de l’Info, créateur de défis originaux et fournisseur des fameuses **EcoCups**.  

🎥 Vidéo de présentation :  
https://app.playplay.com/app/video/viveris/nuit-de-linfo-2025/7869e9af-5ee9-4f80-a268-cc4afbe87b59

💼 Offres d’emploi : http://www.viveris.fr  
🐙 Open Source : http://opensource.viveris.fr/  
📧 Contact RH : nuitdelinfo@viveris.fr

---

## 🤖 Présentation du Projet

### 🎩 **Chat’bruti : le chatbot qui brille… par sa confusion**

Notre chatbot est :
- inutile (c’est le but),
- de mauvaise foi,
- distrait,
- philosophe improvisé,
- souvent perdu,
- mais incroyablement vivant.

Il possède :
- une **popup élégante et animée**,  
- une interface de chat complète,  
- une **personnalité personnalisée**,  
- un backend permettant d’utiliser une IA (si activé),  
- ou un mode **IA désactivée** pour simuler des réponses absurdes.

### ✨ Objectif de l'équipe  
Créer l’expérience la plus amusante possible :  
⚡ rapide à lancer,  
⚡ simple à utiliser,  
⚡ élégante visuellement,  
⚡ et surtout… totalement à côté de la plaque.

---

## 🛠️ Installation et Lancement

# 🚀 Installation complète du Chatbot – Machine vierge (Windows)
Guide Markdown au format `.txt`

---

# 1️⃣ Cloner le projet depuis GitHub

Ouvre un terminal dans le dossier où tu veux installer le projet :

```bash
git clone --branch chatbot --single-branch https://github.com/Lethary/Nuit2Info.git
```

Puis entre dans le dossier :

```bash
cd Nuit2Info
```

---

# 2️⃣ Installer Python 3.x

Télécharger Python :  
https://www.python.org/downloads/windows/

✔ Cocher **"Add Python to PATH"**  
✔ Installer

Vérification :

```bash
python --version
```

---

# 3️⃣ Créer et activer un environnement virtuel

```bash
python -m venv venv
```

Activer :

```bash
venv\Scripts\activate
```

---

# 4️⃣ Installer les dépendances Python nécessaires

```bash
pip install flask flask-cors python-dotenv mistralai
```

---

# 5️⃣ Préparer les fichiers d’environnement

Créer un fichier `.env` (ou renommer `.env.example` en `.env`) :

```
MISTRAL_API_KEY=gsk_VOTRE_CLE_API_ICI
```

# 6️⃣ Lancer le serveur Flask (backend chatbot)

```bash
python chatbot.py
```

Si tout est OK, tu verras :

```

Running on http://127.0.0.1:5000
```

Ton backend est opérationnel.

---

# 7️⃣ Lancer le serveur PHP pour afficher ton site

Dans le dossier où se trouve ton `index.php` :

```bash
php -S localhost:8000
```

Le site est accessible à :

➡️ http://localhost:8000  
➡️ Le chatbot communique avec : http://127.0.0.1:5000/chat

---

# 8️⃣ Vérifier que le chatbot fonctionne

✔ Ouvre ton navigateur  
✔ Va sur : http://localhost:8000  
✔ Clique sur l’icône du chatbot  
✔ Envoie un message  
✔ Le backend Flask → appelle Mistral → renvoie la réponse

---

# 🎉 Fin de l’installation !

Tu as maintenant un chatbot fonctionnel, connecté à une API externe, prêt à déployer ou à intégrer dans un site web.
