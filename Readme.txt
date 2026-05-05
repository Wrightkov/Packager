# Packager

## Overview

**Packager** is an R package designed to support Tracking shipping and average costs. Allowing one to quickly find the largest market and costs associated with shipping there.
---

## Installation

You can install the development version from GitHub:

```r
# install.packages("devtools")
devtools::install_github("Wrightkov/Packager")




Commands

clean_orders - make sure each in a proper format

validate_orders- make sure each data column exists correctly.

mcommon - main executable. counts most common zone and averages the costs associated with shipping to the location.

plot_heat - gives heatmap of where orders are coming from most often





orders.csv
   ↓
clean_orders()
   ↓
validate_orders()
   ↓
mcommon() OR plot_heat()
   ↓
results + visualizations