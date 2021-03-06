<%--
  Created by IntelliJ IDEA.
  User: Nazar
  Date: 09.06.2017
  Time: 1:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<link rel="stylesheet" href="/css/author/author.css">
<link rel="stylesheet" type="text/css" href="/bootstrap/css/bootstrap.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.12.1/css/bootstrap-select.css" />
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.12.1/js/bootstrap-select.js"></script>
<script type="text/javascript" src="/jQuery/jQuery3.1.1.js"></script>
<div class="author-form">
    <form action="/addauthor?${_csrf.parameterName}=${_csrf.token}" id="saveAuthorForm" method="post" enctype="multipart/form-data">
        <h1>Add author</h1>
        <br>
        <p style="color: red; font-size: 16px;" id="error"></p>
        <div class="form-group size">
            <input type="text" class="form-control" id="authorName" name="name" placeholder="Author name..." oninput="checkField('#authorName')">
        </div>
        <div class="form-group size">
            <input type="text" class="form-control" id="authorLastName" name="lastName" placeholder="Author last name..." oninput="checkField('#authorLastName')">
        </div>
        <div class="form-group size">
            <textarea name="biography" class="form-control" id="authorBiography" style="resize: none;" cols="30" rows="10" placeholder="Biography..." oninput="checkField('#authorBiography')"></textarea>
        </div>
        <br>
        <div class="form-group size">
            <label for="authorDateOfBirth">Date of birth: </label>
            <input type="date" class="form-control" id="authorDateOfBirth" name="dateOfBirth" onclick="inputCheckClick('#authorDateOfBirth')">
        </div>
        <br>
        <div class="form-group size" id="selects">
            <label for="countries">Country: </label>
            <select name="countryId" id="countries" class="form-control" data-live-search="true" onchange="checkField('#countries')">

            </select>
            <br><br>
            <label for="cities">City: </label>
            <select name="cityId" id="cities" class="form-control" data-live-search="true" onchange="checkField('#cities')">

            </select>
        </div>
        <div class="form-group size">
            <label for="image">Image: </label>
            <a id="uploadFile" class="btn btn-primary btn-md">Upload File</a>
            <p id="file-text" style="color: red; font-weight: bold;"></p>
        </div>
        <br>
        <button class="btn btn-default btn-md">Add author</button>
        <input type="file" class="form-control" style="visibility: hidden;" name="image" id="image" accept="image/*" />
    </form>
    <input type="hidden" name="csrf_name"
           value="${_csrf.parameterName}"/>
    <input type="hidden" name="csrf_value"
           value="${_csrf.token}"/>
</div>
<script src="/js/authorSave.js"></script>