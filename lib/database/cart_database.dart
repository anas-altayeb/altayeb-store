import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:store/core/constant/constant.dart';
import 'package:store/model/cart_product_model.dart';

class CartDatabase {
  CartDatabase._();

  static final CartDatabase db = CartDatabase._();
  // ignore: unused_field
  static Database? _database;

  Future<Database> get database async {
  return
   //   _database!;
    _database = await initDb();

  }

  initDb() async {
    String path = join(await getDatabasesPath(), 'CartProduct.db');
    return await openDatabase(
        path, version: 1, onCreate: (Database db, int version) async {
      await db.execute('''
  CREATE TABLE $tableCartProduct(
  $columnName TEXT NOT NULL,
  $columnImage TEXT NOT NULL,
  $columnPrice TEXT NOT NULL,
  $columnQuantity INTEGER NOT NULL,
  $columnProductId TEXT NOT NULL)
  ''');
    });
  }
 Future<List<CartProductModel>>   getAllProduct()async{
  var dbClient = await database;
  List<Map> maps=await dbClient.query(tableCartProduct);
  List<CartProductModel>list=maps.isNotEmpty?
      maps.map((product) => CartProductModel.fromJson(product)).toList()
      :[];
  return list;
}
  insert(CartProductModel model) async {
    var dbClient = await database;
    await dbClient.insert(
        tableCartProduct,
        model.toJson(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }
}
