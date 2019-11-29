// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Occasions.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$Occasions on OccasionBase, Store {
  final _$_occasionAtom = Atom(name: 'OccasionBase._occasion');

  @override
  Occasion get _occasion {
    _$_occasionAtom.context.enforceReadPolicy(_$_occasionAtom);
    _$_occasionAtom.reportObserved();
    return super._occasion;
  }

  @override
  set _occasion(Occasion value) {
    _$_occasionAtom.context.conditionallyRunInAction(() {
      super._occasion = value;
      _$_occasionAtom.reportChanged();
    }, _$_occasionAtom, name: '${_$_occasionAtom.name}_set');
  }

  final _$OccasionBaseActionController = ActionController(name: 'OccasionBase');

  @override
  void setOccasion(Occasion occasion) {
    final _$actionInfo = _$OccasionBaseActionController.startAction();
    try {
      return super.setOccasion(occasion);
    } finally {
      _$OccasionBaseActionController.endAction(_$actionInfo);
    }
  }
}
