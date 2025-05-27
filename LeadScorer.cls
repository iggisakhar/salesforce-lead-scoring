@isTest
public class LeadScorerTest {
    @isTest
    static void testLeadScoring() {
        Lead testLead = new Lead(
            LastName = 'Test',
            Company = 'Test Inc',
            NumberOfEmployees = 150,
            LeadSource = 'Web',
            Industry = 'Technology',
            AnnualRevenue = 2000000
        );
        insert testLead;

        List<Lead> leads = [SELECT Id, NumberOfEmployees, LeadSource, Industry, AnnualRevenue, Score__c FROM Lead WHERE Id = :testLead.Id];
        Test.startTest();
        LeadScorer.scoreLeads(leads);
        Test.stopTest();

        // Проверяем, что score правильный: 50+30+20+10 = 110
        System.assertEquals(110, leads[0].Score__c);
    }
}
