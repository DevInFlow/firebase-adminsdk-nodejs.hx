package;

// import sys.io.Process.ProcessInput;
// import sys.io.Process.ProcessInput;
import google.cloud.storage.File;
import google.cloud.storage.global.bucket.UploadResponse;
import admin.database.EventType;
import admin.database.Database;
import google.cloud.storage.Storage;
import util.Async;
import google.cloud.storage.Bucket;
import js.node.Buffer;
import haxe.Json;
import js.lib.Error;
import js.node.Fs;
import js.node.Readline;
import js.Node;

class App {
	public static function main() {
		new App();
	}

	public function new() {
		Fs.readFile("serviceAccountKey.json", {encoding: "utf-8"}, function(error:Error, serviceAccountKey:String) {
			// See documentation on defining a message payload.
			var message = {
				data: {
					score: '850',
					time: '2:45',
					asdasd: "666"
				},
				topic: "example2"
			};

			Admin.initializeApp({
				credential: Admin.credential.cert(Json.parse(serviceAccountKey)),
				storageBucket: "gs://devinflow-partner-icons/",
				databaseURL: "https://devinflow.firebaseio.com"
			});

			// Admin.messaging().send(message).then(function(response){
			//     // Response is a message ID string.
			//     Node.console.log('Successfully sent message:', response);
			// })
			// .catchError(function(error){
			// Node.console.log('Error sending message:', error);
			// });

			var storage = new Storage({
				projectId: "devinflow",
				keyFilename: "devinflow-33d25f57b448.json"
			});

			var partnerIcons:Bucket = Admin.storage().bucket("devinflow-partner-icons");
			
			partnerIcons.upload("test.jpg",{destination:"test/imageTEst.jpg"}).then((response:UploadResponse)->{
				trace(response);
				var file:File =response[0];
				trace(file);
			});
			// bucket.create().then(function(response) trace (response)).catchError(function(error) trace(error));
			// DatabaseLogging.enable(true);
			var database = Admin.database();
			var users = database.ref("users/");
			var partners = database.ref("partners/");
			users.push().set({name:"Varadi GAbo6662"});
			partners.push().set({name:"Y&R",foo:"BAR"});
			partners.push().set({name:"Y&R2",foo:"BAR2",kaki:"hig"});
			
			
			// trace(users.toJSON());
			// Admin.database().ref("users").once(EventType.VALUE, function(snapshot) {
				// trace(snapshot.key);
			// });

			// bucket.getFiles().then((response) -> trace(response)).catchError(function(error) {
			// trace(error);
			// });
		});
	}
}
