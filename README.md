# Bash Timing Scripts

## Overview  
This project contains a Bash script (`script.sh`) that automates the execution of multiple Python programs for various problem sizes and saves the execution timings into separate output files.  

The script is designed to:
- Take one or more program names as arguments.
- Run the specified Python programs for predefined problem sizes.
- Save the output of each program into its respective `.out` file.  

## Features  
1. **Dynamic Program Execution**: The script can handle any number of Python programs passed as arguments.  
2. **Configurable Problem Sizes**: Problem sizes are defined in an array and can be easily modified.  
3. **Output Management**: Separate `.out` files are created for each program. Each file contains execution timings for different problem sizes in ascending order.  

---

## Script Details  

### **Script Name**  
`script.sh`  

### **How It Works**  
1. **Input**:  
   - Program names (without the `.py` extension) are passed as arguments to the script.  

   Example:  
   ```bash  
   ./script.sh program1 program2 program3  
   ```  

2. **Execution Process**:  
   - The script iterates through the provided program names.  
   - For each program, it runs the program for all predefined problem sizes (8, 16, 32).  
   - The problem size and execution time are captured and saved in the format `n time`.  

3. **Output**:  
   - Each program generates an output file named `<program_name>.out`.  
   - Example: `program1.out`, `program2.out`, `program3.out`.  

---

## Predefined Problem Sizes  
The problem sizes are specified in an array within the script:  
```bash  
problem_sizes=(8 16 32)  
```  

These sizes can be modified as needed.  

---

## Usage Instructions  

1. **Run the Script**  
   ```bash  
   ./script.sh <program_name_1> <program_name_2> ...  
   ```  

   Example:  
   ```bash  
   ./script.sh program1 program2  
   ```  

2. **Python Programs**  
   The Python programs must be named `<program_name>.py`.  
   Example:
   - `program1.py`
   - `program2.py`
   - `program3.py`  

3. **Output Files**  
   - Output files are automatically named `<program_name>.out`.  
   - Example: `program1.out`, `program2.out`.  

---

## Expected Output File Format  

Each `.out` file contains the following format:  
```
n time  
8 0.001  
16 0.005  
32 0.020  
```  

- `n`: Problem size  
- `time`: Execution time printed by the Python program  

---

## Tests  

### **Test Cases**  
1. **Single Program**  
   - Input:  
     ```bash  
     ./script.sh program1  
     ```  
   - Output:  
     `program1.out`  

2. **Multiple Programs**  
   - Input:  
     ```bash  
     ./script.sh program1 program2  
     ```  
   - Output:  
     `program1.out`, `program2.out`  

3. **Generalized Input**  
   - Input:  
     ```bash  
     ./script.sh program10  
     ```  
   - Output:  
     `program10.out`  

---

## Notes  

- Ensure all Python programs print their output in the `n time` format.  
- The script uses `python3` to run the programs. Make sure Python 3 is installed on your system.  
- The script is general-purpose and works for any valid Python program named `<program_name>.py`.  

---

## Requirements  

- **Bash**: Ensure your system supports Bash scripting.  
- **Python 3**: Installed and available in your environment.  

--- 
Feel free to customize the script and test it with additional Python programs as needed.  
