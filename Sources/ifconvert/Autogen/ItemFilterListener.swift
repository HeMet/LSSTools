// Generated from /Users/hemet/Documents/Projects/lss/Sources/ifconvert/Grammar/ItemFilter.g4 by ANTLR 4.6
import Antlr4

/**
 * This interface defines a complete listener for a parse tree produced by
 * {@link ItemFilterParser}.
 */
public protocol ItemFilterListener: ParseTreeListener {
	/**
	 * Enter a parse tree produced by {@link ItemFilterParser#filter}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterFilter(_ ctx: ItemFilterParser.FilterContext)
	/**
	 * Exit a parse tree produced by {@link ItemFilterParser#filter}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitFilter(_ ctx: ItemFilterParser.FilterContext)
	/**
	 * Enter a parse tree produced by {@link ItemFilterParser#block}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterBlock(_ ctx: ItemFilterParser.BlockContext)
	/**
	 * Exit a parse tree produced by {@link ItemFilterParser#block}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitBlock(_ ctx: ItemFilterParser.BlockContext)
	/**
	 * Enter a parse tree produced by {@link ItemFilterParser#block_header}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterBlock_header(_ ctx: ItemFilterParser.Block_headerContext)
	/**
	 * Exit a parse tree produced by {@link ItemFilterParser#block_header}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitBlock_header(_ ctx: ItemFilterParser.Block_headerContext)
	/**
	 * Enter a parse tree produced by {@link ItemFilterParser#block_body}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterBlock_body(_ ctx: ItemFilterParser.Block_bodyContext)
	/**
	 * Exit a parse tree produced by {@link ItemFilterParser#block_body}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitBlock_body(_ ctx: ItemFilterParser.Block_bodyContext)
	/**
	 * Enter a parse tree produced by {@link ItemFilterParser#block_item}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterBlock_item(_ ctx: ItemFilterParser.Block_itemContext)
	/**
	 * Exit a parse tree produced by {@link ItemFilterParser#block_item}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitBlock_item(_ ctx: ItemFilterParser.Block_itemContext)
	/**
	 * Enter a parse tree produced by {@link ItemFilterParser#numberic_block_item}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterNumberic_block_item(_ ctx: ItemFilterParser.Numberic_block_itemContext)
	/**
	 * Exit a parse tree produced by {@link ItemFilterParser#numberic_block_item}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitNumberic_block_item(_ ctx: ItemFilterParser.Numberic_block_itemContext)
	/**
	 * Enter a parse tree produced by {@link ItemFilterParser#string_list_block_item}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterString_list_block_item(_ ctx: ItemFilterParser.String_list_block_itemContext)
	/**
	 * Exit a parse tree produced by {@link ItemFilterParser#string_list_block_item}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitString_list_block_item(_ ctx: ItemFilterParser.String_list_block_itemContext)
	/**
	 * Enter a parse tree produced by {@link ItemFilterParser#socket_group_block_item}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterSocket_group_block_item(_ ctx: ItemFilterParser.Socket_group_block_itemContext)
	/**
	 * Exit a parse tree produced by {@link ItemFilterParser#socket_group_block_item}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitSocket_group_block_item(_ ctx: ItemFilterParser.Socket_group_block_itemContext)
	/**
	 * Enter a parse tree produced by {@link ItemFilterParser#boolean_block_item}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterBoolean_block_item(_ ctx: ItemFilterParser.Boolean_block_itemContext)
	/**
	 * Exit a parse tree produced by {@link ItemFilterParser#boolean_block_item}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitBoolean_block_item(_ ctx: ItemFilterParser.Boolean_block_itemContext)
	/**
	 * Enter a parse tree produced by {@link ItemFilterParser#rarity_block_item}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterRarity_block_item(_ ctx: ItemFilterParser.Rarity_block_itemContext)
	/**
	 * Exit a parse tree produced by {@link ItemFilterParser#rarity_block_item}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitRarity_block_item(_ ctx: ItemFilterParser.Rarity_block_itemContext)
	/**
	 * Enter a parse tree produced by {@link ItemFilterParser#rarity_value}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterRarity_value(_ ctx: ItemFilterParser.Rarity_valueContext)
	/**
	 * Exit a parse tree produced by {@link ItemFilterParser#rarity_value}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitRarity_value(_ ctx: ItemFilterParser.Rarity_valueContext)
	/**
	 * Enter a parse tree produced by {@link ItemFilterParser#block_command_item}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterBlock_command_item(_ ctx: ItemFilterParser.Block_command_itemContext)
	/**
	 * Exit a parse tree produced by {@link ItemFilterParser#block_command_item}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitBlock_command_item(_ ctx: ItemFilterParser.Block_command_itemContext)
	/**
	 * Enter a parse tree produced by {@link ItemFilterParser#set_color_command}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterSet_color_command(_ ctx: ItemFilterParser.Set_color_commandContext)
	/**
	 * Exit a parse tree produced by {@link ItemFilterParser#set_color_command}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitSet_color_command(_ ctx: ItemFilterParser.Set_color_commandContext)
	/**
	 * Enter a parse tree produced by {@link ItemFilterParser#play_alert_command}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterPlay_alert_command(_ ctx: ItemFilterParser.Play_alert_commandContext)
	/**
	 * Exit a parse tree produced by {@link ItemFilterParser#play_alert_command}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitPlay_alert_command(_ ctx: ItemFilterParser.Play_alert_commandContext)
	/**
	 * Enter a parse tree produced by {@link ItemFilterParser#set_font_size_command}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterSet_font_size_command(_ ctx: ItemFilterParser.Set_font_size_commandContext)
	/**
	 * Exit a parse tree produced by {@link ItemFilterParser#set_font_size_command}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitSet_font_size_command(_ ctx: ItemFilterParser.Set_font_size_commandContext)
	/**
	 * Enter a parse tree produced by {@link ItemFilterParser#boolean_literal}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterBoolean_literal(_ ctx: ItemFilterParser.Boolean_literalContext)
	/**
	 * Exit a parse tree produced by {@link ItemFilterParser#boolean_literal}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitBoolean_literal(_ ctx: ItemFilterParser.Boolean_literalContext)
}