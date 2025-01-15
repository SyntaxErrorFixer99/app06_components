import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  const CardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Card Page",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.redAccent,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Primera tarjeta
            Container(
              margin: const EdgeInsets.all(20.0),
              padding: const EdgeInsets.all(12.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(18.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    offset: const Offset(4, 4),
                    blurRadius: 12.0,
                  ),
                ],
              ),
              child: Column(
                children: [
                  const Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in...",
                    maxLines: 5,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 10.0),
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    width: double.infinity,
                    height: 40.0,
                    decoration: BoxDecoration(
                      color: Colors.deepPurpleAccent,
                      borderRadius: BorderRadius.circular(20.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.deepPurpleAccent.withOpacity(0.6),
                          blurRadius: 10,
                          offset: const Offset(4, 4),
                        ),
                      ],
                    ),
                    alignment: Alignment.center,
                    child: const Text(
                      "Follow me",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 15.0,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // Segunda tarjeta
            Container(
              margin: const EdgeInsets.all(20.0),
              padding: const EdgeInsets.all(12.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(18.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    offset: const Offset(4, 4),
                    blurRadius: 12.0,
                  ),
                ],
              ),
              child: Row(
                children: [
                  // Imagen
                  Container(
                    height: 60.0,
                    width: 60.0,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/ico.png"),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(12.0)),
                    ),
                  ),
                  const SizedBox(width: 12.0),
                  // Texto
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Fiorella Guadalupe de las Nieves Azules",
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 6.0),
                        Text(
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua...",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(fontSize: 14.0),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            // Tercera tarjeta
            Container(
              margin: const EdgeInsets.all(20.0),
              padding: const EdgeInsets.all(12.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(18.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    offset: const Offset(4, 4),
                    blurRadius: 12.0,
                  ),
                ],
              ),
              child: Row(
                children: [
                  // Texto
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea...",
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(fontSize: 14.0),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 12.0),
                  // Imagen
                  Container(
                    height: 60.0,
                    width: 60.0,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/ico2.png"),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(12.0)),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
