class MiServicio {

  static final MiServicio _singleton = MiServicio._();


  factory MiServicio(){
    return _singleton;
  }

  MiServicio._();




  String url = 'https://abc';
  String key = 'ABC123';
}