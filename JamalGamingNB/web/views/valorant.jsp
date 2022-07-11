<%-- 
    Document   : valorant
    Created on : Jul 4, 2022, 6:42:07 PM
    Author     : Wikon3
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Valorant</title>
        <jsp:include page='layouts/headgame.jsp'>
            <jsp:param name="title" value="Valorant" />
        </jsp:include>
    </head>

<body>
    <jsp:include page='layouts/navbarvalorant.jsp'></jsp:include>

    <div class="card-image">
        <div class="row">
            <img src="public/assets/images/HD1.jpeg" alt="">
        </div>

    </div>
    <div class="row">
        <div class="col-12">
            <h1>Valorant</h1>
            <p>Top up VALORANT Points hanya dalam hitungan detik!</p>
            <p>Cukup masukan Username & ID Riot Anda, pilih jumlah Points yang Anda inginkan, selesaikan pembayaran, dan Poin akan secara langsung ditambahkan ke akun VALORANT Anda.</p>
            <p>Unduh dan mainkan VALORANT sekarang!</p>
        </div>
    </div>
    <form method="POST" action="valorant">
    <div id="data1" class="row">
        <div class="col-12 background-data">
            <h1>Masukan Data Anda</h1>
            <input type="text" value="" name="nama" class="input-submit" id="nama" placeholder="Input your Username" onkeydown="return /[a-z]/i.test(event.key)" required>
            <input type="number" value="" name="uid" class="input-submit" id="uid" placeholder="Input your ID" required>
        </div>
    </div>

    <div class="col-12" id="data2">
        <div class="row background-data">
            <h2>Pilihan Anda</h2>
            <div class="col-12 ">
                <div class="row">
                    <div class="col-3 border-pilihan" id="vpx">
                        <input type="radio" name="Product" value="100 Valorant Points" id="x" onclick="clkvp()" required>
                        <label for="x">
                            <img src="public/assets/images/VP3.png">
                            <p>100VP 10k</p>
                        </label>     
                    </div>
                    <div class="col-3 border-pilihan" id="vps" >
                        <input type="radio" name="Product" value="250 Valorant Points" id="x" onclick="clkvp1()">
                        <label for="x">
                            <img src="public/assets/images/VP3.png">
                            <p>250VP 25k</p>
                        </label> 
                    </div>
                    <div class="col-3 border-pilihan" id="vpy" >
                         <input type="radio" name="Product" value="500 Valorant Points" id="x" onclick="clkvp2()">
                        <label for="x">
                            <img src="public/assets/images/VP3.png">
                            <p>500VP 50k</p>
                        </label> 
                    </div>
                    <div class="col-3 border-pilihan" id="vpz" >
                         <input type="radio" name="Product" value="780 Valorant Points" id="x" onclick="clkvp3()">
                        <label for="x">
                            <img src="public/assets/images/VP3.png">
                            <p>780VP 78k</p>
                        </label> 
                    </div>
                </div>
            </div>
            <div class="col-12">
                <div class="row">
                    <div class="col-3 border-pilihan" id="vpx1" >
                        <input type="radio" name="Product" value="1500 Valorant Points" id="x" onclick="clkvp4()">
                        <label for="x">
                            <img src="public/assets/images/VP3.png">
                            <p>1500VP 150K</p>
                        </label> 
                    </div>
                    <div class="col-3 border-pilihan" id="vps1" >
                        <input type="radio" name="Product" value="2100 Valorant Points" id="x" onclick="clkvp5()">
                        <label for="x">
                            <img src="public/assets/images/VP3.png">
                            <p>2100VP 210K</p>
                        </label> 
                    </div>
                    <div class="col-3 border-pilihan" id="vpy1" >
                        <input type="radio" name="Product" value="2700 Valorant Points" id="x" onclick="clkvp6()">
                        <label for="x">
                            <img src="public/assets/images/VP3.png">
                            <p>2700VP 270K</p>
                        </label> 
                    </div>
                    <div class="col-3 border-pilihan" id="vpz1" >
                        <input type="radio" name="Product" value="3500 Valorant Points" id="x" onclick="clkvp7()">
                        <label for="x">
                            <img src="public/assets/images/VP3.png">
                            <p>3500VP 350K</p>
                        </label> 
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="col-12" id="data3">
        <div class="row background-data">
            <h2>Pembayaran</h2>
            <div class="col-12">
                <div class="col-6">
                    <div class="row wkwk" id="bcaa" >
                        <input type="radio" name="pay" value="bca" id="b" onclick="bca()" required>
                        <label for="b">
                            <img src="public/assets/images/BCA3.png">
                        </label>
                    </div>
                </div>
                <div class="col-6">
                    <div class="row wkwk" id="gopayy" >
                        <input type="radio" name="pay" value="gopay" id="b" onclick="gopay()">
                        <label for="b">
                            <img src="public/assets/images/Gopay1.png">
                        </label>
                    </div>
                </div>
                <button type="submit" class="input-submit" onclick="sbmt()">submit</button>
            </div>
        </div>
    </div>    
    </form>
    
    <jsp:include page='layouts/footer.jsp'></jsp:include>

    <script src="public/assets/backend/myscripts.js"></script>
    

</body>
</html>
