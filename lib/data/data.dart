import 'package:plant_shop_app/models/plant.dart';

final _plant1 = Plant(
    name: 'Strelitzia',
    price: 18,
    category: 'Indoor plant',
    description:
    'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.',
    imageUrl: 'assets/images/plants1.png',
    height: 140,
    specifications: [
      'Suitable for inside',
      'Leaf color: green',
      'Maintenance: easy',
      'Height: 120cm - 150cm'
    ]);

final _plant2 = Plant(
    name: 'Dragon Tree',
    price: 20,
    category: 'Indoor plant',
    description:
    'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.',
    imageUrl: 'assets/images/plants2.png',
    height: 130,
    specifications: [
      'Suitable for inside',
      'Leaf color: green',
      'Maintenance: easy',
      'Height: 100cm - 140cm'
    ]);

final _plant3 = Plant(
    name: 'Snake Plant',
    price: 20,
    category: 'Indoor plant',
    description:
    'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.',
    imageUrl: 'assets/images/plants3.png',
    height: 70,
    specifications: [
      'Suitable for inside',
      'Leaf color: green',
      'Maintenance: easy',
      'Height: 50cm - 100cm'
    ]);

final _plant4 = Plant(
    name: 'Calathea',
    price: 15,
    category: 'Outdoor plant',
    description:
    'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.',
    imageUrl: 'assets/images/plants4.png',
    height: 70,
    specifications: [
      'Not suitable for inside',
      'Leaf color: green',
      'Maintenance: easy',
      'Height: 50cm - 100cm'
    ]);

final _plant5 = Plant(
    name: 'Kentia',
    price: 22,
    category: 'Indoor plant',
    description:
    'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.',
    imageUrl: 'assets/images/plants5.png',
    height: 150,
    specifications: [
      'Suitable for inside',
      'Leaf color: green',
      'Maintenance: easy',
      'Height: 150cm - 180cm'
    ]);

final _plant6 = Plant(
    name: 'Peace Lily',
    price: 16,
    category: 'Indoor plant',
    description:
    'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.',
    imageUrl: 'assets/images/plants6.png',
    height: 110,
    specifications: [
      'Suitable for inside',
      'Leaf color: green',
      'Maintenance: easy',
      'Height: 100cm - 130cm'
    ]);

final List<Plant> popularPlants = [
  _plant1,
  _plant2,
];

final List<Plant> trendingPlants = [
  _plant6,
  _plant5,
  _plant4,
  _plant1,
  _plant2,
  _plant3,
];

final List<String> categoryList = [
  'Popular',
  'Indoor plants',
  'Outdoor plants',
  'Hanging Plants',
  'Others',
];
