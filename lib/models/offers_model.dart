


/// ,required this.imageUrl,required this.price ,required this.size
class OfferModel{
  static const String collectionName='offers';
  String? id;
  String? name;
  String? price;
  String? imageUrl;
  DateTime? dateTime;

  OfferModel({
    this.id ,this.name,
    required this.imageUrl, this.dateTime,this.price
  }
      );

  OfferModel.fromFireStore (Map <String,dynamic> data)  {
    id=data['id'];
    name=data['arabicName'];

    imageUrl=data['imageUrl'];
    price=data['price'];
    dateTime= DateTime.fromMillisecondsSinceEpoch(data['dateTime']);

  }

  Map <String ,dynamic> toFireStore(){
    return {
      'id': id,
      'arabicName':name ,
      'dateTime': dateTime!.millisecondsSinceEpoch,
      'imageUrl': imageUrl,
      'price':price,
    };
  }

}