class Product {
  final int id, price;
  final String title, subTitle, description, image;
  Product({
    required this.id,
    required this.price,
    required this.title,
    required this.subTitle,
    required this.description,
    required this.image,
  });
}

List<Product> products = [
  Product(
    id: 1,
    price: 50,
    title: "Elephant Plush Toy",
    subTitle: "Cuddle up with this soft, friendly elephant!",
    description:
        "This adorable elephant plush is made for hugs! With big floppy ears, a squishy trunk, and ultra-soft fabric, it's perfect for kids and anyone who loves cute animals. Great for gifts, bedtime, or whenever you need some cozy comfort. ",
    image: "images/1.png",
  ),
  Product(
    id: 2,
    price: 50,
    title: "Angry Turtle Plush",
    subTitle: "Soft, squishy & super calm companion",
    description:
        "This plush turtle brings instant calm to any room. With its soft fabric and unique chubby design, it's perfect for cuddling, stress relief, or just adding a cool vibe to your space. Durable and machine washable, safe for all ages.",
    image: "images/2.png",
  ),

  Product(
    id: 3,
    price: 60,
    title: "Gentle Giraffe Plush",
    subTitle: "Tall, soft, and super cuddly!",
    description:
        "Meet your new favorite plush! This gentle giraffe is made from ultra-soft fabric and features adorable spots, long legs, and a friendly face. Perfect for hugs, naps, or decorating any room. A must-have for animal lovers of all ages. Easy to clean and made to last.",
    image: "images/4.png",
  ),
  Product(
    id: 4,
    price: 55,
    title: "Little Dino Plush",
    subTitle: "Super soft & friendly dinosaur buddy",
    description:
        "Bring a touch of prehistoric fun to your life with this adorable Little Dino Plush! Its ultra-soft green fur and gentle smile make it perfect for cuddles, naps, and playtime. Durable, washable, and safe for all ages—this dino is ready for adventures or cozy nights in.",
    image: "images/5.png",
  ),
  Product(
    id: 5,
    price: 60,
    title: "Fluffy Duckling Plush",
    subTitle: "Adorably soft, perfect for snuggles",
    description:
        "This fluffy duckling plush is ready to waddle into your heart! With its super soft texture and gentle eyes, it's perfect for cuddling, playtime, or brightening up any room. Lightweight, easy to wash, and safe for all ages.",
    image: "images/6.png",
  ),
  Product(
    id: 6,
    price: 60,
    title: "Fluffy Duckling Plush",
    subTitle: "Adorably soft, perfect for snuggles",
    description:
        "This fluffy duckling plush is ready to waddle into your heart! With its super soft texture and gentle eyes, it's perfect for cuddling, playtime, or brightening up any room. Lightweight, easy to wash, and safe for all ages.",
    image: "images/6.png",
  ),
  Product(
    id: 7,
    price: 70,
    title: "Marshmallow Buddy Plush Set",
    subTitle: "The cutest pair you will ever hug!",
    description:
        "Double the squish, double the fun! This Marshmallow Buddy Plush Set features two adorable, soft plushies in pastel colors—perfect for sharing, gifting, or keeping both for yourself. With sweet smiles and cozy textures, they're ideal for sleepovers, desk decor, or just spreading joy wherever they go. Safe for all ages, easy to wash, and impossible not to love.",
    image: "images/7.png",
  ),
];
