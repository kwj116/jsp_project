<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8" />
  <title>Modal</title>
  <style>
    .modal {
      position: fixed;
      top: 0;
      left: 0;
      width: 100%;
      height: 100%;
      display: none;
      background-color: rgba(0, 0, 0, 0.4);
    }

    .modal.show {
      display: flex;
      justify-content: center;
      align-items: center;
    }

    .modal_body {
      width: 400px;
      height: 600px;
      padding: 40px;
      text-align: center;
      background-color: rgb(255, 255, 255);
      border-radius: 10px;
      box-shadow: 0 2px 3px 0 rgba(34, 36, 38, 0.15);
    }

    .btn-close-popup {
      top: 10px;
      right: 10px;
      cursor: pointer;
    }
  </style>
</head>
<body>
  <div class="modal show">
    <div class="modal_body">
      Modal<br>
      <button class="btn-close-popup">X</button>
    </div>
  </div>

  <button class="btn-open-popup">Modal 띄우기</button>

  <div>
    <div>
      Lorem ipsum dolor sit amet, consectetur adipisicing elit. Amet beatae consequuntur culpa delectus, doloremque earum error illum ipsum modi, nulla numquam obcaecati odio placeat reiciendis repellat sapiente sit velit voluptatibus!
    </div>
  </div>

  <script>
    const body = document.querySelector('body');
    const modal = document.querySelector('.modal');
    const btnOpenPopup = document.querySelector('.btn-open-popup');
    const btnClosePopup = document.querySelector('.btn-close-popup');

    btnOpenPopup.addEventListener('click', () => {
      modal.classList.add('show');
      body.style.overflow = 'hidden';
    });

    btnClosePopup.addEventListener('click', () => {
      modal.classList.remove('show');
      body.style.overflow = 'visible';
    });

    modal.addEventListener('click', (event) => {
      if (event.target === modal) {
        modal.classList.remove('show');
        body.style.overflow = 'auto';
      }
    });
  </script>
</body>
</html>
