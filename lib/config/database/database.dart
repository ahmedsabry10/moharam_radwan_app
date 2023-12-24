import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:moharam_radwan/config/shared/date_utils.dart';
import 'package:moharam_radwan/models/package_model.dart';
import '../../models/offers_model.dart';

class MyDatabase{

  ///offer
  static CollectionReference<OfferModel> getOfferCollection(){
    var tasksCollection = FirebaseFirestore
        .instance
        .collection(OfferModel.collectionName)
        .withConverter<OfferModel>(
      fromFirestore: (snapshot ,option)=>OfferModel.fromFireStore(
          snapshot.data()!
      ),
      toFirestore: (offer ,option)=>offer.toFireStore(),
    );
    return tasksCollection;
  }
  ///insert offer
  static Future <void> createOffer(OfferModel offer){
    var tasksCollection=getOfferCollection();
    var doc=tasksCollection.doc();
    offer.dateTime=offer.dateTime?.extractDateOnly();
    offer.id=doc.id;
    return doc.set(offer);
  }
  ///get offer
  static Stream<QuerySnapshot<OfferModel>> getStreamOffer(){
    return getOfferCollection() //.orderBy('dateTime' ,descending: true)
        .snapshots();
  }
  ///delete offer
  static Future<void> deleteOffer(String offerId){
    var taskDoc=getOfferCollection().doc(offerId);
    return taskDoc.delete();
  }




  ///packages
  static CollectionReference<PackageModel> getPackagesCollection(){
    var tasksCollection = FirebaseFirestore
        .instance
        .collection(PackageModel.collectionName)
        .withConverter<PackageModel>(
      fromFirestore: (snapshot ,option)=>PackageModel.fromFireStore(
          snapshot.data()!
      ),
      toFirestore: (pack ,option)=>pack.toFireStore(),
    );
    return tasksCollection;
  }
  ///insert
  static Future <void> createPackage(PackageModel package){
    var tasksCollection=getPackagesCollection();
    var doc=tasksCollection.doc();
    package.id=doc.id;
    return doc.set(package);
  }
  ///get
  static Stream<QuerySnapshot<PackageModel>> getStreamPackage(){
    return getPackagesCollection() //.orderBy('dateTime' ,descending: true)
        .snapshots();
  }
  ///delete package
  static Future<void> deletePackage(String packageId){
    var taskDoc=getPackagesCollection().doc(packageId);
    return taskDoc.delete();
  }
}