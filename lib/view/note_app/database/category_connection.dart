import 'dart:developer';
import 'dart:io';


import 'package:menu_desgin/view/note_app/database/category_varriable.dart';
import 'package:menu_desgin/view/note_app/model/category_model.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class CategoryDatabase{
   Future<Database> initializeDatabase() async {
    final Directory tempDir = await getTemporaryDirectory();
    final Directory appDocumentsDir = await getApplicationDocumentsDirectory();
    String path = await getDatabasesPath();
    return openDatabase(
      join(path,'categorydb.db'),
      onCreate: (database, version) async {
        await database.execute(
          'CREATE TABLE $categoryTable($categoryId INTEGER PRIMARY KEY, $categoryTitle TEXT,$categoryBody TEXT,$categoryDate TEXT)',
        );
      },
      version: 1,
    );
  }
    Future<void> insertCategory(CategoryModel category) async {
    var db = await initializeDatabase();
    await db.insert(categoryTable, category.toMap());
    log('Add category success');
  }
  Future<List<CategoryModel>> getCategorys() async {
    var db = await initializeDatabase();
    List<Map<String, dynamic>> resultCategory = await db.query(categoryTable);
    return resultCategory.map((category) => CategoryModel.fromMap(category)).toList();
  }
}