<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <meta charset="UTF-8">
        <title>Team S Table</title>
        <link rel="stylesheet" type="text/css" href="main.css">
    </head>
    <body>
        <main>
            <div id="formWrap">
                <h1>BranWillTy Profile Page</h1>
                <div id="profileImg">
                    <p><img src="<?php echo htmlspecialchars($users->getImage()); ?>" width="200" height="200" class="center"></p>
                </div>
                <h3><?php echo htmlspecialchars($users->getUName()); ?></h3>
                <?php if (isset($_SESSION['currentUser'])): if ($_SESSION['currentUser']->getID() !== $users->getID()) : ?>
                        <h4>Leave a comment!</h4>
                        <form action="index.php" method="post">
                            <input type="hidden" name="action" value="submitComment">
                            <input type="hidden" name="id" value="<?php echo htmlspecialchars($users->getID()); ?>">
                            <input type="textarea" name="comment" value="<?php echo htmlspecialchars($comment); ?>">
                            <div id="buttons">
                                <label>&nbsp</label>
                                <input type="submit" value="Submit"><br>
                            </div>      
                        </form>
                    <?php endif;
                endif; ?>

                <table>
                    <tr>
                        <th> Comments</th>
                    </tr>
<?php foreach ($comments as $single) : ?>
                        <tr>
                            <td><?php echo htmlspecialchars($single->getCommenterName() . ' said ' . $single->getComment() . ' at ' . $single->getCommentTime()); ?></td>
                        </tr>
<?php endforeach; ?>
                </table>
                <form action="index.php" method="post">
                    <input type="hidden" name="action" value="registration">
                    <label>&nbsp;</label>
                    <input type="submit" value="Back to Registration"><br>
                </form>
                <form action="index.php" method="post">
                    <input type="hidden" name="action" value="displayAllUsers">
                    <label>&nbsp;</label>
                    <input type="submit" value="Display All Users"><br>
                </form>
                <form action="index.php" method="post">
                    <input type="hidden" name="action" value="logout">
                    <label>&nbsp;</label>
                    <input type="submit" value="Logout"><br>
                </form>
            </div>
        </main>
        <?php
        // put your code here
        ?>
    </body>
</html>
