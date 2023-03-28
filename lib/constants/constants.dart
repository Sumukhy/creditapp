import 'package:intl/intl.dart';

final NumberFormat indianRupeesFormat = NumberFormat.currency(
  name: "INR",
  locale: 'en_IN',
  decimalDigits: 0,
  symbol: '₹ ',
);
