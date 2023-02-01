wget https://dl.fbaipublicfiles.com/fasttext/vectors-crawl/cc.bn.300.vec.gz
mkdir ./spacy_bn
python -m spacy init vectors bn ./cc.bn.300.vec.gz  ./spacy_bn
mkdir packed
python -m spacy package spacy_bn packed/
pip install packed/bn_pipeline-0.0.0/dist/bn_pipeline-0.0.0.tar.gz
