import pymongo
from pymongo import MongoClient

client = MongoClient("localhost", 27017)
DATABASE = client["Db1"]
COLLECTION = DATABASE.details

results = C
OLLECTION.find({"last_name": "Wilson"})

for r in results:
	try:
		if float(r['hs_gpa']) < 2:
			continue
	except KeyError:
		continue
	print(r["last_name"])

print(client.database_names())
