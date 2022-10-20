<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="ko">

<head>
    <!-- meta 문 -->
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- css 선언 -->
    <link rel="stylesheet" href="css/test.css">
    <!-- 자바스크립트 선언 -->
    <script src="js/vue.js"></script>
    <script src="js/jquery.js"></script>
    <!-- 타이틀 -->
    <title>복덕빵 - 월세 계산기</title>
    <!-- 아이콘 선언 -->
    <link rel="shortcut icon" href="../images/favicon.png">
    <style>
        html,
        body {
            width: 400px;
            height: 400px;
        }

        h3 {
            margin-top: 5px;
            margin-bottom: 5px;
        }
    </style>
</head>

<body>

    <center>
        <h3>월세 계산기</h3>
        <hr>
        <!-- <br> -->
        <div id="app">
            <table class="board_detail" border="1">
                <tr>
                    <!-- 보증금 -->
                    <th colspan="1">보증금</th>
                    <td colspan="3" style="text-align: center; width: 170px;">&nbsp;&nbsp;
                        <input type="number" style="text-align: center; width: 200px;" name="Deposit" id="Deposit"
                            size="20xp" maxlength="7" value="0" v-model="won1">
                    </td>
                    <td style="text-align: center; font-weight: bold;"> &nbsp; 만원</td>
                </tr>
                <tr>
                    <!-- 월세 -->
                    <th colspan="1">월세</th>
                    <td colspan="3" style="text-align: center; width: 170px;">&nbsp;&nbsp;
                        <input type="number" style="text-align: center; width: 200px;" name="Amount" id="Amount"
                            size="15xp" maxlength="7" value="0" v-model="won2" />
                    </td>
                    <td style="text-align: center; font-weight: bold;"> &nbsp; 만원</td>
                </tr>
                <tr>
                    <td colspan="6" style="text-align: center; font-weight: bold;">계약 기간</td>
                </tr>
                <tr style="text-align: center;">
                    <div>
                        <td style="width: 80px;"><input type="radio" name="Period" id="Period" v-model="month"
                                value="24" checked="checked">
                            <label>2년</label>
                        </td>
                        <td style="width: 80px;"><input type="radio" name="Period" id="Period" v-model="month"
                                value="36">
                            <label>3년</label>
                        </td>
                        <td style="width: 80px;"><input type="radio" name="Period" id="Period" v-model="month"
                                value="48">
                            <label>4년</label>
                        </td>
                        <td style="width: 80px;"><input type="radio" name="Period" id="Period" v-model="month"
                                value="60">
                            <label>5년</label>
                        </td>
                        <td style="width: 80px;"><input type="radio" name="Period" id="Period" v-model="month"
                                value="120">
                            <label>10년</label>
                        </td>
                    </div>
                </tr>
            </table>
            <hr>
            <div>
                <input type="button" @click="sum" style="font-weight: bold;" value="계산하기" />
            </div>
            <hr>
            <!-- <br> -->
            <h3>합계</h3>
            <hr>
            <table border="1">
                <tr style="text-align: center; box-sizing: border-box;">
                    <td colspan="3"><label style="font-weight: bold;">{{ year }}&nbsp;</label></td>
                </tr>
                <tr>
                    <td>보증금</td>
                    <td style="width: 100px; text-align: right;">
                        <label>{{ result1 }}</label>
                    </td>
                    <td> &nbsp; 만원</td>
                </tr>
                <tr>
                    <td>월세</td>
                    <td style="width: 100px; text-align: right;">
                        <label>{{ result2 }}</label>
                    </td>
                    <td> &nbsp; 만원</td>
                </tr>
            </table>
            <hr>
        </div>
    </center>
    <div style="float: right;">
        <button onclick="javascript:window.close()" style="font-weight: bold;">창 닫기</button>
    </div>
</body>



<script>
    var app = new Vue({
        el: '#app',
        data: {
            won1: "", // 보증금
            won2: "", // 월세
            month: "", // 연도 > 개월값
            year: "", // 개월값 > 년으로 변환
            result1: "", // 보증금 합계
            result2: "", // 월세 합계
        },
        methods: {
            sum: function () {
                var t = this;

                if (t.won1 == 0) { // 보증금
                    alert("보증금을 입력해주시길 바랍니다.");
                } else {
                    t.result1 = t.won1 // 보증금                    
                } 
                
                if (t.won2 == 0) { // 월세
                    alert("월세를 입력해주시길 바랍니다.");
                } else {
                    t.result2 = t.won2 * t.month // 월세 계산
                }                 
                
                if (t.month == "") { // 개월
                    alert("계약기간을 체크해주시길 바랍니다.");
                } 
                
                if (t.year == "") { // 계약기간 > 연도 표기
                } else {
                    t.year = t.month / 12 + "년 계산금액"
                }

                // console.log(t.result1); // 보증금
                // console.log(t.result2); // 월세
            }


        }




    })
</script>

</html>