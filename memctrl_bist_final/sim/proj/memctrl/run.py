#!/usr/bin/env python
import os
import random

def generate_memory_dump_with_rw(filename):
    prefixes = ["00", "01", "10", "11"]
    memory = {}  # Simulate memory storage
    dataset = []

    # Generate 128 WR commands
    for i in range(128):
        prefix = prefixes[i % len(prefixes)]  # Cycle through 00, 01, 10, 11
        address_suffix = "".join([str(random.randint(0, 1)) for _ in range(14)])  # Generate 14 random bits
        address = prefix + address_suffix  # Combine prefix and suffix for 16-bit address
        data = "".join([str(random.randint(0, 1)) for _ in range(8)])  # Generate 8-bit random data
        data = data.zfill(8)  # Ensure data is always 8 bits
        memory[address] = data  # Write data to the simulated memory
        dataset.append(["WR", address, data])  # Add to dataset

    # Generate 128 RD commands matching WR addresses
    for address in list(memory.keys()):
        data = memory[address]  # Fetch the stored value
        dataset.append(["RD", address, data])  # Append a read command

    # Generate 128 random RD/WR commands
    for _ in range(128):
        command = random.choice(["RD", "WR"])
        if command == "RD":
            # RD must use an address that was already WR
            address = random.choice(list(memory.keys()))
            data = memory[address]
            dataset.append(["RD", address, data])
        else:  # WR
            if random.random() < 0.2:
                # 20% chance to overwrite an existing WR address
                address = random.choice(list(memory.keys()))
            else:
                # Generate a new random address
                prefix = random.choice(prefixes)
                address_suffix = "".join([str(random.randint(0, 1)) for _ in range(14)])
                address = prefix + address_suffix
            data = "".join([str(random.randint(0, 1)) for _ in range(8)])
            data = data.zfill(8)
            memory[address] = data
            dataset.append(["WR", address, data])

    # Save to the file
    with open(filename, "w") as file:
        for entry in dataset:
            file.write(",".join(entry) + "\n")

# Generate the dump file
generate_memory_dump_with_rw("inputset_rw.dump")

print("Dump file 'inputset_rw.dump' created successfully!")

# Execute VCS simulation command
os.system("vcs_sub -f list.f -t TB_MEMCTRL -o result.fsdb")

