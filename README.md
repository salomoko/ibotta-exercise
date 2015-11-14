### README

*To build project make sure you have Cocoapods and Mogenerator installed properly*

#### mogenerator

```
$ brew install mogenerator
```

Now make sure the Mogenerator target is created in Xcode project. Also make sure the following Run Script is added to the target as well...

```
mogenerator --v2 -m Ibotta/Ibotta.xcdatamodeld -O Ibotta/Models --template-var arc=true
```

#### cocoapods
```
$ gem install cocoapods
$ pod install

```