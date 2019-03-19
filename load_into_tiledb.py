from genomelake.backend import extract_bigwig_to_file
import sys
import time


bigwig = sys.argv[1]
tiledbdir = sys.argv[2]

before = time.time()
extract_bigwig_to_file(bigwig, tiledbdir, mode='tiledb')
after = time.time()
elapsed = after - before
print('Loaded {} into tiledb in {} in {} seconds'.format(bigwig, tiledbdir, elapsed))
