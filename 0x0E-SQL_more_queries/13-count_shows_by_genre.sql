-- lists all genres from hbtn_0d_tvshows and displays the number of shows linked to each.
-- Each record should display: tv_genres.name - number of shows
-- Don’t display a genre that doesn’t have any shows linked
-- Results must be sorted in descending order by the number of shows linked
-- You can use only one SELECT statement

SELECT tv_genres.name AS "genre",
       count(*) AS "number_of_shows"
    FROM tv_show_genres
LEFT JOIN tv_genres ON tv_genres.id = genre_id GROUP BY genre_id ORDER BY count(*) DESC;
