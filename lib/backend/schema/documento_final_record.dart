import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'documento_final_record.g.dart';

abstract class DocumentoFinalRecord
    implements Built<DocumentoFinalRecord, DocumentoFinalRecordBuilder> {
  static Serializer<DocumentoFinalRecord> get serializer =>
      _$documentoFinalRecordSerializer;

  @BuiltValueField(wireName: 'doc_nome')
  String? get docNome;

  @BuiltValueField(wireName: 'doc_desc')
  String? get docDesc;

  @BuiltValueField(wireName: 'doc_horas')
  int? get docHoras;

  @BuiltValueField(wireName: 'doc_img')
  String? get docImg;

  @BuiltValueField(wireName: 'user_email')
  String? get userEmail;

  @BuiltValueField(wireName: 'doc_statusNew')
  String? get docStatusNew;

  @BuiltValueField(wireName: 'alu_horas')
  DocumentReference? get aluHoras;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(DocumentoFinalRecordBuilder builder) => builder
    ..docNome = ''
    ..docDesc = ''
    ..docHoras = 0
    ..docImg = ''
    ..userEmail = ''
    ..docStatusNew = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('documentoFinal');

  static Stream<DocumentoFinalRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<DocumentoFinalRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  DocumentoFinalRecord._();
  factory DocumentoFinalRecord(
          [void Function(DocumentoFinalRecordBuilder) updates]) =
      _$DocumentoFinalRecord;

  static DocumentoFinalRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createDocumentoFinalRecordData({
  String? docNome,
  String? docDesc,
  int? docHoras,
  String? docImg,
  String? userEmail,
  String? docStatusNew,
  DocumentReference? aluHoras,
}) {
  final firestoreData = serializers.toFirestore(
    DocumentoFinalRecord.serializer,
    DocumentoFinalRecord(
      (d) => d
        ..docNome = docNome
        ..docDesc = docDesc
        ..docHoras = docHoras
        ..docImg = docImg
        ..userEmail = userEmail
        ..docStatusNew = docStatusNew
        ..aluHoras = aluHoras,
    ),
  );

  return firestoreData;
}
