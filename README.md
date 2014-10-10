RSDotsView
==========

A simple view that show pulsing dots

Preview
---
<img src="https://raw.githubusercontent.com/Kemcake/RSDotsView/master/preview.gif" height="330" width="200" align="center" style="margin:10px">

How to use 
---
1. Drag&Drop `RSDotsView.swift` in your project
2. Create a `RSdotsView` and add it to a view (or use storyboard)
``` swift 
  var dots = RSDotsView(frame: CGRectMake(50, 50, 300, 300))
  self.view.addSubview(dots)
```

3. Change the dotsColor
``` swift 
  dots.dotsColor = UIColor.redColor()
```

4. Start or Stop animating the dots
``` swift 
  dots.startAnimating()
  dots.stopAnimating()
```


**Enjoy**
