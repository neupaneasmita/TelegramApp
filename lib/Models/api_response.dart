class APIResponse<T> {
  //T is for generic type of data
  T data;
  //bool is for whether server return an error or not
  bool error;
  //just have the error message
  String errorMessage;
  APIResponse({this.data, this.errorMessage, this.error=false});

}