# lang racket

(require "structs.rkt")
(require "utils.rkt")
(require "parse-cpp.rkt")
(require "diff.rkt")
(require "htmlize.rkt")


(parse-cpp (read-file "test-parse-cpp.cpp"))
