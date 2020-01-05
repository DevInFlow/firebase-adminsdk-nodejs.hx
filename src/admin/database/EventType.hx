package admin.database;

@:enum abstract EventType(String) to String{
    var VALUE="value";
    var CHILD_ADDED="child_added";
    var CHILD_CHANGED="child_changed";
    var CHILD_MOVED="child_moved";
    var CHILD_REMOVED="child_removed";
}