


/// ,required this.imageUrl,required this.price ,required this.size
class PackageModel{
  static const String collectionName='packages';
  String? id;
  String? name;
  String? price;
  String? duration;
  String? description;
  PackageModel({
    this.id ,this.name,
    required this.duration, this.description,this.price
  }
      );

  PackageModel.fromFireStore (Map <String,dynamic> data)  {
    id=data['id'];
    name=data['arabicName'];
    duration=data['imageUrl'];
    price=data['price'];
    description= data['description'];
  }

  Map <String ,dynamic> toFireStore(){
    return {
      'id': id,
      'arabicName':name,
      'description': description,
      'imageUrl': duration,
      'price':price,
    };
  }

}