import 'package:flutter/material.dart';

class ConverterPage extends StatefulWidget {
  const ConverterPage({super.key});

  @override
  State<ConverterPage> createState() => _ConverterPageState();
}

class _ConverterPageState extends State<ConverterPage> {
  TextEditingController controller = TextEditingController();

  double result = 0;

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  void convertCurrency() {
    if (controller.text.isNotEmpty) {
      double usd = double.tryParse(controller.text) ?? 0;

      setState(() {
        result = usd * 110; // 1 USD = 110 BDT (example)
      });
    } else {
      setState(() {
        result = 0;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Converter Page"),
        backgroundColor: Colors.blueGrey,
      ),
      body: Center(
        child: SizedBox(
          height: 420,
          width: 300,
          child: Card(
            color: const Color.fromARGB(255, 183, 205, 216),
            elevation: 5,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  /// Title Row
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text("USD"),
                      SizedBox(width: 5),
                      Icon(Icons.swap_horiz),
                      SizedBox(width: 5),
                      Text("BDT"),
                    ],
                  ),

                  const SizedBox(height: 20),

                  /// Input Field
                  TextFormField(
                    controller: controller,
                    keyboardType:
                        const TextInputType.numberWithOptions(decimal: true),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      hintText: "Enter Amount",
                      labelText: "Amount",
                      prefixIcon: const Icon(Icons.monetization_on),
                    ),
                  ),

                  const SizedBox(height: 20),

                  /// Convert Button
                  ElevatedButton(
                    onPressed: convertCurrency,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueGrey,
                      foregroundColor: Colors.white,
                      fixedSize: const Size(150, 45),
                    ),
                    child: const Text("Convert"),
                  ),

                  const SizedBox(height: 20),

                  /// Result
                  Text(
                    "BDT: ${result.toStringAsFixed(2)}",
                    style: const TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}