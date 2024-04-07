# Spotify_clone
### Features: Toast, Redirection to another page, Bottomavbar, confirmation dialog.


Clone the source code by setting up flutter, dart, android studio for emulation, and vscode in your computer.

copy the files in the lib folder to your lib folder

create assets/images folder and paste the images.

add all the images within the assets/images directory to your pubspec.yaml file in Flutter, Here's how you can do it:

Open your pubspec.yaml file in your Flutter project.
Locate the flutter section within the pubspec.yaml file. If there isn't one, you can create it.
Inside the flutter section, add an assets subsection if it's not already present.
Within the assets subsection, you can use wildcards to include all the images within the assets/images directory. Here's an example:

-->
```bash
pubspec.yaml

flutter:
  assets:
    - assets/images/
```


  After saving the pubspec.yaml file, run "flutter pub get" in your terminal to make sure Flutter pulls in the new assets.

  ### On the console, type "flutter run"

  setup toast package if necessary or error occurs.
