<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="Presentation/style.css">
    <link rel="icon" href="Presentation/favicon.ico" type="image/x-icon">
</head>

<body>
    <header>
        <nav>
            <ul class="nav-links">
                <li>
                    <form action="index.php" method="get">
                        <input type="submit" value="Dashboard" name="dashboard" class="dashboard-button">
                    </form>
                </li>
            </ul>
            <div class="user-info">
                <span>Ingelogd als: <?php echo htmlspecialchars($user->getName(), ENT_QUOTES, 'UTF-8'); ?></span>
                <form action="index.php" method="get">
                    <input type="submit" value="Log out" name="logout" class="logout-button">
                </form>
            </div>
        </nav>
    </header>
</body>

</html>
