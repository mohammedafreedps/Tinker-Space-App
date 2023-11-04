import 'package:hive/hive.dart';

part 'LinksModel.g.dart';

@HiveType(typeId: 1)
class URLS {
  @HiveField(0)
  String Urls;
  @HiveField(1)
  String title;

  URLS(this.Urls,this.title);
}
