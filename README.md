# SinterPixelsSwim

A Swift package that implements a swift package for scripting the [SinterPixels app](https://tomographic.com/Sinterpixels.html)

Here, 'Swim' is short for 'swift import'.  'Swimming' might be the term for using swift to script an application, as opposed to AppleScript.

See the [SinterPixelsSwimExample repo](https://github.com/olofhellman/SinterPixelsSwimExample) for code examples of using this swift package to write a swift app that targets SInterPixels.

Essentially, this package supports swift code like this, which makes a new SinterPixels document

```
	if let spApp = SPApp() {
		let props = SAERecord()
		props.setParam(.height, int:1000)
		props.setParam(.width, int:1000)
		
		let madeObject = await spApp.make(new: SPDocument.self, props: props)
	}
```

which is the analogous swift version of the AppleScript

```
    tell application "SinterPixels"
        make new document with properties { height: 1000, width: 1000 }
    end tell
```