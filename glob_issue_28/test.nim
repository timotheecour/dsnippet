import glob
import sequtils

let o = defaultGlobOptions + {IgnoreCase}
echo toSeq(walkGlob("d04/A1/z*.txt", options = o))

