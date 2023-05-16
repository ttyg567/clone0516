<%--@@include('header.htm')--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<!--kakao -->
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="//dapi.kakao.com/v2/maps/sdk.js?appkey=0f0752ec20b8a0352c5794754058b576"></script>
<!--js파일 외부-->
<script src="/js/register.js"></script>
<script>
    $(function () {
        register_form.init();
    });
</script>

<div class="container">
  <div class="row">
    <div class="col-sm-6 col-sm-offset-3">
      <form id = "register_form" class="form-horizontal">
        <fieldset>
          <legend>회원가입</legend>
            <div class="form-group">
                <label for="user_id" class="col-lg-2 control-label">아이디</label>
                <div class="col-lg-8">
                    <input type="text" class="form-control" id="user_id" name="user_id" placeholder="아이디를 입력하세요." required>
                </div>
                <div class="col-lg-2">
                    <button onclick="checkUserId()" >중복체크</button>
                </div>
                <div class="col-lg-10 col-lg-offset-2">
                    <div id="result"></div>
                    <span id="user_id_error" class="error"></span>
                </div>
            </div>
          <div class="form-group">
            <label for="user_pwd" class="col-lg-2 control-label">비밀번호</label>
            <div class="col-lg-10">
              <input type="password" class="form-control" id="user_pwd" name="user_pwd" placeholder="비밀번호를 입력하세요." required>
            </div>
          </div>
          <div class="form-group">
            <label for="user_name" class="col-lg-2 control-label">이름</label>
            <div class="col-lg-10">
              <input type="text" class="form-control" id="user_name" name="user_name" placeholder="이름을 입력하세요." required>
            </div>
          </div>
          <div class="form-group">
            <label for="user_contact" class="col-lg-2 control-label">전화번호</label>
            <div class="col-lg-10">
              <input type="text" class="form-control" id="user_contact" name="user_contact" placeholder="전화번호를 입력하세요." required>

            </div>

          </div>
          <div class="form-group">
            <label for="user_address" class="col-lg-2 control-label">주소</label>
            <div class="col-lg-10">
<%--              <input type="text" class="form-control" id="user_address" name="user_address" placeholder="주소를 입력하세요." required>--%>
                  <input type="text" id="user_address" name="user_address"  placeholder="주소">
                  <input type="button" onclick="sample5_execDaumPostcode()" value="주소 검색"><br>
                  <div id="map" style="width:300px;height:300px;margin-top:10px;display:none"></div>
            </div>
          </div>
          <div class="form-group">
            <label for="user_birthday" class="col-lg-2 control-label">생년월일</label>
            <div class="col-lg-10">
              <input type="date" id="user_birthday" name="user_birthday" name="userBirth"/>
            </div>
          </div>
          <div class="form-group">
            <label for="user_gender" class="col-lg-2 control-label">성별</label>
            <div class="col-lg-10">
              <select class="form-control" id="user_gender" name="user_gender" required>
                <option value="" disabled selected>성별을 선택하세요.</option>
                <option value="m">남성</option>
                <option value="f">여성</option>
              </select>
            </div>
          </div>
          <div class="form-group">
            <div class="col-lg-10 col-lg-offset-2">
              <button type="button" id="register_btn" class="btn btn-primary">회원가입</button>
            </div>
          </div>
        </fieldset>
      </form>
    </div>
  </div>

<style>
    button {
        background-color: #79c5b5; /* 티파니앤코 민트색 */
        color: #fff;
        border: none; /* 테두리 제거 */
        font-size: 6px;
        border-radius: 5px; /* 버튼 라운드 처리 */
        height: 40px;
        width: 70px;
        cursor: pointer;
    }


</style>


