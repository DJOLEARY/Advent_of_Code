(* Day 5: Part 1 *)

(*
    01. Parse pages that need updating into list, e.g. "75,47,61,53,29" -> [ 75; 47; 61; 53; 29; ]
    02. Parse page ordering rules into DTOs, e.g. "47|53" -> {"before": 47, "after": 53}
    03. Find all rules that have pages from the parsed page list on both sides, e.g. "47|53" is valid but "97|47" and "47|13" are not
      - filter down to "before" values that are in page list
      - filter down to "after" values that are in page list
    04. Map across the page list and ensure that all rules for each page are upheld
    05. Map across the rules for the current page and ensure that all rules are upheld
      - filter rules down to rules with "before" equal to current page
      - walk the page list and ensure that all "after" values do no appear before the "before" value
      - return true if all rules are valid for the current page
    06. Reduce result down to single boolean
    07. IF FALSE, move on to next page in page list
    08. IF TRUE, continue until all rules are validated
    09. IF ALL RULES ARE NOT VALID FOR PAGE LIST, move on to next page list
    10. IF ALL RULES ARE VALID FOR PAGE LIST, save middle number in page list
    11. ONCE ALL PAGE LISTS HAVE BEEN PROCESSED, add all saved middle numbers
    12. Return sum of middle numbers
*)

let solve _ = ()
