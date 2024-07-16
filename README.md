# Git2 cross building

This is just an example of how to build git2 from amd64 to arm64

## Testing

```bash
docker run --rm -it --platform linux/amd64 -v $(pwd):/code -w /code rust:1-bookworm bash /code/build.sh
```
