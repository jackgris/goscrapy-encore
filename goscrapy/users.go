package goscrapy

import "time"

type User struct {
	ID         int64
	Name       string
	Password   string
	Permission string
	CreatedAt  time.Time
	UpdatedAt  time.Time
}
