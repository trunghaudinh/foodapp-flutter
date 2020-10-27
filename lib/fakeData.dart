import 'package:flutter/material.dart';
import 'package:food_app/models/food.dart';
import './models/category.dart';

List<Category> FAKE_CATEGORIES = [
  Category(id: 1, content: 'Japan\'s Food', color: Colors.deepOrange),
  Category(id: 2, content: 'Pizza', color: Colors.teal),
  Category(id: 3, content: 'Humburgers', color: Colors.pink),
  Category(id: 4, content: 'Shushi', color: Colors.green),
  Category(id: 5, content: 'Pho', color: Colors.amber),
  Category(id: 6, content: 'Banh My', color: Colors.redAccent),
  Category(id: 7, content: 'Cheese', color: Colors.blueAccent),
  Category(id: 8, content: 'Bun Bo', color: Colors.blue),
  Category(id: 9, content: 'Bun Ca', color: Colors.cyanAccent),
  Category(id: 10, content: 'My Tom', color: Colors.amberAccent),
  Category(id: 11, content: 'Kem', color: Colors.red),
  Category(id: 12, content: 'Keo keo', color: Colors.lightBlueAccent)
];

var FAKE_FOODS = [
  Food('Sushi', 'https://image2.tienphong.vn/665x449/Uploaded/2020/rkznae/2019_11_14/goc_canh_bao_an_nhieu_sushi_de_bi_nhiem_khuan_0a0e6807_gdef.jpg',
      Duration(minutes: 25), Complexity.Hard,
      1, ['Sushi-meshi','Nori','Ramen']),

  Food('Sushi2', 'https://image2.tienphong.vn/665x449/Uploaded/2020/rkznae/2019_11_14/goc_canh_bao_an_nhieu_sushi_de_bi_nhiem_khuan_0a0e6807_gdef.jpg',
      Duration(minutes: 15), Complexity.Hard,
      1, ['Sushi-meshi','Nori','Ramen']),

  Food('Sushi3', 'https://image2.tienphong.vn/665x449/Uploaded/2020/rkznae/2019_11_14/goc_canh_bao_an_nhieu_sushi_de_bi_nhiem_khuan_0a0e6807_gdef.jpg',
      Duration(minutes: 25), Complexity.Hard,
      1, ['Sushi-meshi','Nori','Ramen']),

  Food('Pizza Banana',
      'https://ichef.bbci.co.uk/images/ic/704xn/p06rgyp6.jpg',
      Duration(minutes: 96), Complexity.Medium,
      2, ['Cheese','Milk','Banana']),
];
