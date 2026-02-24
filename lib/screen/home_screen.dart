import 'package:flutter/material.dart';
import '../models/scholarship.dart';
import '../widgets/scholarship_card.dart';
import 'form_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Scholarship> _items = [];

  void _navigateToForm({Scholarship? data, int? index}) async {
    final result = await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => FormScreen(existingData: data)),
    );

    if (result != null && result is Scholarship) {
      setState(() {
        if (index != null) {
          _items[index] = result;
        } else {
          _items.add(result);
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Manajemen Beasiswa"),
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
      ),
      body: _items.isEmpty 
          ? const Center(child: Text("Belum ada data beasiswa.")) 
          : ListView.builder(
              itemCount: _items.length,
              itemBuilder: (context, index) => ScholarshipCard(
                data: _items[index],
                onEdit: () => _navigateToForm(data: _items[index], index: index),
                onDelete: () => setState(() => _items.removeAt(index)),
              ),
            ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _navigateToForm(),
        backgroundColor: Colors.indigo,
        child: const Icon(Icons.add, color: Colors.white),
      ),
    );
  }
}