class OurProjectModel {
  String iconPath;
  String projectTitle;
  String projectDescription;
  String team;
  String? downloadLink;
  String? webSiteLink;

  OurProjectModel({
    required this.iconPath,
    required this.projectTitle,
    required this.projectDescription,
    required this.team,
    this.downloadLink,
    this.webSiteLink,
  });
}
