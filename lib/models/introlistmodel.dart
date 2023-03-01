class InroListModels {
  late final String image;
  late final String title;
  late final String body;

  InroListModels({
    required this.image,
    required this.title,
    required this.body,
  });
  static List<InroListModels> getInroListModels() {
    return [
      InroListModels(
          body:
              'Lorem Ipsum is simply a dummy text of the printing and typesetting industry. Lorem Ipsum has been',
          image: 'assets/images/ad_banner_one.png',
          title: 'Transfer money Safer'),
      InroListModels(
          body:
              'Lorem Ipsum is simply a dummy text of the printing and typesetting industry. Lorem Ipsum has been',
          image: 'assets/images/ad_banner_two.png',
          title: 'Transfer money Safer'),
      InroListModels(
          body:
              'Lorem Ipsum is simply a dummy text of the printing and typesetting industry. Lorem Ipsum has been',
          image: 'assets/images/ad_banner_three.png',
          title: 'Transfer money Safer')
    ];
  }
}
