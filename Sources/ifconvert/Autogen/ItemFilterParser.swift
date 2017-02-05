// Generated from /Users/hemet/Documents/Projects/lss/Sources/ifconvert/Grammar/ItemFilter.g4 by ANTLR 4.6
import Antlr4

open class ItemFilterParser: Parser {

	internal static var _decisionToDFA: [DFA] = {
          var decisionToDFA = [DFA]()
          let length = ItemFilterParser._ATN.getNumberOfDecisions()
          for i in 0..<length {
            decisionToDFA.append(DFA(ItemFilterParser._ATN.getDecisionState(i)!, i))
           }
           return decisionToDFA
     }()
	internal static let _sharedContextCache: PredictionContextCache = PredictionContextCache()
	public enum Tokens: Int {
		case EOF = -1, T__0 = 1, T__1 = 2, T__2 = 3, T__3 = 4, T__4 = 5, T__5 = 6, 
                 T__6 = 7, T__7 = 8, T__8 = 9, T__9 = 10, T__10 = 11, T__11 = 12, 
                 Numberic_block_item_name = 13, String_list_block_name = 14, 
                 Boolean_block_name = 15, Set_color_command_name = 16, Operator = 17, 
                 Number_literal = 18, String_literal = 19, WS = 20, Line_comment = 21
	}
	public static let RULE_filter = 0, RULE_block = 1, RULE_block_header = 2, 
                   RULE_block_body = 3, RULE_block_item = 4, RULE_numberic_block_item = 5, 
                   RULE_string_list_block_item = 6, RULE_socket_group_block_item = 7, 
                   RULE_boolean_block_item = 8, RULE_rarity_block_item = 9, 
                   RULE_rarity_value = 10, RULE_block_command_item = 11, 
                   RULE_set_color_command = 12, RULE_play_alert_command = 13, 
                   RULE_set_font_size_command = 14, RULE_boolean_literal = 15
	public static let ruleNames: [String] = [
		"filter", "block", "block_header", "block_body", "block_item", "numberic_block_item", 
		"string_list_block_item", "socket_group_block_item", "boolean_block_item", 
		"rarity_block_item", "rarity_value", "block_command_item", "set_color_command", 
		"play_alert_command", "set_font_size_command", "boolean_literal"
	]

	private static let _LITERAL_NAMES: [String?] = [
		nil, "'Show'", "'Hide'", "'SocketGroup'", "'Rarity'", "'Normal'", "'Magic'", 
		"'Rare'", "'Unique'", "'PlayAlertSound'", "'SetFontSize'", "'True'", "'False'"
	]
	private static let _SYMBOLIC_NAMES: [String?] = [
		nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, "Numberic_block_item_name", 
		"String_list_block_name", "Boolean_block_name", "Set_color_command_name", 
		"Operator", "Number_literal", "String_literal", "WS", "Line_comment"
	]
	public static let VOCABULARY: Vocabulary = Vocabulary(_LITERAL_NAMES, _SYMBOLIC_NAMES)

	/**
	 * @deprecated Use {@link #VOCABULARY} instead.
	 */
	//@Deprecated
	public let tokenNames: [String?]? = {
	    let length = _SYMBOLIC_NAMES.count
	    var tokenNames = [String?](repeating: nil, count: length)
		for i in 0..<length {
			var name = VOCABULARY.getLiteralName(i)
			if name == nil {
				name = VOCABULARY.getSymbolicName(i)
			}
			if name == nil {
				name = "<INVALID>"
			}
			tokenNames[i] = name
		}
		return tokenNames
	}()

	override
	open func getTokenNames() -> [String?]? {
		return tokenNames
	}

	override
	open func getGrammarFileName() -> String { return "ItemFilter.g4" }

	override
	open func getRuleNames() -> [String] { return ItemFilterParser.ruleNames }

	override
	open func getSerializedATN() -> String { return ItemFilterParser._serializedATN }

	override
	open func getATN() -> ATN { return ItemFilterParser._ATN }

	open override func getVocabulary() -> Vocabulary {
	    return ItemFilterParser.VOCABULARY
	}

	public override init(_ input:TokenStream)throws {
	    RuntimeMetaData.checkVersion("4.6", RuntimeMetaData.VERSION)
		try super.init(input)
		_interp = ParserATNSimulator(self,ItemFilterParser._ATN,ItemFilterParser._decisionToDFA, ItemFilterParser._sharedContextCache)
	}
	open class FilterContext:ParserRuleContext {
		open func EOF() -> TerminalNode? { return getToken(ItemFilterParser.Tokens.EOF.rawValue, 0) }
		open func block() -> Array<BlockContext> {
			return getRuleContexts(BlockContext.self)
		}
		open func block(_ i: Int) -> BlockContext? {
			return getRuleContext(BlockContext.self,i)
		}
		open override func getRuleIndex() -> Int { return ItemFilterParser.RULE_filter }
		override
		open func enterRule(_ listener: ParseTreeListener) {
			if listener is ItemFilterListener {
			 	(listener as! ItemFilterListener).enterFilter(self)
			}
		}
		override
		open func exitRule(_ listener: ParseTreeListener) {
			if listener is ItemFilterListener {
			 	(listener as! ItemFilterListener).exitFilter(self)
			}
		}
		override
		open func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if visitor is ItemFilterVisitor {
			     return (visitor as! ItemFilterVisitor<T>).visitFilter(self)
			}else if visitor is ItemFilterBaseVisitor {
		    	 return (visitor as! ItemFilterBaseVisitor<T>).visitFilter(self)
		    }
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	open func filter() throws -> FilterContext {
		var _localctx: FilterContext = FilterContext(_ctx, getState())
		try enterRule(_localctx, 0, ItemFilterParser.RULE_filter)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(35)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	while (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = _la == ItemFilterParser.Tokens.T__0.rawValue || _la == ItemFilterParser.Tokens.T__1.rawValue
		 	      return testSet
		 	 }()) {
		 		setState(32)
		 		try block()


		 		setState(37)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 	}
		 	setState(38)
		 	try match(ItemFilterParser.Tokens.EOF.rawValue)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}
	open class BlockContext:ParserRuleContext {
		open func block_header() -> Block_headerContext? {
			return getRuleContext(Block_headerContext.self,0)
		}
		open func block_body() -> Block_bodyContext? {
			return getRuleContext(Block_bodyContext.self,0)
		}
		open override func getRuleIndex() -> Int { return ItemFilterParser.RULE_block }
		override
		open func enterRule(_ listener: ParseTreeListener) {
			if listener is ItemFilterListener {
			 	(listener as! ItemFilterListener).enterBlock(self)
			}
		}
		override
		open func exitRule(_ listener: ParseTreeListener) {
			if listener is ItemFilterListener {
			 	(listener as! ItemFilterListener).exitBlock(self)
			}
		}
		override
		open func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if visitor is ItemFilterVisitor {
			     return (visitor as! ItemFilterVisitor<T>).visitBlock(self)
			}else if visitor is ItemFilterBaseVisitor {
		    	 return (visitor as! ItemFilterBaseVisitor<T>).visitBlock(self)
		    }
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	open func block() throws -> BlockContext {
		var _localctx: BlockContext = BlockContext(_ctx, getState())
		try enterRule(_localctx, 2, ItemFilterParser.RULE_block)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(40)
		 	try block_header()
		 	setState(41)
		 	try block_body()

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}
	open class Block_headerContext:ParserRuleContext {
		open override func getRuleIndex() -> Int { return ItemFilterParser.RULE_block_header }
		override
		open func enterRule(_ listener: ParseTreeListener) {
			if listener is ItemFilterListener {
			 	(listener as! ItemFilterListener).enterBlock_header(self)
			}
		}
		override
		open func exitRule(_ listener: ParseTreeListener) {
			if listener is ItemFilterListener {
			 	(listener as! ItemFilterListener).exitBlock_header(self)
			}
		}
		override
		open func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if visitor is ItemFilterVisitor {
			     return (visitor as! ItemFilterVisitor<T>).visitBlock_header(self)
			}else if visitor is ItemFilterBaseVisitor {
		    	 return (visitor as! ItemFilterBaseVisitor<T>).visitBlock_header(self)
		    }
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	open func block_header() throws -> Block_headerContext {
		var _localctx: Block_headerContext = Block_headerContext(_ctx, getState())
		try enterRule(_localctx, 4, ItemFilterParser.RULE_block_header)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(43)
		 	_la = try _input.LA(1)
		 	if (!(//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = _la == ItemFilterParser.Tokens.T__0.rawValue || _la == ItemFilterParser.Tokens.T__1.rawValue
		 	      return testSet
		 	 }())) {
		 	try _errHandler.recoverInline(self)
		 	}
		 	else {
		 		_errHandler.reportMatch(self)
		 		try consume()
		 	}

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}
	open class Block_bodyContext:ParserRuleContext {
		open func block_item() -> Array<Block_itemContext> {
			return getRuleContexts(Block_itemContext.self)
		}
		open func block_item(_ i: Int) -> Block_itemContext? {
			return getRuleContext(Block_itemContext.self,i)
		}
		open override func getRuleIndex() -> Int { return ItemFilterParser.RULE_block_body }
		override
		open func enterRule(_ listener: ParseTreeListener) {
			if listener is ItemFilterListener {
			 	(listener as! ItemFilterListener).enterBlock_body(self)
			}
		}
		override
		open func exitRule(_ listener: ParseTreeListener) {
			if listener is ItemFilterListener {
			 	(listener as! ItemFilterListener).exitBlock_body(self)
			}
		}
		override
		open func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if visitor is ItemFilterVisitor {
			     return (visitor as! ItemFilterVisitor<T>).visitBlock_body(self)
			}else if visitor is ItemFilterBaseVisitor {
		    	 return (visitor as! ItemFilterBaseVisitor<T>).visitBlock_body(self)
		    }
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	open func block_body() throws -> Block_bodyContext {
		var _localctx: Block_bodyContext = Block_bodyContext(_ctx, getState())
		try enterRule(_localctx, 6, ItemFilterParser.RULE_block_body)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(48)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	while (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = {  () -> Bool in
		 	   let testArray: [Int] = [_la, ItemFilterParser.Tokens.T__2.rawValue,ItemFilterParser.Tokens.T__3.rawValue,ItemFilterParser.Tokens.T__8.rawValue,ItemFilterParser.Tokens.T__9.rawValue,ItemFilterParser.Tokens.Numberic_block_item_name.rawValue,ItemFilterParser.Tokens.String_list_block_name.rawValue,ItemFilterParser.Tokens.Boolean_block_name.rawValue,ItemFilterParser.Tokens.Set_color_command_name.rawValue]
		 	    return  Utils.testBitLeftShiftArray(testArray, 0)
		 	}()
		 	      return testSet
		 	 }()) {
		 		setState(45)
		 		try block_item()


		 		setState(50)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 	}

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}
	open class Block_itemContext:ParserRuleContext {
		open func numberic_block_item() -> Numberic_block_itemContext? {
			return getRuleContext(Numberic_block_itemContext.self,0)
		}
		open func string_list_block_item() -> String_list_block_itemContext? {
			return getRuleContext(String_list_block_itemContext.self,0)
		}
		open func socket_group_block_item() -> Socket_group_block_itemContext? {
			return getRuleContext(Socket_group_block_itemContext.self,0)
		}
		open func boolean_block_item() -> Boolean_block_itemContext? {
			return getRuleContext(Boolean_block_itemContext.self,0)
		}
		open func rarity_block_item() -> Rarity_block_itemContext? {
			return getRuleContext(Rarity_block_itemContext.self,0)
		}
		open func block_command_item() -> Block_command_itemContext? {
			return getRuleContext(Block_command_itemContext.self,0)
		}
		open override func getRuleIndex() -> Int { return ItemFilterParser.RULE_block_item }
		override
		open func enterRule(_ listener: ParseTreeListener) {
			if listener is ItemFilterListener {
			 	(listener as! ItemFilterListener).enterBlock_item(self)
			}
		}
		override
		open func exitRule(_ listener: ParseTreeListener) {
			if listener is ItemFilterListener {
			 	(listener as! ItemFilterListener).exitBlock_item(self)
			}
		}
		override
		open func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if visitor is ItemFilterVisitor {
			     return (visitor as! ItemFilterVisitor<T>).visitBlock_item(self)
			}else if visitor is ItemFilterBaseVisitor {
		    	 return (visitor as! ItemFilterBaseVisitor<T>).visitBlock_item(self)
		    }
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	open func block_item() throws -> Block_itemContext {
		var _localctx: Block_itemContext = Block_itemContext(_ctx, getState())
		try enterRule(_localctx, 8, ItemFilterParser.RULE_block_item)
		defer {
	    		try! exitRule()
	    }
		do {
		 	setState(57)
		 	try _errHandler.sync(self)
		 	switch (ItemFilterParser.Tokens(rawValue: try _input.LA(1))!) {
		 	case .Numberic_block_item_name:
		 		try enterOuterAlt(_localctx, 1)
		 		setState(51)
		 		try numberic_block_item()

		 		break

		 	case .String_list_block_name:
		 		try enterOuterAlt(_localctx, 2)
		 		setState(52)
		 		try string_list_block_item()

		 		break

		 	case .T__2:
		 		try enterOuterAlt(_localctx, 3)
		 		setState(53)
		 		try socket_group_block_item()

		 		break

		 	case .Boolean_block_name:
		 		try enterOuterAlt(_localctx, 4)
		 		setState(54)
		 		try boolean_block_item()

		 		break

		 	case .T__3:
		 		try enterOuterAlt(_localctx, 5)
		 		setState(55)
		 		try rarity_block_item()

		 		break
		 	case .T__8:fallthrough
		 	case .T__9:fallthrough
		 	case .Set_color_command_name:
		 		try enterOuterAlt(_localctx, 6)
		 		setState(56)
		 		try block_command_item()

		 		break
		 	default:
		 		throw try ANTLRException.recognition(e: NoViableAltException(self))
		 	}
		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}
	open class Numberic_block_itemContext:ParserRuleContext {
		open func Numberic_block_item_name() -> TerminalNode? { return getToken(ItemFilterParser.Tokens.Numberic_block_item_name.rawValue, 0) }
		open func Number_literal() -> TerminalNode? { return getToken(ItemFilterParser.Tokens.Number_literal.rawValue, 0) }
		open func Operator() -> TerminalNode? { return getToken(ItemFilterParser.Tokens.Operator.rawValue, 0) }
		open override func getRuleIndex() -> Int { return ItemFilterParser.RULE_numberic_block_item }
		override
		open func enterRule(_ listener: ParseTreeListener) {
			if listener is ItemFilterListener {
			 	(listener as! ItemFilterListener).enterNumberic_block_item(self)
			}
		}
		override
		open func exitRule(_ listener: ParseTreeListener) {
			if listener is ItemFilterListener {
			 	(listener as! ItemFilterListener).exitNumberic_block_item(self)
			}
		}
		override
		open func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if visitor is ItemFilterVisitor {
			     return (visitor as! ItemFilterVisitor<T>).visitNumberic_block_item(self)
			}else if visitor is ItemFilterBaseVisitor {
		    	 return (visitor as! ItemFilterBaseVisitor<T>).visitNumberic_block_item(self)
		    }
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	open func numberic_block_item() throws -> Numberic_block_itemContext {
		var _localctx: Numberic_block_itemContext = Numberic_block_itemContext(_ctx, getState())
		try enterRule(_localctx, 10, ItemFilterParser.RULE_numberic_block_item)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(59)
		 	try match(ItemFilterParser.Tokens.Numberic_block_item_name.rawValue)
		 	setState(61)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	if (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = _la == ItemFilterParser.Tokens.Operator.rawValue
		 	      return testSet
		 	 }()) {
		 		setState(60)
		 		try match(ItemFilterParser.Tokens.Operator.rawValue)

		 	}

		 	setState(63)
		 	try match(ItemFilterParser.Tokens.Number_literal.rawValue)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}
	open class String_list_block_itemContext:ParserRuleContext {
		open func String_list_block_name() -> TerminalNode? { return getToken(ItemFilterParser.Tokens.String_list_block_name.rawValue, 0) }
		open func String_literal() -> Array<TerminalNode> { return getTokens(ItemFilterParser.Tokens.String_literal.rawValue) }
		open func String_literal(_ i:Int) -> TerminalNode?{
			return getToken(ItemFilterParser.Tokens.String_literal.rawValue, i)
		}
		open override func getRuleIndex() -> Int { return ItemFilterParser.RULE_string_list_block_item }
		override
		open func enterRule(_ listener: ParseTreeListener) {
			if listener is ItemFilterListener {
			 	(listener as! ItemFilterListener).enterString_list_block_item(self)
			}
		}
		override
		open func exitRule(_ listener: ParseTreeListener) {
			if listener is ItemFilterListener {
			 	(listener as! ItemFilterListener).exitString_list_block_item(self)
			}
		}
		override
		open func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if visitor is ItemFilterVisitor {
			     return (visitor as! ItemFilterVisitor<T>).visitString_list_block_item(self)
			}else if visitor is ItemFilterBaseVisitor {
		    	 return (visitor as! ItemFilterBaseVisitor<T>).visitString_list_block_item(self)
		    }
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	open func string_list_block_item() throws -> String_list_block_itemContext {
		var _localctx: String_list_block_itemContext = String_list_block_itemContext(_ctx, getState())
		try enterRule(_localctx, 12, ItemFilterParser.RULE_string_list_block_item)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(65)
		 	try match(ItemFilterParser.Tokens.String_list_block_name.rawValue)
		 	setState(67) 
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	repeat {
		 		setState(66)
		 		try match(ItemFilterParser.Tokens.String_literal.rawValue)


		 		setState(69); 
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 	} while (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = _la == ItemFilterParser.Tokens.String_literal.rawValue
		 	      return testSet
		 	 }())

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}
	open class Socket_group_block_itemContext:ParserRuleContext {
		open func String_literal() -> TerminalNode? { return getToken(ItemFilterParser.Tokens.String_literal.rawValue, 0) }
		open override func getRuleIndex() -> Int { return ItemFilterParser.RULE_socket_group_block_item }
		override
		open func enterRule(_ listener: ParseTreeListener) {
			if listener is ItemFilterListener {
			 	(listener as! ItemFilterListener).enterSocket_group_block_item(self)
			}
		}
		override
		open func exitRule(_ listener: ParseTreeListener) {
			if listener is ItemFilterListener {
			 	(listener as! ItemFilterListener).exitSocket_group_block_item(self)
			}
		}
		override
		open func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if visitor is ItemFilterVisitor {
			     return (visitor as! ItemFilterVisitor<T>).visitSocket_group_block_item(self)
			}else if visitor is ItemFilterBaseVisitor {
		    	 return (visitor as! ItemFilterBaseVisitor<T>).visitSocket_group_block_item(self)
		    }
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	open func socket_group_block_item() throws -> Socket_group_block_itemContext {
		var _localctx: Socket_group_block_itemContext = Socket_group_block_itemContext(_ctx, getState())
		try enterRule(_localctx, 14, ItemFilterParser.RULE_socket_group_block_item)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(71)
		 	try match(ItemFilterParser.Tokens.T__2.rawValue)
		 	setState(73)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	if (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = _la == ItemFilterParser.Tokens.String_literal.rawValue
		 	      return testSet
		 	 }()) {
		 		setState(72)
		 		try match(ItemFilterParser.Tokens.String_literal.rawValue)

		 	}


		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}
	open class Boolean_block_itemContext:ParserRuleContext {
		open func Boolean_block_name() -> TerminalNode? { return getToken(ItemFilterParser.Tokens.Boolean_block_name.rawValue, 0) }
		open func boolean_literal() -> Boolean_literalContext? {
			return getRuleContext(Boolean_literalContext.self,0)
		}
		open override func getRuleIndex() -> Int { return ItemFilterParser.RULE_boolean_block_item }
		override
		open func enterRule(_ listener: ParseTreeListener) {
			if listener is ItemFilterListener {
			 	(listener as! ItemFilterListener).enterBoolean_block_item(self)
			}
		}
		override
		open func exitRule(_ listener: ParseTreeListener) {
			if listener is ItemFilterListener {
			 	(listener as! ItemFilterListener).exitBoolean_block_item(self)
			}
		}
		override
		open func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if visitor is ItemFilterVisitor {
			     return (visitor as! ItemFilterVisitor<T>).visitBoolean_block_item(self)
			}else if visitor is ItemFilterBaseVisitor {
		    	 return (visitor as! ItemFilterBaseVisitor<T>).visitBoolean_block_item(self)
		    }
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	open func boolean_block_item() throws -> Boolean_block_itemContext {
		var _localctx: Boolean_block_itemContext = Boolean_block_itemContext(_ctx, getState())
		try enterRule(_localctx, 16, ItemFilterParser.RULE_boolean_block_item)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(75)
		 	try match(ItemFilterParser.Tokens.Boolean_block_name.rawValue)
		 	setState(76)
		 	try boolean_literal()

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}
	open class Rarity_block_itemContext:ParserRuleContext {
		open func rarity_value() -> Rarity_valueContext? {
			return getRuleContext(Rarity_valueContext.self,0)
		}
		open func Operator() -> TerminalNode? { return getToken(ItemFilterParser.Tokens.Operator.rawValue, 0) }
		open override func getRuleIndex() -> Int { return ItemFilterParser.RULE_rarity_block_item }
		override
		open func enterRule(_ listener: ParseTreeListener) {
			if listener is ItemFilterListener {
			 	(listener as! ItemFilterListener).enterRarity_block_item(self)
			}
		}
		override
		open func exitRule(_ listener: ParseTreeListener) {
			if listener is ItemFilterListener {
			 	(listener as! ItemFilterListener).exitRarity_block_item(self)
			}
		}
		override
		open func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if visitor is ItemFilterVisitor {
			     return (visitor as! ItemFilterVisitor<T>).visitRarity_block_item(self)
			}else if visitor is ItemFilterBaseVisitor {
		    	 return (visitor as! ItemFilterBaseVisitor<T>).visitRarity_block_item(self)
		    }
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	open func rarity_block_item() throws -> Rarity_block_itemContext {
		var _localctx: Rarity_block_itemContext = Rarity_block_itemContext(_ctx, getState())
		try enterRule(_localctx, 18, ItemFilterParser.RULE_rarity_block_item)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(78)
		 	try match(ItemFilterParser.Tokens.T__3.rawValue)
		 	setState(80)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	if (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = _la == ItemFilterParser.Tokens.Operator.rawValue
		 	      return testSet
		 	 }()) {
		 		setState(79)
		 		try match(ItemFilterParser.Tokens.Operator.rawValue)

		 	}

		 	setState(82)
		 	try rarity_value()

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}
	open class Rarity_valueContext:ParserRuleContext {
		open override func getRuleIndex() -> Int { return ItemFilterParser.RULE_rarity_value }
		override
		open func enterRule(_ listener: ParseTreeListener) {
			if listener is ItemFilterListener {
			 	(listener as! ItemFilterListener).enterRarity_value(self)
			}
		}
		override
		open func exitRule(_ listener: ParseTreeListener) {
			if listener is ItemFilterListener {
			 	(listener as! ItemFilterListener).exitRarity_value(self)
			}
		}
		override
		open func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if visitor is ItemFilterVisitor {
			     return (visitor as! ItemFilterVisitor<T>).visitRarity_value(self)
			}else if visitor is ItemFilterBaseVisitor {
		    	 return (visitor as! ItemFilterBaseVisitor<T>).visitRarity_value(self)
		    }
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	open func rarity_value() throws -> Rarity_valueContext {
		var _localctx: Rarity_valueContext = Rarity_valueContext(_ctx, getState())
		try enterRule(_localctx, 20, ItemFilterParser.RULE_rarity_value)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(84)
		 	_la = try _input.LA(1)
		 	if (!(//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = {  () -> Bool in
		 	   let testArray: [Int] = [_la, ItemFilterParser.Tokens.T__4.rawValue,ItemFilterParser.Tokens.T__5.rawValue,ItemFilterParser.Tokens.T__6.rawValue,ItemFilterParser.Tokens.T__7.rawValue]
		 	    return  Utils.testBitLeftShiftArray(testArray, 0)
		 	}()
		 	      return testSet
		 	 }())) {
		 	try _errHandler.recoverInline(self)
		 	}
		 	else {
		 		_errHandler.reportMatch(self)
		 		try consume()
		 	}

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}
	open class Block_command_itemContext:ParserRuleContext {
		open func set_color_command() -> Set_color_commandContext? {
			return getRuleContext(Set_color_commandContext.self,0)
		}
		open func play_alert_command() -> Play_alert_commandContext? {
			return getRuleContext(Play_alert_commandContext.self,0)
		}
		open func set_font_size_command() -> Set_font_size_commandContext? {
			return getRuleContext(Set_font_size_commandContext.self,0)
		}
		open override func getRuleIndex() -> Int { return ItemFilterParser.RULE_block_command_item }
		override
		open func enterRule(_ listener: ParseTreeListener) {
			if listener is ItemFilterListener {
			 	(listener as! ItemFilterListener).enterBlock_command_item(self)
			}
		}
		override
		open func exitRule(_ listener: ParseTreeListener) {
			if listener is ItemFilterListener {
			 	(listener as! ItemFilterListener).exitBlock_command_item(self)
			}
		}
		override
		open func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if visitor is ItemFilterVisitor {
			     return (visitor as! ItemFilterVisitor<T>).visitBlock_command_item(self)
			}else if visitor is ItemFilterBaseVisitor {
		    	 return (visitor as! ItemFilterBaseVisitor<T>).visitBlock_command_item(self)
		    }
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	open func block_command_item() throws -> Block_command_itemContext {
		var _localctx: Block_command_itemContext = Block_command_itemContext(_ctx, getState())
		try enterRule(_localctx, 22, ItemFilterParser.RULE_block_command_item)
		defer {
	    		try! exitRule()
	    }
		do {
		 	setState(89)
		 	try _errHandler.sync(self)
		 	switch (ItemFilterParser.Tokens(rawValue: try _input.LA(1))!) {
		 	case .Set_color_command_name:
		 		try enterOuterAlt(_localctx, 1)
		 		setState(86)
		 		try set_color_command()

		 		break

		 	case .T__8:
		 		try enterOuterAlt(_localctx, 2)
		 		setState(87)
		 		try play_alert_command()

		 		break

		 	case .T__9:
		 		try enterOuterAlt(_localctx, 3)
		 		setState(88)
		 		try set_font_size_command()

		 		break
		 	default:
		 		throw try ANTLRException.recognition(e: NoViableAltException(self))
		 	}
		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}
	open class Set_color_commandContext:ParserRuleContext {
		open func Set_color_command_name() -> TerminalNode? { return getToken(ItemFilterParser.Tokens.Set_color_command_name.rawValue, 0) }
		open func Number_literal() -> Array<TerminalNode> { return getTokens(ItemFilterParser.Tokens.Number_literal.rawValue) }
		open func Number_literal(_ i:Int) -> TerminalNode?{
			return getToken(ItemFilterParser.Tokens.Number_literal.rawValue, i)
		}
		open override func getRuleIndex() -> Int { return ItemFilterParser.RULE_set_color_command }
		override
		open func enterRule(_ listener: ParseTreeListener) {
			if listener is ItemFilterListener {
			 	(listener as! ItemFilterListener).enterSet_color_command(self)
			}
		}
		override
		open func exitRule(_ listener: ParseTreeListener) {
			if listener is ItemFilterListener {
			 	(listener as! ItemFilterListener).exitSet_color_command(self)
			}
		}
		override
		open func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if visitor is ItemFilterVisitor {
			     return (visitor as! ItemFilterVisitor<T>).visitSet_color_command(self)
			}else if visitor is ItemFilterBaseVisitor {
		    	 return (visitor as! ItemFilterBaseVisitor<T>).visitSet_color_command(self)
		    }
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	open func set_color_command() throws -> Set_color_commandContext {
		var _localctx: Set_color_commandContext = Set_color_commandContext(_ctx, getState())
		try enterRule(_localctx, 24, ItemFilterParser.RULE_set_color_command)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(91)
		 	try match(ItemFilterParser.Tokens.Set_color_command_name.rawValue)
		 	setState(92)
		 	try match(ItemFilterParser.Tokens.Number_literal.rawValue)
		 	setState(93)
		 	try match(ItemFilterParser.Tokens.Number_literal.rawValue)
		 	setState(94)
		 	try match(ItemFilterParser.Tokens.Number_literal.rawValue)
		 	setState(96)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	if (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = _la == ItemFilterParser.Tokens.Number_literal.rawValue
		 	      return testSet
		 	 }()) {
		 		setState(95)
		 		try match(ItemFilterParser.Tokens.Number_literal.rawValue)

		 	}


		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}
	open class Play_alert_commandContext:ParserRuleContext {
		open func Number_literal() -> Array<TerminalNode> { return getTokens(ItemFilterParser.Tokens.Number_literal.rawValue) }
		open func Number_literal(_ i:Int) -> TerminalNode?{
			return getToken(ItemFilterParser.Tokens.Number_literal.rawValue, i)
		}
		open override func getRuleIndex() -> Int { return ItemFilterParser.RULE_play_alert_command }
		override
		open func enterRule(_ listener: ParseTreeListener) {
			if listener is ItemFilterListener {
			 	(listener as! ItemFilterListener).enterPlay_alert_command(self)
			}
		}
		override
		open func exitRule(_ listener: ParseTreeListener) {
			if listener is ItemFilterListener {
			 	(listener as! ItemFilterListener).exitPlay_alert_command(self)
			}
		}
		override
		open func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if visitor is ItemFilterVisitor {
			     return (visitor as! ItemFilterVisitor<T>).visitPlay_alert_command(self)
			}else if visitor is ItemFilterBaseVisitor {
		    	 return (visitor as! ItemFilterBaseVisitor<T>).visitPlay_alert_command(self)
		    }
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	open func play_alert_command() throws -> Play_alert_commandContext {
		var _localctx: Play_alert_commandContext = Play_alert_commandContext(_ctx, getState())
		try enterRule(_localctx, 26, ItemFilterParser.RULE_play_alert_command)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(98)
		 	try match(ItemFilterParser.Tokens.T__8.rawValue)
		 	setState(99)
		 	try match(ItemFilterParser.Tokens.Number_literal.rawValue)
		 	setState(101)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	if (//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = _la == ItemFilterParser.Tokens.Number_literal.rawValue
		 	      return testSet
		 	 }()) {
		 		setState(100)
		 		try match(ItemFilterParser.Tokens.Number_literal.rawValue)

		 	}


		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}
	open class Set_font_size_commandContext:ParserRuleContext {
		open func Number_literal() -> TerminalNode? { return getToken(ItemFilterParser.Tokens.Number_literal.rawValue, 0) }
		open override func getRuleIndex() -> Int { return ItemFilterParser.RULE_set_font_size_command }
		override
		open func enterRule(_ listener: ParseTreeListener) {
			if listener is ItemFilterListener {
			 	(listener as! ItemFilterListener).enterSet_font_size_command(self)
			}
		}
		override
		open func exitRule(_ listener: ParseTreeListener) {
			if listener is ItemFilterListener {
			 	(listener as! ItemFilterListener).exitSet_font_size_command(self)
			}
		}
		override
		open func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if visitor is ItemFilterVisitor {
			     return (visitor as! ItemFilterVisitor<T>).visitSet_font_size_command(self)
			}else if visitor is ItemFilterBaseVisitor {
		    	 return (visitor as! ItemFilterBaseVisitor<T>).visitSet_font_size_command(self)
		    }
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	open func set_font_size_command() throws -> Set_font_size_commandContext {
		var _localctx: Set_font_size_commandContext = Set_font_size_commandContext(_ctx, getState())
		try enterRule(_localctx, 28, ItemFilterParser.RULE_set_font_size_command)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(103)
		 	try match(ItemFilterParser.Tokens.T__9.rawValue)
		 	setState(104)
		 	try match(ItemFilterParser.Tokens.Number_literal.rawValue)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}
	open class Boolean_literalContext:ParserRuleContext {
		open override func getRuleIndex() -> Int { return ItemFilterParser.RULE_boolean_literal }
		override
		open func enterRule(_ listener: ParseTreeListener) {
			if listener is ItemFilterListener {
			 	(listener as! ItemFilterListener).enterBoolean_literal(self)
			}
		}
		override
		open func exitRule(_ listener: ParseTreeListener) {
			if listener is ItemFilterListener {
			 	(listener as! ItemFilterListener).exitBoolean_literal(self)
			}
		}
		override
		open func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if visitor is ItemFilterVisitor {
			     return (visitor as! ItemFilterVisitor<T>).visitBoolean_literal(self)
			}else if visitor is ItemFilterBaseVisitor {
		    	 return (visitor as! ItemFilterBaseVisitor<T>).visitBoolean_literal(self)
		    }
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	open func boolean_literal() throws -> Boolean_literalContext {
		var _localctx: Boolean_literalContext = Boolean_literalContext(_ctx, getState())
		try enterRule(_localctx, 30, ItemFilterParser.RULE_boolean_literal)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(106)
		 	_la = try _input.LA(1)
		 	if (!(//closure
		 	 { () -> Bool in
		 	      let testSet: Bool = _la == ItemFilterParser.Tokens.T__10.rawValue || _la == ItemFilterParser.Tokens.T__11.rawValue
		 	      return testSet
		 	 }())) {
		 	try _errHandler.recoverInline(self)
		 	}
		 	else {
		 		_errHandler.reportMatch(self)
		 		try consume()
		 	}

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

   public static let _serializedATN : String = ItemFilterParserATN().jsonString
   public static let _ATN: ATN = ATNDeserializer().deserializeFromJson(_serializedATN)
}