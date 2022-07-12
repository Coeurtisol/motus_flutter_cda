import 'package:flutter/material.dart';

class Word {
  String id;
  String word;
  int length;
  DateTime use_date;

  Word(this.id,this.word,this.length,this.use_date);

  Word.fromJson(Map<String,Object?> json) : this(json['id']! as String,json['word']! as String, json['length']! as int, json['use_date']! as DateTime);

  Map<String,dynamic> toJson(){
    return {
      'word' : word,
      'length' : length,
      'use_date' : use_date
    };
  }
}
