# lockdown-example

Example for [npm-lockdown](https://github.com/mozilla/npm-lockdown), a more detail usage guide.

## Usage

```bash
git clone https://github.com/bolasblack/lockdown-example
npm run beforeall
npm install
```

The version of `lodash` and `moment` was locked at `3.3.0` and `2.8.1`, even though the version prefixed with `^`.

Then execute command `npm update --save` will upgrade dependencies, but won't update `lockdown.json`, you need execute `npm run lock` before commit.

## Auto update lockdown.json before commit

```bash
echo 'source $GIT_DIR/../scripts/update-lockdown-json.sh' >> .git/hooks/pre-commit
chmod u+x .git/hooks/pre-commit
```

**You need use this feature careful with `git commit --amend`**
