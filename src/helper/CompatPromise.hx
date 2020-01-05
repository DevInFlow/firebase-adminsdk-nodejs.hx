package helper;
#if haxe4 import js.lib.Promise; #else import js.Promise; #end
typedef CompatPromise<T> = Promise<T>;
