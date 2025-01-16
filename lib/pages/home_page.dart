import 'package:app06_components_20242/pages/alert_page.dart';
import 'package:app06_components_20242/pages/avatar_page.dart';
import 'package:app06_components_20242/pages/card_page.dart';
import 'package:app06_components_20242/pages/card_page2.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              const SizedBox(
                height: 20.0,
              ),
              Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                  image: const DecorationImage(
                    image: AssetImage("assets/images/david.jpg"),
                  ),
                  borderRadius: BorderRadius.circular(20.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.5),
                      offset: const Offset(5, 5),
                      blurRadius: 12.0,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Text(
                "Flutter Components",
                style: GoogleFonts.poppins(
                  fontSize: 22.0,
                  letterSpacing: 1,
                ),
              ),
              const SizedBox(
                width: 160.0,
                child: Divider(),
              ),
              ItemComponentWidget(title: "Avatar", toPage: const AvatarPage()),
              ItemComponentWidget(title: "Alert", toPage: const AlertPage()),
              ItemComponentWidget(title: "Card", toPage: const CardPage()),
              ItemComponentWidget(title: "Card2", toPage: const CardPage2()),
              // Nuevo campo con la imagen de Pexels
              ItemComponentWidget(
                title: "Imagen Pexels",
                toPage: const PexelsImagePage(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ItemComponentWidget extends StatelessWidget {
  final String title;
  final Widget toPage;

  const ItemComponentWidget({
    super.key,
    required this.title,
    required this.toPage,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 6.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            offset: const Offset(4, 4),
            blurRadius: 12.0,
          ),
        ],
      ),
      child: ListTile(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => toPage),
          );
        },
        leading: const Icon(
          Icons.check_circle_outline,
          color: Colors.black,
        ),
        title: Text(
          title,
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w500,
          ),
        ),
        subtitle: Text(
          "Ir a detalle de $title",
          style: GoogleFonts.poppins(),
        ),
        trailing: Icon(
          Icons.chevron_right_outlined,
          color: Colors.black.withOpacity(0.2),
        ),
      ),
    );
  }
}

// Página para mostrar la nueva imagen
class PexelsImagePage extends StatelessWidget {
  const PexelsImagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Imagen de Pexels"),
      ),
      body: Center(
        child: Container(
          margin: const EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16.0),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
                offset: const Offset(4, 4),
                blurRadius: 12.0,
              ),
            ],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(16.0),
            child: Image.network(
              'https://images.pexels.com/photos/1181244/pexels-photo-1181244.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
