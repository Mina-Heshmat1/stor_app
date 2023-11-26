/// rate : 3.9
/// count : 120

class RatingModel {
  RatingModel({
      this.rate, 
      this.count,});

  RatingModel.fromJson(dynamic json) {
    rate = json['rate'];
    count = json['count'];
  }
  num? rate;
  num? count;
RatingModel copyWith({  num? rate,
  num? count,
}) => RatingModel(  rate: rate ?? this.rate,
  count: count ?? this.count,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['rate'] = rate;
    map['count'] = count;
    return map;
  }

}