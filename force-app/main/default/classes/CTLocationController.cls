public with sharing class CTLocationController {
    
    public static List<Location__c> getRecentStatusChanges(){
        return [SELECT Id, OwnerId, IsDeleted, Name, CreatedDate, LastModifiedDate, LastModifiedById, SystemModstamp, CreatedById, 
            LastViewedDate, LastReferencedDate, Address__c, Pincode__c, Red_Score__c, Status_Update_Date__c, Status__c 
            FROM Location__c ORDER BY Status_Update_Date__c DESC NULLS LAST LIMIT 100  ];
   
        }


    public static List<Location__c> searchLocations(String searchterm){
        return [SELECT Id, OwnerId, IsDeleted, Name, CreatedDate, LastModifiedDate, LastModifiedById, SystemModstamp, CreatedById, 
        LastViewedDate, LastReferencedDate, Address__c, Pincode__c, Red_Score__c, Status_Update_Date__c, Status__c 
        FROM Location__c WHERE Name LIKE :searchTerm 
        OR Pincode__c LIKE :searchTerm 
        OR Address__c LIKE :searchTerm
        ORDER BY Status_Update_Date__c DESC NULLS LAST ];
    }

    public static Location__c getLocationById(String locationId){
        List<Location__c> location = [SELECT Id, OwnerId, IsDeleted, Name, CreatedDate, LastModifiedDate, LastModifiedById, SystemModstamp, CreatedById, 
        LastViewedDate, LastReferencedDate, Address__c, Pincode__c, Red_Score__c, Status_Update_Date__c, Status__c 
        FROM Location__c WHERE Id = :locationId];
        if(location != null && location.size()>0){
            return location[0];
        }
        return null;
    }
}
