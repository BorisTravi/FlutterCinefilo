import 'package:movie_app/common/MediaProvides.dart';
import 'package:movie_app/common/util.dart';
class Cast{
  int id;
  String name;
  String profilePath;

  String getCastUrl()=> getMediumPictureUrl(profilePath);
  factory Cast(Map jsonMap, MediaType mediaType){
    try{
      return new Cast.deserialize(jsonMap, mediaType);
    }catch(ex){
      throw ex;
    }
  } 

  Cast.deserialize(Map jsonMap, MediaType mediaType) :
  id = (mediaType == MediaType.movie ? jsonMap["cast_id"]: jsonMap["id"]).toInt(),
  name = jsonMap["name"],
  profilePath = jsonMap["profile_path"] ?? "";
}