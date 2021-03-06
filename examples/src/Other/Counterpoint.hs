
-- Based on http://decipheringmusictheory.com/?page_id=46

module Other.Counterpoint where

import Mezzo

v1 = d qn :|: g qn :|: fs qn :|: g en :|: a en :|: bf qn :|: a qn :|: g hn

v2 = d qn :|: ef qn :|: d qn :|: bf_ en :|: a_ en :|: g_ qn :|: fs_ qn :|: g_ hn

sco = score setKeySig g_min
            setRuleSet strict
            withMusic (v1 :-: v2)

main = renderScore "rendered/Counterpoint.mid"
                   "2-voice contrapuntal composition"
                   sco
