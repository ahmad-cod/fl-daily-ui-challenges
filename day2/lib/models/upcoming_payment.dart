class UpcomingPayment {
  const UpcomingPayment ({
    required this.client,
    required this.imagePath,
    required this.amount,
    required this.date,
    required this.dueIn,
  });

  final String client;
  final String imagePath;
  final String amount;
  final String date;
  final String dueIn;
}

List<UpcomingPayment> uPayments = const [
  UpcomingPayment(
    client: 'OverlayHq',
    amount: '10,000',
    date: 'Jan 13th, 2023',
    dueIn: '3 days',
    imagePath: 'blue-overlayhq',
  ),
  UpcomingPayment(
    client: 'Binance',
    amount: '8,000',
    date: 'Jan 30th, 2023',
    dueIn: '20 days',
    imagePath: 'blue-binance',
  ),
];