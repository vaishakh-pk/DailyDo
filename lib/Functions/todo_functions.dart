class TodoItem {
  final int id;
  final String name;
  bool status;

  TodoItem({
    required this.id,
    required this.name,
    this.status = false, // Default status is false (not completed).
  });
}

class TodoFunctions {
  List<TodoItem> todoList = [];

  TodoFunctions.initialize();

  static final TodoFunctions _instance = TodoFunctions.initialize();

  static TodoFunctions get instance => _instance;


  void addTodoItem(int id, String name) {
    final newItem = TodoItem(id: id, name: name);
    todoList.add(newItem);
    print(todoList);
  }

  void clearList()
  {
    todoList.clear();
  }

}
