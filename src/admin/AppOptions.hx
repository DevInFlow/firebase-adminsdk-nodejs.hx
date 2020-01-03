package admin;
import js.node.http.Agent;
typedef AppOptions={
    ?credential:admin.credential.Credential,
    ?databaseAuthVariableOverride:Dynamic,
    ?databaseURL:String,
    ?httpAgent:Agent,
    ?projectId:String,
    ?serviceAccountId:String,
    ?storageBucket:String


}