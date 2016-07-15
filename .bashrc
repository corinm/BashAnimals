export PS1="corin$ "

alias ll='ls -lahG'

if [ -f ~/.git-completion.bash ]; then
  source ~/.git-completion.bash
fi

if [ -f ~/.git-prompt.sh ]; then
  source ~/.git-prompt.sh
  export PS1='\W$(__git_ps1 "(%s)") > '
fi

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
liz1="${GR}          ${YL}O${GR}--${YL}O${GR}¯¯¯¯¯¯¯¯¯¯¯¯\________${NC}\n"
liz2="${GR}          \__/||-------||---------~${NC}\n"
liz="$liz1$liz2"

# DINOSAUR ##################################################################
din1="${OR}                             __ ${NC}\n"
din2="${OR}                           / ${LBL}°${OR}_)${NC}\n"
din3="${OR}                _.----. _ /  /  ${NC}\n"
din4="${OR}              /           ../   ${NC}\n"
din5="${OR}          ___/ (   | ( ..|      ${NC}\n"
din6="${OR}        -------|_|--|_|         ${NC}\n"
din="$din1$din2$din3$din4$din5$din6"

# DUCK #####################################################################
duc1="                    (@${OR}_${NC}    \n"
duc2="                  \\\\\\_\\     ${GR}V${NC}\n"
duc3="             ${BL}~~~~${NC}(____)${BL}~~~~${NC}${GR}|${NC}${BL}~~~${NC}\n"
duc="$duc1$duc2$duc3"

# Generate random numbe between 1 and 2
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

echo ""

# ====
# DATE
# ====

echo ""
date +'%a %d %b - %I:%M%p'
echo ""

