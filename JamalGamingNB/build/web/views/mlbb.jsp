<%-- 
    Document   : mlbb
    Created on : Jul 4, 2022, 7:36:31 PM
    Author     : Wikon3
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Mobile Legend</title>
        <jsp:include page='layouts/headgame.jsp'>
            <jsp:param name="title" value="Mobile Legend" />
        </jsp:include>
    </head>

<body>
    <jsp:include page='layouts/navbarmlbb.jsp'></jsp:include>

    <div class="card-image">
        <div class="row">
            <img src="public/assets/images/ml1.jpeg" alt="">
        </div>

    </div>
    <div class="row">
        <div class="col-12">
            <h1>Mobile Legend</h1>
            <p>Top up Diamond Mobile Legend hanya dalam hitungan detik!</p>
            <p>Cukup masukan Username & ID ML Anda, pilih jumlah Diamond yang Anda inginkan, selesaikan pembayaran, dan Diamond akan secara langsung ditambahkan ke akun ML Anda.</p>
            <p>Unduh dan mainkan MOBILE LEGEND sekarang!</p>
        </div>
    </div>
    <div id="data1" class="row">
        <div class="col-12 background-data">
            <h1>Masukan Data Anda</h1>
            <input type="text" value="" class="input-submit" id="nama" placeholder="Input your Username" onkeydown="return /[a-z]/i.test(event.key)">
            <input type="number" value="" class="input-submit" id="uid" placeholder="Input your ID">
        </div>
    </div>

    <div class="col-12" id="data2">
        <div class="row background-data">
            <h2>Pilihan Anda</h2>
            <div class="col-12 ">
                <div class="row">
                    <div class="col-3 border-pilihan" id="vpx" onclick="clkvp()">
                        <input type="image" src="public/assets/images/dl.png">
                        <p>100 Diamond</p>
                    </div>
                    <div class="col-3 border-pilihan" id="vps" onclick="clkvp1()">
                        <input type="image" src="public/assets/images/dl.png">
                        <p>250 Diamond</p>
                    </div>
                    <div class="col-3 border-pilihan" id="vpy" onclick="clkvp2()">
                        <input type="image" src="public/assets/images/dl.png">
                        <p>500 Diamond</p>
                    </div>
                    <div class="col-3 border-pilihan" id="vpz" onclick="clkvp3()">
                        <input type="image" src="public/assets/images/dl.png">
                        <p>800 Diamond</p>
                    </div>
                </div>
            </div>
            <div class="col-12">
                <div class="row">
                    <div class="col-3 border-pilihan" id="vpx1" onclick="clkvp4()">
                        <input type="image" src="public/assets/images/dl.png">
                        <p>1100 Diamond</p>
                    </div>
                    <div class="col-3 border-pilihan" id="vps1" onclick="clkvp5()">
                        <input type="image" src="public/assets/images/dl.png">
                        <p>1900 Diamond</p>
                    </div>
                    <div class="col-3 border-pilihan" id="vpy1" onclick="clkvp6()">
                        <input type="image" src="public/assets/images/dl.png">
                        <p>2400 Diamond</p>
                    </div>
                    <div class="col-3 border-pilihan" id="vpz1" onclick="clkvp7()">
                        <input type="image" src="public/assets/images/dl.png">
                        <p>3000 Diamond</p>
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
                    <div class="row wkwk" id="bcaa" onclick="bca()">
                        <input type="image" src="public/assets/images/BCA3.png">
                    </div>
                </div>
                <div class="col-6">
                    <div class="row wkwk" id="gopayy" onclick="gopay()">
                        <input type="image" src="public/assets/images/Gopay1.png">
                    </div>
                </div>
                <button type="submit" class="input-submit" onclick="sbmt()">submit</button>
            </div>
        </div>
    </div>
    <jsp:include page='layouts/footer.jsp'></jsp:include>

    <script src="public/assets/backend/myscripts.js"></script>
   

</body>
</html>
