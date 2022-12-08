import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'professor_record.g.dart';

abstract class ProfessorRecord
    implements Built<ProfessorRecord, ProfessorRecordBuilder> {
  static Serializer<ProfessorRecord> get serializer =>
      _$professorRecordSerializer;

  String? get email;

  @BuiltValueField(wireName: 'photo_url')
  String? get photoUrl;

  String? get uid;

  @BuiltValueField(wireName: 'user_name')
  String? get userName;

  @BuiltValueField(wireName: 'prof_curso')
  String? get profCurso;

  @BuiltValueField(wireName: 'prof_senha')
  String? get profSenha;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(ProfessorRecordBuilder builder) => builder
    ..email = ''
    ..photoUrl = ''
    ..uid = ''
    ..userName = ''
    ..profCurso = ''
    ..profSenha = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('professor');

  static Stream<ProfessorRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<ProfessorRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  ProfessorRecord._();
  factory ProfessorRecord([void Function(ProfessorRecordBuilder) updates]) =
      _$ProfessorRecord;

  static ProfessorRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createProfessorRecordData({
  String? email,
  String? photoUrl,
  String? uid,
  String? userName,
  String? profCurso,
  String? profSenha,
}) {
  final firestoreData = serializers.toFirestore(
    ProfessorRecord.serializer,
    ProfessorRecord(
      (p) => p
        ..email = email
        ..photoUrl = photoUrl
        ..uid = uid
        ..userName = userName
        ..profCurso = profCurso
        ..profSenha = profSenha,
    ),
  );

  return firestoreData;
}
