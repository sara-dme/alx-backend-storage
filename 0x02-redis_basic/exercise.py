#!/usr/bin/env python3
""" Create a Cache class."""


import redis
from uuid import uuid4


class Cache:
    """ class cache"""

    def __init__(self):
        """store an instance of the redis client """
        self._redis = redis.Redis()
        self._redis.flushdb()

    def store(self, data: Union[str, bytes, int, float]) -> str:
        """ generate a random key """
        k = str(uuid4())
        self._redis.set(k, data)
        return k
