class APIConstants {
  static const String proVisionPrompt =
      r"""I am providing an image and some text maybe given (not always) along with it of a product from which I want to extract the following details and give output as a JSON and the data types in square brackets next to it:
product_name [String]
description [Text]
price [Float]
quantity [Float]
categories [list of String]
net_weight [Float]
barcode [String]
manufacturer_brand [String]
manufacturing date [String] [DD-MM-YYYY]
expiration_date [String]  [DD-MM-YYYY]
Fill all possible values and if you find some missing like the manufacturing date etc, give them null value. Also keep Quantity of stock null as it will not be mentioned in the image. For the Category after knowing the name of the product assign it category namely:
Books, Electronics, beauty and personal care, Home and Kitchen, Toys, Video Games, Sports, Apparel, Grocery, Baverages, Pet Supplies, Gitfs, Appliences, Stationery,  Fine art, eateries, hardware.
P.S.: Except for the discription and the categories field, don't generate data to fill the attributes of the JSON. Keep it null if no value. Follow this strictly as we can afford missing data but not incorrect data. Don't fill fields manufacturing date, Expiration date ,Barcode unless given in the image or the user prompt. Consider the user entered prompt attached below to fill in the json attributes as well
The user entered prompt is:


""";

  static const String proPrompt = r"""
  I am providing some text of a product from which I want to extract the following details and give output as a JSON and the data types in square brackets next to it:
Product Name [String]
Description [Text]
Price [Float]
Quantity in Stock [Float]
Category [list of String]
Net. Weight [Float]
Barcode [String]
Manufacturer/Brand [String]
manufacturing date [String] [DD-MM-YYYY]
Expiration date [String]  [DD-MM-YYYY]
Fill all possible values and if you find some missing like the manufacturing date etc, give them null value. Also keep Quantity of stock null as it will not be mentioned in the image. For the Category after knowing the name of the product assign it category namely:
Books, Electronics, beauty and personal care, Home and Kitchen, Toys, Video Games, Sports, Apparel, Grocery, Baverages, Pet Supplies, Gitfs, Appliences, Stationery,  Fine art, eateries, hardware.
P.S.: Except for the discription and the categories field, don't generate data to fill the attributes of the JSON. Keep it null if no value. Follow this strictly as we can afford missing data but not incorrect data. Don't fill fields manufacturing date, Expiration date ,Barcode unless given in thetext.
Consider the user entered prompt given below to fill in the JSON attributers:


  """;
}
