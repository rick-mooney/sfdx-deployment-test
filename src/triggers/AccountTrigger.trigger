trigger AccountTrigger on Account (after insert, after update, after delete) {
    try {
        // Please change the 3rd parameter to "false" if you want to execute this process asynchronously (Queueable job)
        grax.GRAXApi.jsonContentCallout(Trigger.new, Trigger.old, true);
    } catch(exception ex) {
        // Handle all exceptions from environment.
        System.debug('[GRAX Trigger Account] ' + ex.getMessage());
    }
}