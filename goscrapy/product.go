package goscrapy

import (
	"context"
	"time"
)

type Product struct {
	ID         int64
	SupplierID int64
	Name       string
	URL        string
	Price      float64
	CreatedAt  time.Time
	UpdatedAt  time.Time
}

// Show products list.
//
//encore:api public method=GET path=/products
func ListProducts(ctx context.Context) (*Product, error) {
	return &Product{ID: 1234, Name: "new product"}, nil
}
