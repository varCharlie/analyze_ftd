# analyze_ftd.awk

## What is this?

This is a simple Awk script to analyze the data files provided by the SEC for failure to delivers.

This became of interest during the GME / WSB fiasco. I wrote this simple Awk script to crunch the data.


## The data
I've provided a few sample datasets. You can download it all at: https://www.sec.gov/data/foiadocsfailsdatahtm


## Running the program

### Step 1: Unzipping the data

```bash
cd data
unzip cns*.zip
```

### Step 2: Running the analysis

```bash
./analyze_ftd.awk < datafile.txt
```
