#CodeTest Readme
## Coding Challenge “Passionate Navigation”

| Endpoint | Functionality |
| --- | --- |
| **GET /verticals** | List all verticals |
| **POST /verticals** | Create a new vertical |
| **GET /verticals/:id** | 	Get a vertical |
| **PUT /verticals/:id** | 	Update a vertical |
| **DELETE /verticals/:id** | 	Delete a vertical |
| **GET /categories** | List all categories |
| **POST /categories** | Create a new categories |
| **GET /categories/:id** | 	Get a categories |
| **PUT /categories/:id** | 	Update a categories |
| **DELETE /categories/:id** | 	Delete a categories |
| **GET /courses** | List all courses |
| **POST /courses** | Create a new courses |
| **GET /courses/:id** | 	Get a courses |
| **PUT /courses/:id** | 	Update a courses |
| **DELETE /courses/:id** | 	Delete a courses |

###Local run
#####Dependencies:
>ruby '2.6.5'
>gem 'rails', '~> 6.0.2'
>gem 'pg', '>= 0.18'
#####Gems used:
>gem 'bcrypt'
>gem 'doorkeeper'
>gem 'shoulda-matchers'
>gem 'rspec-rails'

####Init:
```shell
$ rails db:create
```
```shell
$ rails db:migrate
```
```shell
$ rails c
```
```shell
$ irb(main):001:0> Doorkeeper::Application.all
```
```shell
$ => #<ActiveRecord::Relation [#<Doorkeeper::Application id: 1, name: "SiteCode", uid: "i3asd4_pjG3Dj6jN9exU3zIhq2O71Sh_uid4FObwoXI", secret: "TU9p3Hg_O-WyAWfvthq0XiThUbbqgSr4J7KOVVWoNp8", redirect_uri: "urn:ietf:wg:oauth:2.0:oob", scopes: "read write", confidential: false, created_at: "2019-12-27 10:50:36", updated_at: "2019-12-27 10:50:36">]>
```
```shell
$ curl --location --request POST 'http://localhost:3000/oauth/token?client_id=YOURUIDFROMTOP&client_secret=YOURSECRETFROMTOP' --header 'Content-Type: application/json' --header 'Accept: application/json' --data-raw '{"username": "me@example.com", "password": "admin", "grant_type": "password" }'
```
>Default User from seed.rb username: "me@example.com", password: "admin"
```shell
$ http GET :3000/verticals access_token=HhAV4wpAK-lqNcvorpJi7s1mQj_niIgp_ypdIo68CKs
```
>Replace acces_token with yours. [get http](https://httpie.org/)

```shell
$ http POST :3000/categories access_token=HhAV4wpAK-lqNcvorpJi7s1mQj_niIgp_ypdIo68CKs  name="John Smith" state="active" vertical_id=4
```
>Make shure vertical_id exist.For more Endpoints check top table!

###Testing

```shell
$ rspec -fd
```
The solution is scaled and is well-tested, abstracting business logic in reusable concerns or services. The solution can handle multithreaded responses.i would improve performance and response time.