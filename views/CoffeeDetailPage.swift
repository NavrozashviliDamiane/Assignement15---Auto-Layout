import SwiftUI

struct CoffeeDetailPage: View {
    // Create a Coffee model
    let coffee: Coffee

    var body: some View {
        VStack {
            Image("coffeeImage") 
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(maxWidth: .infinity)
            
            Text(coffee.productName)
                .font(.title)
                .bold()
            
            Text(coffee.productDressing)
                .font(.subheadline)
            
            HStack {
                Text("Rate:")
                Text(String(coffee.productRate))
            }
            
            Text("(\(coffee.productRateAmount))")
            
            Text("Description")
                .font(.title2)
                .bold()
            
            Text(coffee.productDescription)
            
            Text("Size")
                .font(.title2)
                .bold()
            
            Text("Price")
                .font(.title2)
                .bold()
            
            Text("$\(String(format: "%.2f", coffee.productPrice))")
            
            Button(action: {
             
            }) {
                Text("Buy Now")
                    .font(.title2)
                    .bold()
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
        }
        .padding()
    }
}

struct CoffeeDetailPage_Previews: PreviewProvider {
    static var previews: some View {
        let coffee = Coffee(productName: "Cappuccino", productDressing: "with Chocolate", productRate: 4.8, productRateAmount: 230, productDescription: "A cappuccino is an approximately 150 ml (5 oz) beverage, with 25 ml of espresso coffee and 85ml of fresh milk...", productPrice: 4.53)
        CoffeeDetailPage(coffee: coffee)
    }
}
