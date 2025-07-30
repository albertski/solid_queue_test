# Solid Queue Test

This repo serves as a quick playground of testing the Solid Queue Gem

## 📬 Defined Queues by Urgency

This project uses the following queues to categorize jobs based on how urgently they should be processed:

| Queue Name | Urgency Level | Description |
|------------|----------------|-------------|
| `critical` | 🚨 Highest     | For jobs that must be executed immediately. Examples include billing actions, account locks, or system alerts. |
| `high`     | 🔥 High         | For time-sensitive but non-critical jobs such as user notifications, confirmation emails, or real-time updates. |
| `default`  | ⚙️ Normal       | General-purpose queue for standard background jobs that don't require prioritization. |
| `low`      | 🕒 Low          | For less urgent jobs that can be delayed without affecting user experience, like sending digest emails or syncing data. |
| `bulk`     | 🐘 Lowest       | For heavy or long-running background tasks that are non-interactive, such as generating reports or archiving records. |

Each job in the application is explicitly assigned to one of these queues using the `queue_as` directive in its class definition.

## Mission Control Password
You can now access Mission Control – Jobs with:
 - Username: test
 - password: Au7eeM97ofFyc32HtEmji5eVpg1QNasXBFSmNfSdjKjDaPNfHNr6YBuRUqKs3Auk

## Creating Jobs

```ruby
1000.times { CriticalJob.perform_later }
1000.times { HighJob.perform_later }
1000.times { DefaultJob.perform_later }
1000.times { LowJob.perform_later }
1000.times { BulkJob.perform_later }
```
