class Author {
  String name;
  String imageUrl;

  Author({this.name, this.imageUrl});
}

final Author lisa =
    Author(name: 'Lisa Davis', imageUrl: 'assets/avatars/woman.png');

final Author martha =
    Author(name: 'Martha Raynolds', imageUrl: 'assets/avatars/woman-1.png');

final Author veni =
    Author(name: 'Dr. Veni', imageUrl: 'assets/avatars/doctor.png');

final Author samantha =
    Author(name: 'Dr. Samantha', imageUrl: 'assets/avatars/gynecologist.png');
final Author naomi =
    Author(name: 'Naomi Watson', imageUrl: 'assets/avatars/woman-2.png');
final Author lavanya =
    Author(name: 'Lavanya', imageUrl: 'assets/avatars/woman-3.png');
final Author amelia =
    Author(name: 'Amelia Smith', imageUrl: 'assets/avatars/woman-4.png');

final List<Author> authors = [
  lisa,
  martha,
  veni,
  samantha,
  naomi,
  lavanya,
  amelia
];
