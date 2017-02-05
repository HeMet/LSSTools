// Generated from /Users/hemet/Documents/Projects/lss/Sources/ifconvert/Grammar/ItemFilter.g4 by ANTLR 4.6
import Antlr4

/**
 * This interface defines a complete generic visitor for a parse tree produced
 * by {@link ItemFilterParser}.
 *
 * @param <T> The return type of the visit operation. Use {@link Void} for
 * operations with no return type.
 */
open class ItemFilterVisitor<T>: ParseTreeVisitor<T> {
	/**
	 * Visit a parse tree produced by {@link ItemFilterParser#filter}.
	- Parameters:
	  - ctx: the parse tree
	- returns: the visitor result
	 */
	open func visitFilter(_ ctx: ItemFilterParser.FilterContext) -> T{
	 	fatalError(#function + " must be overridden")
	}

	/**
	 * Visit a parse tree produced by {@link ItemFilterParser#block}.
	- Parameters:
	  - ctx: the parse tree
	- returns: the visitor result
	 */
	open func visitBlock(_ ctx: ItemFilterParser.BlockContext) -> T{
	 	fatalError(#function + " must be overridden")
	}

	/**
	 * Visit a parse tree produced by {@link ItemFilterParser#block_header}.
	- Parameters:
	  - ctx: the parse tree
	- returns: the visitor result
	 */
	open func visitBlock_header(_ ctx: ItemFilterParser.Block_headerContext) -> T{
	 	fatalError(#function + " must be overridden")
	}

	/**
	 * Visit a parse tree produced by {@link ItemFilterParser#block_body}.
	- Parameters:
	  - ctx: the parse tree
	- returns: the visitor result
	 */
	open func visitBlock_body(_ ctx: ItemFilterParser.Block_bodyContext) -> T{
	 	fatalError(#function + " must be overridden")
	}

	/**
	 * Visit a parse tree produced by {@link ItemFilterParser#block_item}.
	- Parameters:
	  - ctx: the parse tree
	- returns: the visitor result
	 */
	open func visitBlock_item(_ ctx: ItemFilterParser.Block_itemContext) -> T{
	 	fatalError(#function + " must be overridden")
	}

	/**
	 * Visit a parse tree produced by {@link ItemFilterParser#numberic_block_item}.
	- Parameters:
	  - ctx: the parse tree
	- returns: the visitor result
	 */
	open func visitNumberic_block_item(_ ctx: ItemFilterParser.Numberic_block_itemContext) -> T{
	 	fatalError(#function + " must be overridden")
	}

	/**
	 * Visit a parse tree produced by {@link ItemFilterParser#string_list_block_item}.
	- Parameters:
	  - ctx: the parse tree
	- returns: the visitor result
	 */
	open func visitString_list_block_item(_ ctx: ItemFilterParser.String_list_block_itemContext) -> T{
	 	fatalError(#function + " must be overridden")
	}

	/**
	 * Visit a parse tree produced by {@link ItemFilterParser#socket_group_block_item}.
	- Parameters:
	  - ctx: the parse tree
	- returns: the visitor result
	 */
	open func visitSocket_group_block_item(_ ctx: ItemFilterParser.Socket_group_block_itemContext) -> T{
	 	fatalError(#function + " must be overridden")
	}

	/**
	 * Visit a parse tree produced by {@link ItemFilterParser#boolean_block_item}.
	- Parameters:
	  - ctx: the parse tree
	- returns: the visitor result
	 */
	open func visitBoolean_block_item(_ ctx: ItemFilterParser.Boolean_block_itemContext) -> T{
	 	fatalError(#function + " must be overridden")
	}

	/**
	 * Visit a parse tree produced by {@link ItemFilterParser#rarity_block_item}.
	- Parameters:
	  - ctx: the parse tree
	- returns: the visitor result
	 */
	open func visitRarity_block_item(_ ctx: ItemFilterParser.Rarity_block_itemContext) -> T{
	 	fatalError(#function + " must be overridden")
	}

	/**
	 * Visit a parse tree produced by {@link ItemFilterParser#rarity_value}.
	- Parameters:
	  - ctx: the parse tree
	- returns: the visitor result
	 */
	open func visitRarity_value(_ ctx: ItemFilterParser.Rarity_valueContext) -> T{
	 	fatalError(#function + " must be overridden")
	}

	/**
	 * Visit a parse tree produced by {@link ItemFilterParser#block_command_item}.
	- Parameters:
	  - ctx: the parse tree
	- returns: the visitor result
	 */
	open func visitBlock_command_item(_ ctx: ItemFilterParser.Block_command_itemContext) -> T{
	 	fatalError(#function + " must be overridden")
	}

	/**
	 * Visit a parse tree produced by {@link ItemFilterParser#set_color_command}.
	- Parameters:
	  - ctx: the parse tree
	- returns: the visitor result
	 */
	open func visitSet_color_command(_ ctx: ItemFilterParser.Set_color_commandContext) -> T{
	 	fatalError(#function + " must be overridden")
	}

	/**
	 * Visit a parse tree produced by {@link ItemFilterParser#play_alert_command}.
	- Parameters:
	  - ctx: the parse tree
	- returns: the visitor result
	 */
	open func visitPlay_alert_command(_ ctx: ItemFilterParser.Play_alert_commandContext) -> T{
	 	fatalError(#function + " must be overridden")
	}

	/**
	 * Visit a parse tree produced by {@link ItemFilterParser#set_font_size_command}.
	- Parameters:
	  - ctx: the parse tree
	- returns: the visitor result
	 */
	open func visitSet_font_size_command(_ ctx: ItemFilterParser.Set_font_size_commandContext) -> T{
	 	fatalError(#function + " must be overridden")
	}

	/**
	 * Visit a parse tree produced by {@link ItemFilterParser#boolean_literal}.
	- Parameters:
	  - ctx: the parse tree
	- returns: the visitor result
	 */
	open func visitBoolean_literal(_ ctx: ItemFilterParser.Boolean_literalContext) -> T{
	 	fatalError(#function + " must be overridden")
	}

}