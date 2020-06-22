import inspect
import matplotlib.pyplot as plt
import numpy as np


def func2str(f):
    return inspect.getsource(f)


def printf(format_str, *args):
    print(format_str % args)


def surfc(a, b, c):
    plt.figure().gca(projection="3d").plot_surface(a, b, c)


def fplot(f, r):
    linspace = np.linspace(*r, 100)
    plt.plot(linspace, f(linspace))
    plt.show()


def size(np_array, dimen=None):
    if dimen is None:
        return np_array.shape
    else:
        return np_array.shape[dimen - 1]
