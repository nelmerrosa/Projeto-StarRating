<?php
require_once("templates/header.php");

require_once("dao/MovieDAO.php");

// DAO dos filmes
$movieDao = new MovieDAO($conn, $BASE_URL);

$latestMovies = $movieDao->getLatestMovies();

$actionMovies = $movieDao->getMoviesByCategory("Ação");

$comedyMovies = $movieDao->getMoviesByCategory("Comédia");

$dramaMovies = $movieDao->getMoviesByCategory("Drama");

$romanceMovies = $movieDao->getMoviesByCategory("Romance");

?>
<div id="main-container" class="container-fluid">
    <h2 class="section-title">Filmes novos</h2>
    <p class="section-description">Veja as críticas dos últimos filmes adicionados no StarRating!</p>
    <div class="movies-container">
        <?php foreach ($latestMovies as $movie) : ?>
            <?php require("templates/movie_card.php"); ?>
        <?php endforeach; ?>
        <?php if (count($latestMovies) === 0) : ?>
            <p class="empty-list">Ainda não há filmes cadastrados!</p>
        <?php endif; ?>
    </div>
    <h2 class="section-title">Ação</h2>
    <p class="section-description">Tiro, porrada e bomba! Os melhores filmes de Ação!</p>
    <div class="movies-container">
        <?php foreach ($actionMovies as $movie) : ?>
            <?php require("templates/movie_card.php"); ?>
        <?php endforeach; ?>
        <?php if (count($actionMovies) === 0) : ?>
            <p class="empty-list">Ainda não há filmes de ação cadastrados!</p>
        <?php endif; ?>
    </div>
    <h2 class="section-title">Comédia</h2>
    <p class="section-description">Riso Garantido! As melhores comédias!</p>
    <div class="movies-container">
        <?php foreach ($comedyMovies as $movie) : ?>
            <?php require("templates/movie_card.php"); ?>
        <?php endforeach; ?>
        <?php if (count($comedyMovies) === 0) : ?>
            <p class="empty-list">Ainda não há filmes de comédia cadastrados!</p>
        <?php endif; ?>
    </div>
    <h2 class="section-title">Drama</h2>
    <p class="section-description">Filmes que vão te tocar!</p>
    <div class="movies-container">
        <?php foreach ($dramaMovies as $movie) :
            require("templates/movie_card.php"); ?>
        <?php endforeach; ?>
        <?php if (count($dramaMovies) === 0) : ?>
            <p class="empty-list">Ainda não há filmes dramáticos cadastrados!</p>
        <?php endif; ?>
    </div>
    <h2 class="section-title">Romance</h2>
    <p class="section-description">Filmes para se apaixonar!</p>
    <div class="movies-container">
        <?php foreach ($romanceMovies as $movie) :
            require("templates/movie_card.php"); ?>
        <?php endforeach; ?>
        <?php if (count($romanceMovies) === 0) : ?>
            <p class="empty-list">Ainda não há filmes românticos cadastrados!</p>
        <?php endif; ?>
    </div>
</div>
<?php
require_once("templates/footer.php");
?>