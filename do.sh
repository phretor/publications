#! /bin/bash

MAIN="src/main.bib"

bibtool -r bibtool/sort_fld.rsc -r bibtool/main.rsc '--select{@InProceedings}' $MAIN > .papers
bibtool -r bibtool/sort_fld.rsc -r bibtool/main.rsc '--select{keywords "workshop"}' .papers > .workshops
bibtool -r bibtool/sort_fld.rsc -r bibtool/main.rsc '--select{@Article}' $MAIN > .journals
bibtool -r bibtool/sort_fld.rsc -r bibtool/main.rsc '--select{@TechReport}' $MAIN > .reports
bibtool -r bibtool/sort_fld.rsc -r bibtool/main.rsc '--select{@Unpublished}' $MAIN > .talks
bibtool -r bibtool/sort_fld.rsc -r bibtool/main.rsc '--select{@PhdThesis}' $MAIN > .dissertations

echo '# Publications'
echo "  * $(grep '^@' .papers | wc -l | tr -d '[:space:]') conference papers"
echo "  * $(grep '^@' .workshops | wc -l | tr -d '[:space:]') workshop papers"
echo "  * $(grep '^@' .journals | wc -l | tr -d '[:space:]') journal papers"
echo "  * $(grep '^@' .reports | wc -l | tr -d '[:space:]') technical reports"
echo "  * $(grep '^@' .talks | wc -l | tr -d '[:space:]') talks"
echo "  * $(grep '^@' .dissertations | wc -l | tr -d '[:space:]') dissertations"

bibtool -r bibtool/sort_fld.rsc -r bibtool/main.rsc -r bibtool/papers.rsc .papers > papers.bib
rm .papers

bibtool -r bibtool/sort_fld.rsc -r bibtool/main.rsc -r bibtool/journals.rsc .journals > journals.bib
rm .journals

bibtool -r bibtool/sort_fld.rsc -r bibtool/main.rsc -r bibtool/reports.rsc .reports > reports.bib
rm .reports

bibtool -r bibtool/sort_fld.rsc -r bibtool/main.rsc -r bibtool/workshops.rsc .workshops > workshops.bib
rm .workshops

bibtool -r bibtool/sort_fld.rsc -r bibtool/main.rsc -r bibtool/talks.rsc .talks > talks.bib
rm .talks

bibtool -r bibtool/sort_fld.rsc -r bibtool/main.rsc -r bibtool/dissertations.rsc .dissertations > dissertations.bib
rm .dissertations
