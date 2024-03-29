<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
  <title>Flip Card JSP</title>
  <style>
    @import url("https://cdn.jsdelivr.net/gh/orioncactus/pretendard/dist/web/static/pretendard.css");

    * {
      margin: 0;
      padding: 0;
      list-style: none;
      box-sizing: border-box;  
      font-family: Pretendard;
    }

    .flip { 
      width: 200px;
      height: 250px;
      position: relative; 
      perspective: 1100px;
      margin: 2rem;
    }

    .card {
      width: 100%; 
      height: 100%; 
      position: relative;
      transition: .4s;
      transform-style: preserve-3d;
    } 

    .front, .back {
      position: absolute;
      width: 100%; 
      height: 100%;
      backface-visibility: hidden;
      display: flex;
      justify-content: center;
      align-items: center;
      color: #fff;
    }

    .front {
      background: tomato; 
    }

    .back { 
      background: royalblue; 
      transform: rotateY(180deg);
    }

    .flip:hover .card {
      transform: rotateY(180deg);
    }
  </style>
</head>
<body>
  <div class="flip">  
    <div class="card">
      <!-- 앞면 -->
      <div class="front">
        <h1>앞면</h1>
      </div>
      <!-- 뒷면 -->
      <div class="back">
        <h1>뒷면</h1>
      </div>
    </div>
  </div>
</body>
</html>