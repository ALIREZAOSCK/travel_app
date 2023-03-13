class TravelModel {
  String name;
  String location;
  String distance;
  String description;
  String rate;
  String image;
  String temp;
  String price;

  TravelModel({
    required this.name,
    required this.location,
    required this.image,
    required this.description,
    required this.distance,
    required this.temp,
    required this.rate,
    required this.price,
  });
}

List<TravelModel> travelmodel = [
  TravelModel(
      name: 'Newyork',
      location: 'USA',
      image: 'assets/images/newyork.jpg',
      description: 'New York City comprises 5 boroughs sitting where the Hudson River meets the Atlantic Ocean. At its core is Manhattan, a densely populated borough that’s among the world’s major commercial, financial and cultural centers. Its iconic sites include skyscrapers such as the Empire State Building and sprawling Central Park.',
      distance: '5',
      temp: '48',
      rate: '90',
      price: '3000'),
      TravelModel(
      name: 'Tehran',
      location: 'Iran',
      image: 'assets/images/tehrans.jpg',
      description: 'Tehran is the capital of Iran, in the north of the country. Its central Golestan Palace complex, with its ornate rooms and marble throne, was the seat of power of the Qajar dynasty. The National Jewelry Museum holds many of the Qajar monarchs’ jewels, while the National Museum of Iran has artifacts dating back to Paleolithic times',
      distance: '5',
      temp: '12',
      rate: '100',
      price: '2000'),
      TravelModel(
      name: 'Rome',
      location: 'Italy',
      image:'assets/images/rome.jpeg',
      description: 'Rome is the capital city of Italy. It is also the capital of the Lazio region, the centre of the Metropolitan City of Rome, and a special comune named Comune di Roma Capitale.',
      distance: '5',
      temp: '70',
      rate: '11',
      price: '5000'),
      TravelModel(
      name: 'Paris',
      location: 'France',
      image: 'assets/images/paris.jpeg',
      description: ' Beyond such landmarks as the Eiffel Tower and the 12th-century, Gothic Notre-Dame cathedral, the city is known for its cafe culture and designer boutiques along the Rue du Faubourg Saint-Honoré',
      distance: '5',
      temp: '14',
      rate: '80',
      price: '2000'),
];
