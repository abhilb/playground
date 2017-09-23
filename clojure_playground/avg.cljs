

(defn average
  [numbers]
  (/ (apply + numbers) (count numbers)))

(average [23 23 53 50 87])

