import 'package:flutter/material.dart';

class Supply {
  final String title;
  final String description;
  final String sector;

  Supply({
    required this.title,
    required this.description,
    required this.sector,
  });
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _HomeScreenState createState() => _HomeScreenState();
}



class _HomeScreenState extends State<HomeScreen> {
  final List<Supply> supplyList = [
    Supply(title: 'Tedarik 1', description: 'Açıklama 1', sector: 'Sektor 1'),
    Supply(title: 'Tedarik 2', description: 'Açıklama 2', sector: 'Sektor 2'),
    // Diğer tedarikler
  ];

  String searchQuery = '';

  Widget _buildSearchBar() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: TextField(
        onChanged: (value) {
          setState(() {
            searchQuery = value.toLowerCase();
          });
        },
        decoration: const InputDecoration(
          hintText: 'Tedarik ara...',
          prefixIcon: Icon(Icons.search),
        ),
      ),
    );
  }

  Widget _buildSupplyList() {
    List<Supply> filteredSupplyList = supplyList
        .where((supply) => supply.title.toLowerCase().contains(searchQuery))
        .toList();

    return ListView.builder(
      itemCount:
          searchQuery.isEmpty ? supplyList.length : filteredSupplyList.length,
      itemBuilder: (context, index) {
        return Card(
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: ListTile(
            title: Text(searchQuery.isEmpty
                ? supplyList[index].title
                : filteredSupplyList[index].title),
            subtitle: Text(searchQuery.isEmpty
                ? supplyList[index].description
                : filteredSupplyList[index].description),
            onTap: () {
              // Tedarik detay sayfasına gitmek için Navigator kullanabilirsiniz
              // Navigator.push(context, MaterialPageRoute(builder: (context) => SupplyDetailScreen(supply: searchQuery.isEmpty ? supplyList[index] : filteredSupplyList[index])));
            },
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ana Akış'),
      ),
      body: Column(
        children: [
          _buildSearchBar(),
          Expanded(
            child: _buildSupplyList(),
          ),
        ],
      ),
    );
  }
}

class LoginScreen extends StatelessWidget {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  // ignore: use_key_in_widget_constructors
  LoginScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Giriş Yap'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _usernameController,
              decoration: const InputDecoration(labelText: 'Kullanıcı Adı'),
            ),
            TextField(
              controller: _passwordController,
              obscureText: true,
              decoration: const InputDecoration(labelText: 'Şifre'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  // ignore: prefer_const_constructors
                  MaterialPageRoute(builder: (context) => HomeScreen()),
                );
              },
              child: const Text('Giriş Yap'),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: LoginScreen(),
  ));
}
