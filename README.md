# Flutter Flavours

[flutter enviroments](https://dev.to/flippedcoding/difference-between-development-stage-and-production-d0p)

A demo using [Flutter flavorizr](https://pub.dev/packages/flutter_flavorizr) to create multiples flavors(enviroments) in this case, i create four envs being them: Quality Assurance(Qa), Development(Dev), Homologation(Hom) and Production(Prod)

<img src="https://user-images.githubusercontent.com/35856303/139747662-0fd87059-a819-49f2-a1fa-e4c3f370ec86.png" width="200" height="300"> <img src="https://user-images.githubusercontent.com/35856303/139747663-cc01a198-7890-4c3d-8560-d2aefd3725c6.png" width="200" height="300"> <img src="https://user-images.githubusercontent.com/35856303/139748339-e9efa64b-a34e-497d-9a18-1820dde4b262.png" width="200" height="300">


## Steps to config

1. add package flutter_flavorizr: ^2.0.0 in dev_enviroment
2. add settings of enviroments in pubspec.yaml in my case is:
```
flavorizr:
  app:
    android:
      flavorDimensions:  "flavor-type"
    ios: null
  flavors:
    dev:
      app:
        name: "Flutter Flavor Dev"

      android:
        #bundle identifier
        applicationId: "br.com.flutter.flavor.dev"

      ios:
        bundleId: "br.com.flutter.flavor.dev"
    hom:
      app:
        name: "Flutter Flavor Hom"

      android:
        applicationId: "br.com.flutter.flavor.hom"

      ios:
        bundleId: "br.com.flutter.flavor.hom"
    qa:
      app:
        name: "Flutter Flavor qa"

      android:
        applicationId: "br.com.flutter.flavor.qa"

      ios:
        bundleId: "br.com.flutter.flavor.hom"
    prod:
      app:
        name: "Flutter Flavor"

      android:
        applicationId: "br.com.flutter.flavor"

      ios:
        bundleId: "br.com.flutter.flavor"
```
3. generate code automatically with ``` flutter pub run flutter_flavorizr -p android:androidManifest,android:buildGradle,flutter:flavors,flutter:app,flutter:pages,flutter:targets``` 
in this case i pass the params because i dont need to setting on ios.
if you have ios run only ```flutter pub run flutter_flavorizr```.
This step add all config in android/app/build.gradle and ios directories to run the flavours

4. If you need you can change icons in diferents flavors, to do that just simply add in android/app/src/<enviroment> add res with resources of your app, with diferents logos.
5. if you need, you can add diferents firebases enviroments, to do that just simply add google-services.json(Android) on android/app/src/<enviroment> and when run has another enviroment.
P.S.: Your CI can remove the unecessary enviroments to all devs has resources, with for example production keys of firebase
6. in flavours.dart you can config to create base url to connect with api simply seeing the enviroment.

## Steps to run

Run with command:
```flutter run --flavor <Your env Name> -t lib/main_<Your class of env name>.dart```
in my case to run dev enviroment i do:
```flutter run --flavor dev -t lib/main_dev.dart```

And now your enviroments is separeted.
if you have running on vscode, you can easyly add this setting in your project to run on debug diferents enviroments
```
  {
    // Use IntelliSense to learn about possible attributes.
    // Hover to view descriptions of existing attributes.
    // For more information, visit: https://go.microsoft.com/fwlink/?linkid=830387
    "version": "0.2.0",
    "configurations": [
        {
            "name": "Development",
            "request": "launch",
            "type": "dart",
            "args": [
                "-t",
                "lib/main_dev.dart",
                "--flavor",
                "dev"
            ]
        },
        {
            "name": "Quality",
            "request": "launch",
            "type": "dart",
            "args": [
                "-t",
                "lib/main_qa.dart",
                "--flavor",
                "qa"
            ]
        },
        {
            "name": "Homologation",
            "request": "launch",
            "type": "dart",
            "args": [
                "-t",
                "lib/main_hom.dart",
                "--flavor",
                "hom"
            ]
        },
        {
            "name": "Production",
            "request": "launch",
            "type": "dart",
            "args": [
                "-t",
                "lib/main_prod.dart",
                "--flavor",
                "prod"
            ],
        },
    ]
}
```
