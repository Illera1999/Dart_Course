

class Loaction {
  final double lat;
  final double lon;

  const Loaction(this.lat, this.lon);

  @override
  String toString() {
    return 'La localidad es: $lat, $lon';
  }

}





void main(List<String> args) {
  final sanFrancisco1 = new Loaction(37.7749, -122.4191);
  final sanFrancisco2 = new Loaction(37.7749, -122.4194);
  final sanFrancisco3 = new Loaction(37.7749, -122.4194);

  print(sanFrancisco1 == sanFrancisco2);
  print(sanFrancisco2 == sanFrancisco3);

  const sanFrancisco4 = const Loaction(37.7749, -122.4191);
  const sanFrancisco5 = const Loaction(37.7749, -122.4194);
  const sanFrancisco6 = const Loaction(37.7749, -122.4194);
  
  print(sanFrancisco4 == sanFrancisco5);
  print(sanFrancisco5 == sanFrancisco6);
}