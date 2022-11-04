import '../models/category.dart';
import '../models/menu.dart';

// ignore: constant_identifier_names
const DUMMY_CATEGORIES = [
  Category(
    id: 'food',
    title: 'Food',
    subCategories: [
      SubCategory(id: 0, title: 'Burger', imgPath: 'assets/images/burger.svg'),
      SubCategory(id: 1, title: 'Pizza', imgPath: 'assets/images/pizza.svg'),
      SubCategory(id: 2, title: 'Chickens', imgPath: 'assets/images/doro2.svg'),
      SubCategory(
          id: 3, title: 'Vegetiable', imgPath: 'assets/images/vegetable.svg'),
      SubCategory(
          id: 4, title: 'Fast Food', imgPath: 'assets/images/fastfood.svg'),
      SubCategory(id: 5, title: 'Fish', imgPath: 'assets/images/fish.svg'),
    ],
  ),
  Category(
    id: 'drink',
    title: 'Drinks',
    subCategories: [
      SubCategory(id: 0, title: 'Wine', imgPath: 'assets/images/wine.svg'),
      SubCategory(id: 1, title: 'Beer', imgPath: 'assets/images/beer.svg'),
      SubCategory(
          id: 2, title: 'HotDrink', imgPath: 'assets/images/hotdrink.svg'),
      SubCategory(id: 3, title: 'Jouice', imgPath: 'assets/images/juice.svg'),
      SubCategory(
          id: 4, title: 'SoftDrink', imgPath: 'assets/images/softdrink.svg'),
    ],
  ),
  Category(
    id: 'desserts',
    title: 'Desserts',
    subCategories: [
      SubCategory(id: 0, title: 'Cake', imgPath: 'assets/images/cake.svg'),
      SubCategory(
          id: 1, title: 'Pastries', imgPath: 'assets/images/pastries.svg'),
      SubCategory(
          id: 2, title: 'Deep-fried', imgPath: 'assets/images/fried.svg'),
      SubCategory(id: 3, title: 'Salad', imgPath: 'assets/images/salad.svg'),
    ],
  ),
];

// ignore: constant_identifier_names
const DUMMY_MEALS = [
  //burgers
  Menu(
    id: 'b1',
    categories: [
      'food',
      0,
    ],
    title: 'Beef Burgers',
    desc:
        '''A traditional ground beef burger can be a good, high-protein meal—especially if it's grass-finished beef, which we'll tell you more about in a second. .''',
    price: 350,
    imgUrl: [
      'https://www.pngitem.com/pimgs/m/427-4272394_beef-burger-image-png-transparent-png.png',
      'https://purepng.com/public/uploads/large/purepng.com-burgersandwhichfoodbreadcaviarburgerdelicious-21526117698ci2tq.png',
      'https://www.eatthis.com/wp-content/uploads/sites/4/media/images/ext/520765216/classic-beef-burger.jpg?resize=640,468&quality=82&strip=all',
      'https://purepng.com/public/uploads/thumbnail/burger-king-whopper-with-cheese-esm.png',
      'https://purepng.com/public/uploads/large/purepng.com-burger-orientalsandwhichfoodbreadcaviarburgerdelicious-21526117500edrrq.png',
    ],
    duration: 20,
    isFavourite: true,
    ingredients:
        '4 Tomatoes, 1 Tablespoon of Olive Oil, 1 Onion, 250g Spaghetti, Spices, Cheese (optional)',
    returnPolicy:
        '''Please freeze the products immediately upon receipt. Products must remain frozen until they are ready to be consumed. Failure to report spoilage within 48 hours. ''',
  ),
  Menu(
    id: 'b2',
    categories: [
      'food',
      0,
    ],
    title: 'Chicken Burger',
    desc:
        '''Chef Kyle Bailey makes these cheese-stuffed "Juicy Lucy" burgers with a custom blend of ground rib eye steak and pork fatback, and serves them on homemade herb-butter rolls. This streamlined version for the home cook calls for ground beef chuck and store-bought brioche buns.''',
    price: 250,
    imgUrl: [
      'https://purepng.com/public/uploads/large/purepng.com-chickenburgersandwhichfoodbreadcaviarburgerdelicious-21526117736pdp0a.png',
      'https://www.eatthis.com/wp-content/uploads/sites/4/media/images/ext/316673155/elk-burger.jpg?resize=640,468&quality=82&strip=all',
      'https://purepng.com/public/uploads/large/purepng.com-burgersandwhichfoodbreadcaviarburgerdelicious-21526117698ci2tq.png',
      'https://purepng.com/public/uploads/large/purepng.com-burger-orientalsandwhichfoodbreadcaviarburgerdelicious-21526117500edrrq.png',
    ],
    duration: 20,
    ingredients:
        '4 Tomatoes, 1 Tablespoon of Olive Oil, 1 Onion, 250g Spaghetti, Spices, Cheese (optional)',
    returnPolicy:
        '''Please freeze the products immediately upon receipt. Products must remain frozen until they are ready to be consumed. Failure to report spoilage within 48 hours. ''',
  ),
  Menu(
    id: 'b3',
    categories: [
      'food',
      0,
    ],
    title: 'Elk Burgers',
    desc:
        '''Chef Kyle Bailey makes these cheese-stuffed "Juicy Lucy" burgers with a custom blend of ground rib eye steak and pork fatback, and serves them on homemade herb-butter rolls. This streamlined version for the home cook calls for ground beef chuck and store-bought brioche buns.''',
    price: 250,
    imgUrl: [
      'https://purepng.com/public/uploads/large/purepng.com-burgerburger-food-941524644427c1mut.png',
      'https://www.eatthis.com/wp-content/uploads/sites/4/media/images/ext/316673155/elk-burger.jpg?resize=640,468&quality=82&strip=all',
      'https://purepng.com/public/uploads/large/purepng.com-burgersandwhichfoodbreadcaviarburgerdelicious-21526117698ci2tq.png',
      'https://purepng.com/public/uploads/large/purepng.com-burger-orientalsandwhichfoodbreadcaviarburgerdelicious-21526117500edrrq.png',
    ],
    duration: 20,
    ingredients:
        '4 Tomatoes, 1 Tablespoon of Olive Oil, 1 Onion, 250g Spaghetti, Spices, Cheese (optional)',
    returnPolicy:
        '''Please freeze the products immediately upon receipt. Products must remain frozen until they are ready to be consumed. Failure to report spoilage within 48 hours. ''',
  ),
  Menu(
    id: 'b4',
    categories: [
      'food',
      0,
    ],
    title: 'Turkey Burgers ',
    isFavourite: true,
    desc:
        ''' turkey burger a stunt double for your ground beef patty. "If you choose a turkey burger made from ground breast meat, it will be ultra-lean, low in calories, and low in artery-clogging fat," say the Nutrition Twins, Lyssie Lakatos, RDN, CDN, CFT and Tammy Lakatos Shames, RDN, CDN, CFT, authors of The Nutrition Twins' Veggie Cure. ''',
    price: 250,
    imgUrl: [
      'https://purepng.com/public/uploads/large/burger-king-whopper-with-cheese-lxz.png',
      'https://www.eatthis.com/wp-content/uploads/sites/4/media/images/ext/184168996/turkey-burger.jpg?resize=640,468&quality=82&strip=all',
      'https://purepng.com/public/uploads/large/purepng.com-burgersandwhichfoodbreadcaviarburgerdelicious-21526117698ci2tq.png',
      'https://purepng.com/public/uploads/large/purepng.com-burger-orientalsandwhichfoodbreadcaviarburgerdelicious-21526117500edrrq.png',
    ],
    duration: 20,
    ingredients:
        '4 Tomatoes, 1 Tablespoon of Olive Oil, 1 Onion, 250g Spaghetti, Spices, Cheese (optional)',
    returnPolicy:
        '''Please freeze the products immediately upon receipt. Products must remain frozen until they are ready to be consumed. Failure to report spoilage within 48 hours. ''',
  ),
  Menu(
    id: 'b5',
    categories: [
      'food',
      0,
    ],
    title: 'Veggie Burgers',
    desc:
        '''veggie burgers—some really slay while others are just cray. "Traditional veggie burgers are typically satisfying and a great way to slash artery-clogging saturated fat when used to replace hamburgers," the Nutrition Twins advise.''',
    price: 400,
    imgUrl: [
      'https://purepng.com/public/uploads/large/purepng.com-burgersandwhichfoodbreadcaviarburgerdelicious-21526117661kgdtm.png',
      'https://www.eatthis.com/wp-content/uploads/sites/4/media/images/ext/351400125/pumpkin-veggie-burger.jpg?resize=640,468&quality=82&strip=all',
      'https://purepng.com/public/uploads/large/purepng.com-burgersandwhichfoodbreadcaviarburgerdelicious-21526117698ci2tq.png',
      'https://purepng.com/public/uploads/large/purepng.com-burger-orientalsandwhichfoodbreadcaviarburgerdelicious-21526117500edrrq.png',
    ],
    duration: 20,
    ingredients:
        '4 Tomatoes, 1 Tablespoon of Olive Oil, 1 Onion, 250g Spaghetti, Spices, Cheese (optional)',
    returnPolicy:
        '''Please freeze the products immediately upon receipt. Products must remain frozen until they are ready to be consumed. Failure to report spoilage within 48 hours. ''',
  ),
  Menu(
    id: 'b6',
    categories: [
      'food',
      0,
    ],
    title: 'Bison Burgers',
    isFavourite: true,
    desc:
        '''Chef Kyle Bailey makes these cheese-stuffed "Juicy Lucy" burgers with a custom blend of ground rib eye steak and pork fatback, and serves them on homemade herb-butter rolls. This streamlined version for the home cook calls for ground beef chuck and store-bought brioche buns.''',
    price: 250,
    imgUrl: [
      'https://purepng.com/public/uploads/large/purepng.com-burgersandwhichfoodbreadcaviarburgerdelicious-21526117698ci2tq.png',
      'https://purepng.com/public/uploads/large/purepng.com-burger-orientalsandwhichfoodbreadcaviarburgerdelicious-21526117500edrrq.png',
      'https://purepng.com/public/uploads/large/purepng.com-burgerburger-food-941524644427c1mut.png',
      'https://www.eatthis.com/wp-content/uploads/sites/4/media/images/ext/962584472/bison-burgers.jpg?resize=640,468&quality=82&strip=all',
    ],
    duration: 20,
    ingredients:
        '4 Tomatoes, 1 Tablespoon of Olive Oil, 1 Onion, 250g Spaghetti, Spices, Cheese (optional)',
    returnPolicy:
        '''Please freeze the products immediately upon receipt. Products must remain frozen until they are ready to be consumed. Failure to report spoilage within 48 hours. ''',
  ),
  Menu(
    id: 'b7',
    categories: [
      'food',
      0,
    ],
    title: 'Black Bean Burgers',
    desc:
        '''We're separating out this subcategory of veggie burgers because black bean burgers are just that worthy of nutritional praise. ''',
    price: 250,
    imgUrl: [
      'https://purepng.com/public/uploads/large/purepng.com-burgerburger-food-941524644427c1mut.png',
      'https://www.eatthis.com/wp-content/uploads/sites/4/media/images/ext/534225686/veggie-burger.jpg?resize=640,468&quality=82&strip=all',
      'https://purepng.com/public/uploads/large/purepng.com-burgersandwhichfoodbreadcaviarburgerdelicious-21526117698ci2tq.png',
      'https://www.eatthis.com/wp-content/uploads/sites/4/media/images/ext/962584472/bison-burgers.jpg?resize=640,468&quality=82&strip=all',
    ],
    duration: 20,
    ingredients:
        '4 Tomatoes, 1 Tablespoon of Olive Oil, 1 Onion, 250g Spaghetti, Spices, Cheese (optional)',
    returnPolicy:
        '''Please freeze the products immediately upon receipt. Products must remain frozen until they are ready to be consumed. Failure to report spoilage within 48 hours. ''',
  ),

  // Pizza
  Menu(
    id: 'p1',
    categories: [
      'food',
      1,
    ],
    title: 'Cheese Pizza',
    desc:
        '''A traditional ground beef burger can be a good, high-protein meal—especially if it's grass-finished beef, which we'll tell you more about in a second. .''',
    price: 400,
    imgUrl: [
      'https://purepng.com/public/uploads/thumbnail/purepng.com-pizzafood-pizza-9415246443273fsfa.png',
      'https://www.ezcater.com/lunchrush/wp-content/uploads/sites/2/2017/10/shutterstock_623344781.jpg.webp',
    ],
    duration: 20,
    ingredients:
        '4 Tomatoes, 1 Tablespoon of Olive Oil, 1 Onion, 250g Spaghetti, Spices, Cheese (optional)',
    returnPolicy:
        '''Please freeze the products immediately upon receipt. Products must remain frozen until they are ready to be consumed. Failure to report spoilage within 48 hours. ''',
  ),
  Menu(
    id: 'p2',
    categories: [
      'food',
      1,
    ],
    title: 'Veggie Pizza',
    desc:
        ''' Everything from peppers and mushrooms, to eggplant and onions make for an exciting and tasty veggie pizza.''',
    price: 250,
    imgUrl: [
      'https://purepng.com/public/uploads/thumbnail/purepng.com-pizzafood-pizza-941524636566fxdsp.png',
      'https://www.ezcater.com/lunchrush/wp-content/uploads/sites/2/2017/10/shutterstock_570541132.jpg.webp',
    ],
    duration: 20,
    ingredients:
        '4 Tomatoes, 1 Tablespoon of Olive Oil, 1 Onion, 250g Spaghetti, Spices, Cheese (optional)',
    returnPolicy:
        '''Please freeze the products immediately upon receipt. Products must remain frozen until they are ready to be consumed. Failure to report spoilage within 48 hours. ''',
  ),
  Menu(
    id: 'p3',
    categories: [
      'food',
      1,
    ],
    title: 'Pepperoni Pizza',
    desc:
        ''' There’s a reason this is one of the most popular types of pizza. Who doesn’t love biting into a crispy, salty round of pepperoni''',
    price: 550,
    imgUrl: [
      'https://purepng.com/public/uploads/thumbnail/purepng.com-cheese-pizzafood-pizza-cheese-941524635158swrtm.png',
      'https://purepng.com/public/uploads/thumbnail/purepng.com-pizzafood-pizza-941524636566fxdsp.png',
      'https://www.ezcater.com/lunchrush/wp-content/uploads/sites/2/2017/10/shutterstock_514457074.jpg.webp',
    ],
    duration: 20,
    ingredients:
        '4 Tomatoes, 1 Tablespoon of Olive Oil, 1 Onion, 250g Spaghetti, Spices, Cheese (optional)',
    returnPolicy:
        '''Please freeze the products immediately upon receipt. Products must remain frozen until they are ready to be consumed. Failure to report spoilage within 48 hours. ''',
  ),
  //Drinks
  Menu(
    id: 'w1',
    categories: [
      'drink',
      0,
    ],
    title: 'Adrianna Vineyard',
    desc:
        '''Adrianna sits at 5,000 feet, making it one of the highest vineyards in all of Mendoza. The wine shows pure Tupungato mountain fruit, with deep chocolaty undertones and lots of fine, toasty French oak.''',
    price: 5000,
    imgUrl: [
      'https://purepng.com/public/uploads/large/purepng.com-sparkling-wine-from-a-bottlealcoholdrinksparling-winesparling-win-in-a-bottlebottle-2315193398554j1hg.png',
      'https://purepng.com/public/uploads/large/purepng.com-wine-glassglasswine-glasstransparenttumblercrystal-1701528307188ymuow.png',
      'https://purepng.com/public/uploads/large/purepng.com-wine-bottlebottlenarrowerjarexternalinnersealglasswine-1421526460091qg4sm.png',
    ],
    duration: 25,
    returnPolicy:
        '''Per state law, alcohol returns can only be accepted if the product is spoiled or otherwise unfit for consumption, or purchased in error. ''',
  ),
  Menu(
    id: 'w1',
    categories: [
      'drink',
      3,
    ],
    title: 'Apple Juice',
    ingredients: '18 Apples, Cinnamon (optional), Sugar (optional)',
    desc:
        '''Instead of spending big bucks for fresh, healthy apple juice, learn how easy it is to make your own.''',
    price: 5000,
    imgUrl: [
      'https://purepng.com/public/uploads/large/purepng.com-applejuicejuicedrinkingorangedrinktasty-331522417614mo6hc.png',
      'https://purepng.com/public/uploads/large/purepng.com-applejuicejuicedrinkingorangedrinktasty-331522417624zwzpg.png',
    ],
    duration: 25,
    returnPolicy:
        '''Per state law, alcohol returns can only be accepted if the product is spoiled or otherwise unfit for consumption, or purchased in error. ''',
  ),
];

List<Menu> getMenu(String cat, int id) {
  return DUMMY_MEALS
      .where((meal) => meal.categories[0] == cat && meal.categories[1] == id)
      .toList();
}

List<Menu> getByID(String cat, int subID, String id) {
  return DUMMY_MEALS
      .where((meal) =>
          meal.categories[0] == cat &&
          meal.categories[1] == subID &&
          meal.id == id)
      .toList();
}
