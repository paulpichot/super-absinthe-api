alias Superhappytm.Opta.OptaplayPlayer
alias Superhappytm.Opta.OptarankPlayer
alias Superhappytm.Wordpress.WordpressPlayer
alias Superhappytm.Wordpress.WordpressTaxonomy
alias Superhappytm.Repo

%OptaplayPlayer{
  opta_id: "1pnzay4wg8r49mpvw5wur4dwq",
  match_name: "H. Rune",
  first_name: "Holger",
  last_name: "Rune",
  nationality_id: "6kewn14jj4ncyzghlbu61hna6",
  nationality: "Kazakhstan",
  country_of_birth_id: "6kewn14jj4ncyzghlbu61hna6",
  country_of_birth: "Kazakhstan",
  date_of_birth: "1996-10-24",
  place_of_birth: "St. Petersburg",
  gender: "Male",
  height: 191,
  weight: 87,
  last_updated: "2021-11-20T09:35:19Z",
  alpha_code_country: "KAZ",
}
  |> Repo.insert!

%OptaplayPlayer{
  opta_id: "285gq7rixh082qm5xuntjj9j5",
  match_name: "D. Popko",
  first_name: "Dmitry",
  last_name: "Popko",
  nationality_id: "6kewn14jj4ncyzghlbu61hna6",
  nationality: "Kazakhstan",
  country_of_birth_id: "6kewn14jj4ncyzghlbu61hna6",
  country_of_birth: "Kazakhstan",
  date_of_birth: "1996-10-24",
  place_of_birth: "St. Petersburg",
  gender: "Male",
  height: 191,
  weight: 87,
  last_updated: "2021-11-20T09:35:19Z",
  alpha_code_country: "KAZ",
}
  |> Repo.insert!

%OptarankPlayer{
  opta_id: "1pnzay4wg8r49mpvw5wur4dwq",
  match_name: "H. Rune",
  first_name: "Holger",
  last_name: "Rune",
  nationality_id: "6kewn14jj4ncyzghlbu61hna6",
  nationality: "Kazakhstan",
  alpha_code_country: "KAZ",
  position: 3,
  last_position: 4,
  points: 2345,
  tournaments_played: 5
}
  |> Repo.insert!

%OptarankPlayer{
  opta_id: "285gq7rixh082qm5xuntjj9j5",
  match_name: "D. Popko",
  first_name: "Dmitry",
  last_name: "Popko",
  nationality_id: "6kewn14jj4ncyzghlbu61hna6",
  nationality: "Kazakhstan",
  alpha_code_country: "KAZ",
  position: 2,
  last_position: 5,
  points: 1243,
  tournaments_played: 7
}
  |> Repo.insert!

%WordpressPlayer{
    opta_id: "285gq7rixh082qm5xuntjj9j5",
    wordpress_id: 23432
  }
    |> Repo.insert!

%WordpressPlayer{
  opta_id: "1pnzay4wg8r49mpvw5wur4dwq",
  wordpress_id: 234384
}
  |> Repo.insert!


%WordpressTaxonomy{
    opta_id: "285gq7rixh08zdz2qm5xuntjj9j5",
    wordpress_id: 232432,
    name: "Canberra Challenger",
    slug: "canberra-challenger",
    type: "competition"
  }
    |> Repo.insert!

%WordpressTaxonomy{
  opta_id: "1pndedezay4wg8r49mpvw5wur4dwq",
  wordpress_id: 2347384,
  name: "Maia Open",
  slug: "maia-open-1",
  type: "competition"
}
  |> Repo.insert!
