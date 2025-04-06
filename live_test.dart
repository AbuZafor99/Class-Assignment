void main() {
  // Our list of students with their scores
  List<Map<String, dynamic>> students = [
    {
      "name": "Alice",
      "scores": [85, 90, 78],
    },
    {
      "name": "Bob",
      "scores": [88, 76, 95],
    },
    {
      "name": "Charlie",
      "scores": [90, 92, 85],
    },
  ];

  Map<String, double> averages = {};

  for (var student in students) {
    //-------student name-------
    String name = student["name"];

    //--------scores------------
    List<int> scores = List<int>.from(student["scores"]);

    //==============Calculate scores============
    int total = scores[0] + scores[1] + scores[2];

    //==============Calculate average==========
    double average = total / 3;
    average = double.parse(average.toStringAsFixed(2));

    //--------Store the average--------
    averages[name] = average;
  }

  List<MapEntry<String, double>> sortedEntries = averages.entries.toList();

  sortedEntries.sort((a, b) {
    return b.value.compareTo(a.value);
  });

  Map<String, double> sortedAverages = {};
  for (var entry in sortedEntries) {
    sortedAverages[entry.key] = entry.value;
  }

  print(sortedAverages);
}
