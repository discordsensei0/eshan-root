#!/bin/bash

# =============================================
# ESHAN ROOT ACCESS MENU
# =============================================

# Colors
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
RED='\033[0;31m'
NC='\033[0m' # No Color

clear
echo -e "${BLUE}╔═══════════════════════════════════════╗${NC}"
echo -e "${BLUE}║   🚀 ESHAN ROOT ACCESS TOOL         ║${NC}"
echo -e "${BLUE}╚═══════════════════════════════════════╝${NC}"
echo ""
echo -e "${GREEN}1) ${NC}Install Root Files (Clone from GitHub)"
echo -e "${GREEN}2) ${NC}Go to freeroot Directory"
echo -e "${GREEN}3) ${NC}Start ROOT (Run root.sh)"
echo -e "${RED}0) ${NC}Exit"
echo ""
echo -n "👉 Enter your choice: "
read choice

case $choice in
    1)
        echo -e "\n${YELLOW}📥 Cloning root setup files...${NC}"
        # --- CHANGE THIS TO YOUR OWN REPO ---
        git clone https://github.com/foxytouxxx/freeroot.git freeroot
        if [ $? -eq 0 ]; then
            echo -e "${GREEN}✅ Files cloned successfully!${NC}"
        else
            echo -e "${RED}❌ Failed to clone repository.${NC}"
        fi
        ;;
    2)
        echo -e "\n${YELLOW}📁 Changing to freeroot directory...${NC}"
        cd freeroot
        if [ $? -eq 0 ]; then
            echo -e "${GREEN}✅ Now in $(pwd)${NC}"
        else
            echo -e "${RED}❌ Directory 'freeroot' not found. Please run option 1 first.${NC}"
        fi
        ;;
    3)
        echo -e "\n${YELLOW}🚀 Starting ROOT setup...${NC}"
        if [ -f "root.sh" ]; then
            bash root.sh
        else
            echo -e "${RED}❌ root.sh not found. Make sure you are in the correct directory.${NC}"
        fi
        ;;
    0)
        echo -e "\n${GREEN}👋 Goodbye!${NC}"
        exit 0
        ;;
    *)
        echo -e "\n${RED}❌ Invalid choice. Please select 0, 1, 2, or 3.${NC}"
        ;;
esac

echo -e "\n${YELLOW}Press Enter to continue...${NC}"
read
exec bash <(curl -s https://raw.githubusercontent.com/discordsensei0/eshan-root/main/eshan-root.sh)
