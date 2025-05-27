# Salesforce Lead Scoring

Apex automation to score Salesforce Leads based on key business criteria. Includes unit tests.

## Features

- Assigns a score to Leads (custom field: `Score__c`) based on:
  - Company size
  - Lead source
  - Industry
  - Annual revenue
- Example rules:
  - +50 if Company size > 100 employees
  - +30 if LeadSource is "Web"
  - +20 if Industry is "Technology"
  - +10 if AnnualRevenue > $1,000,000
- Includes production-ready Apex code and unit test

## Files

- `LeadScorer.cls` — main Apex class
- `LeadScorerTest.cls` — unit test for automation

## How to use

1. Add a custom field `Score__c` (Number) to the Lead object.
2. Deploy `LeadScorer.cls` and `LeadScorerTest.cls` to your org.
3. Call `LeadScorer.scoreLeads()` from trigger, process builder, or manually.
4. Run unit test to validate logic.

## Author

Igor Sakhar  
[GitHub](https://github.com/iggisakhar)  
[LinkedIn](https://www.linkedin.com/in/igor-sakhar)
