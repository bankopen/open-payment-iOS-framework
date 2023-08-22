# Open Layer Payment pod


[![Version](https://img.shields.io/cocoapods/v/OpenPayment.svg?style=flat)](http://cocoapods.org/pods/OpenPayment)
[![License](https://img.shields.io/cocoapods/l/OpenPayment.svg?style=flat)](http://cocoapods.org/pods/OpenPayment)
[![Platform](https://img.shields.io/cocoapods/p/OpenPayment.svg?style=flat)](http://cocoapods.org/pods/OpenPayment)

Integrate OPEN Payment Gateway with your iOS app and start collecting payments from your customers.


## Pre-requisites

1. XCode 13 or newer
2. Cocoapods


# Create a Payment Token

A payment token represents an order or a purchase. The first step to open up a Layer payment page on your website or checkout page is to create a payment_token

A payment_token can be created by referring to [create payment token](https://docs.bankopen.com/reference#generate-token) API. This API should be always called from your server. You will receive payment_token as a response from [create payment token](https://docs.bankopen.com/reference#generate-token) API.


## Installation

OpenPayment is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'OpenPayment'
```

then run

```shell
pod install
```

## Initializing OpenPayment:
You can see below code, these are minimum and mandatory calls to enable payment processing. If any of it is missed then an error will be generated.

#### For example, consider parameters as follows.

````
let openPaymentBuilderObj = OpenPaymentBuilder()
    openPaymentBuilderObj.setAccessKey("accessToken")
    openPaymentBuilderObj.setEnvironment(.Sandbox)
    openPaymentBuilderObj.setPaymentToken("paymentToken") 
    openPaymentBuilderObj.setErrorColor("colorhexcode") // Optional
    openPaymentBuilderObj.setLogoUrl("Your LogoURL") // Optional
    openPaymentBuilderObj.setBgColor("colorhexcode") // Optional

let openPaymentOBj = openPaymentBuilderObj.buildObject()
    openPaymentOBj.setBaseViewController(self)

````

### Calls and Descriptions:

| Method | Mandatory | Description|
| ------ | ------  |------ |
|setAccessKey()|✔| Access key is a unique key which you can generate from your Open dashboard.|
|setEnvironment()|✔| Following ENUM can be passed to this method. `.SANDBOX`  `.LIVE`|
|setPaymentToken()|✔|To create the token using Create Payment Token API.|
|setErrorColor()||Error color (icons/ error lines / error messages) of Layer will be changed to this . Example: #83025c|
|setLogoUrl()||Logo is changed to image source passed.|
|setBgColor()||Main color of Layer will be changed to this . Example: #f8c5c5|


## Implement Delegate:

### To start the payment, first set OpenPayment delegate to get payment status

````
openPaymentOBj.delegate = self
````

## Proceed to Payment:
#### To start the payment, just call startPayment() method of OpenPayment and after that transaction will get started.

````
openPaymentOBj.startPayment()
````

#### Description:
**onPaymentCompleted**() - This method is invoked when a transaction is completed. It may either captured, failed , pending and cancelled

**onPaymentError**(): - Integration errors.

Getting Transaction Details

To get details of transactions, we have a callback method onPaymentCompleted() with a parameter of TransactionDetails.

To get details, below method of TransactionDetails are useful :

**transactionDetails.paymentId
transactionDetails.paymentTokenId
transactionDetails.status**

Call the webhook URL to get the complete response of the transactions.


## License

OpenPayment is available under the MIT license.
