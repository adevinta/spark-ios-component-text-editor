
# TextEditor

A text area lets users enter long form text which spans over multiple lines.

## Specifications

The TextEditor specifications on Zeroheight is [here](https://spark.adevinta.com/1186e1705/p/365c2e-text-area--text-view).

![Figma anatomy](https://github.com/user-attachments/assets/a62f1e4c-82bb-496f-9429-eada2c7aed93)

## Usage

TextEditor is available both in UIKit and SwiftUI.

### TextEditorUIView

### Usage

#### Properties

Parameters:
* `theme`: The current Spark-Theme. [You can always define your own theme.](https://github.com/adevinta/spark-ios/wiki/Theming#your-own-theming)
* `intent`: The intent of the TextEditor, e.g. neutral, success

**Note**: You can use TextEditor with Formfield to support title and helper message. (Status icon and chracter count label haven't added to Formfield yet.)

#### Published Properties

* `theme`: The current Spark-Theme. [You can always define your own theme.](https://github.com/adevinta/spark-ios/wiki/Theming#your-own-theming)
* `intent`: The intent of the TextEditor, e.g. neutral, success
* `text`: The text of the TextEditor, it is native textview's text property.
* `placeHolder`: The placeHolder of the TextEditor, it is native textview's placeHolder property.
* `isEnabled`: Default value is 'true', disables user interaction. If It is set with 'isReadOnly' property, priorty will support `isEnabled` property. 
* `isReadOnly`: Default value is 'false', disables edit mode of component. User can scroll and copy text.
* `isScrollEnabled`: Default value is 'true', disables scrollable feature of component. Set this property as an 'false' to provide dynamic height and don't give static height.

#### Example

```swift
let texteditor = TextEditorUIView(
    theme: Theme,
    intent: TextEditorIntent
)
view.addSubview(texteditor)

self.texteditor.widthAnchor.constraint(equalToConstant: 300).isActive = true
self.texteditor.heightAnchor.constraint(equalToConstant: 100).isActive = true

/// To support dynamic height, minimum height is 40px If it isn't set. You can change minimum height. 
self.texteditor.isScrollEnabled = false
self.texteditor.widthAnchor.constraint(equalToConstant: 300).isActive = true
self.texteditor.heightAnchor.constraint(greaterThanOrEqualTo: 70).isActive = true
```

### SwiftUI

#### Initialization

```swift
let texteditor = TextEditorView(
    TODO: TODO
)
```

#### Modifier

TODO


## License

```
MIT License

Copyright (c) 2024 Adevinta

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
```
