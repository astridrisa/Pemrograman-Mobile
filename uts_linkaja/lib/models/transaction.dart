class Transaction {
  final String title;
  final String date;
  final String amount;
  final String description;
  final String status;

  Transaction({
    required this.title,
    required this.date,
    required this.amount,
    required this.description,
    required this.status,
  });
}