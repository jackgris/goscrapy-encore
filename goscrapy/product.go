package goscrapy

import "context"

type Product struct {
	ID   string
	Name string
}

// Show products list.
//
//encore:api public method=GET path=/products
func ListProducts(ctx context.Context) (*Product, error) {
	return &Product{ID: "1234", Name: "new product"}, nil
}
