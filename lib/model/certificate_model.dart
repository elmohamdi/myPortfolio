class CertificateModel {
  final String name;
  final String organization;
  final String date;
  final String skills;
  final String credential;

  CertificateModel({
    required this.name,
    required this.organization,
    required this.date,
    required this.skills,
    required this.credential,
  });
}

List<CertificateModel> certificateList = [
  CertificateModel(
    name: 'Getting Start With Mobile App Developing',
    organization: 'Skills Dynamics',
    date: 'Jun 2025',
    skills: 'Flutter . Dart . FireBase . UI&UX . FLutter Advanced . FreeLancing',
    credential:  'https://depi.gov.eg/content/home',
  ),
];
