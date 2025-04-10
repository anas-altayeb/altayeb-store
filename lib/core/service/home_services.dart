import 'package:cloud_firestore/cloud_firestore.dart';

class HomeService {
  final CollectionReference _categoryCollectionRef =
      FirebaseFirestore.instance.collection('Categories');
  //////////////////////////////////////
  final CollectionReference _productCollectionRef =
      FirebaseFirestore.instance.collection('Products');
  ////////////////////////////////////
  final CollectionReference _phoneproductCollectionRef =
      FirebaseFirestore.instance.collection('PhoneProducts');
  /////////////////////////////////////
  final CollectionReference _monitorproductCollectionRef =
      FirebaseFirestore.instance.collection('MonitorProducts');
  /////////////////////////////////////
  final CollectionReference _appliancesproductCollectionRef =
      FirebaseFirestore.instance.collection('Appliances');
  ////////////////////////////////////
  final CollectionReference _headphoneproductCollectionRef =
      FirebaseFirestore.instance.collection('HeadphoneProducts');
  /////////////////////////////////

  Future<List<QueryDocumentSnapshot>> getCategory() async {
    var value = await _categoryCollectionRef.get();

    return value.docs;
  }

  Future<List<QueryDocumentSnapshot>> products() async {
    var value = await _productCollectionRef.get();

    return value.docs;
  }

  Future<List<QueryDocumentSnapshot>> phoneproducts() async {
    var value = await _phoneproductCollectionRef.get();

    return value.docs;
  }

  Future<List<QueryDocumentSnapshot>> monitorproducts() async {
    var value = await _monitorproductCollectionRef.get();

    return value.docs;
  }

  Future<List<QueryDocumentSnapshot>> appliancesroducts() async {
    var value = await _appliancesproductCollectionRef.get();

    return value.docs;
  }

  Future<List<QueryDocumentSnapshot>> headphoneproduct() async {
    var value = await _headphoneproductCollectionRef.get();

    return value.docs;
  }
}
