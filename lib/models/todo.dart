class Todo {
  bool completed;
  String? title;
  final DateTime createAt;
  DateTime updateAt;
  DateTime? dueDate;
  Todo({
    this.completed = false,
    this.title,
    this.dueDate,
  })  : createAt = DateTime.now(),
        updateAt = DateTime.now();

  @override
  toString() {
    return '$title $completed';
  }
}
