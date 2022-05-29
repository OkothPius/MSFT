import ballerinax/microsoft.teams;
import ballerina/http;

# A service representing a network-accessible API
# bound to port `9090`.
service / on new http:Listener(9090) {

    # A resource for generating greetings
    # + return - string name with hello message or error
    resource function get api() returns json|error {
        // Send a response back to the caller.

        teams:Client teamsEndpoint = check new ({auth: {refreshUrl: "https://login.microsoftonline.com/organizations/oauth2/v2.0/authorize", refreshToken: "", clientId: "ee74c546-0426-423b-9e12-c57f64c26393", clientSecret: "TCY8Q~JriqIOhcVCcTyVGjE8Augg-4feolrpZbZg"}});
        string createTeamResponse = check teamsEndpoint->createTeam({displayName: "School Meeting", description: "Discussing current issues", classification: "", specialization: "educationClass", visibility: "public", isArchived: false});
        return createTeamResponse.toJson();
    }
}
