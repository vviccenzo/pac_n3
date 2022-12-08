// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'documento_final_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<DocumentoFinalRecord> _$documentoFinalRecordSerializer =
    new _$DocumentoFinalRecordSerializer();

class _$DocumentoFinalRecordSerializer
    implements StructuredSerializer<DocumentoFinalRecord> {
  @override
  final Iterable<Type> types = const [
    DocumentoFinalRecord,
    _$DocumentoFinalRecord
  ];
  @override
  final String wireName = 'DocumentoFinalRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, DocumentoFinalRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.docNome;
    if (value != null) {
      result
        ..add('doc_nome')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.docDesc;
    if (value != null) {
      result
        ..add('doc_desc')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.docHoras;
    if (value != null) {
      result
        ..add('doc_horas')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.docImg;
    if (value != null) {
      result
        ..add('doc_img')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.userEmail;
    if (value != null) {
      result
        ..add('user_email')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.docStatusNew;
    if (value != null) {
      result
        ..add('doc_statusNew')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.aluHoras;
    if (value != null) {
      result
        ..add('alu_horas')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  DocumentoFinalRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DocumentoFinalRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'doc_nome':
          result.docNome = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'doc_desc':
          result.docDesc = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'doc_horas':
          result.docHoras = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'doc_img':
          result.docImg = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'user_email':
          result.userEmail = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'doc_statusNew':
          result.docStatusNew = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'alu_horas':
          result.aluHoras = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$DocumentoFinalRecord extends DocumentoFinalRecord {
  @override
  final String? docNome;
  @override
  final String? docDesc;
  @override
  final int? docHoras;
  @override
  final String? docImg;
  @override
  final String? userEmail;
  @override
  final String? docStatusNew;
  @override
  final DocumentReference<Object?>? aluHoras;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$DocumentoFinalRecord(
          [void Function(DocumentoFinalRecordBuilder)? updates]) =>
      (new DocumentoFinalRecordBuilder()..update(updates))._build();

  _$DocumentoFinalRecord._(
      {this.docNome,
      this.docDesc,
      this.docHoras,
      this.docImg,
      this.userEmail,
      this.docStatusNew,
      this.aluHoras,
      this.ffRef})
      : super._();

  @override
  DocumentoFinalRecord rebuild(
          void Function(DocumentoFinalRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DocumentoFinalRecordBuilder toBuilder() =>
      new DocumentoFinalRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DocumentoFinalRecord &&
        docNome == other.docNome &&
        docDesc == other.docDesc &&
        docHoras == other.docHoras &&
        docImg == other.docImg &&
        userEmail == other.userEmail &&
        docStatusNew == other.docStatusNew &&
        aluHoras == other.aluHoras &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc($jc(0, docNome.hashCode), docDesc.hashCode),
                            docHoras.hashCode),
                        docImg.hashCode),
                    userEmail.hashCode),
                docStatusNew.hashCode),
            aluHoras.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DocumentoFinalRecord')
          ..add('docNome', docNome)
          ..add('docDesc', docDesc)
          ..add('docHoras', docHoras)
          ..add('docImg', docImg)
          ..add('userEmail', userEmail)
          ..add('docStatusNew', docStatusNew)
          ..add('aluHoras', aluHoras)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class DocumentoFinalRecordBuilder
    implements Builder<DocumentoFinalRecord, DocumentoFinalRecordBuilder> {
  _$DocumentoFinalRecord? _$v;

  String? _docNome;
  String? get docNome => _$this._docNome;
  set docNome(String? docNome) => _$this._docNome = docNome;

  String? _docDesc;
  String? get docDesc => _$this._docDesc;
  set docDesc(String? docDesc) => _$this._docDesc = docDesc;

  int? _docHoras;
  int? get docHoras => _$this._docHoras;
  set docHoras(int? docHoras) => _$this._docHoras = docHoras;

  String? _docImg;
  String? get docImg => _$this._docImg;
  set docImg(String? docImg) => _$this._docImg = docImg;

  String? _userEmail;
  String? get userEmail => _$this._userEmail;
  set userEmail(String? userEmail) => _$this._userEmail = userEmail;

  String? _docStatusNew;
  String? get docStatusNew => _$this._docStatusNew;
  set docStatusNew(String? docStatusNew) => _$this._docStatusNew = docStatusNew;

  DocumentReference<Object?>? _aluHoras;
  DocumentReference<Object?>? get aluHoras => _$this._aluHoras;
  set aluHoras(DocumentReference<Object?>? aluHoras) =>
      _$this._aluHoras = aluHoras;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  DocumentoFinalRecordBuilder() {
    DocumentoFinalRecord._initializeBuilder(this);
  }

  DocumentoFinalRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _docNome = $v.docNome;
      _docDesc = $v.docDesc;
      _docHoras = $v.docHoras;
      _docImg = $v.docImg;
      _userEmail = $v.userEmail;
      _docStatusNew = $v.docStatusNew;
      _aluHoras = $v.aluHoras;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DocumentoFinalRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DocumentoFinalRecord;
  }

  @override
  void update(void Function(DocumentoFinalRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DocumentoFinalRecord build() => _build();

  _$DocumentoFinalRecord _build() {
    final _$result = _$v ??
        new _$DocumentoFinalRecord._(
            docNome: docNome,
            docDesc: docDesc,
            docHoras: docHoras,
            docImg: docImg,
            userEmail: userEmail,
            docStatusNew: docStatusNew,
            aluHoras: aluHoras,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
