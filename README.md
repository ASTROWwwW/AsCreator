# 🌟 AsCreator - Personnalisation et Interface Cinématique pour FiveM

AsCreator est un ensemble de scripts pour la personnalisation de personnages et une interface cinématique dans FiveM, conçu pour s’intégrer avec **ESX Legacy** et **RageUI**.

## 📂 Contenu des Scripts

- **`3dText.lua`** : Affiche du texte 3D dans le monde de FiveM, utile pour fournir des indications ou des interactions visuelles aux joueurs.
- **`cinematique.lua`** : Active une interface cinématique immersive avec des effets visuels pour les transitions ou scènes spécifiques.
- **`main.lua`** : Le cœur d'AsCreator, gérant les interactions principales et le flux du script. Il inclut des éléments de personnalisation du personnage et la gestion de l’interface.
- **`server.lua`** : Côté serveur, ce fichier gère les interactions serveur-client, notamment pour les commandes administratives et la création de personnages.

## ✨ Fonctionnalités

- **Personnalisation du Personnage** : Menu complet pour modifier l'apparence (cheveux, barbe, sourcils) avec options de couleur et d'opacité.
- **Mode Cinématique** : Interface visuelle immersive avec transition fluide entre les étapes de personnalisation.
- **Textes 3D** : Affichage de texte flottant pour guider les joueurs dans leurs interactions.
- **Support ESX Legacy** : S’intègre avec ESX pour les fonctionnalités RP.

## 📋 Prérequis

- **ESX Legacy**
- **RageUI** pour l’interface utilisateur
- **oxmysql** pour la gestion des données

## ⚙️ Installation

1. Clonez le dépôt dans le dossier `resources` de votre serveur FiveM.
    ```bash
    git clone <url-du-repo> resources/[votre dossier]
    ```
2. Vérifiez qu'**ESX Legacy**, **RageUI**, et **oxmysql** sont installés et configurés.
3. Ajoutez les scripts dans votre `server.cfg` :
    ```plaintext
    ensure 3dText
    ensure cinematique
    ensure main
    ensure server
    ```
4. Redémarrez votre serveur.

## 🎮 Utilisation

- **Commandes Administratives** : Utilisez `/register` pour la création de personnage pour vous-même ou pour un autre joueur.
- **Personnalisation** : Accédez au menu pour ajuster les détails de l’apparence.
- **Mode Cinématique** : S'active automatiquement pendant certaines étapes pour une immersion accrue.

## 🤝 Contribution

Les contributions sont les bienvenues ! Créez des pull requests ou soumettez des issues pour proposer des améliorations.

