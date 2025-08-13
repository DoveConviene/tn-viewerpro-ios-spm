# Tiendeo Viewer Pro

## Swift Package Manager

### Integrate TiendeoViewerPro SDK into your Xcode project

1. **Open your Xcode project**
2. **Go to File → Add Package Dependencies...**
3. **Enter the package URL:**
   ```
   https://github.com/DoveConviene/tn-viewerpro-ios-spm
   ```
4. **Select the version rule:**
   - Choose "Up to Next Major Version" 
   - Set version to `1.9.0-beta`
5. **Click "Add Package"**
6. **Select your target and click "Add Package"**

<img width="1512" height="910" alt="1" src="https://github.com/user-attachments/assets/6059029a-155f-4034-b3f3-5df682cc62f4" />
<img width="1624" height="985" alt="2" src="https://github.com/user-attachments/assets/dce17e1a-ea38-4a2f-b1cf-0925e1153559" />
<img width="1580" height="941" alt="3" src="https://github.com/user-attachments/assets/bc996e95-f72d-4fdd-83d4-1c7493284cee" />

### Alternative: Manual Package.swift

If you prefer to manage dependencies manually, add this to your `Package.swift`:

```swift
dependencies: [
    .package(url: "https://github.com/DoveConviene/tn-viewerpro-ios-spm", from: "1.9.0-beta")
]
```
