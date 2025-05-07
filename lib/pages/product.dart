import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    final categories = ['ALL', 'CHAIR', 'TABLE', 'LIGHTING', 'DECORATION'];

    return Container(
      color: Colors.white70, // Background halaman
      child: Column(
        children: [
          Container(
            color: Colors.white, // Background kategori tab
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: SizedBox(
              height: 40,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 12),
                itemCount: categories.length,
                separatorBuilder: (context, index) => const SizedBox(width: 20),
                itemBuilder: (context, index) {
                  final isAll = index == 0;
                  return isAll
                      ? Container(
                          width: 60,
                          height: 30,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black, width: 1.2),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: const Text(
                            'ALL',
                            style: TextStyle(
                              fontSize: 13,
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        )
                      : Center(
                          child: Text(
                            categories[index],
                            style: const TextStyle(
                              fontSize: 13,
                              color: Colors.black,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        );
                },
              ),
            ),
          ),
          const Expanded(
            child: Center(child: Text("Product List Here")),
          ),
        ],
      ),
    );
  }
}
