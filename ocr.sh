# Create necessary folders
mkdir -p result 
mkdir -p processed
# Extract text
ls -p *.pdf | xargs -P 8 -I {} ocrmypdf {} result/{}
# Move files to processed
ls -p *.pdf | xargs -I {} mv {} processed/{}
# Send docs to DB TODO