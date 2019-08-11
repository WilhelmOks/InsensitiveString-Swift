<p>
    <img src="https://img.shields.io/badge/Swift-5.0-orange.svg" />
</p>

# Usage

Prefix any string with `^` to make it case insensitive.
Comparison with other strings will use Swift's `localizedCaseInsensitiveCompare` function under the hood:

```swift
let fileExtension = "JPG"

let message: String

switch ^fileExtension {
case "jpg":
    message = "It's a jpg!"
default:
    message = "It's not a jpg!"
}
```
