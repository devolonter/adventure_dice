// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'isar_roll_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetIsarRollModelCollection on Isar {
  IsarCollection<IsarRollModel> get isarRollModels => this.collection();
}

const IsarRollModelSchema = CollectionSchema(
  name: r'Rolls',
  id: -7481504655693309746,
  properties: {
    r'dieSides': PropertySchema(
      id: 0,
      name: r'dieSides',
      type: IsarType.byte,
    ),
    r'history': PropertySchema(
      id: 1,
      name: r'history',
      type: IsarType.byteList,
    ),
    r'modifiers': PropertySchema(
      id: 2,
      name: r'modifiers',
      type: IsarType.byteList,
    ),
    r'result': PropertySchema(
      id: 3,
      name: r'result',
      type: IsarType.byte,
    )
  },
  estimateSize: _isarRollModelEstimateSize,
  serialize: _isarRollModelSerialize,
  deserialize: _isarRollModelDeserialize,
  deserializeProp: _isarRollModelDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _isarRollModelGetId,
  getLinks: _isarRollModelGetLinks,
  attach: _isarRollModelAttach,
  version: '3.1.0+1',
);

int _isarRollModelEstimateSize(
  IsarRollModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.history.length;
  bytesCount += 3 + object.modifiers.length;
  return bytesCount;
}

void _isarRollModelSerialize(
  IsarRollModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeByte(offsets[0], object.dieSides);
  writer.writeByteList(offsets[1], object.history);
  writer.writeByteList(offsets[2], object.modifiers);
  writer.writeByte(offsets[3], object.result);
}

IsarRollModel _isarRollModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = IsarRollModel();
  object.dieSides = reader.readByte(offsets[0]);
  object.history = reader.readByteList(offsets[1]) ?? [];
  object.id = id;
  object.modifiers = reader.readByteList(offsets[2]) ?? [];
  object.result = reader.readByte(offsets[3]);
  return object;
}

P _isarRollModelDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readByte(offset)) as P;
    case 1:
      return (reader.readByteList(offset) ?? []) as P;
    case 2:
      return (reader.readByteList(offset) ?? []) as P;
    case 3:
      return (reader.readByte(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _isarRollModelGetId(IsarRollModel object) {
  return object.id ?? Isar.autoIncrement;
}

List<IsarLinkBase<dynamic>> _isarRollModelGetLinks(IsarRollModel object) {
  return [];
}

void _isarRollModelAttach(
    IsarCollection<dynamic> col, Id id, IsarRollModel object) {
  object.id = id;
}

extension IsarRollModelQueryWhereSort
    on QueryBuilder<IsarRollModel, IsarRollModel, QWhere> {
  QueryBuilder<IsarRollModel, IsarRollModel, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension IsarRollModelQueryWhere
    on QueryBuilder<IsarRollModel, IsarRollModel, QWhereClause> {
  QueryBuilder<IsarRollModel, IsarRollModel, QAfterWhereClause> idEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<IsarRollModel, IsarRollModel, QAfterWhereClause> idNotEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<IsarRollModel, IsarRollModel, QAfterWhereClause> idGreaterThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<IsarRollModel, IsarRollModel, QAfterWhereClause> idLessThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<IsarRollModel, IsarRollModel, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension IsarRollModelQueryFilter
    on QueryBuilder<IsarRollModel, IsarRollModel, QFilterCondition> {
  QueryBuilder<IsarRollModel, IsarRollModel, QAfterFilterCondition>
      dieSidesEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'dieSides',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarRollModel, IsarRollModel, QAfterFilterCondition>
      dieSidesGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'dieSides',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarRollModel, IsarRollModel, QAfterFilterCondition>
      dieSidesLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'dieSides',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarRollModel, IsarRollModel, QAfterFilterCondition>
      dieSidesBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'dieSides',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<IsarRollModel, IsarRollModel, QAfterFilterCondition>
      historyElementEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'history',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarRollModel, IsarRollModel, QAfterFilterCondition>
      historyElementGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'history',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarRollModel, IsarRollModel, QAfterFilterCondition>
      historyElementLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'history',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarRollModel, IsarRollModel, QAfterFilterCondition>
      historyElementBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'history',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<IsarRollModel, IsarRollModel, QAfterFilterCondition>
      historyLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'history',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<IsarRollModel, IsarRollModel, QAfterFilterCondition>
      historyIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'history',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<IsarRollModel, IsarRollModel, QAfterFilterCondition>
      historyIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'history',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<IsarRollModel, IsarRollModel, QAfterFilterCondition>
      historyLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'history',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<IsarRollModel, IsarRollModel, QAfterFilterCondition>
      historyLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'history',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<IsarRollModel, IsarRollModel, QAfterFilterCondition>
      historyLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'history',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<IsarRollModel, IsarRollModel, QAfterFilterCondition> idIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<IsarRollModel, IsarRollModel, QAfterFilterCondition>
      idIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<IsarRollModel, IsarRollModel, QAfterFilterCondition> idEqualTo(
      Id? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarRollModel, IsarRollModel, QAfterFilterCondition>
      idGreaterThan(
    Id? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarRollModel, IsarRollModel, QAfterFilterCondition> idLessThan(
    Id? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarRollModel, IsarRollModel, QAfterFilterCondition> idBetween(
    Id? lower,
    Id? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<IsarRollModel, IsarRollModel, QAfterFilterCondition>
      modifiersElementEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'modifiers',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarRollModel, IsarRollModel, QAfterFilterCondition>
      modifiersElementGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'modifiers',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarRollModel, IsarRollModel, QAfterFilterCondition>
      modifiersElementLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'modifiers',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarRollModel, IsarRollModel, QAfterFilterCondition>
      modifiersElementBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'modifiers',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<IsarRollModel, IsarRollModel, QAfterFilterCondition>
      modifiersLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'modifiers',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<IsarRollModel, IsarRollModel, QAfterFilterCondition>
      modifiersIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'modifiers',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<IsarRollModel, IsarRollModel, QAfterFilterCondition>
      modifiersIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'modifiers',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<IsarRollModel, IsarRollModel, QAfterFilterCondition>
      modifiersLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'modifiers',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<IsarRollModel, IsarRollModel, QAfterFilterCondition>
      modifiersLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'modifiers',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<IsarRollModel, IsarRollModel, QAfterFilterCondition>
      modifiersLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'modifiers',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<IsarRollModel, IsarRollModel, QAfterFilterCondition>
      resultEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'result',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarRollModel, IsarRollModel, QAfterFilterCondition>
      resultGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'result',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarRollModel, IsarRollModel, QAfterFilterCondition>
      resultLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'result',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarRollModel, IsarRollModel, QAfterFilterCondition>
      resultBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'result',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension IsarRollModelQueryObject
    on QueryBuilder<IsarRollModel, IsarRollModel, QFilterCondition> {}

extension IsarRollModelQueryLinks
    on QueryBuilder<IsarRollModel, IsarRollModel, QFilterCondition> {}

extension IsarRollModelQuerySortBy
    on QueryBuilder<IsarRollModel, IsarRollModel, QSortBy> {
  QueryBuilder<IsarRollModel, IsarRollModel, QAfterSortBy> sortByDieSides() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dieSides', Sort.asc);
    });
  }

  QueryBuilder<IsarRollModel, IsarRollModel, QAfterSortBy>
      sortByDieSidesDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dieSides', Sort.desc);
    });
  }

  QueryBuilder<IsarRollModel, IsarRollModel, QAfterSortBy> sortByResult() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'result', Sort.asc);
    });
  }

  QueryBuilder<IsarRollModel, IsarRollModel, QAfterSortBy> sortByResultDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'result', Sort.desc);
    });
  }
}

extension IsarRollModelQuerySortThenBy
    on QueryBuilder<IsarRollModel, IsarRollModel, QSortThenBy> {
  QueryBuilder<IsarRollModel, IsarRollModel, QAfterSortBy> thenByDieSides() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dieSides', Sort.asc);
    });
  }

  QueryBuilder<IsarRollModel, IsarRollModel, QAfterSortBy>
      thenByDieSidesDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dieSides', Sort.desc);
    });
  }

  QueryBuilder<IsarRollModel, IsarRollModel, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<IsarRollModel, IsarRollModel, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<IsarRollModel, IsarRollModel, QAfterSortBy> thenByResult() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'result', Sort.asc);
    });
  }

  QueryBuilder<IsarRollModel, IsarRollModel, QAfterSortBy> thenByResultDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'result', Sort.desc);
    });
  }
}

extension IsarRollModelQueryWhereDistinct
    on QueryBuilder<IsarRollModel, IsarRollModel, QDistinct> {
  QueryBuilder<IsarRollModel, IsarRollModel, QDistinct> distinctByDieSides() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'dieSides');
    });
  }

  QueryBuilder<IsarRollModel, IsarRollModel, QDistinct> distinctByHistory() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'history');
    });
  }

  QueryBuilder<IsarRollModel, IsarRollModel, QDistinct> distinctByModifiers() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'modifiers');
    });
  }

  QueryBuilder<IsarRollModel, IsarRollModel, QDistinct> distinctByResult() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'result');
    });
  }
}

extension IsarRollModelQueryProperty
    on QueryBuilder<IsarRollModel, IsarRollModel, QQueryProperty> {
  QueryBuilder<IsarRollModel, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<IsarRollModel, int, QQueryOperations> dieSidesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'dieSides');
    });
  }

  QueryBuilder<IsarRollModel, List<int>, QQueryOperations> historyProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'history');
    });
  }

  QueryBuilder<IsarRollModel, List<int>, QQueryOperations> modifiersProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'modifiers');
    });
  }

  QueryBuilder<IsarRollModel, int, QQueryOperations> resultProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'result');
    });
  }
}
