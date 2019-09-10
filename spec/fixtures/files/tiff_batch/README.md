## Batch contents

* A root directory named with the LCCN of the publication.

* Contained in the publication directory, two four-page issues, each with
  its own directory, named with the `YYYYMMDDEE` convention, where:
    - `YYYY` represents the 4-digit year
    - `MM` represents the 2-digit month
    - `DD` represents the 2-digit day
    - `EE` represents the 2-digit edition number (default is 01)

* In each issue directory, page TIFF files are named in such a way that
  lexical ordering is observed ("page1.tiff" is before "page2.tiff" in both
  string evaluation and in human readability).

### Batch details

* _Contained herein are images created from like issue PDFs in `../pdf_batch`._

* These page images were extracted via Ghostscript, with the following command
syntax:

```
gs -dNOPAUSE -dBATCH -sDEVICE=tiffg4 -dTextAlphaBits=4 -sOutputFile=page%d.tiff -r400 -f $PDFFILE
```

* Like the PDF equivalents, containing one-bit monochrome CCITT "Group 4"
  compressed images, these TIFF images use same compression and bit depth.
