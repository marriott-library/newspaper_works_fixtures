newspaper_works_fixtures
===================================================

This project contains very little code, but provides a set of fixture files under 
version control to facilitate testing of ingest workflows for [newspaper_works](https://github.com/marriott-library/newspaper_works),
or for other digitized newspaper content workflows in general.

# Contents

#### NDNP sample batch
`NewspaperWorksFixtures.ndnp_sample_batch`

A small batch of newspaper objects that mimics the BagIt-formatted batches of scanned newspapers
found on the Library of Congress Chronicling America [data/batches](https://chroniclingamerica.loc.gov/data/batches/) site.
(The data here is from `batch_curiv_jojoba_ver01`.)

This batch includes multiple titles, reels, target files, issues, and pages. Each scan has a 
JP2, PDF, and ALTO XML file (no TIFF). All of the corresponding BagIt and METS
files are included as well.

11 page scans; 149 MB

# Credits

This gem is part of a project developed in a collaboration between
[The University of Utah](https://www.utah.edu/), [J. Willard Marriott Library](https://www.lib.utah.edu/ß) and
[Boston Public Library](https://www.bpl.org/), as part of the "Newspapers in Samvera" project
grant funded by the [Institute for Museum and Library Services](https:///imls.gov).
