---
title: Annotation of lncRNA in farm animals - a community effort
subtitle: "RNACentral, Hinxton, 6 November 2017"
author: "Daniel Fischer (and many others, please see the Acknowledgement)"
github:
  repo: fischuu.github.io/presentations/RAndGoogleVisualization
  user: fischuu
highlighter: highlight.js
hitheme: tomorrow
job: Natural Resources Institute Finland, Green Technology
license: by-nc-sa
mode: selfcontained
framework: io2012
widgets:
- mathjax
- bootstrap
- quiz
---

## FAANG-COST Hackathon 

* Jan Gorodkin organized a FAANG-COST hackathon in Copenhagen from 24.-25.11.2016

* The purpose was to initiate a community effort to establish a ncRNA database for farm animals

* I present here current state of the lncRNA subpart of it

* In total 11 persons are working at the moment in that subgroub

* The focus is currently on 5 (cow, pig, horse, chicken, sheep) animals

---

## Data collection and filtering

* The European Nucleotide Archive was used to collect public available datasets

* In addition team members made own datasets available to the group

* Criterias to include data into the collection were

   * Illumina
   * Paired-end reads
   * At least 100bp
   * Strand specific libraries

---

## Quality control and Data description

* All obtained raw files were quality controlled with 

    * FastQC
    * MultiQC
    * Tailored scripts (e.g. strandness validation)

* For all files, among others, the following meta-data were archived:
    
    * Tissue (Brenda Ontology terms)
    * Corresponding references
    * ENA accession number
    

---

## Used Genome Versions:

* Cow
    * sdf
* Pig
    * dsgffg
* Horse
    * sdf
* Chicken
    * dsgffg
* Sheep
    * sdf

---

## Acknowledgement

The lncRNA groups consists of the following members

Daniel Fischer
Frank Panitz
Konstantinos Billis
Thomas Derrien
Lel Eory
Alicja Pacholewska
Nadezhda Doncheva
Magda Mielczarek
Sarah Djebali
Christa Kühn
Oana Palasca

Further:
Jan Gorodkin
Christian Anton
Andreia Maral

And many more in the other subgroups related to the ncRNA database
