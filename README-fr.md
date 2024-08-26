![Capture d'écran du modèle de CV](./demo/screenshot-1.png)

Un modèle de CV moderne et personnalisable pour les étudiants en programme coopératif de l'Université Concordia, implémenté avec Typst.

## Caractéristiques

- (Essentiellement) une reproduction fidele du modèle official
- Disponible en anglais et en français
- Utilise les icônes FontAwesome pour un attrait visuel amélioré

## Prérequis

- [Typst](https://typst.app/)
- [fontawesome-typst](https://typst.app/universe/package/fontawesome/)
- Polices [FontAwesome](https://fontawesome.com/download) (la version gratuite est suffisante)

## Utilisation

### Option 1 : Application en ligne Typst

1. Accédez le [lien du projet partagé](https://typst.app/project/r36V3BAECA0emwXqFcOr5B)
2. Créez votre propre copie du projet
3. Modifiez `cv-en.typ` (anglais) ou `cv-fr.typ` (français) selon vos besoins

### Option 2 : Compilation locale

0. Forkez ce repo
1. Clonez votre repo
2. Installez Typst et les polices requises
3. Naviguez jusqu'au répertoire du projet et compilez :
   ```bash
   typst compile cv-en.typ demo/cv-en.pdf
   ```

   ou utilisez le mode `watch` pour une recompilation automatique :
   ```bash
   typst watch cv-en.typ demo/cv-en.pdf
   ```

## Personnalisation

Modifiez `cv-en.typ` ou `cv-fr.typ` pour personnaliser votre CV. Consultez la [documentation Typst](https://typst.app/docs/) pour une personnalisation avancée.

## Aperçu

Un exemple de fichier PDF est disponible : [cv-en.pdf](./demo/cv-en.pdf)

## Licence

Ce projet est sous licence [GNU General Public License v3.0](LICENSE).

## Contribution

Les contributions sont les bienvenues ! N'hésitez pas à soumettre une Pull Request.

---

Avertissement : désolé mon français n'est pas assez bon pour fournir une traduction précise
