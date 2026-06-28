# LeetCode SQL Solutions

## 197. Rising Temperature

### Difficulty
Easy

### Concepts
- Self Join
- DATEDIFF()
- Date Comparison

### What I Learned

Initially, I solved the problem using `LAG()`, but later realized that the question required comparing **consecutive dates**, not just consecutive rows.

### Solution

```sql
SELECT w1.id
FROM Weather w1
INNER JOIN Weather w2
ON DATEDIFF(w1.recordDate, w2.recordDate) = 1
WHERE w1.temperature > w2.temperature;
```