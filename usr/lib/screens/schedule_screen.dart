import 'package:flutter/material.dart';
import '../data/mock_data.dart';
import '../theme/app_theme.dart';

class ScheduleScreen extends StatelessWidget {
  const ScheduleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Group subjects by day for demo purposes
    // In a real app, you'd have a proper schedule model
    final days = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday"];
    
    return Scaffold(
      appBar: AppBar(
        title: const Text("Timetable"),
        automaticallyImplyLeading: false,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: days.length,
        itemBuilder: (context, index) {
          final day = days[index];
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 12),
                child: Text(
                  day,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: AppTheme.primaryColor,
                  ),
                ),
              ),
              // Mock logic to show different subjects for different days
              if (index % 2 == 0) ...[
                _buildScheduleItem(MockData.subjects[0], "10:00 AM - 11:30 AM"),
                _buildScheduleItem(MockData.subjects[3], "01:00 PM - 02:30 PM"),
              ] else ...[
                _buildScheduleItem(MockData.subjects[1], "09:00 AM - 10:30 AM"),
                _buildScheduleItem(MockData.subjects[2], "11:00 AM - 12:30 PM"),
              ],
              const Divider(height: 32),
            ],
          );
        },
      ),
    );
  }

  Widget _buildScheduleItem(CourseSubject subject, String time) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey.shade200),
      ),
      child: Row(
        children: [
          Column(
            children: [
              Text(
                time.split(' - ')[0],
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              Container(
                width: 1,
                height: 20,
                color: Colors.grey.shade300,
                margin: const EdgeInsets.symmetric(vertical: 4),
              ),
              Text(
                time.split(' - ')[1],
                style: const TextStyle(color: Colors.grey, fontSize: 12),
              ),
            ],
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: subject.color.withOpacity(0.1),
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: subject.color.withOpacity(0.3)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    subject.name,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: subject.color.withOpacity(0.8),
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Row(
                    children: [
                      Icon(Icons.location_on_outlined, size: 14, color: Colors.grey[600]),
                      const SizedBox(width: 4),
                      Text(
                        "Room 30${subject.code.substring(subject.code.length - 1)}",
                        style: TextStyle(color: Colors.grey[600], fontSize: 13),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
