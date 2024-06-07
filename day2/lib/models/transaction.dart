class Transaction {
  const Transaction({
    required this.client,
    required this.role,
    required this.workType,
    required this.amount,
    required this.transactionType,
    required this.imagePath,
  });

  final String client;
  final String role;
  final String workType;
  final String amount;
  final String transactionType;
  final String imagePath;
}

List<Transaction> transactions = const [
  Transaction(
    client: 'OverlayHq',
    role: 'UI/UX Designer',
    workType: 'Contract',
    amount: '10,000',
    transactionType: 'received',
    imagePath: 'white-overlayhqlogo',
    
  ),
  Transaction(
    client: 'Binance',
    role: 'Visual Designer',
    workType: 'Contract',
    amount: '8,000',
    transactionType: 'received',
    imagePath: 'white-binancelogo',
  ),
  Transaction(
    client: 'Coinbase',
    role: 'Visual Designer',
    workType: 'Contract',
    amount: '18,000',
    transactionType: 'withdrawn',
    imagePath: 'white-coinbaselogo',
  ),
  Transaction(
    client: 'Binance',
    role: 'Visual Designer',
    workType: 'Contract',
    amount: '8,000',
    transactionType: 'received',
    imagePath: 'white-binancelogo',
  ),
  Transaction(
    client: 'Coinbase',
    role: 'Visual Designer',
    workType: 'Contract',
    amount: '12,000',
    transactionType: 'withdrawn',
    imagePath: 'white-coinbaselogo',
  ),
];