class Food {
  String name;
  String description;
  double price;
  String image;
  String detail;
  double rating;
  int reviews;
  List ingredients;
  Food(
      {required this.name,
      required this.description,
      required this.price,
      required this.image,
      required this.detail,
      required this.rating,
      required this.reviews,
      required this.ingredients});

  static List<Food> food = [
    Food(
      name: "Special Pizza",
      description: "With tommato sauce",
      price: 12.50,
      reviews: 920,
      ingredients: ["Oregano", "Pepperoni"],
      image: "assets/chad-montano-MqT0asuoIcU-unsplash.jpg",
      detail:
          "Meat Lovers is filled with toppings of sliced ​​beef sausage, minced beef, beef burger, and chicken sausage. In one bite, you can taste a variety of processed meats that are many and dense. Especially the minced meat which still has fiber in it.",
      rating: 4.5,
    ),
    Food(
        name: "Special Dimsum",
        description: "With meat filling",
        price: 8.95,
        image: "assets/pexels-momo-king-5409015.jpg",
        detail:
            "Har gow is a dim sum staple: a shrimp dumpling wrapped in translucent skin with carefully folded pleats. Inside, the shrimp is commonly combined with finely chopped bamboo shoots, scallions, and a generous sprinkling of white pepper. It’s delicious in its simplicity, but can also benefit from a dip in soy sauce or Sriracha.",
        rating: 4.4,
        reviews: 389,
        ingredients: ["Shrimp", "Scallions"]),
    Food(
        name: "Special Soup",
        description: "With salmon",
        price: 19.50,
        ingredients: ["Salmon", "White Wine"],
        reviews: 355,
        rating: 4.2,
        image: "assets/khloe-arledge-ND3edEmzcdQ-unsplash.jpg",
        detail:
            "Exotic and Icelandic. This comforting Fiskasúpa is full of vitamins and energy. Some exotic ingredients add the contradictions so typical for this fire and ice country."),
    Food(
        name: "Tomato Salad",
        description: "With cheese and bread",
        price: 9.0,
        image: "assets/luisa-brimble-vIm26fn_QKg-unsplash.jpg",
        ingredients: ["Tomato", "Mozarella"],
        rating: 4.7,
        reviews: 762,
        detail:
            " This vibrant and flavorful salad is made with a colorful array of mildly sweet cherry and grape tomatoes, itty bitty fresh mozzarella pearls and it’s all tossed in a refreshing garlic-herb vinaigrette dressing. "),
    Food(
        name: "Veggie Salad",
        description: "With vegetables",
        price: 13.0,
        rating: 4.9,
        reviews: 1040,
        ingredients: ["Lettuce", "Avocado"],
        detail:
            "The best salads are made with ingredients that have different textures and complementary flavors. In this vegan taco salad, you'll love the crunch of the tortilla chips with the sweet.",
        image: "assets/anna-pelzer-IGfIGP5ONV0-unsplash.jpg"),
  ];
}
