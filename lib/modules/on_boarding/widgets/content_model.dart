class UnbordingContent {
  String? image;
  String? title;
  String? discription;

  UnbordingContent({this.image, this.title, this.discription});
}

List<UnbordingContent> contents = [
  UnbordingContent(
      title: 'Best Customers To Serve You',
      image: 'assets/images/onboarding1.png',
      discription:
          "marketing is done to serve you easily and collect the largest customers "),
  UnbordingContent(
    title: 'Easily Select Working Hours',
    image: 'assets/images/onboarding2.png',
    discription: "add available time to work using \n schedule",
  ),
  UnbordingContent(
      title: 'Get Feedback To Your Service',
      image: 'assets/images/onboarding3.png',
      discription: "customer can give you feedback \n To your serve"),
];
