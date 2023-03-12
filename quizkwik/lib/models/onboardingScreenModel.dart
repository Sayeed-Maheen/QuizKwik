class UnbordingContent {
  String title;

  String discription;
  String image;

  UnbordingContent(
      {required this.title, required this.image, required this.discription});
}

List<UnbordingContent> contents = [
  UnbordingContent(
      image: 'assets/images/onboard.png',
      title: 'Challenge your knowledge',
      discription:
          "Test your skills, learn new things, and compete with friends for the top spot!"),
  UnbordingContent(
      image: 'assets/images/onboard2.png',
      title: 'Challenge Your Friends',
      discription:
          "Test Your Knowledge, Make New Friends and Buy Exciting Products"),
  UnbordingContent(
      image: 'assets/images/onboard3.png',
      title: "Compete, Learn and Earn",
      discription: "Challenge yourself, Keep your mind sharp & Earn Points"),
];
