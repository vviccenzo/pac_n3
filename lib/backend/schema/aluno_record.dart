import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'aluno_record.g.dart';

abstract class AlunoRecord implements Built<AlunoRecord, AlunoRecordBuilder> {
  static Serializer<AlunoRecord> get serializer => _$alunoRecordSerializer;

  String? get email;

  @BuiltValueField(wireName: 'photo_url')
  String? get photoUrl;

  String? get uid;

  @BuiltValueField(wireName: 'user_name')
  String? get userName;

  @BuiltValueField(wireName: 'alu_curso')
  String? get aluCurso;

  @BuiltValueField(wireName: 'alu_senha')
  String? get aluSenha;

  @BuiltValueField(wireName: 'alu_horas')
  int? get aluHoras;

  @BuiltValueField(wireName: 'alu_horasNew')
  String? get aluHorasNew;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(AlunoRecordBuilder builder) => builder
    ..email = ''
    ..photoUrl = ''
    ..uid = ''
    ..userName = ''
    ..aluCurso = ''
    ..aluSenha = ''
    ..aluHoras = 0
    ..aluHorasNew = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('aluno');

  static Stream<AlunoRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<AlunoRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  AlunoRecord._();
  factory AlunoRecord([void Function(AlunoRecordBuilder) updates]) =
      _$AlunoRecord;

  static AlunoRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createAlunoRecordData({
  String? email,
  String? photoUrl,
  String? uid,
  String? userName,
  String? aluCurso,
  String? aluSenha,
  int? aluHoras,
  String? aluHorasNew,
}) {
  final firestoreData = serializers.toFirestore(
    AlunoRecord.serializer,
    AlunoRecord(
      (a) => a
        ..email = email
        ..photoUrl = photoUrl
        ..uid = uid
        ..userName = userName
        ..aluCurso = aluCurso
        ..aluSenha = aluSenha
        ..aluHoras = aluHoras
        ..aluHorasNew = aluHorasNew,
    ),
  );

  return firestoreData;
}
