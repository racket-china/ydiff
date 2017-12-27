#lang racket

(require "structs.rkt")
(require "utils.rkt")
(require "parse-cpp.rkt")

(let* ([args (current-command-line-arguments)]
       [file1 (vector-ref args 0)])       
  (parse-cpp (read-file file1)))
