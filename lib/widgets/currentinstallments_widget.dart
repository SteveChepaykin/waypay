import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:waypay/models/installment_model.dart';
import 'package:waypay/widgets/carouselelement_widget.dart';

class CurrentInstallments extends StatefulWidget {
  final List<Installment> installments;
  const CurrentInstallments({required this.installments, super.key});

  @override
  State<CurrentInstallments> createState() => _CurrentinstallmentsState();
}

class _CurrentinstallmentsState extends State<CurrentInstallments> {
  @override
  Widget build(BuildContext context) {
    var sizes = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(top: 0),
      child: CarouselSlider(
        key: ValueKey(sizes.hashCode),
        items: widget.installments.map((e) => CarouselElement(e, height:  sizes.height * 0.3)).toList(),
        options: CarouselOptions(
            height: sizes.height * 0.3,
            viewportFraction: 0.85,
            autoPlayInterval: const Duration(seconds: 10),
            autoPlay: widget.installments.length <= 1 ? false : true,
            enlargeCenterPage: false,
            enlargeStrategy: CenterPageEnlargeStrategy.zoom,
            enableInfiniteScroll: widget.installments.length <= 4 ? false : true,
            initialPage: 0,
            scrollPhysics: widget.installments.length <= 1 ? const NeverScrollableScrollPhysics() : null,
            onPageChanged: (index, reason) {
              print("newpage");
            }),
      ),
    );
  }
}
