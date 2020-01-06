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
				storageBucket: "gs://devinflow.appspot.com",
				databaseURL: "https://devinflow.firebaseio.com"
			});

			var database = Admin.database();

			var bucket:Bucket = Admin.storage().bucket();

			bucket.upload("test.png", {destination: 'new-image.png'}).then((response:UploadResponse) -> {
				var file:File = response[0];
				file.makePublic().then((response:Array<Dynamic>) -> {
					var storageRoot = 'https://storage.googleapis.com/';
					var bucketName = 'devinflow.appspot.com/'; // CHANGE TO YOUR BUCKET NAME
					var downloadUrl = storageRoot + bucketName + "new-image.png";
					trace(downloadUrl);
				});
			}).catchError((error) -> {
				trace(error);
			});
		});
	}
}
