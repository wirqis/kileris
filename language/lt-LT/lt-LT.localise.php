<?php
/**
 * @copyright	Copyright (C) 2005 - 2015 Open Source Matters, Inc & Lithuanian Translation Team (http://www.joomla123.lt)
 * @license		GNU General Public License version 2 or later; see LICENSE.txt
 */

defined('_JEXEC') or die;

/**
 * lt-LT localise class.
 *
 * @package		Joomla.Site
 * @since		1.6
 */
abstract class lt_LTLocalise {
	/**
	 * Returns the potential suffixes for a specific number of items
	 *
	 * @param	int $count  The number of items.
	 * @return	array  An array of potential suffixes.
	 * @since	1.6
	 */
	public static function getPluralSuffixes($count)
	{
		if ($count == 0) {
			$return = array('0');
		} else {
			$return = array(($count%10==1 && $count%100!=11 ? '1' : ($count%10>=2 && $count%10<=9 && ($count%100<=10 || $count%100>20) ? '2' : 'MORE')));
		}
		return $return;
	}
	

	public static function transliterate($string)
	{
		$str = JString::strtolower($string);

		$glyph_array = array(
			'a' => 'ą',
			'c' => 'č',
			'e' => 'ę,ė',
			'i' => 'į',
			's' => 'š',
			'u' => 'ų,ū',
			'z' => 'ž'
		);

		foreach ($glyph_array as $letter => $glyphs) {
			$glyphs = explode(',', $glyphs);
			$str = str_replace($glyphs, $letter, $str);
		}

		$str = preg_replace('#\&\#?[a-z0-9]+\;#ismu', '', $str);

		return $str;
	}

	/**
	 * Returns the ignored search words
	 *
	 * @return	array  An array of ignored search words.
	 * @since	1.6
	 */
	public static function getIgnoredSearchWords() {
		$search_ignore = array();
		$search_ignore[] = "abi";
        $search_ignore[] = "ant";
        $search_ignore[] = "ar";
		$search_ignore[] = "arba";
        $search_ignore[] = "bei";
        $search_ignore[] = "bet";
        $search_ignore[] = "dėl to";
        $search_ignore[] = "ė";
        $search_ignore[] = "ir";
        $search_ignore[] = "iš";
        $search_ignore[] = "į";
        $search_ignore[] = "jei";
        $search_ignore[] = "jau";
        $search_ignore[] = "jeigu";
        $search_ignore[] = "jog";
        $search_ignore[] = "juo";
        $search_ignore[] = "kas";
        $search_ignore[] = "kai";
        $search_ignore[] = "kad";
        $search_ignore[] = "kada";
        $search_ignore[] = "kadangi";
        $search_ignore[] = "kad ir";
        $search_ignore[] = "kaip";
        $search_ignore[] = "kiek";
        $search_ignore[] = "kodėl";
        $search_ignore[] = "koks";
        $search_ignore[] = "kol";
        $search_ignore[] = "kur";
        $search_ignore[] = "kuris";
        $search_ignore[] = "lig";
        $search_ignore[] = "ligi";
        $search_ignore[] = "lyg";
        $search_ignore[] = "ne";
        $search_ignore[] = "nes";
        $search_ignore[] = "nors";
        $search_ignore[] = "o";
		$search_ignore[] = "per";
		$search_ignore[] = "tai";
        $search_ignore[] = "taigi";
        $search_ignore[] = "tad";
		$search_ignore[] = "tačiau";
        $search_ignore[] = "todėl";
        $search_ignore[] = "t.y.";
        $search_ignore[] = "t. y.";
		$search_ignore[] = "už";
		$search_ignore[] = "užtat";
        $search_ignore[] = "užtai";
		$search_ignore[] = "vėl";
		$search_ignore[] = "vos";
        $search_ignore[] = "vos tik";
        return $search_ignore;
	}
	/**
	 * Returns the lower length limit of search words
	 *
	 * @return	integer  The lower length limit of search words.
	 * @since	1.6
	 */
	public static function getLowerLimitSearchWord() {
		return 3;
	}
	/**
	 * Returns the upper length limit of search words
	 *
	 * @return	integer  The upper length limit of search words.
	 * @since	1.6
	 */
	public static function getUpperLimitSearchWord() {
		return 50;
	}
	/**
	 * Returns the number of chars to display when searching
	 *
	 * @return	integer  The number of chars to display when searching.
	 * @since	1.6
	 */
	public static function getSearchDisplayedCharactersNumber() {
		return 200;
	}
}
