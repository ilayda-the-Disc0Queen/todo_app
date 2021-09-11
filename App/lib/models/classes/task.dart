class Task {
  List<Task> tasks;
  String note;
  DateTime timeToComplete; // duration of task
  bool completed = false;
  String repeats;
  DateTime deadline;
  List<DateTime> reminders;
  String taskId;
  String title;

  Task(this.title, this.completed, this.taskId);
}
