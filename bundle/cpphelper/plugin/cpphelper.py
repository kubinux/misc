import difflib
import os
import glob


def complete_headers(start, path_list):
    result_set = set()
    for p in path_list:
        path = os.path.normpath(p) + os.path.sep
        for entry in glob.glob(os.path.join(path, start) + '**'):
            name = entry[len(path):]
            if os.path.isdir(entry):
                name += os.path.sep
            result_set.add(name)
    result = list(result_set)
    result.sort()
    return result
