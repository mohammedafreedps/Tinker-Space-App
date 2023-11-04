// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'LinksModel.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class URLSAdapter extends TypeAdapter<URLS> {
  @override
  final int typeId = 1;

  @override
  URLS read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return URLS(
      fields[0] as String,
      fields[1] as String,
    );
  }

  @override
  void write(BinaryWriter writer, URLS obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.Urls)
      ..writeByte(1)
      ..write(obj.title);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is URLSAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
