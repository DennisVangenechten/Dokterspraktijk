<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="Presentation/style.css">
    <title>New patient</title>
</head>

<body>
<main>
    <div class="patientDiv">
        <h2>Nieuwe patiënt</h2>
        <?php if (isset($_SESSION['error'])): ?>
            <div class="error-message">
                <?php 
                echo $_SESSION['error']; 
                unset($_SESSION['error']); // Verwijder de foutmelding uit de sessie na weergave
                ?>
            </div>
        <?php endif; ?>
        <?php if (isset($_SESSION['success'])): ?>
            <div class="success-message">
                <?php 
                echo $_SESSION['success']; 
                unset($_SESSION['success']); // Verwijder de succesmelding uit de sessie na weergave
                ?>
            </div>
        <?php endif; ?>
        <form action="index.php?action=addPatient" method="post" class="addPatient">
            <label for="rr">Rijksregister
                <input type="text" name="rr" id="rr" pattern="\d{11}" title="Rijksregister moet 11 cijfers bevatten" placeholder="12345678901" required>
            </label>
            <label for="name">Naam
                <input type="text" name="name" id="name" placeholder="Achternaam" required>
            </label>
            <label for="surname">Voornaam
                <input type="text" name="surname" id="surname" placeholder="Voornaam" required>
            </label>
            <label for="gender">Geslacht
                <select name="gender" id="gender" required>
                    <option value="" disabled selected>Selecteer geslacht</option>
                    <option value="male">Man</option>
                    <option value="female">Vrouw</option>
                    <option value="other">Anders</option>
                </select>
            </label>
            <label for="dateOfBirth">Geboortedatum
                <input type="date" name="dateOfBirth" id="dateOfBirth" required>
            </label>
            <label for="street">Straatnaam
                <input type="text" name="street" id="street" placeholder="Straatnaam" required>
            </label>
            <label for="number">Huisnummer
                <input type="number" name="number" id="number" placeholder="123" required>
            </label>
            <label for="city">Woonplaats
                <input type="text" name="city" id="city" placeholder="Stad" required>
            </label>
            <label for="zipcode">Postcode
                <input type="number" name="zipcode" id="zipcode" placeholder="1000" required>
            </label>
            <label for="email">Email
                <input type="email" name="email" id="email" placeholder="voorbeeld@domain.com" required>
            </label>
            <label for="phone">Telefoon
                <input type="tel" name="phone" id="phone" pattern="\d{10}" title="Telefoonnummer moet 10 cijfers bevatten" placeholder="0123456789" required>
            </label>
            <label for="gmd">GMD
                <input type="text" name="gmd" id="gmd" placeholder="GMD">
            </label>
            <button type="submit">Toevoegen</button>
        </form>
        <div class="logout">
            <form action="index.php" method="get">
                <input type="submit" value="Log out" name="logout">
            </form>
        </div>
    </div>
</main>
</body>

</html>
