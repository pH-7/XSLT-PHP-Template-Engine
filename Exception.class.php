<?php
/**
 * @title            Exception PH XSLT
 *
 * @author           Pierre-Henry Soria <ph7software@gmail.com>
 * @copyright        (c) 2012, Pierre-Henry Soria. All Rights Reserved.
 * @license          GNU General Public License.
 * @package          PH7 / Framework / Layout / Tpl / Engine / PHXSLT
 * @version          1.1
 */

namespace PH7\Framework\Layout\Tpl\Engine\PHXSLT;

class Exception extends \Exception
{

    public function __construct($sMsg)
    {
        parent::__construct('ERROR XSLT Template: ' . $sMsg);
    }

}
