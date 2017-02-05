// Generated from /Users/hemet/Documents/Projects/lss/Sources/ifconvert/Grammar/ItemFilter.g4 by ANTLR 4.6
import Antlr4

open class ItemFilterLexer: Lexer {
	internal static var _decisionToDFA: [DFA] = {
          var decisionToDFA = [DFA]()
          let length = ItemFilterLexer._ATN.getNumberOfDecisions()
          for i in 0..<length {
          	    decisionToDFA.append(DFA(ItemFilterLexer._ATN.getDecisionState(i)!, i))
          }
           return decisionToDFA
     }()

	internal static let _sharedContextCache:PredictionContextCache = PredictionContextCache()
	public static let T__0=1, T__1=2, T__2=3, T__3=4, T__4=5, T__5=6, T__6=7, 
                   T__7=8, T__8=9, T__9=10, T__10=11, T__11=12, Numberic_block_item_name=13, 
                   String_list_block_name=14, Boolean_block_name=15, Set_color_command_name=16, 
                   Operator=17, Number_literal=18, String_literal=19, WS=20, 
                   Line_comment=21
	public static let modeNames: [String] = [
		"DEFAULT_MODE"
	]

	public static let ruleNames: [String] = [
		"T__0", "T__1", "T__2", "T__3", "T__4", "T__5", "T__6", "T__7", "T__8", 
		"T__9", "T__10", "T__11", "Numberic_block_item_name", "String_list_block_name", 
		"Boolean_block_name", "Set_color_command_name", "Operator", "Number_literal", 
		"String_literal", "Quoted_text", "Quoted_text_item", "WS", "Line_comment", 
		"NL"
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

    open override func getVocabulary() -> Vocabulary {
        return ItemFilterLexer.VOCABULARY
    }

	public override init(_ input: CharStream) {
	    RuntimeMetaData.checkVersion("4.6", RuntimeMetaData.VERSION)
		super.init(input)
		_interp = LexerATNSimulator(self, ItemFilterLexer._ATN, ItemFilterLexer._decisionToDFA, ItemFilterLexer._sharedContextCache)
	}

	override
	open func getGrammarFileName() -> String { return "ItemFilter.g4" }

    override
	open func getRuleNames() -> [String] { return ItemFilterLexer.ruleNames }

	override
	open func getSerializedATN() -> String { return ItemFilterLexer._serializedATN }

	override
	open func getModeNames() -> [String] { return ItemFilterLexer.modeNames }

	override
	open func getATN() -> ATN { return ItemFilterLexer._ATN }

    public static let _serializedATN: String = ItemFilterLexerATN().jsonString
	public static let _ATN: ATN = ATNDeserializer().deserializeFromJson(_serializedATN)
}