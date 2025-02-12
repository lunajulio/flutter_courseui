import 'package:flutter/material.dart';

class FlutterCoursePage extends StatelessWidget {
  const FlutterCoursePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: <Widget>[
        buildHeader(),
        buildCourseFocus(),
        customDivider(),
        buildModules(),
        customDivider(),
        buildProjectList(),
      ],
    ));
  }

  Widget buildHeader() {
    return Container(
      width: double.infinity,
      color: const Color.fromARGB(255, 25, 150, 252),
      padding: const EdgeInsets.only(
        left: 16,
        right: 16,
        top: 50,
        bottom: 16,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                "Flutter course",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "2015-10",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  const Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                ],
              ),
              const SizedBox(width: 10),
              Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  const Icon(
                    Icons.notifications,
                    color: Colors.white,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildCourseFocus() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Flutter Course",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              Expanded(
                  child: Container(
                      height: 2, color: Colors.blue)), // Primera parte
              Expanded(
                  child: Container(
                      height: 2, color: Colors.green)), // Segunda parte
              Expanded(
                  child:
                      Container(height: 2, color: Colors.red)), // Tercera parte
            ],
          ),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "UI Development",
                style:
                    TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
              ),
              Text(
                "Architecture",
                style:
                    TextStyle(color: Colors.green, fontWeight: FontWeight.bold),
              ),
              Text(
                "Design",
                style:
                    TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildModules() {
    return Container(
      padding: const EdgeInsets.all(18),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: const Text(
              "Modules",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: 16),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                _buildModuleCard(
                  icon: Icons.book,
                  title: "Introduction",
                  iconColor: Colors.blue,
                ),
                _buildModuleCard(
                  icon: Icons.design_services,
                  title: "UI design",
                  iconColor: const Color.fromARGB(255, 255, 0, 0),
                ),
                _buildModuleCard(
                  icon: Icons.storage,
                  title: "State management",
                  iconColor: const Color.fromARGB(255, 247, 134, 82),
                ),
                _buildModuleCard(
                  icon: Icons.bug_report,
                  title: "Testing",
                  iconColor: const Color.fromARGB(255, 200, 201, 202),
                ),
                _buildModuleCard(
                  icon: Icons.network_check,
                  title: "Networking",
                  iconColor: Colors.purple,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildProjectList() {
    List<String> projects = [
      "Sudoku",
      "Random user",
      "Note taking",
      "Delivery app",
      "Wallet",
      "Delivery app",
      "eCommerce"
    ];

    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: Text(
              "Projects",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: projects.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 16.0, vertical: 4.0),
                  child: Container(
                    padding: const EdgeInsets.all(12.0),
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        const Icon(Icons.folder,
                            color: Color.fromARGB(
                                255, 4, 111, 211)), // 📁 Ícono de carpeta
                        const SizedBox(
                            width: 8), // Espaciado entre el ícono y el texto
                        Text(
                          projects[index],
                          style: const TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

Widget customDivider() {
  return const Divider(
    height: 1,
    thickness: 1,
    color: Colors.grey,
  );
}

Widget _buildModuleCard({
  required IconData icon,
  required String title,
  required Color iconColor,
}) {
  return Container(
    margin: const EdgeInsets.only(right: 16),
    width: 100,
    height: 100,
    decoration: BoxDecoration(
      color: Colors.grey[200],
      borderRadius: BorderRadius.circular(10),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          color: iconColor,
          size: 30,
        ),
        const SizedBox(height: 8),
        Text(
          title,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    ),
  );
}
