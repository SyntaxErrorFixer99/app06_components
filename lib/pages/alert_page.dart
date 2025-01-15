import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  const AlertPage({super.key});

  void showMyAlert1(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Column(
            children: const [
              Icon(
                Icons.send, // Cambia este ícono por el que necesites
                size: 50,
                color: Colors.blue,
              ),
              SizedBox(height: 10),
              Text("Invite people to this project"),
            ],
          ),
          content: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text("Invite existing team members or add new ones."),
                const SizedBox(height: 10),
                // Lista de miembros del equipo
                ListTile(
                  leading: const CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://images.pexels.com/photos/30145492/pexels-photo-30145492.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                  ),
                  title: const Text("Whitney Blessing"),
                  subtitle: const Text("whitneyblessing@gmail.com"),
                  trailing: ElevatedButton(
                    onPressed: () {},
                    child: const Text("Add"),
                  ),
                ),
                ListTile(
                  leading: const CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://images.pexels.com/photos/28907975/pexels-photo-28907975.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                  ),
                  title: const Text("Cheryl Green"),
                  subtitle: const Text("cherylgreen@gmail.com"),
                  trailing: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                    ),
                    child: const Text("Remove"),
                  ),
                ),
                ListTile(
                  leading: const CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://images.pexels.com/photos/3776156/pexels-photo-3776156.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                  ),
                  title: const Text("Bonnie Lopez"),
                  subtitle: const Text("bonnielopez@gmail.com"),
                  trailing: ElevatedButton(
                    onPressed: () {},
                    child: const Text("Add"),
                  ),
                ),
                const Divider(),
                // Campo para añadir nuevo email
                TextField(
                  decoration: InputDecoration(
                    hintText: "Enter email",
                    suffixIcon: IconButton(
                      icon: const Icon(Icons.clear),
                      onPressed: () {},
                    ),
                  ),
                ),
              ],
            ),
          ),
          backgroundColor: Colors.amberAccent,
          actions: [
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context); // Cierra el diálogo
              },
              child: const Text("Cancelar"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context); // Acción para aceptar
              },
              child: const Text("Aceptar"),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Alert Page"),
        backgroundColor: Colors.amber,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                showMyAlert1(context);
              },
              child: const Text("Alert 1"),
            ),
          ],
        ),
      ),
    );
  }
}
