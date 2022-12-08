// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'professor_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ProfessorRecord> _$professorRecordSerializer =
    new _$ProfessorRecordSerializer();

class _$ProfessorRecordSerializer
    implements StructuredSerializer<ProfessorRecord> {
  @override
  final Iterable<Type> types = const [ProfessorRecord, _$ProfessorRecord];
  @override
  final String wireName = 'ProfessorRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, ProfessorRecord object,
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
    value = object.profCurso;
    if (value != null) {
      result
        ..add('prof_curso')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.profSenha;
    if (value != null) {
      result
        ..add('prof_senha')
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
  ProfessorRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ProfessorRecordBuilder();

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
        case 'prof_curso':
          result.profCurso = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'prof_senha':
          result.profSenha = serializers.deserialize(value,
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

class _$ProfessorRecord extends ProfessorRecord {
  @override
  final String? email;
  @override
  final String? photoUrl;
  @override
  final String? uid;
  @override
  final String? userName;
  @override
  final String? profCurso;
  @override
  final String? profSenha;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$ProfessorRecord([void Function(ProfessorRecordBuilder)? updates]) =>
      (new ProfessorRecordBuilder()..update(updates))._build();

  _$ProfessorRecord._(
      {this.email,
      this.photoUrl,
      this.uid,
      this.userName,
      this.profCurso,
      this.profSenha,
      this.ffRef})
      : super._();

  @override
  ProfessorRecord rebuild(void Function(ProfessorRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProfessorRecordBuilder toBuilder() =>
      new ProfessorRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProfessorRecord &&
        email == other.email &&
        photoUrl == other.photoUrl &&
        uid == other.uid &&
        userName == other.userName &&
        profCurso == other.profCurso &&
        profSenha == other.profSenha &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, email.hashCode), photoUrl.hashCode),
                        uid.hashCode),
                    userName.hashCode),
                profCurso.hashCode),
            profSenha.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ProfessorRecord')
          ..add('email', email)
          ..add('photoUrl', photoUrl)
          ..add('uid', uid)
          ..add('userName', userName)
          ..add('profCurso', profCurso)
          ..add('profSenha', profSenha)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class ProfessorRecordBuilder
    implements Builder<ProfessorRecord, ProfessorRecordBuilder> {
  _$ProfessorRecord? _$v;

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

  String? _profCurso;
  String? get profCurso => _$this._profCurso;
  set profCurso(String? profCurso) => _$this._profCurso = profCurso;

  String? _profSenha;
  String? get profSenha => _$this._profSenha;
  set profSenha(String? profSenha) => _$this._profSenha = profSenha;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  ProfessorRecordBuilder() {
    ProfessorRecord._initializeBuilder(this);
  }

  ProfessorRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _email = $v.email;
      _photoUrl = $v.photoUrl;
      _uid = $v.uid;
      _userName = $v.userName;
      _profCurso = $v.profCurso;
      _profSenha = $v.profSenha;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProfessorRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ProfessorRecord;
  }

  @override
  void update(void Function(ProfessorRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ProfessorRecord build() => _build();

  _$ProfessorRecord _build() {
    final _$result = _$v ??
        new _$ProfessorRecord._(
            email: email,
            photoUrl: photoUrl,
            uid: uid,
            userName: userName,
            profCurso: profCurso,
            profSenha: profSenha,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
