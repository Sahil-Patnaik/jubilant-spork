public  class Leadhelper 
{
    @AuraEnabled(cacheable=true)
    public static List<lead> getTopLead() 
    {
        return [SELECT Id, Name, Company, Status, AnnualRevenue FROM Lead WHERE Status IN ('Open - Not Contacted','Working - Contacted') AND AnnualRevenue >= 5000000];
    }
}