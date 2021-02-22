# Code Challenge

## Dependencies
This repo uses Cocoapods as dependency manager https://cocoapods.org/.
- [R.swift](https://github.com/mac-cain13/R.swift)
- [Alamofire](https://github.com/Alamofire/Alamofire)
- [AloeStackView](https://github.com/marlimox/AloeStackView)

## Components
- ViewModel: parses the data that will be displayed on the UI
- ViewController: UI components related, events, rendering
- Coordinator: In charge of instantiating view controllers and inject the respective view model, as well as the configurator(dependencies)
- Configurator: Carries all the dependencies that the viewModel needs. The idea behind this configurator, is reducing the friction when new changes come up and refactoring all callers is not needed. 
- Interactor: Layer between the models and the viewModel. Makes use of the network layer and returns it to the view model.


## Resources
This project uses Swift 5, R.swift for managing resources in build time.

## TO FIX
- The provided json file didn't contain price fields, so for demo purposes, `$0` will be used as placeholder
- Larger screen testing
- Convert the HTML text into attributed string
- Round the price of the subscription plans
- Json utf8 characters for german special characters
- Style HTML text to make it look pretty

## Screenshots

| Main | Detail |
| ------ | ------ |
| ![launch](https://github.com/cristhianleonli/code-challenge/blob/main/screenshots/screen1.png) | ![launch](https://github.com/cristhianleonli/code-challenge/blob/main/screenshots/screen2.png) |