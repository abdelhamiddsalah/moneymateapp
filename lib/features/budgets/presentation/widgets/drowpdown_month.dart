import 'package:flutter/material.dart';

class DropdownBudget extends StatefulWidget {
  const DropdownBudget({super.key, required this.children});

  final Map<String, Widget> children; // key-value: value (string), child (widget)

  @override
  State<DropdownBudget> createState() => _DropdownBudgetState();
}

class _DropdownBudgetState extends State<DropdownBudget> {
  String? selectedKey;

  @override
  void initState() {
    super.initState();
    selectedKey = widget.children.keys.first; // default selection
  }

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      value: selectedKey,
      items: widget.children.entries.map((entry) {
        return DropdownMenuItem<String>(
          value: entry.key,
          child: entry.value,
        );
      }).toList(),
      onChanged: (value) {
        setState(() {
          selectedKey = value;
        });
      },
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 12,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(width: 1, color: Colors.grey.shade300),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: Colors.grey.shade300),
        ),
      ),
      dropdownColor: Colors.white,
      icon: const Icon(Icons.keyboard_arrow_down, color: Colors.black),
    );
  }
}
