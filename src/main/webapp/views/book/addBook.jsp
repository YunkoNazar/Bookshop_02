<%--
  Created by IntelliJ IDEA.
  User: Study
  Date: 10.06.2017
  Time: 12:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<link rel="stylesheet" type="text/css" href="/bootstrap/css/bootstrap.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.12.1/css/bootstrap-select.css"/>
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.12.1/js/bootstrap-select.js"></script>
<script type="text/javascript" src="/jQuery/jQuery3.1.1.js"></script>
<link rel="stylesheet" href="/css/book/book.css">
<div class="book-form">
    <form action="/addbook?${_csrf.parameterName}=${_csrf.token}" method="post" enctype="multipart/form-data"
          id="saveBookForm">
        <h1 class="hClass">Add book</h1>
        <p style="color: red; font-size: 16px;" id="error"></p>
        <div class="form-group size">
            <input type="text" class="form-control" id="bookName" name="name" placeholder="Book name..."
                   oninput="checkField('#bookName')">
        </div>
        <div class="form-group size">
            <label for="genres">Genre: </label>
            <select name="genreId" id="genres" class="form-control"
                    onchange="checkField('#genres')">

            </select>
        </div>
        <div class="form-group size">
            <textarea name="description" class="form-control" id="bookDescription" style="resize: none;" cols="30"
                      rows="10" placeholder="Description..." oninput="checkField('#bookDescription')"></textarea>
        </div>
        <div class="form-group size">
            <label for="bookCountOfPages">Count of pages: </label>
            <input type="number" name="countOfPages" class="form-control" id="bookCountOfPages"
                   placeholder="Count of pages..." onkeypress="numberCheckField('#bookCountOFPages')">
        </div>
        <div class="form-group size">
            <label for="authors">Author: </label>
            <select name="authorId" id="authors" class="form-control"
                    onchange="checkField('#authors')">

            </select>
        </div>
        <div class="form-group size">
            <label for="bookDateOfPublication">Date of publication: </label>
            <input type="date" class="form-control" id="bookDateOfPublication" name="dateOfPublication"
                   onclick="inputCheckClick('#bookDateOfPublication')">
        </div>
        <div class="form-group size">
            <label for="publishers">Publisher: </label>
            <select name="publisherId" id="publishers" class="form-control"
                    onchange="checkField('#publishers')">

            </select>
        </div>

        <div class="form-group size">
            <label for="bookQuantity">Quantity: </label>
            <input type="number" name="quantity" class="form-control" id="bookQuantity"
                   placeholder="Quantity..." onkeypress="numberCheckField('#bookQuantity')">
        </div>
        <div class="form-group size">
            <label for="bookPrice">Price: </label>
            <input type="number" name="price" class="form-control" id="bookPrice"
                   placeholder="Price..." onkeypress="numberCheckField('#bookPrice')">
        </div>
        <div class="form-group size">
            <label for="image">Image: </label>
            <input type="file" class="form-control" name="image" id="image" accept="image/*"
                   onclick="inputCheckClick('#image')"/>
        </div>
        <br>
        <button class="btn btn-default btn-md">Add book</button>
    </form>
    <input type="hidden" name="csrf_name"
           value="${_csrf.parameterName}"/>
    <input type="hidden" name="csrf_value"
           value="${_csrf.token}"/>
</div>
<script src="/js/bookSave.js"></script>