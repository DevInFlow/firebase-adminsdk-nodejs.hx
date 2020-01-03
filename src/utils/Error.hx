package utils;
typedef FirebaseArrayIndexError = {
index:Int,
error:FirebaseError
}
@:jsRequire('./utils/error', 'FirebaseError')
extern class FirebaseError {}
