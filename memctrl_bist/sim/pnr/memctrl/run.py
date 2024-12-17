#!/usr/bin/env python
import os
import random

# Function to generate a memory dump with WR and RD commands
def generate_memory_dump_with_rw(filename):
    prefixes = ["00", "01", "10", "11"]  # MSB conditions
    memory = {}  # Simulated memory storage
    dataset = []  # List to store generated WR/RD commands
    addr_sequence = []  # Fixed sequence of addresses for WR and RD

    # Generate 128 WR commands (ensure MSB condition is maintained)
    for i in range(128):
        prefix = prefixes[i % len(prefixes)]  # Cycle through 00, 01, 10, 11
        address_suffix = "".join([str(random.randint(0, 1)) for _ in range(14)])  # Generate 14 random bits for address
        address = prefix + address_suffix  # Combine prefix and suffix for a 16-bit address
        data = "".join([str(random.randint(0, 1)) for _ in range(8)])  # Generate random 8-bit data
        memory[address] = data  # Store the data in simulated memory
        addr_sequence.append(address)  # Add the address to the sequence
        dataset.append(["WR", address, data])  # Append a WR command to the dataset

    # Generate 128 RD commands using the same WR address sequence
    for i in range(128):
        prefix = prefixes[i % len(prefixes)]  # Cycle through 00, 01, 10, 11
        # Filter addresses that match the current prefix
        candidates = [addr for addr in addr_sequence if addr.startswith(prefix)]
        if candidates:
            address = random.choice(candidates)  # Select a random address from candidates
            data = memory[address]  # Retrieve the stored value
            dataset.append(["RD", address, data])  # Append an RD command to the dataset

    # Generate 128 random RD/WR commands while maintaining MSB balance
    for i in range(128):
        prefix = prefixes[i % len(prefixes)]  # Cycle through 00, 01, 10, 11
        command = random.choice(["RD", "WR"])  # Randomly select between RD and WR

        if command == "RD":
            # RD must use an existing WR address with the corresponding MSB
            candidates = [addr for addr in addr_sequence if addr.startswith(prefix)]
            if candidates:
                address = random.choice(candidates)  # Select a random address from candidates
                data = memory[address]  # Retrieve the stored value
                dataset.append(["RD", address, data])  # Append an RD command to the dataset
        else:  # WR
            # Generate a new address and data for WR
            address_suffix = "".join([str(random.randint(0, 1)) for _ in range(14)])  # Generate 14 random bits for address
            address = prefix + address_suffix  # Combine prefix and suffix for a 16-bit address
            data = "".join([str(random.randint(0, 1)) for _ in range(8)])  # Generate random 8-bit data
            memory[address] = data  # Store the data in simulated memory
            addr_sequence.append(address)  # Add the address to the sequence
            dataset.append(["WR", address, data])  # Append a WR command to the dataset

    # Save the dataset to the output file
    with open(filename, "w") as file:
        for entry in dataset:
            file.write(",".join(entry) + "\n")

    # Debugging output: Show MSB distribution counts
    msb_counts = {prefix: len([addr for addr in addr_sequence if addr.startswith(prefix)]) for prefix in prefixes}
    print("MSB counts:", msb_counts)

# Generate the dump file
generate_memory_dump_with_rw("inputset_rw.dump")

print("Dump file 'inputset_rw.dump' created successfully!")

# Execute VCS simulation command
os.system("vcs_sub -f list.f -t TB_MEMCTRL -o result.fsdb")

