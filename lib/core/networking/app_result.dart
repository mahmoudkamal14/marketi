class ApiResult<T> {
  final T? data;
  final String? error;
  final bool isLoading;

  ApiResult._({this.data, this.error, required this.isLoading});

  // حالة النجاح
  factory ApiResult.success(T data) {
    return ApiResult._(data: data, isLoading: false);
  }

  // حالة الفشل
  factory ApiResult.failure(String error) {
    return ApiResult._(error: error, isLoading: false);
  }

  // حالة التحميل
  factory ApiResult.loading() {
    return ApiResult._(isLoading: true);
  }

  bool get hasError => error != null;
  bool get hasData => data != null;
}
