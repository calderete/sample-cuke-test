### Sample automated test scenario

Run with

`cucumber features/leadership-team-members.feature`

Uncomment lines 15 to 17 in `features/support/hooks.rb` to automatically delete test file

```
After("@test-csv") do
  File.delete(@file_path)
end
```
