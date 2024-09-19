import 'package:google_maps_flutter/google_maps_flutter.dart';

class ParkingData {
  final String? parkingSpot, location;
  final int? time, twoWheelerRate, fourWheelerRate, phoneNumber;
  final double? rating;
  final LatLng? latlng;
  final List<Review>? reviews;

  ParkingData(
      {this.fourWheelerRate,
      this.location,
      this.parkingSpot,
      this.latlng,
      this.time,
      this.rating,
      this.phoneNumber,
      this.reviews,
      this.twoWheelerRate});
}

class Review {
  final String? username, review, time;

  Review({
    this.review,
    this.time,
    this.username,
  });
}

class StaticData {
  static List<ParkingData> parkingData = [
    ParkingData(
      fourWheelerRate: 75,
      twoWheelerRate: 25,
      time: 8,
      rating: 4.5,
      phoneNumber: 9812389012,
      location: "Bangemuda, Kathmandu",
      parkingSpot: "Bangemuda Free Parking",
      latlng: LatLng(27.70853671911951, 85.31016843002423),
      reviews: [
        Review(
            username: "Binisha Maharjan",
            review: "Very bad customer service!!!",
            time: "2 months ago"),
        Review(
            username: "Anom Maharjan",
            review: "Very bad customer service!!!",
            time: "3 months ago"),
        Review(
            username: "Ram Maharjan",
            review: "Very good customer service!!! Totally satisfied.",
            time: "1 year ago"),
      ],
    ),
    ParkingData(
        fourWheelerRate: 75,
        twoWheelerRate: 25,
        time: 15,
        rating: 4.5,
        phoneNumber: 9812389012,
        latlng: LatLng(27.715638036079078, 85.31289199813776),
        location: "Chaya Center, Kathmandu",
        parkingSpot: "Chhayadevi Parking Lot",
        reviews: [
          Review(
              username: "Binisha Maharjan",
              review: "Very bad customer service!!!",
              time: "2 months ago"),
          Review(
              username: "Anom Maharjan",
              review: "Very bad customer service!!!",
              time: "3 months ago"),
          Review(
              username: "Ram Maharjan",
              review: "Very good customer service!!! Totally satisfied.",
              time: "1 year ago"),
        ]),
    ParkingData(
      fourWheelerRate: 75,
      twoWheelerRate: 25,
      time: 5,
      rating: 4.5,
      phoneNumber: 9812389012,
      location: "Thamel, Kathmandu",
      parkingSpot: "Thamel Parking",
      latlng: LatLng(27.717044618192933, 85.31057738279696),
      reviews: [
        Review(
            username: "Binisha Maharjan",
            review: "Very bad customer service!!!",
            time: "2 months ago"),
        Review(
            username: "Anom Maharjan",
            review: "Very bad customer service!!!",
            time: "3 months ago"),
        Review(
            username: "Ram Maharjan",
            review: "Very good customer service!!! Totally satisfied.",
            time: "1 year ago"),
      ],
    ),
    ParkingData(
      fourWheelerRate: 75,
      twoWheelerRate: 25,
      time: 5,
      rating: 4.5,
      phoneNumber: 9812389012,
      location: "Thamel, Kathmandu",
      parkingSpot: "Narsingh Camp Parking Lot",
      latlng: LatLng(27.71450533595004, 85.31042609444495),
      reviews: [
        Review(
            username: "Binisha Maharjan",
            review: "Very bad customer service!!!",
            time: "2 months ago"),
        Review(
            username: "Anom Maharjan",
            review: "Very bad customer service!!!",
            time: "3 months ago"),
        Review(
            username: "Ram Maharjan",
            review: "Very good customer service!!! Totally satisfied.",
            time: "1 year ago"),
      ],
    ),
    ParkingData(
      fourWheelerRate: 75,
      twoWheelerRate: 25,
      time: 5,
      rating: 4.5,
      phoneNumber: 9812389012,
      location: "Thamel, Kathmandu",
      parkingSpot: "Basement Parking - JP Road, Thamel",
      latlng: LatLng(27.712970549857747, 85.31030841163208),
      reviews: [
        Review(
            username: "Binisha Maharjan",
            review: "Very bad customer service!!!",
            time: "2 months ago"),
        Review(
            username: "Anom Maharjan",
            review: "Very bad customer service!!!",
            time: "3 months ago"),
        Review(
            username: "Ram Maharjan",
            review: "Very good customer service!!! Totally satisfied.",
            time: "1 year ago"),
      ],
    ),
    ParkingData(
      fourWheelerRate: 75,
      twoWheelerRate: 25,
      time: 5,
      rating: 4.5,
      phoneNumber: 9812389012,
      location: "Thamel, Kathmandu",
      parkingSpot: "Parking near CAFE DE GENRE",
      latlng: LatLng(27.712970549857747, 85.31030841163208),
      reviews: [
        Review(
            username: "Binisha Maharjan",
            review: "Very bad customer service!!!",
            time: "2 months ago"),
        Review(
            username: "Anom Maharjan",
            review: "Very bad customer service!!!",
            time: "3 months ago"),
        Review(
            username: "Ram Maharjan",
            review: "Very good customer service!!! Totally satisfied.",
            time: "1 year ago"),
      ],
    ),
    ParkingData(
      fourWheelerRate: 75,
      twoWheelerRate: 25,
      time: 5,
      rating: 4.5,
      phoneNumber: 9812389012,
      location: "Chhetrapati, Kathmandu",
      parkingSpot: "Chhatrapati Free Clinic Parking",
      latlng: LatLng(27.710792815390697, 85.30836718427575),
      reviews: [
        Review(
            username: "Binisha Maharjan",
            review: "Very bad customer service!!!",
            time: "2 months ago"),
        Review(
            username: "Anom Maharjan",
            review: "Very bad customer service!!!",
            time: "3 months ago"),
        Review(
            username: "Ram Maharjan",
            review: "Very good customer service!!! Totally satisfied.",
            time: "1 year ago"),
      ],
    ),
    ParkingData(
      fourWheelerRate: 75,
      twoWheelerRate: 25,
      time: 5,
      rating: 4.5,
      phoneNumber: 9812389012,
      location: "Chhetrapati, Kathmandu",
      parkingSpot: "Shree NawaDurga Pay Parking",
      latlng: LatLng(27.71233152966654, 85.30772345416402),
      reviews: [
        Review(
            username: "Binisha Maharjan",
            review: "Very bad customer service!!!",
            time: "2 months ago"),
        Review(
            username: "Anom Maharjan",
            review: "Very bad customer service!!!",
            time: "3 months ago"),
        Review(
            username: "Ram Maharjan",
            review: "Very good customer service!!! Totally satisfied.",
            time: "1 year ago"),
      ],
    ),
    ParkingData(
      fourWheelerRate: 75,
      twoWheelerRate: 25,
      time: 5,
      rating: 4.5,
      phoneNumber: 9812389012,
      location: "Makkhan, Kathmandu",
      parkingSpot: "Suraj Arcade Pay Parking- only bike and bicycle:",
      latlng: LatLng(27.705685834097228, 85.30837320978549),
      reviews: [
        Review(
            username: "Binisha Maharjan",
            review: "Very bad customer service!!!",
            time: "2 months ago"),
        Review(
            username: "Anom Maharjan",
            review: "Very bad customer service!!!",
            time: "3 months ago"),
        Review(
            username: "Ram Maharjan",
            review: "Very good customer service!!! Totally satisfied.",
            time: "1 year ago"),
      ],
    ),
    ParkingData(
      fourWheelerRate: 75,
      twoWheelerRate: 25,
      time: 5,
      rating: 4.5,
      phoneNumber: 9812389012,
      location: "Thamel, Kathmandu",
      parkingSpot: "Sukra Path Parking",
      latlng: LatLng(27.704035044045984, 85.30919226429107),
      reviews: [
        Review(
            username: "Binisha Maharjan",
            review: "Very bad customer service!!!",
            time: "2 months ago"),
        Review(
            username: "Anom Maharjan",
            review: "Very bad customer service!!!",
            time: "3 months ago"),
        Review(
            username: "Ram Maharjan",
            review: "Very good customer service!!! Totally satisfied.",
            time: "1 year ago"),
      ],
    ),
    ParkingData(
      fourWheelerRate: 75,
      twoWheelerRate: 25,
      time: 5,
      rating: 4.5,
      phoneNumber: 9812389012,
      location: "Bishal Bazar, Kathmandu",
      parkingSpot: "Bishal Bazar Parking",
      latlng: LatLng(27.70385746097144, 85.30959575580779),
      reviews: [
        Review(
            username: "Binisha Maharjan",
            review: "Very bad customer service!!!",
            time: "2 months ago"),
        Review(
            username: "Anom Maharjan",
            review: "Very bad customer service!!!",
            time: "3 months ago"),
        Review(
            username: "Ram Maharjan",
            review: "Very good customer service!!! Totally satisfied.",
            time: "1 year ago"),
      ],
    ),
    ParkingData(
      fourWheelerRate: 75,
      twoWheelerRate: 25,
      time: 5,
      rating: 4.5,
      phoneNumber: 9812389012,
      location: "Sundhara, Kathmandu",
      parkingSpot: "Kathmandu Mall Basement Parking",
      latlng: LatLng(27.701920957870747, 85.31313716745578),
      reviews: [
        Review(
            username: "Binisha Maharjan",
            review: "Very bad customer service!!!",
            time: "2 months ago"),
        Review(
            username: "Anom Maharjan",
            review: "Very bad customer service!!!",
            time: "3 months ago"),
        Review(
            username: "Ram Maharjan",
            review: "Very good customer service!!! Totally satisfied.",
            time: "1 year ago"),
      ],
    ),
    ParkingData(
      fourWheelerRate: 75,
      twoWheelerRate: 25,
      time: 5,
      rating: 4.5,
      phoneNumber: 9812389012,
      location: "New Road, Kathmandu",
      parkingSpot: "New road street parking-Valet parking service",
      latlng: LatLng(27.703173941533528, 85.30893077910383),
      reviews: [
        Review(
            username: "Binisha Maharjan",
            review: "Very bad customer service!!!",
            time: "2 months ago"),
        Review(
            username: "Anom Maharjan",
            review: "Very bad customer service!!!",
            time: "3 months ago"),
        Review(
            username: "Ram Maharjan",
            review: "Very good customer service!!! Totally satisfied.",
            time: "1 year ago"),
      ],
    ),
    ParkingData(
      fourWheelerRate: 75,
      twoWheelerRate: 25,
      time: 5,
      rating: 4.5,
      phoneNumber: 9812389012,
      location: "Khichapokhari, Kathmandu",
      parkingSpot: "RB Complex- paid parking",
      latlng: LatLng(27.71450533595004, 85.31042609444495),
      reviews: [
        Review(
            username: "Binisha Maharjan",
            review: "Very bad customer service!!!",
            time: "2 months ago"),
        Review(
            username: "Anom Maharjan",
            review: "Very bad customer service!!!",
            time: "3 months ago"),
        Review(
            username: "Ram Maharjan",
            review: "Very good customer service!!! Totally satisfied.",
            time: "1 year ago"),
      ],
    ),
    ParkingData(
      fourWheelerRate: 75,
      twoWheelerRate: 25,
      time: 5,
      rating: 4.5,
      phoneNumber: 9812389012,
      location: "Pashupati Plaza, Kathmandu",
      parkingSpot: "Pashupati Plaza parking",
      latlng: LatLng(27.702473971485684, 85.31106886134074),
      reviews: [
        Review(
            username: "Binisha Maharjan",
            review: "Very bad customer service!!!",
            time: "2 months ago"),
        Review(
            username: "Anom Maharjan",
            review: "Very bad customer service!!!",
            time: "3 months ago"),
        Review(
            username: "Ram Maharjan",
            review: "Very good customer service!!! Totally satisfied.",
            time: "1 year ago"),
      ],
    ),
    ParkingData(
      fourWheelerRate: 75,
      twoWheelerRate: 25,
      time: 5,
      rating: 4.5,
      phoneNumber: 9812389012,
      location: "Ranjana Galli, Kathmandu",
      parkingSpot: "Ranjana Trade center-",
      latlng: LatLng(27.704266557125457, 85.31043230978547),
      reviews: [
        Review(
            username: "Binisha Maharjan",
            review: "Very bad customer service!!!",
            time: "2 months ago"),
        Review(
            username: "Anom Maharjan",
            review: "Very bad customer service!!!",
            time: "3 months ago"),
        Review(
            username: "Ram Maharjan",
            review: "Very good customer service!!! Totally satisfied.",
            time: "1 year ago"),
      ],
    ),
    ParkingData(
      fourWheelerRate: 75,
      twoWheelerRate: 25,
      time: 5,
      rating: 4.5,
      phoneNumber: 9812389012,
      location: "Dharahara, Kathmandu",
      parkingSpot: "Dharahara Underground parking",
      latlng: LatLng(27.701161655833065, 85.31247196745574),
      reviews: [
        Review(
            username: "Binisha Maharjan",
            review: "Very bad customer service!!!",
            time: "2 months ago"),
        Review(
            username: "Anom Maharjan",
            review: "Very bad customer service!!!",
            time: "3 months ago"),
        Review(
            username: "Ram Maharjan",
            review: "Very good customer service!!! Totally satisfied.",
            time: "1 year ago"),
      ],
    ),
    ParkingData(
      fourWheelerRate: 75,
      twoWheelerRate: 25,
      time: 5,
      rating: 4.5,
      phoneNumber: 9812389012,
      location: "Jamal, Kathmandu",
      parkingSpot: "Parking Sthal Jamal",
      latlng: LatLng(27.70874764898655, 85.31380629444479),
      reviews: [
        Review(
            username: "Binisha Maharjan",
            review: "Very bad customer service!!!",
            time: "2 months ago"),
        Review(
            username: "Anom Maharjan",
            review: "Very bad customer service!!!",
            time: "3 months ago"),
        Review(
            username: "Ram Maharjan",
            review: "Very good customer service!!! Totally satisfied.",
            time: "1 year ago"),
      ],
    ),
  ];
}
