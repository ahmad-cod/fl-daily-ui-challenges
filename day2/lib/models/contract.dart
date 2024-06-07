class Contract {
  const Contract({
    required this.client,
    required this.role,
    required this.contractType,
    required this.cost,
    required this.interval,
    required this.imagePath,
  });

  final String client;
  final String role;
  final String contractType;
  final String cost;
  final String interval;
  final String imagePath;
}

List<Contract> contracts = const [
  Contract(
    client: 'OverlayHq',
    role: 'UI/UX Designer',
    contractType: 'Full time',
    cost: '10,000',
    interval: 'Monthly',
    imagePath: 'blue-overlayhq',
  ),
  Contract(
    client: 'Binance',
    role: 'Visual Designer',
    contractType: 'Contract',
    cost: '8,000',
    interval: 'Weekly',
    imagePath: 'blue-binance',
  ),
];