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
            //********************************************
            if (location.href.indexOf('?') < 0) {
                location.href = location.href + "?;;;;" + ((new Date()).getUTCFullYear() - 1911);
            }
            var t_carkind = null;
            var t_carteam = null;
            var t_calctypes = null;
            aPop = new Array(['txtXcarno', 'lblXcarno', 'car2', 'a.noa,driverno,driver', 'txtXcarno', 'car2_b.aspx']
            , ['txtXaddr', 'lblXaddr', 'addr', 'noa,addr', 'txtXaddr', 'addr_b.aspx']
            , ['txtXtireno', '', 'view_tirestatus', 'noa','txtXtireno', 'tirestk_b.aspx']);
            $(document).ready(function() {
                _q_boxClose();
                q_getId();
                q_gf('', 'z_fixa_ds');
            });
            function q_gfPost() {
                $('#q_report').q_report({
                    fileName : 'z_fixa_ds',
                    options : [{/* [1]*/
                        type : '0',
                        name : 'accy',
                        value : q_getId()[4]
                    }, {/* [2]*/
                        type : '0',
                        name : 'xname',
                        value : r_name 
                    }, {/*1 [3][4]*/
                        type : '1',
                        name : 'date'
                    }, {/*2 [5][6]*/
                        type : '2',
                        name : 'tgg',
                        dbf : 'tgg',
                        index : 'noa,comp',
                        src : 'tgg_b.aspx'
                    }, {/*3 [7]*/
                        type : '6',
                        name : 'xcarno'
                    }, {/*4 [8]*/
                        type : '6',
                        name : 'xmoney'
                    }, {/*5 [9]*/
                        type : '8',
                        name : 'xoption01',
                        value : q_getMsg('toption01').split('&')
                    }, {/*6 [10]*/
                        type : '6',
                        name : 'xtireno'
                    }, {/*7 [11][12]*/
                        type : '2',
                        name : 'fixucc',
                        dbf : 'fixucc',
                        index : 'noa,namea',
                        src : 'fixucc_b.aspx'
                    }, {/*8 [13]*/
                        type : '6',
                        name : 'xproduct'
                    }, {/*2 [14][15]*/
                        type : '2',
                        name : 'driver',
                        dbf : 'driver',
                        index : 'noa,namea',
                        src : 'driver_b.aspx'
                    }]
                });
                q_popAssign();
                q_langShow();

                $('#txtDate1').mask('999/99/99');
                $('#txtDate1').datepicker();
                $('#txtDate2').mask('999/99/99');
                $('#txtDate2').datepicker();
                $('#chkXoption01').children('input').attr('checked', 'checked');
                
                $('#txtXmoney').css('text-align','right').keydown(function(e) {
                	//alert(e.which);
                	if(e.which==8 || e.which==9 || e.which==13 || e.which==37 || e.which==38 || e.which==39 || e.which==40 || e.which==46){
                		
                	}else if(e.which==229 ){
                		if($('#__divMsg').length==0){
                			$('body').append('<div id="__divMsg" style="position: absolute; z-index:998;width:150px;height:30px;background:rgb(200,200,200);color:red;"> <div>');
                		}else{
                			$('#__divMsg').show();
                		}
                		var pos = GetAbsPos(document.getElementById('txtXmoney'));
                		$('#__divMsg').css('top',pos.y+$(e.target).height()+5).css('left',pos.x).html('請關閉中文輸入法。');
                		e.preventDefault();
                	}else if(!((e.which>=48 && e.which<=57) || (e.which>=96 && e.which<=105) || e.which==110 || e.which==190 || e.which==16 || e.which==17 || e.which==18) || (e.which!=16 && e.shiftKey) || (e.which!=17 && e.ctrlKey) || (e.which!=18 && e.altKey)){                		
                		if($('#__divMsg').length==0){
                			$('body').append('<div id="__divMsg" style="position: absolute; z-index:998; width:150px;height:25px;background:rgb(200,200,200);color:red;"> <div>');
                		}else{
                			$('#__divMsg').show();
                		}
                		var pos = GetAbsPos(document.getElementById('txtXmoney'));
                		$('#__divMsg').css('top',pos.y+$(e.target).height()+5).css('left',pos.x).html('只能輸入數字。');
                		e.preventDefault();
                	}else{
                		$('#__divMsg').hide();
                	}
                });
            }

            function q_boxClose(t_name) {
            }
            function q_gtPost(s2) {
			}
			
			function GetAbsPos(o) {
			    var pos = {x:0, y:0};
			    while (o!=null)
			    {
				    pos.x += o.offsetLeft;
				    pos.y += o.offsetTop;
				    o = o.offsetParent; //若區塊外還有父元素，就繼續往外推
			    }
			    return pos;
			}
		</script>
	</head>
	<body ondragstart="return false" draggable="false"
	ondragenter="event.dataTransfer.dropEffect='none'; event.stopPropagation(); event.preventDefault();"
	ondragover="event.dataTransfer.dropEffect='none';event.stopPropagation(); event.preventDefault();"
	ondrop="event.dataTransfer.dropEffect='none';event.stopPropagation(); event.preventDefault();"
	>
		<div id="q_menu"> </div>
		<div style="position: absolute;top: 10px;left:50px;z-index: 1;width:2000px;">
			<div id="container">
				<div id="q_report"> </div>
			</div>
			<div class="prt" style="margin-left: -40px;">
				<div>
  <div id="q_acDiv"></div>
  <input type="button" id="btnOk"  onMouseOver="this.style.cursor='hand'"  alt=""  style=' font-size: 16px; font-weight:bold;color:blue'/>
  <input id="btnTop" type="button" onclick="q_topPage()"  style="background:url(../image/first_32o.png) no-repeat;width: 36px;height: 36px;border-style: hidden;"/>
  <input id="btnPrev" type="button" onclick="q_prevPage()"  style="background:url(../image/prev_32o.png) no-repeat;width: 36px;height: 36px;border-style: hidden;"/>
  <input id="btnNext" type="button" onclick="q_nextPage()"  style="background:url(../image/next_32o.png) no-repeat;width: 36px;height: 36px;border-style: hidden;"/>
  <input id="btnBott" type="button" onclick="q_bottPage()"  style="background:url(../image/bott_32o.png) no-repeat;width: 36px;height: 36px;border-style: hidden;"/>
  <input id="txtPageno" value="1" type="text" style=" margin-top: 5px; text-align: center;top:1px; left:110px; width: 45px;"/>
  <label style=" vertical-align: middle;position:inherit; left:165px">/</label>
  <input id="txtEnd" value="XXXX" type="text" style=" vertical-align: middle ;text-align: center; top:1px; left:175px; width: 45px;"/>
  <input id="txtTotpage" value="1" type="hidden"/>
  <input id="txtHtmfile" value="" type="hidden"/>
  <input id="txtUrl2" value="" type="hidden"/>
  <input id="btnPrint" type="button" style="background:url(../image/print_32.png) no-repeat;width: 36px;height: 36px;border-style: hidden;"/>
  <input id="chkXlsHead" value="" type="checkbox" />
  <input id="btnXls" type="button" style="background:url(../image/excel.jpg) no-repeat;width: 36px;height: 36px;border-style: hidden;"/>
    <a id='lblPageRange'></a>
  <input id="txtPageRange" type="text" style='width:40px;'/>
  <input id="btnWebPrint" type="button" style="font-size: medium;color: #0000FF;" value=""/>
  <select id="cmbPcPrinter" style='width:220px;'></select>
  <a id='lblPaperSize'></a>
  <select id="cmbPaperSize" style='width:80px;'></select>
  <a id='lblLandScape'></a>
  <input id="chkLandScape" value="" type="checkbox" />
  <input id="btnAuthority" type="button"  style="font-size: medium;" />
  <input id="txtUrl" value="" type="text" style='width:70px;'/>
  <input id="btnClose" type="button" onclick=""  style="background:url(../image/colose_32r.png) no-repeat;width: 36px;height: 36px;border-style: hidden;"/>
  <div id="frameReport"  style="visibility:visible;top: 35px; left: 0px; height: 100% ; width: 100%; border-top-color:Red; border-top-style:groove;" />
</div>
			</div>
		</div>
	</body>
</html>
