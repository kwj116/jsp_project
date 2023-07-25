<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
body {
  font-family: "Helvetica Neue", Arial, sans-serif;
  background-color: #f7f7f7;
  margin: 0;
  padding: 0;
}

.table-container {
  max-width: 800px;
  margin: 30px auto;
}

.advanced-table {
  width: 100%;
  border-collapse: collapse;
  background-color: #fff;
  border-radius: 10px;
  box-shadow: 0 5px 15px rgba(0, 0, 0, 0.1);
}

thead th {
  background-color: #4682b4;
  color: #fff;
  text-align: left;
  padding: 12px;
  border-bottom: 2px solid #305f80;
}

tbody td {
  padding: 12px;
  border-bottom: 1px solid #ccc;
  color: #333;
}

tbody tr:nth-child(even) {
  background-color: #f2f2f2;
}

tbody tr:hover {
  background-color: #e0e0e0;
}

th, td {
  min-width: 150px;
}

/* 전시회 느낌 추가 */
.advanced-table {
  border: 2px solid #4682b4;
}

thead th {
  font-size: 18px;
}

tbody td {
  font-size: 16px;
}

/* 애니메이션 효과 */
@keyframes table-fade-in {
  from {
    opacity: 0;
  }
  to {
    opacity: 1;
  }
}

.table-container {
  animation: table-fade-in 1s ease-in-out;
}

/* 그라데이션 효과 */
.table-container::before {
  content: "";
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  background: linear-gradient(45deg, rgba(70, 130, 180, 0.1), rgba(70, 130, 180, 0.3));
  pointer-events: none;
  z-index: -1;
}

</style>
<body>
  <div class="table-container">
    <table class="advanced-table">
      <thead>
        <tr>
          <th>이름</th>
          <th>나이</th>
          <th>이메일</th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <td>홍길동</td>
          <td>30</td>
          <td>hong@example.com</td>
        </tr>
        <tr>
          <td>김철수</td>
          <td>25</td>
          <td>kim@example.com</td>
        </tr>
        <tr>
          <td>박영희</td>
          <td>28</td>
          <td>park@example.com</td>
        </tr>
      </tbody>
    </table>
  </div>
</body>
</html>