class ErrorMessages{
    static const String serverRequestCanceled = "Request to the server was cancelled.";
    static const String connectionTimeout = "Connection timed out.";
    static const String receiveTimeout = "Receiving timeout occurred.";
    static const String sendTimeout = "Request send timeout.";
    static const String connectionError = "No Internet.";
    static const String defaultErrorMessage = "Something went wrong";

    static const String statusCode400 = "Backend error.";
    static const String statusCode401 = "Authentication failed.";
    static const String statusCode403 = "The authenticated user is not allowed to access the specified API endpoint.";
    static const String statusCode404 = "Bad request";
    static const String statusCode405 = "Method not allowed. Please check the Allow header for the allowed HTTP methods.";
    static const String statusCode415 = "Unsupported media type. The requested content type or version number is invalid.";
    static const String statusCode422 = "Data validation failed.";
    static const String statusCode429 = "Too many requests.";
    static const String statusCode500 = "Internal server error.";
}
