def mark2(mat, n):
    result = mat
    for i in range(0 , n + 1):
        result = result * mat
    return result
