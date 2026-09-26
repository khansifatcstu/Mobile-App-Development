import 'package:flutter/material.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFC3D8C3),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Column(
          children: [
            Text(
              'History',
              style: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold),
            ),
            Text(
              'Your mental well-being history & insights',
              style: TextStyle(color: Colors.black54, fontSize: 12),
            ),
          ],
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerRight,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.calendar_today, size: 16),
                    SizedBox(width: 8),
                    Text('October 2024'),
                    Icon(Icons.arrow_drop_down),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Insights & Progress',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 16),
                  _buildInsightRow(Icons.arrow_upward, 'Mood Stability Improved', 'Your mood has been more stable.', Colors.green),
                  const SizedBox(height: 12),
                  _buildInsightRow(Icons.arrow_upward, 'Stress Levels Reduced', 'You are managing stress better.', Colors.green),
                  const SizedBox(height: 12),
                  _buildInsightRow(Icons.remove, 'Anxiety Slightly High', 'Keep practicing relaxation techniques.', Colors.orange),
                ],
              ),
            ),
            const SizedBox(height: 16),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Monthly Overview',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 16),
                  _buildOverviewRow(Icons.emoji_emotions, 'Average Mood', 'Good', '72 / 100'),
                  const Divider(),
                  _buildOverviewRow(Icons.water_drop, 'Stress Level', 'Moderate', '48 / 100'),
                  const Divider(),
                  _buildOverviewRow(Icons.bedtime, 'Sleep Quality', 'Good', '78 / 100'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInsightRow(IconData icon, String title, String subtitle, Color iconColor) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CircleAvatar(
          radius: 12,
          backgroundColor: iconColor.withOpacity(0.2),
          child: Icon(icon, size: 16, color: iconColor),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
              Text(subtitle, style: const TextStyle(fontSize: 12, color: Colors.grey)),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildOverviewRow(IconData icon, String title, String status, String score) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Icon(icon, size: 20, color: Colors.grey),
          const SizedBox(width: 12),
          Expanded(child: Text(title)),
          Text(status, style: const TextStyle(color: Colors.green, fontWeight: FontWeight.bold)),
          const SizedBox(width: 16),
          Text(score, style: const TextStyle(fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}