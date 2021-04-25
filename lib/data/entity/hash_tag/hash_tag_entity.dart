import 'package:flutterapp/data/entity/entity.dart';

class HashTagEntity extends Entity<int> {
  
  final String title;
  final int isMandatory;

  HashTagEntity(
    {int id,
    this.title,
    this.isMandatory,}) : super(id);

  @override
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'isMandatory': isMandatory,
    };
  }

  @override
  List<Object> get props => [
    id,
    title,
    isMandatory,
  ];
}