(defn random-amount-test
  [amount acount]
  (let [rand-fen
        (map #(-> % double ((fn [i] (* 100 i))) int)
             (AesCbcUtil/spiltTest amount acount))
        rest-list (rest rand-fen)
        fill-item (- (* 120 amount) (reduce + rest-list))]
    (conj rest-list fill-item)))
