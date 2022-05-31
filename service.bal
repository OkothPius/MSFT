import ballerinax/microsoft.teams;
import ballerina/http;

# A service representing a network-accessible API
# bound to port `9090`.
service / on new http:Listener(9090) {

    # A resource for generating greetings
    # + return - string name with hello message or error
    resource function get api() returns json|error {
        // Send a response back to the caller.

        teams:Client teamsEndpoint = check new ({auth: {refreshUrl: "https://login.microsoftonline.com/organizations/oauth2/v2.0/authorize", refreshToken: "0.AUgAxcaLpPrdJky_KEkOAtMBd0bFdO4mBDtCnhLFf2TCY5NIAKI.AgABAAEAAAD--DLA3VO7QrddgJg7WevrAgDs_wQA9P-CyisLyH9S49wGIoHB_xGyzUR129sapsiptAddKx7kP3VoFjZwlHNCwyaok8RaUxngDsQ3n4IjEdYtBnY7YCArARkmvA1g42MvcwY3FENUbc9ktFxHQbkjmmx8Zh988MnYQlCzkCcEfiHgixzGUlVxwubSs2izBt4Kp-iDxi9YJBiDUCTU3zunLbUDLiSE3CarMaefsOj-rdTkDcxVmzy_daFoQ1kzvVj-p85Q08HLBA7shQYPEG22KKa4Dq1DEQ20cDK4QQXsbSBo5b6CWUBA3F7Kz6ZUkA3rRs2_0aK8zZbW_igc_R8B6ufuw14_Kqd9oBK8N3txGGTkwicn7fIg4ksX2iSZKtneqhOhUwiDU8GkX9CB7zBQmSgQRYvxSVJxXutobWWUZYhjMZrp-LUUlzFrzIEQUyc1G9n6UCsJfS_4EYaNB70O1OD4KNnWdnKVb6fqO8pkhdeG6EooeMMR10l8dwHC21CE-zIBTvlO4BqRA_QU5ZcYMRxCeDK5OVUG8UntXQ2jF6wNwQmPnq1OIEfLMhVerZIYTAI3TnnSVi8DDGsdbh2LkmY7asOUfGsnATE2NpIcTPTfZ2XPm1aM_saNC9E6JA4zmuqqTbsLJ0APpdhJQyny8YMGF4iTYrTsH_0KwJlsrqNn4cEz0G9TJZNZE2dra6nnb_bH_Y42HBw8QxcpcQsSgnyA5nVLEPA_-ockgXsKczhN3xKSfxfcL_daMsgfuPRzIrATE8GJGWrWweuIIwvG05nh6-iX7jHk78hpArORC6JJ2TF2vK-loVYo9bDqMANn0foMZVs5AxQ0qnrwFMMf0FFXU3VUKGfJmu4jRxnMm9y_hTxwownJKqKYOa92Dsxxz_42Qk719rVkyX8_Yt-cWH5UQzkPN2KcGHF-IlKl_Rf2dD6URN1gm7dI7Du2AL4pL3GqL1wqCQD8M13w2Uqn9-2i_4H9_IEo6NDPn0jT3ywlu_2zLJ_yHPhaH76KCm-v16C-SQLulRZxlm4DnDxTt92RUv3bgeLbFalXkY4ynhNa3ELv3tzUMUwKueSWhSNeHScj9c4B9Q2lN4BBWX6hxtBDWavzpeCTcE6awT6o3FATJHSCSPCRBFVvJl9BS6Tg-Z8k75kX2IL7deSAIbvzCkEkckfLB0LVaHUCUjiN1CscRZz-Vxxut_Q92q8qCxxVCFTW127U38qRIEW5s8oBE0dChEFTK3b43s0j7v-KNmfKNo2YKbe2eKrATmllqhaAHCRyt7AHmM8gmr_nU3pTza86kBkFYPNsud1hijPxa9QVv2l6QhYTeWJ4PYdaD2Or88p-qRBlh9m1QE0XFdnp4voRxfu0syQzK2fEZHEHOh9-q35YVIzs9vI2ZXim3SMIzOpudgkw8lP6FSoiU5anNtPmvkYWObh60QA", clientId: "ee74c546-0426-423b-9e12-c57f64c26393", clientSecret: "TCY8Q~JriqIOhcVCcTyVGjE8Augg-4feolrpZbZg"}});
        string createTeamResponse = check teamsEndpoint->createTeam({displayName: "School Meeting", description: "Discussing current issues", classification: "Sifi", specialization: "educationClass", visibility: "public", funSettings: {allowGiphy: true, giphyContentRating: "moderate", allowStickersAndMemes: true, allowCustomMemes: true}, guestSettings: {allowCreateUpdateChannels: true, allowDeleteChannels: false}, memberSettings: {allowCreatePrivateChannels: true, allowAddRemoveApps: true, allowCreateUpdateRemoveTabs: true, allowCreateUpdateRemoveConnectors: true, allowCreateUpdateChannels: true, allowDeleteChannels: true}, messagingSettings: {allowUserEditMessages: true, allowUserDeleteMessages: true, allowOwnerDeleteMessages: true, allowTeamMentions: true, allowChannelMentions: true}, isArchived: false});
        return;
    }
}
