<?php
namespace PH7\Framework\Layout\Tpl\Engine\PHXSLT;
class Exception extends \Exception
{

    public function __construct($sMsg)
    {
        parent::__construct('ERROR XSLT Template: ' . $sMsg);
    }

}
