*** Settings ***
Library    REST    https://jsonplaceholder.typicode.com

*** Test Cases ***
GET Request Should Return 200
    GET    /posts
    Status Code Should Be    200

GET Specific Post Should Contain Title
    GET    /posts/1
    Status Code Should Be    200
    Object Should Contain    title    sunt aut facere repellat provident occaecati excepturi optio reprehenderit
