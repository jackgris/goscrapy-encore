package goscrapy

import "time"

type Supplier struct {
	ID          int64
	UserID      int64
	Name        string
	Password    string
	UrlLogin    string
	UrlProducts string
	CreatedAt   time.Time
	UpdatedAt   time.Time
}
