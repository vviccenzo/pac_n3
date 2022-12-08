// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aluno_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AlunoRecord> _$alunoRecordSerializer = new _$AlunoRecordSerializer();

class _$AlunoRecordSerializer implements StructuredSerializer<AlunoRecord> {
  @override
  final Iterable<Type> types = const [AlunoRecord, _$AlunoRecord];
  @override
  final String wireName = 'AlunoRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, AlunoRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.email;
    if (value != null) {
      result
        ..add('email')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.photoUrl;
    if (value != null) {
      result
        ..add('photo_url')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.uid;
    if (value != null) {
      result
        ..add('uid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.userName;
    if (value != null) {
      result
        ..add('user_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.aluCurso;
    if (value != null) {
      result
        ..add('alu_curso')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.aluSenha;
    if (value != null) {
      result
        ..add('alu_senha')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.aluHoras;
    if (value != null) {
      result
        ..add('alu_horas')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.aluHorasNew;
    if (value != null) {
      result
        ..add('alu_horasNew')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
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
  AlunoRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AlunoRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'photo_url':
          result.photoUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'uid':
          result.uid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'user_name':
          result.userName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'alu_curso':
          result.aluCurso = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'alu_senha':
          result.aluSenha = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'alu_horas':
          result.aluHoras = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'alu_horasNew':
          result.aluHorasNew = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
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

class _$AlunoRecord extends AlunoRecord {
  @override
  final String? email;
  @override
  final String? photoUrl;
  @override
  final String? uid;
  @override
  final String? userName;
  @override
  final String? aluCurso;
  @override
  final String? aluSenha;
  @override
  final int? aluHoras;
  @override
  final String? aluHorasNew;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$AlunoRecord([void Function(AlunoRecordBuilder)? updates]) =>
      (new AlunoRecordBuilder()..update(updates))._build();

  _$AlunoRecord._(
      {this.email,
      this.photoUrl,
      this.uid,
      this.userName,
      this.aluCurso,
      this.aluSenha,
      this.aluHoras,
      this.aluHorasNew,
      this.ffRef})
      : super._();

  @override
  AlunoRecord rebuild(void Function(AlunoRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AlunoRecordBuilder toBuilder() => new AlunoRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AlunoRecord &&
        email == other.email &&
        photoUrl == other.photoUrl &&
        uid == other.uid &&
        userName == other.userName &&
        aluCurso == other.aluCurso &&
        aluSenha == other.aluSenha &&
        aluHoras == other.aluHoras &&
        aluHorasNew == other.aluHorasNew &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc($jc($jc(0, email.hashCode), photoUrl.hashCode),
                                uid.hashCode),
                            userName.hashCode),
                        aluCurso.hashCode),
                    aluSenha.hashCode),
                aluHoras.hashCode),
            aluHorasNew.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AlunoRecord')
          ..add('email', email)
          ..add('photoUrl', photoUrl)
          ..add('uid', uid)
          ..add('userName', userName)
          ..add('aluCurso', aluCurso)
          ..add('aluSenha', aluSenha)
          ..add('aluHoras', aluHoras)
          ..add('aluHorasNew', aluHorasNew)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class AlunoRecordBuilder implements Builder<AlunoRecord, AlunoRecordBuilder> {
  _$AlunoRecord? _$v;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _photoUrl;
  String? get photoUrl => _$this._photoUrl;
  set photoUrl(String? photoUrl) => _$this._photoUrl = photoUrl;

  String? _uid;
  String? get uid => _$this._uid;
  set uid(String? uid) => _$this._uid = uid;

  String? _userName;
  String? get userName => _$this._userName;
  set userName(String? userName) => _$this._userName = userName;

  String? _aluCurso;
  String? get aluCurso => _$this._aluCurso;
  set aluCurso(String? aluCurso) => _$this._aluCurso = aluCurso;

  String? _aluSenha;
  String? get aluSenha => _$this._aluSenha;
  set aluSenha(String? aluSenha) => _$this._aluSenha = aluSenha;

  int? _aluHoras;
  int? get aluHoras => _$this._aluHoras;
  set aluHoras(int? aluHoras) => _$this._aluHoras = aluHoras;

  String? _aluHorasNew;
  String? get aluHorasNew => _$this._aluHorasNew;
  set aluHorasNew(String? aluHorasNew) => _$this._aluHorasNew = aluHorasNew;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  AlunoRecordBuilder() {
    AlunoRecord._initializeBuilder(this);
  }

  AlunoRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _email = $v.email;
      _photoUrl = $v.photoUrl;
      _uid = $v.uid;
      _userName = $v.userName;
      _aluCurso = $v.aluCurso;
      _aluSenha = $v.aluSenha;
      _aluHoras = $v.aluHoras;
      _aluHorasNew = $v.aluHorasNew;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AlunoRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AlunoRecord;
  }

  @override
  void update(void Function(AlunoRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AlunoRecord build() => _build();

  _$AlunoRecord _build() {
    final _$result = _$v ??
        new _$AlunoRecord._(
            email: email,
            photoUrl: photoUrl,
            uid: uid,
            userName: userName,
            aluCurso: aluCurso,
            aluSenha: aluSenha,
            aluHoras: aluHoras,
            aluHorasNew: aluHorasNew,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
