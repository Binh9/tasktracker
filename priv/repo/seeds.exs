# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     TaskTracker.Repo.insert!(%TaskTracker.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

alias TaskTracker.Repo
alias TaskTracker.Users.User
alias TaskTracker.Tasks.Task

#pwhash = Argon2.hash_pwd_salt("pass1")

Repo.insert!(%User{email: "me@example.com", admin: true, password_hash: "admin"})
Repo.insert!(%User{email: "bob@example.com", admin: false, password_hash: "bob"})
Repo.insert!(%Task{title: "check", desc: "it", time: 15, completion: true, user_id: 2})
