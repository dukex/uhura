package core

import (
  "encoding/json"
  "github.com/gorilla/sessions"
  "net/http"
  "strconv"
)

var store = sessions.NewCookieStore([]byte("something-very-secret"))

type TempUser struct {
  Id         string
  Name       string
  GivenName  string
  FamilyName string
  Link       string
  Picture    string
  Gender     string
  Locale     string
}

type User struct {
  Id         int
  Name       string
  GivenName  string
  FamilyName string
  Link       string
  Picture    string
  Gender     string
  Locale     string
  GoogleId   string
}

func (u *User) IdString() string {
  return strconv.Itoa(u.Id)
}

func createUser(tempUser TempUser) *User {
  configDatabase()

  var user User

  database.Where(User{GoogleId: tempUser.Id}).Attrs(User{Name: tempUser.Name, GivenName: tempUser.GivenName, FamilyName: tempUser.FamilyName, Link: tempUser.Link, Picture: tempUser.Picture, Gender: tempUser.Gender, Locale: tempUser.Locale}).FirstOrCreate(&user)

  return &user
}

func getUser(userId string) *User {
  configDatabase()

  var user User
  id, _ := strconv.Atoi(userId)

  database.First(&user, id)

  return &user
}

func CurrentUser(request *http.Request) (*User, bool) {
  session, _ := store.Get(request, "session")
  userId, ok := session.Values["user_id"].(string)
  if ok {
    return getUser(userId), false
  } else {
    return nil, true
  }
}

func CreateAndLoginUser(request *http.Request, responseWriter http.ResponseWriter, responseAuth *http.Response) (*User, bool) {
  var tempUser TempUser
  decoder := json.NewDecoder(responseAuth.Body)
  err := decoder.Decode(&tempUser)
  if err != nil {
    panic(err)
  }

  user := createUser(tempUser)

  session, _ := store.Get(request, "session")
  session.Values["user_id"] = user.IdString()

  session.Save(request, responseWriter)
  return user, false
}