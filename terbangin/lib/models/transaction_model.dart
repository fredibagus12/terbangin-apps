// import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:terbangin/models/destination_model.dart';

class TransactionModel extends Equatable {
  final String id;
  final DestinationModel destination;
  final int amountOfTraveler;
  final String selectedSeat;
  final bool insurance;
  final bool refundable;
  final double vat;
  final int price;
  final int grandTotal;

  const TransactionModel({
    required this.destination,
    this.id = '',
    this.amountOfTraveler = 0,
    this.selectedSeat = '',
    this.insurance = false,
    this.refundable = false,
    this.vat = 0,
    this.price = 0,
    this.grandTotal = 0,
  });

  // ignore: non_constant_identifier_names
  factory TransactionModel.fromJson(String id, Map<String, dynamic> Json) =>
      TransactionModel(
        destination: DestinationModel.fromJson(
            Json['destination']['id'], Json['destination']),
        id: id,
        amountOfTraveler: Json['amountOfTraveler'],
        selectedSeat: Json['selectedSeat'],
        insurance: Json['insurance'],
        refundable: Json['refundable'],
        vat: Json['vat'],
        price: Json['price'],
        grandTotal: Json['grandTotal'],
      );

  @override
  List<Object?> get props => [
        destination,
        amountOfTraveler,
        selectedSeat,
        insurance,
        refundable,
        vat,
        price,
        grandTotal,
      ];
}
