import '../models/category.dart';
import '../models/menu.dart';

// ignore: constant_identifier_names
const DUMMY_CATEGORIES = [
  Category(
    id: 'food',
    title: 'Food',
    subCategories: [SubCategory(id: 'burder', title: 'Burder')],
  ),
  Category(
    id: 'food',
    title: 'Food',
    subCategories: [SubCategory(id: 'piza', title: 'Pizza')],
  ),
  Category(
    id: 'food',
    title: 'Food',
    subCategories: [SubCategory(id: 'chicken', title: 'Chickens')],
  ),
  Category(
    id: 'drink',
    title: 'Drinks',
    subCategories: [SubCategory(id: 'wine', title: 'Wine')],
  ),
  Category(
    id: 'drink',
    title: 'Drinks',
    subCategories: [SubCategory(id: 'jouice', title: 'Jouice')],
  ),
  Category(
    id: 'drink',
    title: 'Drinks',
    subCategories: [SubCategory(id: 'hotdrink', title: 'Hot Drinks')],
  ),
];

// ignore: constant_identifier_names
const DUMMY_MEALS = [
  Menu(
    id: 'b1',
    categories: [
      'food',
      'burger',
    ],
    title: 'Cheddar-Stuffed Burgers',
    desc:
        '''Chef Kyle Bailey makes these cheese-stuffed "Juicy Lucy" burgers with a custom blend of ground rib eye steak and pork fatback, and serves them on homemade herb-butter rolls. This streamlined version for the home cook calls for ground beef chuck and store-bought brioche buns.''',
    price: 250,
    imgUrl: [
      'https://purepng.com/public/uploads/large/purepng.com-burgerburger-food-941524644427c1mut.png',
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
    id: 'b2',
    categories: [
      'food',
      'burger',
    ],
    title: 'Cheddar-Stuffed Burgers',
    desc:
        '''Chef Kyle Bailey makes these cheese-stuffed "Juicy Lucy" burgers with a custom blend of ground rib eye steak and pork fatback, and serves them on homemade herb-butter rolls. This streamlined version for the home cook calls for ground beef chuck and store-bought brioche buns.''',
    price: 250,
    imgUrl: [
      'https://purepng.com/public/uploads/large/purepng.com-burgerburger-food-941524644427c1mut.png',
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
      'burger',
    ],
    title: 'Cheddar-Stuffed Burgers',
    desc:
        '''Chef Kyle Bailey makes these cheese-stuffed "Juicy Lucy" burgers with a custom blend of ground rib eye steak and pork fatback, and serves them on homemade herb-butter rolls. This streamlined version for the home cook calls for ground beef chuck and store-bought brioche buns.''',
    price: 250,
    imgUrl: [
      'https://purepng.com/public/uploads/large/purepng.com-burgerburger-food-941524644427c1mut.png',
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
      'burger',
    ],
    title: 'Cheddar-Stuffed Burgers',
    desc:
        '''Chef Kyle Bailey makes these cheese-stuffed "Juicy Lucy" burgers with a custom blend of ground rib eye steak and pork fatback, and serves them on homemade herb-butter rolls. This streamlined version for the home cook calls for ground beef chuck and store-bought brioche buns.''',
    price: 250,
    imgUrl: [
      'https://purepng.com/public/uploads/large/purepng.com-burgerburger-food-941524644427c1mut.png',
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
    id: 'w1',
    categories: [
      'drink',
      'wine',
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
      'juice',
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