### Task: Automate File Processing
#### Objective:
Create a Bash script that automates the processing of files in a directory. The script should meet the following requirements:
#### Scenario:
You have a directory that contains multiple text files with `.txt` extension. The script should perform the following tasks:
1. **Count Files**: Output the total number of `.txt` files in the directory.
2. **Check and Create Directory**: Check if a directory named `processed` exists in the current directory. If it does not exist, create it.
3. **File Processing**:
    - Loop through each `.txt` file in the directory.
    - For each file, perform the following actions:
      - **Line Count**: Count the number of lines in the file.
      - **Rename**: Rename the file to include its line count in the filename. For example, if `file1.txt` has 100 lines, it should be renamed to `file1_100.txt`.
      - **Move**: Move the renamed file to the `processed` directory.
4. **Log**: Output the original and new file names, along with the line count for each file processed, in a log format.
#### Expected Input/Output:
**Input**: Directory of `.txt` files
**Output Example**:
```bash
Total number of .txt files: 5
Processed file1.txt -> processed/file1_100.txt (100 lines)
Processed file2.txt -> processed/file2_45.txt (45 lines)
...
```
---
### Instructions:
- You can use commands like `find`, `wc`, `mv`, and `mkdir`.
- Handle possible edge cases, like if no `.txt` files exist or if the `processed` directory already exists.
- Ensure that the script runs successfully and achieves the described goals within the time limit (15 minutes).
#### Deliverables:
- The Bash script file.
- A brief explanation of the logic used in the script.
---
This task tests knowledge of file operations, loops, basic error handling, and Bash commands suitable for an intermediate-level user.
