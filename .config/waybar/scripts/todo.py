import pytodotxt
import json

todotxt = pytodotxt.TodoTxt('/home/furkan/IMF/todo.todotxt')
todotxt.parse()

count = len(todotxt.tasks)
todos = []

for task in todotxt.tasks:
    if not task.is_completed:
        todos.append(task)

data = {"text": count}

print(json.dumps(data))
