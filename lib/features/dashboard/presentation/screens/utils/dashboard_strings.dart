class DashboardString {
  static const appBarHeader = "Home";
  static const heyUser = "Hey,";
  static const welcomeMessageHeader =
      "Multi-Services for Your Real Estate Needs";
  static const welcomeMessageBody =
      "Explore diverse real estate services for all your needs: property management, construction, insurance and more in one place.";
  static const order = "Order";
  static const categories = "Categories";
  static const services = "Services";
  static const orders = "Orders";
  static const categoriesView = "Categories View";
  static const seeAll = "see all";
  static const constructions = "Constructions";
  static const insurances = "Insurances";
  static const legal = "Legal";
  static const buyAndSell = "Buy & Sell";
  static const accountingServices = "Accounting Services";

  static const noOrdersFoundMessageHeader = "No orders found";
  static const noOrdersFoundMessageBody =
      "you can place your needed orders to let serve you.";

  static String getOrders(int ordersNum) {
    return "$orders($ordersNum)";
  }

  static String welcomeUser(String userName) {
    return "$heyUser $userName";
  }
}
