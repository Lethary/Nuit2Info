#!/bin/bash

# Lancer PHP en arrière-plan
php -S 0.0.0.0:8000 &

# Stocker le PID
PHP_PID=$!

# Lancer BrowserSync (version stable WSL)
browser-sync start --proxy "http://localhost:8000" --files "./**/*"

# Arrêter PHP quand BrowserSync se ferme
kill $PHP_PID
