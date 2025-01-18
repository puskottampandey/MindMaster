import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

import '../../../global/constants/colors_text.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: Text("Personal"),
    );
  }
}

// import 'package:fl_chart/fl_chart.dart';

// class HomeScreen extends StatefulWidget {
//   const HomeScreen({super.key});

//   @override
//   // ignore: library_private_types_in_public_api
//   _HomeScreenState createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
//   final List<Map<String, dynamic>> _dataset = [];
//   final _formKey = GlobalKey<FormState>();
//   String _selectedMetric = 'mood';
//   // Controllers for input fields
//   final _dateController = TextEditingController();
//   final _moodController = TextEditingController();
//   final _sleepController = TextEditingController();
//   final _stressController = TextEditingController();
//   final _activityController = TextEditingController();
//   final _meditationController = TextEditingController();

//   void _addDataPoint() {
//     if (_formKey.currentState!.validate()) {
//       setState(() {
//         _dataset.add({
//           'date': _dateController.text,
//           'mood': double.parse(_moodController.text),
//           'sleep': double.parse(_sleepController.text),
//           'stress': double.parse(_stressController.text),
//           'activity': double.parse(_activityController.text),
//           'meditation': double.parse(_meditationController.text),
//         });
//       });

//       // Clear the input fields
//       _dateController.clear();
//       _moodController.clear();
//       _sleepController.clear();
//       _stressController.clear();
//       _activityController.clear();
//       _meditationController.clear();
//     }
//   }

//   List<FlSpot> _getSpots(String key) {
//     return _dataset
//         .asMap()
//         .entries
//         .map((entry) => FlSpot(entry.key.toDouble(), entry.value[key]))
//         .toList();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Form(
//             key: _formKey,
//             child: Padding(
//               padding: const EdgeInsets.all(16.0),
//               child: Column(
//                 children: [
//                   TextFormField(
//                     controller: _dateController,
//                     decoration:
//                         InputDecoration(labelText: 'Date (e.g., Jan 10)'),
//                     validator: (value) =>
//                         value!.isEmpty ? 'Enter a date' : null,
//                   ),
//                   TextFormField(
//                     controller: _moodController,
//                     decoration: InputDecoration(labelText: 'Mood (1-10)'),
//                     keyboardType: TextInputType.number,
//                     validator: (value) =>
//                         value!.isEmpty ? 'Enter a mood score' : null,
//                   ),
//                   TextFormField(
//                     controller: _sleepController,
//                     decoration: InputDecoration(labelText: 'Sleep (hrs)'),
//                     keyboardType: TextInputType.number,
//                     validator: (value) =>
//                         value!.isEmpty ? 'Enter sleep hours' : null,
//                   ),
//                   TextFormField(
//                     controller: _stressController,
//                     decoration: InputDecoration(labelText: 'Stress (1-10)'),
//                     keyboardType: TextInputType.number,
//                     validator: (value) =>
//                         value!.isEmpty ? 'Enter a stress score' : null,
//                   ),
//                   TextFormField(
//                     controller: _activityController,
//                     decoration: InputDecoration(labelText: 'Activity (mins)'),
//                     keyboardType: TextInputType.number,
//                     validator: (value) =>
//                         value!.isEmpty ? 'Enter activity minutes' : null,
//                   ),
//                   TextFormField(
//                     controller: _meditationController,
//                     decoration: InputDecoration(labelText: 'Meditation (mins)'),
//                     keyboardType: TextInputType.number,
//                     validator: (value) =>
//                         value!.isEmpty ? 'Enter meditation minutes' : null,
//                   ),
//                   SizedBox(height: 16),
//                   ElevatedButton(
//                     onPressed: _addDataPoint,
//                     child: Text('Add Data Point'),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           if (_dataset.isNotEmpty)
//             Column(
//               children: [
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                   children: [
//                     _buildMetricButton('Mood', 'mood'),
//                     _buildMetricButton('Sleep', 'sleep'),
//                     _buildMetricButton('Stress', 'stress'),
//                     _buildMetricButton('Activity', 'activity'),
//                     _buildMetricButton('Meditation', 'meditation'),
//                   ],
//                 ),
//                 Container(
//                   height: 300,
//                   padding: const EdgeInsets.all(16.0),
//                   child: LineChart(
//                     LineChartData(
//                       gridData: const FlGridData(show: true),
//                       borderData: FlBorderData(show: true),
//                       titlesData: const FlTitlesData(
//                         leftTitles: AxisTitles(
//                           sideTitles: SideTitles(showTitles: true),
//                         ),
//                         bottomTitles: AxisTitles(
//                           sideTitles: SideTitles(showTitles: true),
//                         ),
//                       ),
//                       lineBarsData: [
//                         LineChartBarData(
//                           spots: _getSpots(_selectedMetric),
//                           isCurved: true,
//                           barWidth: 2,
//                           color: Colors.blue,
//                           belowBarData: BarAreaData(show: false),
//                         ),
//                         LineChartBarData(
//                           spots: _getSpots(_selectedMetric),
//                           isCurved: true,
//                           barWidth: 2,
//                           color: Colors.green,
//                           belowBarData: BarAreaData(show: false),
//                         ),
//                         LineChartBarData(
//                           spots: _getSpots(_selectedMetric),
//                           isCurved: true,
//                           barWidth: 2,
//                           color: Colors.red,
//                           belowBarData: BarAreaData(show: false),
//                         ),
//                         LineChartBarData(
//                           spots: _getSpots(_selectedMetric),
//                           isCurved: true,
//                           barWidth: 2,
//                           color: Colors.orange,
//                           belowBarData: BarAreaData(show: false),
//                         ),
//                         LineChartBarData(
//                           spots: _getSpots(_selectedMetric),
//                           isCurved: true,
//                           barWidth: 2,
//                           color: Colors.purple,
//                           belowBarData: BarAreaData(show: false),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//         ],
//       ),
//     );
//   }

//   Widget _buildMetricButton(String label, String metricKey) {
//     return ElevatedButton(
//       onPressed: () {
//         setState(() {
//           _selectedMetric = metricKey;
//         });
//       },
//       style: ElevatedButton.styleFrom(
//         backgroundColor:
//             _selectedMetric == metricKey ? Colors.blue : Colors.grey,
//       ),
//       child: Text(label),
//     );
//   }
// }
