class CarList{
  final int id;
  final String title;
  final String thumbnailUrl;
  CarList(this.id,this.title, this.thumbnailUrl);
}

// Sample Data
List<CarList> carList = [
  CarList(1, 'Honda Civic','assets/car.jpg'),
  CarList(2,  'Ferari','assets/car1.jpg'),
  CarList(3,  'Cultus','assets/car2.jpg'),
  CarList(4,  'Mehran','assets/car.jpg'),
  CarList(5,  'Audie','assets/car1.jpg'),
];