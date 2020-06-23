def mark1(n):
    if n <= 1:
        x = 1
    else:
        x = mark1(n - 1) + mark1(n - 2)
    return x
