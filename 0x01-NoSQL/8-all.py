#!/usr/bin/env python3
""" using pymongo """

def list_all(mongo_collection):
    """ list all doc in Python"""
    return list(mongo_collection.find())
