

import 'package:menu_desgin/view/note_app/database/category_varriable.dart';

class CategoryModel {
  late int id;
  late String title;
  late String body;
  late String date;
  CategoryModel(
      {required this.id,
      required this.title,
      required this.body,
      required this.date});
  Map<String, dynamic> toMap() {
    return {categoryId: id, categoryBody: body, categoryTitle: title, categoryDate: date};
  }

  factory CategoryModel.fromMap(Map<String, dynamic> res) {
    return CategoryModel(
        id: res[categoryId],
        title: res[categoryTitle],
        body: res[categoryBody],
        date: res[categoryDate]);
  }
}
