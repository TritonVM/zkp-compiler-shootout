(asdf:defsystem :triton
  :depends-on (:trivia :alexandria :serapeum)
  :version "0.0.1"
  :description "A qucik and dirty Assembler for tritonVM"
  :author "Mariari"
  :license "MIT"
  :pathname "src/"
  :components
  ((:file package)
   (:file spec     :depends-on (package))
   (:file printer  :depends-on (package spec))
   (:file triton   :depends-on (package spec))
   (:file table    :depends-on (package spec))
   (:file programs :depends-on (package spec triton table))))
