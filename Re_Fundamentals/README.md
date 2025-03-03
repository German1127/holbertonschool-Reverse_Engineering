#  0. Binary Section Analysis 

The purpose of this task is to analyze the binary file target_binary to identify potential anomalies or hidden functionality. This involves examining the sections within the binary, identifying any unusual or suspicious sections, and documenting their characteristics, including their size. The analysis aims to uncover possible security threats, such as malicious or obfuscated code.

downlaod the file from here: target_binary

## Task Description: ELF Header Extractor
Objective:

Create a Bash script that extracts and displays the following information from the ELF header of a given file:
 
 - Magic Number: The identifier of the file as an ELF file.
 - Class: Indicates whether the ELF file is 32-bit or 64-bit.
 - Byte Order: Specifies the endianness of the file (little or big endian).
 - Entry Point Address: The memory address where program execution starts after loading.


Requirements:

The script must:

 - Accept the ELF file name as a command-line argument.
 - Check if the file exists and is valid.
 - Display an error message if the file is not an ELF file or does not exist.
 - Use the correct command to extract the required data.
 - Use messages.sh to format and display the output.
 - Ensure the output format matches the example provided.

Using messages.sh:

The **messages.sh** file contains reusable functions that centralize and format the display for ELF header information:

```
#!/bin/bash

function display_elf_header_info() {
    echo "ELF Header Information for '$file_name':"
    echo "----------------------------------------"
    echo "Magic Number: $magic_number"
    echo "Class: $class"
    echo "Byte Order: $byte_order"
    echo "Entry Point Address: $entry_point_address"
}
```

## Expected Output:

When provided with a valid ELF file, the script should display:

```
Header Information for '<file_name>':
--------------------------------
Magic Number: <magic_number>
Class: <class>
Byte Order: <byte_order>
Entry Point Address: <entry_point_address>
```

---
