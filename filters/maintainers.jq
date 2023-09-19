# Data needed to render the markdown table of rules
.rulesets[]
| select(.repository == "github:" + $ghrepo)
| .maintainers // []
| map("[" + .name + "](https://github.com/" + .github + ")")
| @csv