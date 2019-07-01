# Delayout
`An(other 🤷🏻‍♂️) AutoLayout DSL to make constraints more quickly and with less verbosity. `

This is a project with the objective to learn more about iOS AutoLayout and make a tool in order to facilitate making constraints using a Domain Specifc Language (DSL).

This project it's based on **Swift by Sundell** article [Building DSLs in Swift](https://www.swiftbysundell.com/posts/building-dsls-in-swift).

## How it works?
In this first version I kept it simple just by encapsulating some AutoLayout methods to provide a simpler API.

```swift
// Using pure AutoLayout
label.translatesAutoresizingMaskIntoConstraints = false
label.topAnchor.constraint(equalTo: view.topAnchor, constant: 16).isActive = true
label.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16).isActive = true
label.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16).isActive = true
label.heightAnchor.constraint(equalToConstant: 80).isActive = true
```

```swift
// The same visual behavior of above code, but using Delayout
label.layout {
    $0.top.equal(to: view.topAnchor, offsetBy: 16)
    $0.leading.equal(to: view.leadingAnchor, offsetBy: 16)
    $0.trailing.equal(to: view.trailingAnchor, offsetBy: -16)
    $0.height.equal(to: 80)
}
```

```swift
// You can even use some operators to write less code
label.layout {
    $0.top == view.topAnchor + 32
    $0.leading == view.leadingAnchor + 16
    $0.trailing == view.trailingAnchor - 16
    $0.height == 80
}

```


The idea is to improve this project more and more and launch it as a Swift Package soon so feedbacks and suggestions are welcome 😎👍🏻.
