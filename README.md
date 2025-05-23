# iKraph: a comprehensive, large-scale biomedical knowledge graph for AI-powered, data-driven biomedical research

[![DOI](https://zenodo.org/badge/910135942.svg)](https://doi.org/10.5281/zenodo.14577964)
[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.14846820.svg)](https://doi.org/10.5281/zenodo.14846820)

This repository contains code for paper "iKraph: a comprehensive, large-scale biomedical knowledge graph for AI-powered, data-driven biomedical research". It contains three parts:
1. Named Entity Recognition: code for training and inference on biomedical papers to extract named entities, such as genes, drugs, chemicals and diseases.
2. Relation Extraction: code for training and inference on extracting relations between the named entities.
3. Repurposing: code for drug repurposing.

## Setup

NER and RE have different python environment requirements. See the README.md file under each directory for instructions. 

Repurposing data must be downloaded and put under `repurposing/data` per the instruction below.

## Data
Data for this project is available at [this DOI link](https://doi.org/10.5281/zenodo.14846820). The content are:
* `data.tar.gz`: repurposing data
* `iKraph_full.tar.gz`: complete version of iKraph data

### Repurposing Data

An overview of the data is provided in the `README` file in the compressed tarball file. Please unzip it and put it under `repurposing/data`.

### Complete iKraph Data

A comprehensive `iKraph_README.md` file explaining the structure and usage of the dataset is included in the downloaded tarball file. Make sure to review the file for guidance on integrating and utilizing the data effectively.

## Training Data

Our pipeline is trained using [BioRED](https://academic.oup.com/bib/article/23/5/bbac282/6645993) data. 

## iExplore

[iExplore](https://biokde.com/) is the query and visualization product of iKraph, the biomedical knowledge graph developed at Insilicom.
