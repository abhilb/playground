(ns clojure.exmples.hello
  (:gen-class))

;; This pgrm displays Hello world

(defn Example []
  (def string1 (slurp "Example.txt"))
  (println string1))

(Example)


