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
```


## Requirements
 
- [Micro](https://micro-editor.github.io/) 2.0 or later
- The [`align`](https://github.com/Guitarbum722/align) CLI tool, available on
  your `PATH`
Install `align` with Go:
 
```sh
go install github.com/Guitarbum722/align/cmd/align@latest
```
 
Make sure Go's bin directory (`go env GOPATH`/bin, typically `~/go/bin`) is on
your `PATH`, then confirm with:
 
```sh
align --help
```

## Installation
 
```sh
mkdir -p ~/.config/micro/plug/aligncsv
curl -o ~/.config/micro/plug/aligncsv/aligncsv.lua \
  https://raw.githubusercontent.com/tenochca/aligncsv/main/aligncsv.lua
```
 
Or clone this repo directly into your plugin directory:
 
```sh
git clone https://github.com/tenochca/aligncsv ~/.config/micro/plug/aligncsv
```

## Usage
 
Open a delimited file in Micro, then run:
 
```
Ctrl-E
aligncsv
```
 
This saves your buffer, aligns it in place on a comma delimiter, and reloads
the result, all in one step.
 
### Custom delimiter
 
```
aligncsv ;
```
 
Aligns on `;` instead of `,`.
 
### Text qualifier
 
If a field can contain the delimiter itself (e.g. a comma inside a quoted
CSV value), pass a qualifier as the second argument:
 
```
aligncsv , "
```
