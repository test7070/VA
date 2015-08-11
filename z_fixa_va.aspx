<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" dir="ltr" >
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title></title>
		<script src="../script/jquery.min.js" type="text/javascript"></script>
		<script src='../script/qj2.js' type="text/javascript"></script>
		<script src='qset.js' type="text/javascript"></script>
		<script src='../script/qj_mess.js' type="text/javascript"></script>
		<script src="../script/qbox.js" type="text/javascript"></script>
		<script src='../script/mask.js' type="text/javascript"></script>
		<link href="../qbox.css" rel="stylesheet" type="text/css" />
		<link href="css/jquery/themes/redmond/jquery.ui.all.css" rel="stylesheet" type="text/css" />
		<script src="css/jquery/ui/jquery.ui.core.js"></script>
		<script src="css/jquery/ui/jquery.ui.widget.js"></script>
		<script src="css/jquery/ui/jquery.ui.datepicker_tw.js"></script>
		<script type="text/javascript">
			aPop = new Array(['txtCarno', 'lblCarno', 'car2', 'a.noa,driverno,driver', 'txtCarno', 'car2_b.aspx']
			,['txtCarplateno', 'lblCarplate', 'carplate', 'noa,carplate,driver', 'txtCarplateno', 'carplate_b.aspx']
			,['txtXproductno', 'lblXproductno', 'fixucc', 'noa,namea', 'txtXproductno', 'fixucc_b.aspx']);
			$(document).ready(function() {
				_q_boxClose();
				q_getId();
				q_gf('', 'z_fixa_va');
			});  
            function q_gfPost() {
                $('#q_report').q_report({
                    fileName : 'z_fixa_va',
                    options : [{/* [1]*/
                        type : '0',
                        name : 'accy',
                        value : q_getId()[4]
                    }, {/* [2]*/
                        type : '0',
                        name : 'xname',
                        value : r_name 
                    }, {/*1-1[3][4]*/
                        type : '1',
                        name : 'mon'
                    }, {/*1-2 [5][6]*/
                        type : '1',
                        name : 'fixadate'
                    }, {/*1-3 [7]*/
                        type : '6',
                        name : 'carno'
                    }, {/*1-4 [8]*/
                        type : '6',
                        name : 'carplateno'
                    },{/*2-1 [9][10]*/
                        type : '1',
                        name : 'indate'
                    },{/*2-2 [11][12]*/
                        type : '1',
                        name : 'outdate'
                    },{/*2-3 [13]*/
                        type : '6',
                        name : 'deadline'
                    }, {/*2-4 [14]*/
                        type : '8',
                        name : 'xoption01',
                        value : q_getMsg('toption01').split('&')
                    },{/*3-1 [15][16]*/
                        type : '1',
                        name : 'datea'
                    }, {/*3-2 [17]*/
                        type : '6',
                        name : 'xmon'
                    }]
                });
                q_popAssign();
				q_getFormat();
				q_langShow();

				$('#txtXmon').mask('999/99');
				
				$('#txtMon1').mask('999/99');
				$('#txtMon2').mask('999/99');
			
				$('#txtFixadate1').mask('999/99/99');
                $('#txtFixadate1').datepicker();
                $('#txtFixadate2').mask('999/99/99');
                $('#txtFixadate2').datepicker();
                               
                $('#txtIndate1').mask('999/99/99');
                $('#txtIndate1').datepicker();
                $('#txtIndate2').mask('999/99/99');
                $('#txtIndate2').datepicker();
                
				$('#txtOutdate1').mask('999/99/99');
                $('#txtOutdate1').datepicker();
                $('#txtOutdate2').mask('999/99/99');
                $('#txtOutdate2').datepicker();
                
                $('#txtDeadline').mask('999/99/99');
                $('#txtDeadline').datepicker();
				
				$('#txtDatea1').mask('999/99/99');
                $('#txtDatea1').datepicker();
                $('#txtDatea2').mask('999/99/99');
                $('#txtDatea2').datepicker();
                
				var t_date, t_year, t_month, t_day;
				t_date = new Date();
				t_date.setDate(1);
				t_year = t_date.getUTCFullYear() - 1911;
				t_year = t_year > 99 ? t_year + '' : '0' + t_year;
				t_month = t_date.getUTCMonth() + 1;
				t_month = t_month > 9 ? t_month + '' : '0' + t_month;
				t_day = t_date.getUTCDate();
				t_day = t_day > 9 ? t_day + '' : '0' + t_day;
				$('#txtMon1').val(t_year + '/' + t_month);

				t_date = new Date();
				t_date.setDate(35);
				t_date.setDate(0);
				t_year = t_date.getUTCFullYear() - 1911;
				t_year = t_year > 99 ? t_year + '' : '0' + t_year;
				t_month = t_date.getUTCMonth() + 1;
				t_month = t_month > 9 ? t_month + '' : '0' + t_month;
				t_day = t_date.getUTCDate();
				t_day = t_day > 9 ? t_day + '' : '0' + t_day;
				$('#txtMon2').val(t_year + '/' + t_month);
				
				t_date = new Date();
				t_year = t_date.getUTCFullYear() - 1911;
				t_year = t_year > 99 ? t_year + '' : '0' + t_year;
				t_month = t_date.getUTCMonth() + 1;
				t_month = t_month > 9 ? t_month + '' : '0' + t_month;
				t_day = t_date.getUTCDate();
				t_day = t_day > 9 ? t_day + '' : '0' + t_day;
				$('#txtDeadline').val(t_year + '/' + t_month + '/' + t_day);
				
			}

			function q_boxClose(s2) {
			}

			function q_gtPost(s2) {
			}
		</script>
	</head>
	<body ondragstart="return false" draggable="false"
	ondragenter="event.dataTransfer.dropEffect='none'; event.stopPropagation(); event.preventDefault();"
	ondragover="event.dataTransfer.dropEffect='none';event.stopPropagation(); event.preventDefault();"
	ondrop="event.dataTransfer.dropEffect='none';event.stopPropagation(); event.preventDefault();"
	>
		<div id="q_menu"></div>
		<div style="position: absolute;top: 10px;left:50px;z-index: 1;width:2000px;">
			<div id="container">
				<div id="q_report"></div>
			</div>
			<div class="prt" style="margin-left: -40px;">
                <!--#include file="../inc/print_ctrl.inc"-->
            </div>
		</div>
	</body>
</html>

