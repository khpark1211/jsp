var data = [
	{"name":"홍대센터", "tel":"02-1111-1111","addr":"서울 마포구"},
	{"name":"종로센터", "tel":"02-9999-1111","addr":"서울 종로구"},
	{"name":"강남센터", "tel":"02-4444-1111","addr":"서울 서초구"},
	{"name":"수원센터", "tel":"031-5555-1111","addr":"수원시 남문"}
];

var table = "<table>";
table += "<thead><tr><th>지역</th><th>전화</th><th>주소</th></thead>";
table +="<tbody>";
	$.each(data,function(){
		table += "<tr>";
		table += "<td>"+this["name"]+"</td>";
		table += "<td>"+this["tel"]+"</td>";
		table += "<td>"+this["addr"]+"</td>";
		table += "</tr>";
	});
table +="</tbody></table>";
$("#out").append(table);