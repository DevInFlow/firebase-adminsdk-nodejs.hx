package admin.messsaging;
import haxe.extern.EitherType;
typedef Message = EitherType<EitherType<TokenMessage, TopicMessage>, ConditionMessage>;
