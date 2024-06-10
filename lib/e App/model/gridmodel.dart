class Homeegridmodel {
  String? name;
  String? image;
  String? offer;
  String? price;
  int count;

  Homeegridmodel(this.name,
      this.image,
      this.offer,
      this.price,
      this.count);
}

List<Homeegridmodel> HomeproductList = [
  Homeegridmodel("Smartphones",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRzjkL2yLqdFNpg1hAtZaT8VAlINPtOPDyMKQ&s",
      "offer", "999", 0),
  Homeegridmodel("Computers",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRfv_31mUqNyVbMsDArvCC4FKq4emxjzWVYPA&s",
      "offer", "999", 1),
  Homeegridmodel("Speakers",
      "https://media.istockphoto.com/id/182883783/photo/two-huge-speakers.jpg?s=612x612&w=0&k=20&c=zTfPZvaBig4EkH0V78EFRtbXL-ETdP1EZoSEVzlGQgA=",
      "offer", "999", 2),
  Homeegridmodel("Watches",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRSEO5j-u-ATG0q2_Sz_bGIDadWK4jZDuNNKA&s",
      "offer", "999", 3),
];

class Allgridmodel {
  final String? name;
  final String? image;
  final String? offer;
  final String? price;
  final int? count;

  Allgridmodel({
    this.name,
    this.image,
    this.offer,
    this.price,
    this.count,
  });
}

List<Allgridmodel> allgridproductList = [
  Allgridmodel(
      name: "Smartphones",
      image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRzjkL2yLqdFNpg1hAtZaT8VAlINPtOPDyMKQ&s",
      offer: "offer",
      price: "999",
      count: 0),
  Allgridmodel(
      name: "Computers",
      image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRfv_31mUqNyVbMsDArvCC4FKq4emxjzWVYPA&s",
      offer: "offer",
      price: "999",
      count: 1),
  Allgridmodel(
      name: "Speakers",
      image: "https://media.istockphoto.com/id/182883783/photo/two-huge-speakers.jpg?s=612x612&w=0&k=20&c=zTfPZvaBig4EkH0V78EFRtbXL-ETdP1EZoSEVzlGQgA=",
      offer: "offer",
      price: "999",
      count: 2),
  Allgridmodel(
      name: "Watches",
      image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRSEO5j-u-ATG0q2_Sz_bGIDadWK4jZDuNNKA&s",
      offer: "offer",
      price: "999",
      count: 3),
];
