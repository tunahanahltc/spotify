import 'package:flutter/material.dart';

class PremiumPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
        backgroundColor : Colors.black,
      appBar: AppBar(
        title: Text('Mevcut Planlar', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.black,
      ),
      body: ListView(
        children: [
          _buildPremiumPlan('Bireysel', '₺59,99 / ay', Colors.pink.shade100),
          _buildPremiumPlan('Öğrenci', '₺32,99 / ay', Colors.purple.shade100),
          _buildPremiumPlan('Duo', '₺79,99 / ay', Colors.orange.shade100),
          _buildPremiumPlan('Aile', '₺99,99 / ay', Colors.blue.shade100),
        ],
      ),
    );
  }

  Widget _buildPremiumPlan(String title, String price, Color color) {
    return Card(
      color: Colors.grey.shade900,
      margin: EdgeInsets.all(10),
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Premium', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
            SizedBox(height: 8),
            Text(title, style: TextStyle(color: color, fontSize: 20, fontWeight: FontWeight.bold)),
            Text(price, style: TextStyle(color: Colors.white, fontSize: 16)),
            SizedBox(height: 8),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: color,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
              ),
              onPressed: () {
              },
              child: Text('Premium $title planını edin', style: TextStyle(color: Colors.black)),
            ),
          ],
        ),
      ),
    );
  }
}
