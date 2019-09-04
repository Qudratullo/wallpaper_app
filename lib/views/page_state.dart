class PageState {
  PageState();
  factory PageState.loading() = LoadingState;
  factory PageState.data(dynamic feature) = DataState;
  factory PageState.errorState(String message) = ErrorState;
}

class LoadingState extends PageState {}

class DataState extends PageState {
  dynamic feature;
  DataState(this.feature);
}

class ErrorState extends PageState {
  String message;
  ErrorState(this.message);
}