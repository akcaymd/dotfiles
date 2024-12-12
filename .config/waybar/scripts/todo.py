import pytodotxt
import json
import re
from datetime import datetime
import sys

today = datetime.now().date()
todotxt_file = '/home/furkan/IMF/todo.todotxt'

def due(text):
    match = re.search(r'\d{4}-\d{2}-\d{2}', text)
    
    if match:
        # Extract the date from the match
        due_date_str = match.group(0)
    
        # Convert the date string into a datetime object
        due_date: datetime.date= datetime.strptime(due_date_str, "%Y-%m-%d").date()
        
        return due_date

todotxt = pytodotxt.TodoTxt(todotxt_file)
todotxt.parse()

total_count = len(todotxt.tasks)
due_today = ""
due_over = ""
count = 0

for task in todotxt.tasks:
    if due(task.description) == None:
        continue
    
    if not task.is_completed:
        count += 1
        
        if today == due(task.description):
            due_today += "- " + task.description + "\n"
        
        if today >= due(task.description):
            due_over += "- " + task.description + "\n"

todos = f"Today:\n{due_today}\nOverdue:\n{due_over}"

output = {"text": count, "tooltip": todos}

sys.stdout.write(json.dumps(output))
sys.stdout.flush()
