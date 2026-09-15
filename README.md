# csvfmt
 
A [Micro](https://micro-editor.github.io/) plugin that aligns CSV and other
delimited files in place, using the [`align`](https://github.com/Guitarbum722/align)
CLI tool. Run one command, and your ragged columns snap into neat, readable
alignment without leaving the editor.

**Before:**
```csv
first,last,email
Paul,Danny,paul.danny@example.com
Hector,Gonzalez,h.gonzalez@example.com
Kim,Lee,kim.lee@example.com
```
 
**After (`aligncsv`):**
```csv
first  ,last    ,email
Paul   ,Danny   ,paul.danny@example.com
Hector ,Gonzalez,h.gonzalez@example.com
Kim    ,Lee     ,kim.lee@example.com


