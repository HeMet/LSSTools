/*
    Path of Exile Item Filter grammar

    Tested on
        Antnee's Classy Filter!  v2.5
        NeverSink's Indepth Loot Filter v4.42

     Author: https://github.com/HeMet
*/

grammar ItemFilter;

/*
According to the docs: http://pathofexile.gamepedia.com/Item_filter
"Every block must start with either Show or Hide, and any conditions in that block must start on the next line; indentation is optional."
Seems it easier to enforce this rule in application, since we also have trailing comments which consume new line symbols as well.
*/
filter: block* EOF;

block: block_header block_body;

block_header: 'Show' | 'Hide';

block_body
    : block_item*
    ;

block_item
    : numberic_block_item
    | string_list_block_item
    | socket_group_block_item
    | boolean_block_item
    | rarity_block_item
    | block_command_item
    ;

numberic_block_item
    : Numberic_block_item_name Operator? Number_literal
    ;

Numberic_block_item_name
    : 'ItemLevel'
    | 'DropLevel'
    | 'Quality'
    | 'Sockets'
    | 'LinkedSockets'
    | 'Height'
    | 'Width'
    ;

string_list_block_item
    : String_list_block_name String_literal+
    ;

String_list_block_name
    : 'Class'
    | 'BaseType'
    ;

socket_group_block_item
    : 'SocketGroup' String_literal?
    ;

boolean_block_item
    : Boolean_block_name boolean_literal
    ;

Boolean_block_name
    : 'Identified'
    | 'Corrupted'
    ;

rarity_block_item
    : 'Rarity' Operator? rarity_value
    ;

rarity_value
    : 'Normal'
    | 'Magic'
    | 'Rare'
    | 'Unique'
    ;

block_command_item
    : set_color_command
    | play_alert_command
    | set_font_size_command
    ;

set_color_command
    : Set_color_command_name Number_literal Number_literal Number_literal Number_literal?
    ;

Set_color_command_name
    : 'SetTextColor'
    | 'SetBorderColor'
    | 'SetBackgroundColor'
    ;

play_alert_command
    : 'PlayAlertSound' Number_literal Number_literal?
    ;

set_font_size_command
    : 'SetFontSize' Number_literal
    ;

Operator
    : '<'
    | '<='
    | '>'
    | '>='
    | '='
    ;

Number_literal: [0-9]+;

boolean_literal: 'True' | 'False';

String_literal: '"' Quoted_text? '"' | [a-zA-Z]+;

fragment Quoted_text : Quoted_text_item+;
fragment Quoted_text_item: ~["\n\r];

WS: [ \t\r\n]+ -> channel(HIDDEN);

Line_comment : '#' .*? (NL|EOF) -> channel(HIDDEN) ;

fragment NL: '\r'? '\n';