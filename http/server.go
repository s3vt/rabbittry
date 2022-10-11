package http

import (
	"net/http"

	"github.com/gorilla/mux"
)

//StartServe starts http for this application
func StartServe() {
	router := mux.NewRouter()
	http.ListenAndServe(":8080", router)
}
