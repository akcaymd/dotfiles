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
        due_date = datetime.strptime(due_date_str, "%Y-%m-%d").date()
        
        return due_date

todotxt = pytodotxt.TodoTxt(todotxt_file)
todotxt.parse()

total_count = len(todotxt.tasks)
todos = "Today:\n"
count = 0

for task in todotxt.tasks:
    if not task.is_completed and today == due(task.description):
        todos += "- " + task.description + "\n"
        count += 1
        
output = {"text": count, "tooltip": todos}

sys.stdout.write(json.dumps(output))
sys.stdout.flush()
