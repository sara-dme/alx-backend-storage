#!/usr/bin/python3
""" module contains a
    function that inserts a new document
    in a collection based on kwargs"""


def insert_school(mongo_collection, **kwargs):
    """ insert new doc in a collection based on kwargs"""
    return mongo_collection.insert_one(kwargs).inserted_id
