
|                                             | FULL    | Increment | CDP        |   |   |   |   |   |   |
|---------------------------------------------|---------|-----------|------------|---|---|---|---|---|---|
| Size                                        | 1317593 | 84361     | 1317593    |   |   |   |   |   |   |
| Ability to roll back at specific time point | 0       | 1         | 1(bin-log) |   |   |   |   |   |   |
| Speed of roll back                          | 5sec    | 3sec      | -          |   |   |   |   |   |   |

<b>Full DB</b>

> ./full_backups.sh
>
Time: 7sec


> ./full_backups_restore.sh

Time: 5sec

<b>Increment </b>

> ./increment_backups.sh
>
Time: 7sec

> ./fincrement_backups_restore.sh

Time: 5sec
