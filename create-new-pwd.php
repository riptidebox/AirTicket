<?php include_once 'helpers/helper.php'; ?>
<?php subview('header.php'); ?>

<link rel="stylesheet" href="assets/css/login.css">
<style>
@font-face {
  font-family: 'product sans';
  src: url('assets/css/Product Sans Bold.ttf');
}
h1{
   font-family :'product sans' !important;
	font-size:48px !important;
	margin-top:20px;
	text-align:center;
}
body {
    background: -webkit-linear-gradient(left, #3931af, #00c6ff);
}
.login-form {
    box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);  
    border-radius: 0px;
}
</style>
<?php
if(isset($_GET['err']) || isset($_GET['pwd'])) {
    if($_GET['err'] === 'pwdnotmatch') {
        echo '<script>alert("Пароли не совпадают");</script>';
    } else if($_GET['err'] === 'sqlerr') {
        echo '<script>alert("Произошла ошибка");</script>';        
    } else if($_GET['pwd'] === 'updated') {
        echo '<script>alert("Ваш пароль был изменен");</script>';        
    }                      
    exit();
} 
?>
<div class="flex-container">    
<div class="login-form mt-4" style="height: 300px;">
    <h1 class="text-primary mb-3 text-center">Reset Password</h1>
    <?php 
    $selector = $_GET['selector'];
    $validator = $_GET['validator'];    
    if(empty($selector) || empty($validator)){
        // echo $_GET;
        echo '<script>alert("Не удалось подтвердить ваш запрос")</script>'; 
    } else {
        if(ctype_xdigit($selector) !== false && ctype_xdigit($validator) !== false){
            ?>
            <form method="POST" action="includes/reset-password.inc.php">
                <input type="hidden" name="selector" value="<?php echo $selector ?>">
                <input type="hidden" name="validator" value="<?php echo $validator ?>">
                <div class="flex-container">             
                    <div>
                        <i class="fa fa-lock text-primary"></i>
                    </div>
                    <div>
                        <input type="password" name="password" class="form-input" 
                            placeholder="Введите пароль" 
                            required pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" 
                            title="Должно содержать по крайней мере одну цифру и по одной заглавной и строчной букве,
а также не менее 8 или более символов">                       
                    </div>
                </div>
                <div class="flex-container">
                    <div>
                        <i class="fa fa-lock text-primary"></i>
                    </div>
                    <div>
                        <input type="password" name="password_repeat" class="form-input" 
                            placeholder="Повторите пароль" required>
                    </div>
                </div>                
                <div class="submit">
                <button name="new-pwd-submit" type="submit" class="button">
                    Отправить</button>                                       
                </div>
            </form> 
            <?php
            }            
    }
    ?>                             
</div>
</div>
<?php subview('footer.php'); ?> 
