
/* vim: set expandtab tabstop=4 shiftwidth=4 softtabstop=4: */

/**
 * This file is part of A2Billing (http://www.a2billing.net/)
 *
 * A2Billing, Commercial Open Source Telecom Billing platform,   
 * powered by Star2billing S.L. <http://www.star2billing.com/>
 * 
 * @copyright   Copyright (C) 2004-2009 - Star2billing S.L. 
 * @author      Belaid Arezqui <areski@gmail.com>
 * @license     http://www.fsf.org/licensing/licenses/agpl-3.0.html
 * @package     A2Billing
 *
 * Software License Agreement (GNU Affero General Public License)
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU Affero General Public License as
 * published by the Free Software Foundation, either version 3 of the
 * License, or (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Affero General Public License for more details.
 *
 * You should have received a copy of the GNU Affero General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 * 
 * 
**/


ALTER TABLE cc_did_destination CHANGE destination destination VARCHAR( 100 ) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL;

ALTER TABLE cc_sip_buddies ADD COLUMN useragent VARCHAR( 80 ) DEFAULT NULL;

ALTER TABLE cc_sip_buddies ALTER disallow set DEFAULT 'ALL';
ALTER TABLE cc_sip_buddies ALTER rtpkeepalive set DEFAULT 0;
ALTER TABLE cc_sip_buddies ALTER canreinvite set DEFAULT 'YES';


ALTER TABLE  cc_callback_spool CHANGE  variable  variable VARCHAR( 2000 ) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL;
  
UPDATE cc_version SET version = '1.7.2';



