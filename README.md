cucumber-ruby-app-browserstack
=====================

Code sample to get started with Appium tests for your Native App using the Cucumber framework.

## Setup
### Requirements

1. Ruby: If you don't have Ruby installed, follow the instructions given [here](https://www.ruby-lang.org/en/documentation/installation/)
2. Bundler : If you dont have Bundler installed, follow the instructions given [here](https://bundler.io/)


### Install the dependencies

To install the dependencies for Android tests, run :
```sh
export LT_USERNAME="YOUR_USERNAME"
export LT_ACCESS_KEY="YOUR ACCESS KEY"
cd android/examples
bundle install
```

## Getting Started

Specify the devices and app url in android/examples/run-parallel-tests/config/parallel.config.yml

Refer: https://www.lambdatest.com/capabilities-generator/beta/index.html

### **Run test :**
```sh
bundle exec rake parallel
```



