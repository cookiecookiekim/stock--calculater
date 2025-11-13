<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
    <title>Stock Page</title>
</head>
<body>
    <h1>주식 코인 물타기 계산기</h1>
	
	<div>주식 및 코인 가상화폐의 추가 매수 후 평단을 미리 알 수 있는 평단가 계산기 입니다.
		모바일에서도 최적화되어 있습니다. 수익률 계산기 및 퍼펙트 계산기도 유용합니다.
		
		키보드 방향키로 값 조정이 가능합니다. ESC를 누르면 값을 지웁니다.
	</div>
	
	<div>
		<input type=radio name="mode" value="basic" /><span>기본</span>
		<input type=radio name="mode" value="decimal" /><span>소수점</span>
	</div>
	<!--<h2>사용자 이름 : ${userName}</h2>-->
	
	<div>
		<span>현재보유 (이미 추가매수를 한 경우는 증권사 수수료로 인해 매입금액이 다소 다를 수 있습니다.)</span>
		<div>
			<input id="avgPrice" placeholder="보유평단" /> <span>원</span>			
			<input id="quantity" placeholder="보유수량" /> <span>수량</span>
			<input id="total" placeholder="매입금액" readonly/> <span>원</span>
		</div>
	</div>

	<div>
		<span>추가매수 (평단과 금액 입력으로 수량 계산에도 용이합니다.)</span>
		<div>
			<input placeholder="평단" /> <span>원</span>			
			<input placeholder="수량" /> <span>수량</span>
			<input placeholder="금액" /> <span>원</span>
		</div>
	</div>	
	
	<div>
		<span>최종보유</span>
		<div>
			<input placeholder="최종평단" /> <span>원</span>			
			<input placeholder="최종수량" /> <span>수량</span>
			<input placeholder="최종금액" /> <span>원</span>
		</div>
	</div>
	
	<div>
	<span>회차</span><span>평단</span><span>수량</span><span>금액</span> <span>초기화</span>
	</div>
</body>

<script>
	const avgPriceInput = document.getElementById("avgPrice");
	const quantityInput = document.getElementById("quantity");
	const totalInput = document.getElementById("total");
	
	function calculateTotal(){
		const avgPrice = parseFloat(avgPriceInput.value) || 0;
		const quantity = parseFloat(quantityInput.value) || 0;
		const total = avgPrice * quantity;
		
		totalInput.value = total ? total.toLocaleString() : '';
	}
	
	avgPriceInput.addEventListener("input", calculateTotal);
	quantityInput.addEventListener("input", calculateTotal);
	
</script>
</html>
