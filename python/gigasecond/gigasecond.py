import datetime


def add_gigasecond(start_time):
    return start_time + datetime.timedelta(seconds=10**9)
