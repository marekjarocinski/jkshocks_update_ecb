### Updating ECB Monetary Policy and Central Bank Information shocks originally constructed in: Jarocinski, M. and Karadi, P. (2020) Deconstructing  Monetary Policy Surprises - The Role of Information Shocks, AEJ:Macro, https//doi.org/10.1257/mac.20180090

### Updated shocks:
- `shocks_ecb_mpd_me_d.csv` - Monetary Policy and Central Bank Information shocks, by Governing Council meeting, indexed by date
- `shocks_ecb_mpd_me_m.csv` - Monetary Policy and Central Bank Information shocks, aggregated to monthly frequency (zero if no shocks in a given month)

### Construction of the shocks:

- `code/main.m` - Matlab script (calls other Matlab functions)

### Source data: 
Dataset_EA-MPD.xlsx - financial variables "surprises" around ECB Governing Council announcements since 1999, created by Altavilla, Brugnolini, Gürkaynak, Motto, Ragusa (2019) Measuring euro area monetary policy,
Journal of Monetary Economics, https://doi.org/10.1016/j.jmoneco.2019.08.016.

To replicate the computation of the shocks download Dataset_EA-MPD.xlsx from
https://www.ecb.europa.eu/pub/pdf/annex/Dataset_EA-MPD.xlsx, place it in `source_data/` and run `code/main.m`

---

#### Definitions of the variables in `shocks_ecb_mpd_me_d.csv` and `shocks_ecb_mpd_me_m.csv`:
- pc1 - policy surprise factor: first principal component of Monetary Event-window changes in overnight index swaps (OIS) with maturities 1-, 3-, 6-months and 1-year (Identifiers: OIS1M, OIS3M, OIS6M, OIS1Y), scaled to have the same standard deviation as the OIS1Y Monetary Event-window change (in % p.a.)
- STOXX50 - Monetary Event-window changes in the Euro Stoxx 50 (100 x log change)

- MP_pm,CBI_pm - Monetary Policy and Central Bank Information shocks obtained with simple ("Poor Man's") sign restrictions.
- MP_median,CBI_median - Monetary Policy and Central Bank Information shocks obtained with the median rotation that implements the sign restrictions.

The variables satisfy

MP_pm + CBI_pm = pc1

-> this is the more restrictive decomposition assuming that only one of the shocks is present in each monetary policy announcement

MP_median + CBI_median = pc1

-> this is the more general decomposition that allows both shocks to be present in each monetary policy announcement


#### Construction of the shocks:

For the definition of Monetary Policy and Central Bank Information shocks and the motivation behind the sign restrictions see Jarocinski and Karadi (2020).


### Licensing

The content of this repository is available under the usual conditions applying to the replication files of academic articles (see e.g. the AEA guidelines under https://www.aeaweb.org/journals/data/faq#license):

- The data are licensed under the Creative Commons Attribution 4.0 International License (CC BY 4.0). For more details, see the [CC BY 4.0 License](https://creativecommons.org/licenses/by/4.0/).

- The code in this repository is licensed under the BSD 3-Clause License. For more details, see the [BSD 3-Clause License](https://opensource.org/licenses/BSD-3-Clause).

If you use this work, please cite the following paper: Jarocinski, M. and Karadi, P. (2020) Deconstructing  Monetary Policy Surprises - The Role of Information Shocks, AEJ:Macro, DOI: http://doi.org/10.1257/mac.20180090


Marek Jarocinski marek.jarocinski@ecb.europa.eu
Peter Karadi peter.karadi@ecb.europa.eu
