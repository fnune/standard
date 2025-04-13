;; extends

((identifier) @variable.builtin
 (#match? @variable.builtin "^(self|cls|super)$")
 (#set! "priority" 130))
