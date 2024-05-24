Before optimization:

```
REPOSITORY   TAG       IMAGE ID       CREATED          SIZE
frontend     latest    044cffd4bc14   12 minutes ago   910MB
backend      latest    1278aa2e2905   14 minutes ago   579MB
```

After optimization:
```
REPOSITORY   TAG       IMAGE ID       CREATED          SIZE
backend      latest    12c9d0fcf1cd   3 minutes ago    248MB
frontend     latest    02cc3707049c   11 minutes ago   598MB
```

For the backend I changed from directly using `node.js` package to using ubuntu and installing `node.js` via curl, which could then be removed. For the frontend the major change was a result of deleting the `go` package.