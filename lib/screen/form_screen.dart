import 'package:flutter/material.dart';
import '../models/scholarship.dart';

class FormScreen extends StatefulWidget {
  final Scholarship? existingData;
  const FormScreen({super.key, this.existingData});

  @override
  State<FormScreen> createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  late TextEditingController _nameCtrl;
  late TextEditingController _providerCtrl;
  late TextEditingController _reqCtrl;

  @override
  void initState() {
    super.initState();
    _nameCtrl = TextEditingController(text: widget.existingData?.scholarshipName ?? "");
    _providerCtrl = TextEditingController(text: widget.existingData?.provider ?? "");
    _reqCtrl = TextEditingController(text: widget.existingData?.keyRequirement ?? "");
  }

  void _save() {
    if (_nameCtrl.text.isEmpty || _providerCtrl.text.isEmpty || _reqCtrl.text.isEmpty) return;

    final result = Scholarship(
      id: widget.existingData?.id ?? DateTime.now().toString(),
      scholarshipName: _nameCtrl.text,
      provider: _providerCtrl.text,
      keyRequirement: _reqCtrl.text,
    );

    Navigator.pop(context, result);
  }

  @override
  Widget build(BuildContext context) {
    bool isEdit = widget.existingData != null;

    return Scaffold(
      appBar: AppBar(
        title: Text(isEdit ? "Edit Beasiswa" : "Tambah Beasiswa"),
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            TextField(controller: _nameCtrl, decoration: const InputDecoration(labelText: "Nama Beasiswa", border: OutlineInputBorder())),
            const SizedBox(height: 15),
            TextField(controller: _providerCtrl, decoration: const InputDecoration(labelText: "Penyelenggara", border: OutlineInputBorder())),
            const SizedBox(height: 15),
            TextField(controller: _reqCtrl, decoration: const InputDecoration(labelText: "Persyaratan Utama", border: OutlineInputBorder())),
            const SizedBox(height: 30),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: _save,
                style: ElevatedButton.styleFrom(backgroundColor: Colors.indigo, foregroundColor: Colors.white),
                child: Text(isEdit ? "Simpan Perubahan" : "Simpan Pengajuan"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}