import sqlite3
import pandas as pd

# Load the CSV
df = pd.read_csv('data/raw/sets.csv')

# Create a SQLite database
conn = sqlite3.connect('data/lego.db')

# Save the data as a table called 'sets'
df.to_sql('sets', conn, if_exists='replace', index=False)

conn.close()
print(f"Done! {len(df)} rows loaded into lego.db")