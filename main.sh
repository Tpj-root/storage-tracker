#!/bin/bash
# HDD Timeline Log - Structured Blocks
# Each HDD is stored as an ordered list of values, headers map them to names

# ==============================
# HEADERS (change names here only once)
# ==============================
HEADERS=("HDD_Serial" "Size" "Model" "OS" "InstallDate" "LastUsed" "Notes" \
         "DeviceType" "Motherboard" "Processor" "RAM" "GPU" "SMPS" "LaptopModel" \
         "BIOS" "Partition" "Filesystem" "BootMode" "PrimaryUse")

# ==============================
# HDD ENTRIES (just values, same order as HEADERS)
# ==============================
DATA_0=("WD123ABC"  \
    "500GB"  \
    "WD Blue"  \
    "Debian 12"  \
    "2024-03-01"  \
    "2024-09-01"  \
    "Testing" \
    "Desktop"  \
    "ASUS P5KPL-AM"  \
    "Intel Core2Duo E8400 3.0GHz"  \
    "DDR2 4GB" \
    "NVIDIA GT 710" \
    "Corsair VS450"  \
    ""  \
    "0801"  \
    "MBR"  \
    "ext4"  \
    "Legacy"  \
    "Linux Experiments")

DATA_1=("ST789XYZ" "1TB" "Seagate" "Windows 11" "2023-10-10" "2024-04-15" "Work" \
        "Laptop" "" "Intel i5-8250U" "8GB" "Intel UHD 620" "" "Inspiron 3576" \
        "" "GPT" "NTFS" "UEFI" "Work")

# ==============================
# Put all blocks in an array of arrays
# ==============================
ALL_DATA=(DATA_0[@] DATA_1[@])

# ==============================
# Functions
# ==============================

show_full_log() {
    # Print header row
    printf "%s\t" "${HEADERS[@]}"
    echo
    echo "----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------"
        # Print each row
    for arr in "${ALL_DATA[@]}"; do
        values=("${!arr}") # expand array reference
        printf "%s\t" "${values[@]}"
        echo
    done | column -t -s $'\t'



}

# search_log() {
#     read -p "Enter search keyword (any field): " key
#     for arr in "${ALL_DATA[@]}"; do
#         values=("${!arr}")
#         line=$(printf "%s | " "${values[@]}")
#         echo "${line% | }" | grep -i --color=always "$key"
#     done
# }


# 
# line=$(printf "%s | " "${values[@]}") prints every field.
# Instead, you can pick only the fields you care about by index:
search_log() {
    read -p "Enter search keyword (any field): " key
    for arr in "${ALL_DATA[@]}"; do
        values=("${!arr}")
        # Pick only certain fields by index
        line="${values[0]} | ${values[1]} | ${values[2]} | ${values[3]} | ${values[5]}"
        echo "$line" | grep -i --color=always "$key"
    done
}




# ==============================
# Menu
# ==============================
echo "======================"
echo "📀 HDD Timeline Viewer"
echo "======================"
echo ""
echo "1) View full log"
echo "2) Search log"
read -p "Choose option [1-2]: " opt

case "$opt" in
    1) show_full_log ;;
    2) search_log ;;
    *) echo "Invalid option" ;;
esac
