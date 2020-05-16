# Postup rucneho prekladu Matlab -> Python

## Zakladne pojmy

### Blok kodu v Matlabe

Zacina klucovymi slovami ako if, while, function.

Konci klucovym slovom end.

Mozu byt do seba vnorene, kazdy zaciatok sposobuje vnorenie, koniec vynorenie, blok konci ked sa na urovni vnorenia sposobenu jeho zaciatkom objavi koniec.

Napr:

```matlab
if a>b
    %nejaky kod
    if b>c
        %vnoreny blok
    end
    %dalsi kod
end
%kod za blokom
```

### Blok kodu v Pythone

Zacina klucovymi slovami ako if, while, def.

Konci ked sa vyskytne kod rovnako alebo menej odsadeny ako zaciatok prislusneho bloku.

Mozu byt vnorene, uroven vnorenia je vyjadrena dlzkou odsadenia ktora musi byt striktne vecsia ako vonkajsi blok a konzistentna vramci bloku okrem don vnorenych blokov.

Standardne sa pouziva odsadenie 4 medzery od rodicovskeho bloku.

```python
if a > b:
    # nejaky kod
    if b > c:
        # vnoreny blok
    # dalsi kod
# kod za blokom
```

