Data Sharing and Archiving for Reproducibility (Cornell 2024)
========================================================
author: Lars Vilhuber
date: 2024-11-13
autosize: true
width: 1200

Cornell University





Overview
========================================================

- The Data Lifecycle (abbreviated) (15:00)
- Data Sharing via Archives: Hands-on (20:00)
- What if Data are Sensitive? (15:00)
- Licensing for Ethical Data Sharing (10:00)

We need Data!
=============

<center>
Go to [https://forms.gle/FEpF9RVq56XmesWF9](https://forms.gle/FEpF9RVq56XmesWF9) to fill out!

</center>

Background 
========================================================

- [Implementing Increased Transparency and Reproducibility in Economics 2020 Video](https://www.youtube.com/watch?v=pj-y3dLDOEA)
  - Slides are [**archived** at Zenodo](https://doi.org/10.5281/zenodo.3735536) [![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.3735536.svg)](https://doi.org/10.5281/zenodo.3735536)

-  Wilkinson, M., Dumontier, M., Aalbersberg, I. et al. "The FAIR Guiding Principles for scientific data management and stewardship." *Sci Data* 3, 160018 (2016). https://doi.org/10.1038/sdata.2016.18


Goals of this tutorial
==================

- Goal 1: Be able to curate the data necessary for reproducible analysis
- Goal 2: Know when to do so
- Goal 3: Choose license (while respecting ethics)



Goal 1: Elements: Data (where possible)
=================

- Old method: send the journal a ZIP file

- Source: Your laptop

- Destination: random file on a journal website

***

Questions/ What-ifs:

-  the data is not on your laptop?
  - too big
  - on server
  - a database
- the data is not yours to send
  - confidentiality
  - proprietary
  - other licensing issues
  
Goal 1: Elements: Data (where possible)
=================

- Old method: send the journal a ZIP file

- **Source: Your laptop**

- Destination: random file on a journal website

***

Questions/ What-ifs:

- how did the data get to your laptop?
- how did the data get generated?

These are **provenance** questions.


Goal 1: Elements: Data (where possible)
=================

- Old method: send the journal a ZIP file

- Source: Your laptop

- **Destination: random file on a journal website**

***

Questions/ What-ifs:

- is the ZIP file complete?
- are the ZIP file contents curated (preserved)?
- can the data be re-used?
- can the data be properly attributed to the creator?
- can the data be found independently of the article?


These are **FAIR** questions

FAIR Data Principles
===================

- **F**indable
- **A**ccessible
- **I**nteroperable
- **R**e-Usable


> Wilkinson, M., Dumontier, M., Aalbersberg, I. et al. The FAIR Guiding Principles for scientific data management and stewardship. Sci Data 3, 160018 (2016). https://doi.org/10.1038/sdata.2016.18

***

![FAIR Data Principles](images/Screenshot_2019-09-30_The_FAIR_Data_Principles.png)



The point of FAIR principles
============================

"Good data management is not a goal in itself, but rather is the key conduit leading to knowledge discovery and innovation, and to subsequent data and knowledge integration and reuse by the community after the data publication process."

***

"FAIR Principles put specific emphasis on enhancing the ability of machines to automatically find and use the data, in addition to supporting its reuse by individuals." 

([Wilkinson et al, 2016](https://doi.org/10.1038/sdata.2016.18))



The Data Lifecycle
==================
type: section

The Data Lifecycle
==================

- Amorphous thing... no clear consensus
- Might involve **destruction**
  - What is the value of data?
  - Who decides on the value of data?

***

Industry-proposed data lifecycle: 

![plot of chunk destruction1](cycle0.png)


The Data Lifecycle
==================

- Amorphous thing... no clear consensus
- Might involve destruction
  - What is the value of data?
  - Who decides on the value of data?

***

... which might really be a line

![plot of chunk destruction1-linear](cycle0-linear.png)

The Data Lifecycle
==================

- Amorphous thing... no clear consensus
- Might involve destruction
  - What is the value of data?
  - Who decides on the value of data?

***
<center>
A difficult question

![National Academies Life-Cycle](images/nas-nih-value-data.png)
</center>

> National Academies of Sciences Engineering and Medicine}, Life-Cycle Decisions for Biomedical Data: The Challenge of Forecasting Costs, Washington, DC: The National Academies Press, 2020. [https://dx.doi.org/10.17226/25639](https://dx.doi.org/10.17226/25639)

The Data Lifecycle
==================

- Amorphous thing... no clear consensus
- Might involve destruction
- Might involve **re-use**

***

![plot of chunk cycle1](cycle1.png)



The Data Lifecycle
==================

- Amorphous thing... no clear consensus
- Might involve destruction
- Might involve **re-use**
  - which starts the cycle anew


<center>

![plot of chunk cycle1-2](cycle1-2.png)

</center>



Consider the following questions
===========

Once you have **collected** the data
- is it really going to change?

Once you have registered your analysis plan
- should the **processing and analysis** really change?


***

![Cycle](cycle1.png)



Modified Data and Workflow
=================

Let's consider the preservation part separately:

***

![plot of chunk cycle1-archive](cycle2.png)


Modified Data and Workflow
=================

Preserve as you go

***

![Modified](cycle2-2.png)


Improved preservation and consistency
====================================

- Use your own archives!
- Ability to share earlier (multi-paper projects!)


<center>
![plot of chunk cycle3](cycle3.png)
</center>



Doubtful ethics of others...
===========
type: section

<div style="text-align: center; font-size: 200%;">
I don't want to be scooped!
<br />
<br/>
Thus, I'm not going to publish my raw data just yet!
</div>



What is preservation
===================

- Preservation != publication
- In fact, preservation may mean: not very accessible at all!
- Preservation is intended to maintain data for tens, even hundreds of years
  - Preservation may involve curation: active transformation of the data for improved accessibility
  
***

![Stacks](images/Archives-Stacks-1.jpg)
  
What is publication
==================

Publication typically involves making information about the data, as well as the data themselves, available to others.

- Publication can initially mean that only **metadata** (information about the data) is published
- In some cases, it may be that **only** metadata is ever published
- But the metadata will point to how to access the data, how long the data will be preserved, and other salient facts


FAIR Principles
===============

To be Findable:

- F1. **(meta)data are assigned a globally unique and eternally persistent identifier.**
- F2. data are described with rich metadata.
- F3. **(meta)data are registered or indexed in a searchable resource.**
- F4. metadata specify the data identifier.

***

To be Accessible:

- A1 **(meta)data** are retrievable by their identifier using a standardized communications protocol.
- A2 metadata are accessible, even when the data are no longer available.


FAIR Principles
===============

To be Interoperable:

- I1. **(meta)data use a formal, accessible, shared, and broadly applicable language for knowledge representation.**
- I2. **(meta)data use vocabularies that follow FAIR principles.**
- I3. (meta)data include qualified references to other (meta)data.

***

To be Re-usable:

- R1. meta(data) have a plurality of accurate and relevant attributes.
- R1.1. **(meta)data are released with a clear and accessible data usage license.**
- R1.2. **(meta)data are associated with their provenance.**
- R1.3. (meta)data meet domain-relevant community standards.


Some examples
=============
type:section


FAIR Metadata
=============

Interoperable: Structured metadata about the data

![icpsr metadata](images/icpsr-metadata-screenshot.png)

***

Accessible: Structured metadata about the deposit


![icpsr DC metadata](images/icpsr-metadata-screenshot2.png)

FAIR Metadata
=============

Findable: persistent identifier, indexed

![icpsr metadata](images/gds-metadata-screenshot.png)

***

Re-usable: License permits it!

(this was actually hidden in the metadata)


FAIR Metadata when data are not shareable
========================================

IAB: [Establishment History Panel (BHP) - Version 7518 v1](https://doi.org/10.5164/IAB.BHP7518.de.en.v1) at [https://doi.org/10.5164/IAB.BHP7518.de.en.v1](https://doi.org/10.5164/IAB.BHP7518.de.en.v1)

![iab DOI metadata](images/iab-metadata-screenshot.png)

***

Access conditions involve application process.

![iab Access metadata](images/iab-metadata-screenshot2.png)

But information ABOUT the access process (=metadata) is available.


What kind of access conditions?
===============================

In decreasing order of "freely available"

- Freely available (waive copyright)
- Attribution requested (e.g., citation): for instance, "CC-BY"
- **Available only to university researchers**
- **Available after embargo**

***

- Available after application process handled by a data provider
  - Only checks for legal compliance
- Available with permission of the original researchers
  - Checks for why you use it
- Only available if you are called "Lars"

This all seems so complicated
=============================
type: section

- I need to preserve my data for decades!
- I need to manage the application process for decades!
- Where do I get that DOI thing?
- How to I get Google to index my data?



Let's start
===========
type: section

<div style="text-align: center;">
<img src="images/giphy_scan.gif" width="50%" alt="scan" />
</div>

Toy Example
===========
type: section

<center>
How many browser tabs do you have open?

<https://forms.gle/FEpF9RVq56XmesWF9>

</center>

Survey
======

- Survey forms
- Metadata
- Sample data
- Actual data



Safeguarding scientific output
==============================
The role of journals is to provide a **permanent record**
of scientific knowledge.

- how reliable is that record?
- where are journals stored?
- what if the information is not in a journal?

***
![old library](images/antique-library-picture-id495747679-730x438.jpg)

Safeguarding scientific output
==============================

- journals disappear, as do websites
- **paper** journals are stored in libraries
- **e-journals** in a system called LOCKSS = *Lots of Copies Keep Stuff Safe*
- **data** should be stored in repositories

***
![stacks](images/Archives-Stacks-1.jpg)

<!-- ![tree in library](images/8520ec257e8022dbf450a989e87b9ccb.jpg) -->

These are still fallible
========================

<div style="text-align: center;">
<img src="images/d814ae2e0c47c399afcd93f6e232fb09.jpg" width="50%" alt="scan" />
</div>


Options for Preservation
=========================

**Trusted Repositories**

Journals and institutions have assessed a number of trusted repositories:
- [CoreTrustSeal](https://www.coretrustseal.org/) has a certification process
- [re3data.org](https://www.re3data.org/) lists research data repositories
- [Nature](https://www.nature.com/sdata/policies/repositories), [F1000Research](https://f1000research.com/for-authors/data-guidelines#hosting), and [PLOS](https://journals.plos.org/plosone/s/data-availability) have lists of trusted repositories. 
- Always check with your journal for specific restrictions or suggestions.
- These generally include at least the following:
  -  [Dryad Digital Repository](http://datadryad.org/)
  -  [figshare](http://figshare.com/)
  -  [Harvard Dataverse](https://dataverse.harvard.edu)
  -  [ICPSR](https://www.icpsr.umich.edu/icpsrweb/) and [OPENICPSR](https://www.openicpsr.org/openicpsr/)
  -  [Open Science Framework](http://osf.io/)
  -  [Zenodo](http://zenodo.org/)
  - Country or region-specific repositories (that nevertheless generally accept depositors from anywhere): [GESIS](https://datorium.gesis.org/xmlui/) (Germany), [Swedish National Data Service (SND)](https://snd.gu.se/en/describe-and-deposit-data), [EASY](https://easy.dans.knaw.nl/ui/home) (Netherlands), [CSIRO](https://data.csiro.au/collections/) (Australia), etc.
- Many universities have formal document repositories that may be able to assume such a role; talk to your (data) librarian

What are NOT options for preservation
====================================

- Github, Gitlab, Bitbucket, etc.
- Dropbox, Box.com, Google Drive, etc.
- Your personal website
- Your university's departmental website

***

![404](images/google-404.png)

![404-gh](images/Page_not_found_GitHub_Pages.png)

Options for Preservation
========================

Here: Sandbox for Zenodo

![zenodo](images/zenodo-main-page.png)

***

In one of my day jobs:

![openicpsr](images/openicpsr-main-page.png)



Getting started on Zenodo
=========================
type: prompt
incremental: false

We will NOT use the regular Zenodo; rather, we will test in the Sandbox. 


**https://sandbox.zenodo.org/**


Check your URL bar! There's no other indication that this is not the real Zenodo!

***

## Tutorial:

https://library.cfa.harvard.edu/data-archiving-and-sharing (Harvard Center for Astrophysics)


## Source data:

- [Survey](https://forms.gle/FEpF9RVq56XmesWF9)
- [PDF of Survey Instrument](https://github.com/larsvilhuber/tutorial-data-sharing-archiving-2021/blob/eb64c15ab470ff6848a565a9f88f2896d410dc62/data/survey-print-version-20210902.pdf)
- [Sample data](https://github.com/larsvilhuber/tutorial-data-sharing-archiving-2021/blob/eb64c15ab470ff6848a565a9f88f2896d410dc62/data/browser-survey.xlsx)
- [Google Sheet with updated Survey data](https://docs.google.com/spreadsheets/d/1kd0_eFtbGb7SLPSV6ls_OwS3FQFN7hRgb4Q97fwQZkQ/edit?usp=sharing)

Survey: Phase 1
======

![node1](cycle3-node1.png)

- Survey forms - ✔️
- Metadata - ✔️
- Sample data - ✔️
- Actual data

***

Let's go to Zenodo:

> - Presenter: [https://sandbox.zenodo.org/deposit/910136](https://sandbox.zenodo.org/deposit/910136)
> - Viewers: [https://sandbox.zenodo.org/](https://sandbox.zenodo.org/)


Survey: Phase 1
======

![node1](cycle3-node1.png)

- Survey forms - ✔️
- Metadata - ✔️
- Sample data - ✔️
- Actual data

***


Since I have already defined the survey, and created some test data, I can ... publish it!

- I could embargo it so that my survey respondents don't see the full survey (randomization)
- I could publish it so that I can show I'm serious to my survey respondents!



Do it now
==========
type: section

<div style="text-align: center;">
<img src="images/giphy_scan.gif" width="50%" alt="scan" />
</div>


Survey: Phase 1
======

![node1](cycle3-node1.png)

- Survey forms - ✔️
- Metadata - ✔️
- Sample data - ✔️
- Actual data

***

![zenodo filelist](images/zenodo-filelist-1.png)

Survey: Phase 1
==============


![node1](cycle3-node123.png)

- Survey forms - ✔️✔️
- Metadata - ✔️✔️
- Sample data - ✔️✔️
- Actual data

***

![zenodo filelist](images/zenodo-filelist-2.png)



An aside
========
type: section

> Goal: Robustness and automation - getting close to push-button reproducibility

- (Advanced features of Git(hub,lab) allows us to implement and test that)

> Goal: Correctly document reproducible research

- (also respond to thesis advisor, referree, editor, curious journalist asking the question "what has changed") 

![changes](images/releases-github.png)


Next step
=========

<center>

<a href="index2.html">Updating the files</a>

</center>

License
=======

![CC-BY-4.0](images/cc-by-nc.png) <small>[Creative Commons Attribution-NonCommercial 4.0 International Public License](LICENSE.html)</small>



