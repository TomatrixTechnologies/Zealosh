class ApiEndpoints {
  // ignore: non_constant_identifier_names
  static String URL = 'https://app.zealoshpaws.com/';
  static String apiBaseURL = '$URL/api/v1';

  static String imageBaseURL = '$URL/image';

  // Authentication Endpoints
  static String auth = '/accounts';
  static String login = '$auth/login/';
  static String tokenRefresh = '$auth/token/refresh/';
  static String profile = '$auth/profile/';
  static String country = '$auth/countries/';

  // Category EndPoints

  static String categories = '/hierarchy/';
  static String subCategories = '/subcategories/?category=';

  // Home EndPoints

  static String sliders = '/sliders/';
  static String offers = '/offers/';
  static String notifications = '/orders/notifications/';

  // Products Api Endpoints
  static String products = '/products/';
  static String singleProduct = products;
  static String categoryProduct = '$products?subcategory__category=';
  static String subCategoryProduct = '$products?subcategory=';
  static String filterProduct = '$products?';
  static String newArrival = 'is_new_arrival=true';
  static String bestSeller = 'is_best_seller=true';
  static String searchProduct = '$products?search=';

  // Cart Api Endpoints orders/view/6/
  static String cart = "/orders/cart/";
  static String editCartItem = "/orders/items/";
  static String editCart = "/orders/view/";
  static String addToCart = "/orders/items/";

  // Orders Api Endpoints
  static String allOrders = "/orders/view/";
  static String ontheWayOrders = "/orders/view/?status=Processing";
  static String deliveredOrders = "/orders/view/?status=Delivered";
  static String singleOrder = "/orders/view/";

}
