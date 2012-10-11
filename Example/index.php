<?php
/**
 * @title          Example file.
 *
 * @author         Pierre-Henry Soria <ph7software@gmail.com>
 * @copyright      (c) 2012, Pierre-Henry Soria. All Rights Reserved.
 * @license        GNU General Public License.
 */

// Set a global namespace for the example file.
namespace PH7;

// Loading files necessary for the example
require '../Exception.class.php';
require '../PHXSLT.class.php';

// Get the namespace
use PH7\Framework\Layout\Tpl\Engine\PHXSLT\PHXSLT;

try
{
    $oXslTpl = new PHXSLT(__DIR__ . '/persons.xsl');

    $aVars = array(
        'meta' => array(
            'title' => 'Example to XSLT PHP Template Engine',
            'description' => 'This is a simple but effective and powerful template engine running PHP with XSLT. With XSLT syntax, your template code and may be portable to virtually any programming language.',
            'keywords' => 'PHP, XSLT, template',
        ),
        'info' => array(
            'lang' => 'en-US',
            'heading1' => 'Simple XSLT PHP Engine',
            'copyright-link' => 'http://ph-7.github.com',
            'copyright-title-link' => 'pH7',
        )
    );

    foreach($aVars as $aStr)
        $oXslTpl->setParam($aStr);

    $aPersons = array(
        1 => array('name' => 'Gayen', 'first-name' => 'Mark', 'description' => 'What are you doing tonight?, I go out with friends ;-)'),
        2 => array('name' => 'Roksen', 'first-name' => 'Katin', 'description' => 'Hi, I\'m a nice person, and you?'),
        3 => array('name' => 'Gansen', 'first-name' => 'Matthew', 'description' => 'Looking for nothing ...'),
        4 => array('name' => 'Korsan', 'first-name' => 'Alexander', 'description' => 'I love spaghetti!'),
        5 => array('name' => 'Frey', 'first-name' => 'Matt', 'description' => 'It seems that tomorrow I would be happy ...'),
        6 => array('name' => 'Admin', 'first-name' => 'Gayen', 'description' => 'I\'m the king ... :D')
    );

    foreach($aPersons as $aPerson)
        $oXslTpl->generateXMLNode($aPerson, 'persons');

    $oXslTpl->render(); // Display

}
catch(\Exception $oE)
{
    echo '<p><b>Exception launched!</b><br /><br />' .
    'Message: ' . $oE->getMessage() . '<br />' .
    'File: ' . $oE->getFile() . '<br />' .
    'Line: ' . $oE->getLine() . '<br />' .
    'Trace: <p/><pre>' . $oE->getTraceAsString() . '</pre>';
}
