(defpackage :lem/tests/cli
  (:use :cl :rove)
  (:import-from :lem-core
                :parse-args
                :command-line-arguments-args))
(in-package :lem/tests/cli)

(deftest ignore-sbcl-init-flags
  (let* ((args (lem-core:parse-args '("--no-sysinit" "--no-userinit")))
         (results (lem-core:command-line-arguments-args args)))
    (ok (null results)))
  (let* ((args (lem-core:parse-args '("--no-sysinit")))
         (results (lem-core:command-line-arguments-args args)))
    (ok (null results)))
  (let* ((args (lem-core:parse-args '("--no-userinit")))
         (results (lem-core:command-line-arguments-args args)))
    (ok (null results))))
