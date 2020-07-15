import inspect
import matplotlib.pyplot as plt
import numpy as np


def func2str(f):
    return inspect.getsource(f)


def printf(format_str, *args):
    print(format_str % args, end='')


def surfc(a, b, c):
    plt.figure().gca(projection="3d").plot_surface(a, b, c)


def plot(*args):
    plt.plot(*args)
    plt.draw()


def fplot(f, r):
    linspace = np.linspace(*r, 100)
    plot(linspace, f(linspace))


def size(np_array, dimen=None):
    if dimen is None:
        return np_array.shape
    else:
        return np_array.shape[dimen - 1]
