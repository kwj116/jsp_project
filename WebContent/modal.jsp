<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
	<div id="myModal" class="modal">
		<div class="modal-content">
			<form action="SurveyServlet" method="get">
				<span class="close">&times;</span>
	            <h2>설문에 참여해주세요!</h2>
	            <p>저희 갤러리를 알게 된 경로가 무엇인가요?</p><br>
	           	<p>인스타그램 <input type="checkbox" name="insta"></p><hr>
	           	<p>페이스북 <input type="checkbox" name="facebook"></p><hr>
	           	<p>지인 <input type="checkbox" name="friends"></p><hr>
	           	<p>기타 <input type="checkbox" name="other"></p>
	           	<p><input type="submit" value="참여"></p>
           	</form>
    	</div>
    </div>
<!-- modal layout -->
<script>
    const form = document.querySelector('form');

    form.addEventListener('submit', function(e) {
        const checkboxes = form.querySelectorAll('input[type=checkbox]');
        let isChecked = false;

        checkboxes.forEach(function(checkbox) {
            if (checkbox.checked) {
                isChecked = true;
            }
        });

        if (!isChecked) {
            e.preventDefault(); 
            alert('적어도 하나의 옵션을 선택해주세요.');
            return;
        }
        alert("설문에 참여해주셔서 감사합니다!")
    });
</script>
