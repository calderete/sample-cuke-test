### Sample automated test scenario

The file at `test_files/ltm_csv.csv` is replica of the file that will be generated at `test_files/test_csv.csv`

Run with

`cucumber features/leadership-team-members.feature`

Uncomment lines 15 to 17 in `features/support/hooks.rb` to automatically delete generated test file

```
After("@test-csv") do
  File.delete(@file_path)
end
```
