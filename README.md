# storage-tracker
Personal HDD archive: records serials, sizes, OS history, and usage dates.



# HDD Timeline Log

This log tracks all hard drives, their OS installs, and the system context they were used in.  
Each row represents one disk with full hardware details for future reference.

---

| Serial   | Size  | Model    | OS         | Install Date | Last Used  | Notes    | Device Type | Motherboard     | Processor                 | RAM        | GPU           | SMPS/PSU       | Laptop Model     | BIOS/UEFI | Partition | Filesystem | Boot Mode | Primary Use       |
|----------|-------|----------|------------|--------------|------------|----------|-------------|-----------------|---------------------------|------------|---------------|----------------|-----------------|-----------|-----------|------------|-----------|------------------|
| WD123ABC | 500GB | WD Blue  | Debian 12  | 2024-03-01   | 2024-09-01 | Testing  | Desktop     | ASUS P5KPL-AM   | Intel Core2Duo E8400 3.0G | DDR2 4GB   | NVIDIA GT 710 | Corsair VS450  |                 | 0801      | MBR       | ext4       | Legacy    | Linux Experiments |
| ST789XYZ | 1TB   | Seagate  | Windows 11 | 2023-10-10   | 2024-04-15 | Work     | Laptop      |                 | Intel i5-8250U 1.6GHz     | DDR4 8GB   | Intel UHD 620 |                | Dell Inspiron 5570 | 1.15.0   | GPT       | NTFS       | UEFI      | Office Work       |

---

### Usage
- Add a new row every time you install a new OS or add a new disk.  
- Commit changes to GitHub for automatic timeline/history.  
- Use **Serial Number** as the unique key for each HDD.  
- If some fields don’t apply (e.g., no GPU, no SMPS for laptop) leave them blank.  


