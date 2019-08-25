import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
abstract class ListEquatableState extends Equatable {
  ListEquatableState([List props = const []]) : super(props);
}

class ListState extends ListEquatableState {
  final bool isLoading;
  final String content;

  ListState({@required this.isLoading, @required this.content}): super([isLoading, content]);
}