package;

// import sys.io.Process.ProcessInput;
// import sys.io.Process.ProcessInput;
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
		Fs.readFile("serverAccountKey.json", {encoding: "utf-8"}, function(error:Error, buffer:String) {
			// See documentation on defining a message payload.
			var message = {
				data: {
					score: '850',
					time: '2:45',
					asdasd: "666"
				},
				topic: "example2"
			};
			var serviceAccountKey = Json.parse(buffer);
			Admin.initializeApp({credential: Admin.credential.cert(serviceAccountKey), databaseURL: "https://devinflow.firebaseio.com"});
			// Admin.messaging().send(message).then(function(response){
			//     // Response is a message ID string.
			//     Node.console.log('Successfully sent message:', response);
			// })
			// .catchError(function(error){
			// Node.console.log('Error sending message:', error);
			// });

			var bucket = Admin.storage().bucket("bucket1");
			bucket.getFiles().catchError(function(error) {
				trace(error);
			});
		});
	}
}
