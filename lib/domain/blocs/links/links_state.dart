import 'package:equatable/equatable.dart';

/// Abstract of links state.
abstract class LinksState extends Equatable {
  /// Constructor
  const LinksState();

  @override
  List<Object> get props => [];
}

/// State yielded while links are being loaded.
class LinksLoading extends LinksState {}

/// State yields a list of [links] on success of loading.
class LinksLoaded extends LinksState {
  /// [links] is a list of all loaded links.
  final List<dynamic> links;

  /// Constructor
  LinksLoaded(this.links);

  @override
  List<Object> get props => [links];
}

/// State yielded while links are being loaded.
class LinksNotLoaded extends LinksState {}
