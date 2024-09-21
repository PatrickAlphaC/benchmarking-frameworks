# Moccasin Benchmark

[Moccasin](https://github.com/Cyfrin/moccasin) version: (unreleased) commit `
44686b0`

## Help

- Ran the following command 10 times on this repo to make sure cache is warm

```
time mox --help
```

## init 

Created a new directory, and made sure the cache was empty.

```
<reinstalled mox>
mkdir scrap
cd scrap
time mox init .
```

## compile (cold)

```
<reinstalled mox>
rm -r .pytest_cache
rm -r out
rm -r script/__pycache__
rm -r tests/__pycache__
time mox compile 
```

## compile (warm)

- Ran the following command 10 times on this repo to make sure cache is warm

```
time mox compile 
```

## test (cold)

```
<reinstalled mox>
rm -r .pytest_cache
rm -r out
rm -r script/__pycache__
rm -r tests/__pycache__
time mox test
```

## test (cold)

- Ran the following command 10 times on this repo to make sure cache is warm

```
time mox test
```

## deploy (warm)

- Ran the following command 10 times on this repo to make sure cache is warm

```
time mox run deploy
```

