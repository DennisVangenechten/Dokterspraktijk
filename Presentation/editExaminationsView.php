<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="Presentation/style.css">
    <title>Manage Examinations</title>
</head>
<body>
    <main>
    <div class="container">
        <h1>Manage Examinations</h1>
        <form action="index.php?action=addExamination" method="post">
            <label for="description">Description:</label>
            <textarea id="description" name="description" required></textarea>
            <label for="taxpatient">Tax Patient:</label>
            <input type="number" id="taxpatient" name="taxpatient" step="0.01" required>
            <label for="taxriziv">Tax Riziv:</label>
            <input type="number" id="taxriziv" name="taxriziv" step="0.01" required>
            <input type="hidden" id="price" name="price">
            <label for="nomenclatuur">Nomenclatuur:</label>
            <input type="number" id="nomenclatuur" name="nomenclatuur" required>
            <button type="submit">Add Examination</button>
        </form>

        <h2>Existing Examinations</h2>
        <table>
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Description</th>
                    <th>Tax Patient</th>
                    <th>Tax Riziv</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody>
                <?php foreach ($examinations as $examination): ?>
                    <tr>
                        <td><?php echo htmlspecialchars($examination->getId()); ?></td>
                        <td><?php echo htmlspecialchars($examination->getDescription()); ?></td>
                        <td><?php echo htmlspecialchars($examination->getTaxPatient()); ?></td>
                        <td><?php echo htmlspecialchars($examination->getTaxRiziv()); ?></td>
                        <td>
                            <form action="index.php?action=updateExamination" method="post" style="display:inline;">
                                <input type="hidden" name="id" value="<?php echo htmlspecialchars($examination->getId()); ?>">
                                <textarea name="description" required><?php echo htmlspecialchars($examination->getDescription()); ?></textarea>
                                <input type="hidden" name="price" value="<?php echo htmlspecialchars($examination->getPrice()); ?>">
                                <input type="number" name="taxpatient" step="0.01" value="<?php echo htmlspecialchars($examination->getTaxPatient()); ?>" required>
                                <input type="number" name="taxriziv" step="0.01" value="<?php echo htmlspecialchars($examination->getTaxRiziv()); ?>" required>
                                <input type="number" name="nomenclatuur" value="<?php echo htmlspecialchars($examination->getNomenclature()); ?>" hidden>
                                <button type="submit">Update</button>
                            </form>
                            
                        </td>
                    </tr>
                <?php endforeach; ?>
            </tbody>
        </table>
    </div>
    </main>
</body>
</html>
