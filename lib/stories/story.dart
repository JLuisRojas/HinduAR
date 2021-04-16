class Section {
  final String title;
  final String body;

  Section({
    this.title,
    this.body,
  });
}

abstract class Story {
  String title;
  String image;
  String ar;

  List<Section> sections;
}
