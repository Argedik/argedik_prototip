class OnBoardModel {
  final String title;
  final String description;
  final String imageName;
  final String btnNextText;
  final String? btnSkip;

  OnBoardModel({
    required this.title,
    required this.description,
    required this.imageName,
    required this.btnNextText,
    this.btnSkip,
  });

  String get imageWithPath => "assets/images/onboard_screen/$imageName.png";
}

class OnBoardItems {
  static final List<OnBoardModel> onBoardItems = [
    OnBoardModel(
        title: "Connect Your Wallet",
        description: "Use Trust Wallet or Metamask to connect to the app",
        imageName: "onboard",
        btnNextText: "Next",
        btnSkip: "Skip"),
    OnBoardModel(
        title: "Create Your NFT",
        description: "Use Trust Wallet or Metamask to connect to the app",
        imageName: "onboard",
        btnNextText: "Next",
        btnSkip: "Skip"),
    OnBoardModel(
        title: "Start Earning",
        description: "Use Trust Wallet or Metamask to connect to the app",
        imageName: "onboard",
        btnNextText: "Next"),
  ];
}
