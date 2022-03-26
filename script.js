import http from "k6/http";

export default function() {
    let response = http.get("https://test-api.k6.io");
    // let response = http.get("http://localhost:8080/ping");
};
