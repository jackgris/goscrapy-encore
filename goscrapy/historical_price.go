package goscrapy

import "time"

type HistoricalPrice struct {
	ID        int64
	ProductID int64
	Price     float64
	CreatedAt time.Time
}
