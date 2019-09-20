NewspaperWorksFixtures
===================================================

This project contains very little code, but provides a set of fixture files under
version control to facilitate testing of ingest workflows for [newspaper_works](https://github.com/marriott-library/newspaper_works),
or for other digitized newspaper content workflows in general.

# Installation

Add NewspaperWorksFixtures to your `Gemfile`, _preferably only as a test or
development dependency_:

```ruby
group :development, :test do
  gem 'newspaper_works_fixtures'
end
```

Then run `bundle install`.

Once the gem is installed, you will be able to access the paths to the fixtures by
calling methods on the base `NewspaperWorksFixtures` class, as in:

```
2.4.1 :001 > NewspaperWorksFixtures.file_fixtures
 => "/path/to/newspaper_works_fixtures/spec/fixtures/files"
```

# Contents

#### NDNP 'local' batch
```ruby
# /path/to/gem/spec/fixtures/files/ndnp/batch_local
NewspaperWorksFixtures.ndnp_local_batch
```

A small batch of newspaper objects that is intended to mock vendor-provided
digitization deliverables (page-level objects, no article segmentation)
conforming to Library of Congress [NDNP specs](http://www.loc.gov/ndnp/guidelines/NDNP_201820TechNotes.pdf).
(The data here is from University of Utah.)

This batch includes 1 title, 1 reel, and 1 issue with 2 pages. Each scan has a
TIFF, JP2, PDF, and ALTO XML file.

2 image scans; 74 MB

#### NDNP ChronAm batch
```ruby
# /path/to/gem/spec/fixtures/files/ndnp/batch_test_ver01
NewspaperWorksFixtures.ndnp_chronam_batch
```

A small batch of newspaper objects that mimics the BagIt-formatted batches of scanned newspapers
found on the Library of Congress Chronicling America [data/batches](https://chroniclingamerica.loc.gov/data/batches/) site.
(The data here is from `batch_curiv_jojoba_ver01`; page-level objects, no
article segmentation.)

This batch includes multiple titles, reels, target files, issues, and pages. Each scan has a
JP2, PDF, and ALTO XML file (no TIFF). All of the corresponding BagIt and METS
files are included as well.

11 image scans; 149 MB

#### PDF and TIFF batch (Chicopee Weekly)
```ruby
# /path/to/gem/spec/fixtures/files/article_segmented/batch_deseret_news
NewspaperWorksFixtures.pdf_batch
NewspaperWorksFixtures.tiff_batch
```
These are two variants of four-page issues of Chicopee Weekly, via 
[Digital Commonwealth](https://www.digitalcommonwealth.org/collections/commonwealth-oai:xd07gx07n).

The PDF source materials are 400 ppi monochrome (CCITT group 4 compressed),
with each PDF representing a single four page issue.  The file naming convention
is as follows:

- Publication directory named with Library of Congress Control Number (LCCN).

- Inside publication directory are PDF files using naming convention of
  `YYYYMMDDEE.pdf`, where:
  - `YYYY` is four digit year.
  - `MM` is month (zero padded).
  - `DD` is day of month (zero padded).
  - `EE` is edition number (zero padded).

The TIFF batch likewise is one-bit "Group 4" compressed mononchrome images,
and use a similar `YYYMMDDEE` naming convention:

- Publication directory named with Library of Congress Control Number (LCCN).

- Directly contained in publication directory are directories, one per issue,
  using the `YYYYMMDDEE` naming convention/

- Inside issue directories are TIFF files with lexically ordered filenames,
  corresponding to page sequence order of that issue.

#### JP2 Batch

- The JP2 batch is a copy of a two-page issue also included in NDNP source
  materials in this gem.


#### Deseret News article segmented batch
```ruby
# /path/to/gem/spec/fixtures/files/article_segmented/batch_deseret_news
NewspaperWorksFixtures.article_segmented_batch_deseret_news
```

This batch includes one title, one issue, nine pages, and articles. Each page has a PDF, and ALTO XML file, and each article has a PDF and an ALTO XML file (no TIFF).

Article segmented files: 19 pdf, 19 xml/dtd; 3.9 MB

Page level files: 9 pdf; 5.6 MB; 9 xml/dtd; 3.8 MB

#### Topaz Times article segmented batch
```ruby
# /path/to/gem/spec/fixtures/files/article_segmented/batch_topaz_times
NewspaperWorksFixtures.article_segmented_batch_topaz_times
```

This batch includes an issue, pages, and articles. Each page has a PDF, TIF, ALTO XML file, and an articles XML file.

Article segmented files: 30 PDF, 30 TIF; 1.1 MB

Page level files: 4 PDF, 4 TIF; 876 KB

# Credits

This gem is part of a project developed in a collaboration between
[The University of Utah](https://www.utah.edu/), [J. Willard Marriott Library](https://www.lib.utah.edu/ß) and
[Boston Public Library](https://www.bpl.org/), as part of the "Newspapers in Samvera" project
grant funded by the [Institute for Museum and Library Services](https:///imls.gov).
