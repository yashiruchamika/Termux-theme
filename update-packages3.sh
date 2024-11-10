# Reload Zsh configuration
source ~/.zshrc
echo -e "${BOLD}Zsh configuration reloaded!${NC}"

#clear
clear

# Bold text definition
BOLD='\033[1m'
NC='\033[0m' # No Color

# Text-to-speech welcome message using espeak
espeak "update Package and upgrade"

echo -e "${BOLD}Updating Termux packages...${NC}"
apt update && apt upgrade -y
echo -e "${BOLD}Update complete!${NC}"

# Text-to-speech welcome message using espeak
espeak "show your device info"

echo
echo -e "${BOLD}Running Neofetch...${NC}"
neofetch

echo
echo -e "${BOLD}Displaying Calendar...${NC}"
cal

echo
echo -e "${BOLD}Current Time:${NC}"
date

# Calculate the number of days left in the year
echo
today=$(date +%j)
year=$(date +%Y)
days_left=$((365 - today))
if [ $(($year % 4)) -eq 0 ]; then
    days_left=$((days_left + 1))
fi
echo -e "${BOLD}Days left in the year: ${days_left}${NC}"

echo
echo -e "${BOLD}Enjoy your Termux session! 😊${NC}"

# Text-to-speech welcome message using espeak
espeak "Welcome to Termux and have a nice day"
