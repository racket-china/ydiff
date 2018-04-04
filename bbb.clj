(defn random-amount
  [amount acount]
  (let [rand-fen
        (map #(-> % double ((fn [i] (* 100 i))) int)
             (AesCbcUtil/spiltRedPackets amount acount))
        rest-list (rest rand-fen)
        fill-item (- (* 100 amount) (reduce + rest-list))]
    (conj rest-list fill-item)))
