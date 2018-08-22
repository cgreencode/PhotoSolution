# PhotoSolution
PhotoSolution is an all-in-one photo solution for your iOS app, the UI is similar to WeChat.
<img src="https://github.com/Mark-Ma-1988/PhotoSolution/blob/master/screenshots/image.png" alt="PhotoSolution"/>

[![Version](https://img.shields.io/cocoapods/v/ImagePicker.svg?style=flat)](http://cocoadocs.org/docsets/ImagePicker)
[![License](https://img.shields.io/cocoapods/l/ImagePicker.svg?style=flat)](http://cocoadocs.org/docsets/ImagePicker)
[![Platform](https://img.shields.io/cocoapods/p/ImagePicker.svg?style=flat)](http://cocoadocs.org/docsets/ImagePicker)
![Swift](https://img.shields.io/badge/%20in-swift%204.0-orange.svg)

## Features
- Take photo
- Pick multiple images (you can set maximum amount) from the local photo library
- Support both Objective-C and Swift
- Browse all the albums
- View, expend and edit an image in its original size
- Compress images
- Comtomize some UI properties, like color and title.

## Installation

**PhotoSolution** is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
use_frameworks!
```
and then add:

```ruby
pod 'PhotoSolution'
```

## Related Permissions (Info.plist)
- Privacy - Photo Library Usage Description
- Privacy - Photo Library Additions Usage Description
- Privacy - Camera Usage Description

## Basic Usage

### Objective-C

```objective-c
@import PhotoSolution;

@interface YourViewController () <PhotoSolutionDelegate>

PhotoSolution* solution = [[PhotoSolution alloc] init];
solution.delegate = self;

//take photo
[self presentViewController: [solution getCamera] animated:YES completion:nil];

//pick photos from local
[self presentViewController: [solution getPhotoPickerWithMaxPhotos:9] animated:YES completion:nil];

//implement delegate method
-(void)returnImages:(NSArray *)images{
   // deal with the return images
}

-(void)pickerCancel{
   // when user cancel
}
```

###  Swift
```swift
import PhotoSolution

let photoSolution = PhotoSolution()
photoSolution.delegate = self

//take photo
self.present(photoSolution.getCamera(), animated: true, completion: nil)

//pick photos from local
let remainPhotos = 9
self.present(photoSolution.getPhotoPicker(maxPhotos: remainPhotos), animated: true, completion: nil)

//implement delegate method
extension YourViewController: PhotoSolutionDelegate{
func returnImages(_ images: [UIImage]) {
   // deal with the return images
}

func pickerCancel() {
    // when user cancel
}
}

```


## Customization
### Objective-C
###  Swift


## Author

[Mark Ma](https://www.linkedin.com/in/xingchen-mark-ma-72a74678/)

## License
MIT

