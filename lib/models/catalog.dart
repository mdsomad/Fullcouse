class catalogModel{
static final items = [
  Item(1,
  "Iphon 13 pro", 
  "Apple iphon 13th generation", 
  1000, 
  "#33505a", 
  "assets/images/iPhone.jpg")];
}


class Item {
  final int id;
  final String name;
  final String desc;
  final num  price;
  final String  color;
  final String image;

  Item(this.id, this.name, this.desc, this.price, this.color, this.image,);
}

// final peoducts = [
//     item(id:"Codepur001",
//      name:"Iphon 13 pro", 
//      desc:"Apple iphon 13th generation", 
//      price:10000,
//       color:"#33505a",
//        image:"https://www.amazon.in/Apple-iPhone-13-128GB-Product/dp/B09G99CW2N"),
// ];
