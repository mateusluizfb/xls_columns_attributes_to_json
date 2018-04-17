## XLS Columns Attributes to Json

### HOW TO USE

- Run Bundle Install
- Change the the path to the .xlsx file and the sheet name in the SHEET_PATH and SHEET_NAME constants in the code.

I made this quickly, so if you have some suggestion just open a PR. Thx.

### HOW IT WORKS

Supose you have a sheet like that:

|Songs            |Games         |Movies     |
|-----------------|--------------|-----------|
|Seven nation army|Pac man       |           |
|My Sharona       |Final Fantasy |John Wick  |
|Supersonic       |              |           |

With this script you can generate a "file.json" like that:

```
[
  {
    "name": "Songs",
    "values": [
      "Seven nation army", "My Sharona", "Supersonic"
    ]
  },
  {
    "name": "Games",
    "values": [
      "Pac man", "Final Fantasy"
    ]
  },
  {
    "name": "Movies",
    "values": [
      "John Wick"
    ]
  }
]

```
