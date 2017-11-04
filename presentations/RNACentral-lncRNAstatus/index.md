---
title: Annotation of lncRNA in farm animals - a community effort
subtitle: "RNACentral Meeting, Hinxton, 6 November 2017"
author: "Daniel Fischer (together with the FAANG lncRNA group)"
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

* Datasets were collected from the European Nucleotide Archive (ENA)

* In addition team members made own datasets available to the group

* Criterias to include data into the collection were

   * Illumina
   * Paired-end reads
   * At least 100bp
   * Strand specific libraries

---

## Quality control and Data curation

* All obtained raw files were quality controlled with 

    * FastQC
    * MultiQC
    * Tailored scripts (e.g. strandness validation)

* For all files, among others, the following meta-data were archived:
    
    * Tissue (Brenda Ontology terms)
    * Corresponding references
    * ENA accession number
    

---

## Pipelines established

We established two different pipelines to annotate lncRNA:

The "HS"" pipeline:

    * HISAT2
    * StringTie
    * FEELnc
    
The "SC" pipeline:
    
    * STAR
    * Cufflinks
    * FEELnc

---

## Used Genome Versions and available samples

| Species   |      Genome        |  Avail. Samples |
|-----------|:------------------:|----------------:|
| Chicken   |  Gallus_gallus-5.0 |   171           |
| Cow       |  UMD_3.1.1         |   447           |
| Horse     |  EquCab2.0         |    62           |
| Pig       |  Sscrofa11.1       |   149           |
| Sheep     |  Oar_v4.0          |   195           |

---

## Collected tissues per samples
<div style="text-align:center">
<img src="./2017.09.14-data_collected_tissue_21_07_2017_RNAonly.jpg" alt="Drawing" style="width: 700px;"/>
</div>

---

## Pipeline comparison

* Sarah Djebali performed an extensive comparison on the two different pipelines for cow and chicken

* For that, we tried to run both pipelines with and without gene annotations

* Tissues were considered individually and also merged (1,2 and all)

* Total number of transcript sets to evaluate:

    * 1 gene annotation + 24 predictions for chicken
    * 1 gene annotation + 32 predictions for cattle

---

## Summary of the comparison

<div style="text-align:center">
<img src="./compSummary.png" alt="Drawing" style="width: 800px;"/>
</div>

---

## Impacts of the comparisons

* Stringtie has improved a lot between version 1.3.2 and 1.3.3
  * Many less unstranded transcripts
  * Length of exons of different types better
  * Less impacted by not having an annotation
  * More similar results on both species
* Stringtie becomes a tool that can be envisionned for FAANG,
   although its results are more dependent on the annotation
   quality and this one can be very variable for livestock species

---

## FEELnc performance

* Each pipeline produced one gtf as inoput for FEELnc

* The coverage for lncRNA annotation is also crucial and at least 70 Mio reads are desired

* Most of the available datasets couldn't fulfil this criteria

* Consequently, we chose 30 Mio as threshold for a high-coverage set

* That means: 4 different input gtfs per species.

---

## FEELnc results I

| Species   |      Input    |  # of lncRNA     |
|-----------|:-------------:|-----------------:|
| Chicken   | HS            | 31.208           |
|           | HS30          | 10.225           |
|           | SC            | 46.288           |
|           | SC30          | 29.310           |
| Cow       | HS            | 26.231           |
|           | HS30          |  8.219           |
|           | SC            | 141.036          |
|           | SC30          | 41.980           |

---

## FEELnc results II

| Species   |      Input    |  # of lncRNA     |
|-----------|:-------------:|-----------------:|
| Horse     | HS            | 12.848           |
|           | HS30          | 9.159            |
|           | SC            | 77.668           |
|           | SC30          |  53.932          |
| Sheep     | HS            | 27.713           |
|           | HS30          |  6.270           |
|           | SC            | 49.724           |
|           | SC30          | 31.172           |

---

## Upcoming tasks

* ADD HERE STILL SOME TO-DO THINGS

---

## Vision for the FAANG non-coding and structured RNA (ncRNA) database I

* Compilation of small, long and structured RNA

* For multiple animal genomes
   - Syntenic ncRNAs
   - Tissue expression
   - QTL
   - Conservation of features

---

## Vision for the FAANG non-coding and structured RNA (ncRNA) database II

* Integration with ENSEMBL will feed into external resources e.g.:
   - The tissues database[*]
   - RAIN for RNA and protein interactions/associations [#]



[*] https://tissues.jensenlab.org

[#] https://rth.dk/resources/rain



---

## Acknowledgement

The FAANG lncRNA group consists of the following members

| lncRNA group        | ncDB efforts    |
|---------------------|-----------------|
|Daniel Fischer       | Jan Gorodkin    |
|Frank Panitz         | Christian Anton |
|Konstantinos Billis  | Andreia Maral   |
|Thomas Derrien       |                 |
|Lel Eory             | Genomic group   |
|Alicja Pacholewska   | sncRNA group    |
|Nadezhda Doncheva    |                 |
|Magda Mielczarek     |                 |
|Sarah Djebali        |                 |
|Christa Kühn         |                 |
|Oana Palasca         |                 |


---

## Appendix: Chicken summary - individual
<div style="text-align:center">
<img src="./chickenSummary_ind.png" alt="Drawing" style="width: 700px;"/>
</div>

---

## Appendix: Chicken summary - merged
<div style="text-align:center">
<img src="./chickenSummary_merged.png" alt="Drawing" style="width: 700px;"/>
</div>

---

## Appendix: Cow summary - individual
<div style="text-align:center">
<img src="./cowSummary_ind.png" alt="Drawing" style="width: 700px;"/>
</div>

---

## Appendix: Cow summary - merged
<div style="text-align:center">
<img src="./cowSummary_merged.png" alt="Drawing" style="width: 700px;"/>
</div>

---

