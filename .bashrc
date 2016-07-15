# ===========
# COOL ANIMAL
# ===========


RD='\x1B[0;31m'
GR='\x1B[0;32m'
YL='\x1B[1;33m'
OR='\x1B[0;33m'
BL='\x1B[0;34m'
LBL='\x1B[1;34m'
CY='\x1B[1;36m'
NC='\x1B[0m' # No Color

echo ""

# LIZARD ####################################################################
# Adapted from: http://chris.com/ascii/index.php?art=animals/reptiles/lizards - Glo Pearl
liz1="${GR}          ${YL}O${GR}--${YL}O${GR}¯¯¯¯¯¯¯¯¯¯¯¯\________${NC}\n"
liz2="${GR}          \__/||-------||---------~${NC}\n"
liz="$liz1$liz2"

# DINOSAUR ##################################################################
# Adapted from: http://chris.com/ascii/index.php?art=animals/reptiles/dinosaurs
din1="${OR}                             __ ${NC}\n"
din2="${OR}                           / ${LBL}°${OR}_)${NC}\n"
din3="${OR}                _.----. _ /  /  ${NC}\n"
din4="${OR}              /           ../   ${NC}\n"
din5="${OR}          ___/ (   | ( ..|      ${NC}\n"
din6="${OR}        -------|_|--|_|         ${NC}\n"
din="$din1$din2$din3$din4$din5$din6"

# DUCK #####################################################################
# Adapted from: http://textart.io/art/tag/duck
duc1="                __           \n"
duc2="            ___( o)${OR}>${NC}         \n"
duc3="            \ <_. )    ${GR}V${NC}     \n"
duc4="        ${BL}~~~~~${NC}\`---'${BL}~~~~~${GR}|${BL}~~~${NC}\n"
duc="$duc1$duc2$duc3$duc4"

# Generate random number between 1 and 2
RAND=$((((RANDOM + RANDOM) % 3) + 1))

case "$RAND" in
  1) echo -e "$liz"
    ;;
  2) echo -e "$din"
    ;;
  3) echo -e "$duc"
    ;;
  *)
    ;;
esac