import 'package:flutter/material.dart';

class Products extends StatelessWidget {
	final List<String> products;
	Products(this.products);

	@override
	Widget build(BuildContext context) {
		return Column(children: products
			.map((e) =>
				Card(
					child: Column(
						children: [
							Image.asset('assets/images/food.jpeg', width: 45, height: 45),
							Text(e)
						]
					)
				)
			).toList()
		);
	}
}
