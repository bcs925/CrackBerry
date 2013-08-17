// Default empty project template
import bb.cascades 1.0
import com.sample.payment 1.0

Page {
    Container {
        Button {
            text: "Buy 200 Coins"
            onClicked: {
                paymentControl.id = "123456789"
                paymentControl.sku = "SKU-1"
                paymentControl.name = "200 Coins"
                paymentControl.metadata = "200 Coins"
                paymentControl.getPrice(paymentControl.payid, paymentControl.sku)
                paymentControl.purchase(paymentControl.payid, paymentControl.sku, paymentControl.name, paymentControl.metadata)

            }
        }
        Label {
            id: coinCount
            text: "0"
        }
    }
    attachedObjects: [

        //! [3]
        // The custom payment element for holding item data
        // and used for method invocation and receiving events as a
        // result of those invocations
        PaymentServiceControl {
            id: paymentControl
            property string payid
            property string sku
            property string name
            property string metadata
            onPriceResponseSuccess: {

            }

            onPurchaseResponseSuccess: {
                var coins = Number(coinCount.text);
                coinCount.text = coins + 200;
            }
            onExistingPurchasesResponseSuccess: {

            }
            onSubscriptionTermsResponseSuccess: {

            }
            onCancelSubscriptionResponseSuccess: {

            }
            onCheckStatusResponseSuccess: {

            }
            onInfoResponseError: {
            }
        }
    //! [3]
    ]
}
