#/usr/bin/python3
""" pymongo """

def insert_school(mongo_collection, **kwargs):
    """ insert new doc in a collection based on kwargs"""
    return mongo_collection.insert_one(kwargs).inserted_id
