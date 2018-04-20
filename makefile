FILE = README.md
TIME = `date +%X`
DATE = `date +%B\ %-d,\ %Y`
SLOC = `grep -c '' ./guessinggame.sh`

all: $(FILE)

$(FILE): guessinggame.sh
	@echo "## The Unix Workbench Peer-Graded Course Assignment" > README.md
	@echo -e "*by Johns Hopkins University (JHU) on [coursera.org](www.coursera.org/learn/unix).*\n" >> README.md
	@echo "**Description**: Create a program called \`guessinggame.sh\` which continuously asks the user to guess the number of files in the current directory, until they guess the correct number. The user is informed if their guess is too high or too low. Once the user guesses the correct number of files in the current directory they are congratulated." >> README.md
	@echo -e "\n\`make\` utility was run on $(DATE) at $(TIME)." >> README.md
	@echo -e "\n\`guessinggame.sh\` file contains $(SLOC) lines of source code." >> README.md

clean:
	@rm -f $(FILE)
