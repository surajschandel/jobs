<%@taglib prefix="s" uri="http://www.springframework.org/tags" %>
<%@taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="f" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css"/>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.css"/>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css"/>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/font-awesome.min.css"/>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/font-awesome.min.css"/>
<!--<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap3-wysihtml5.css"/>-->
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap3-wysihtml5.min.css"/>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap-timepicker.min.css"/>


<!--<script src="${pageContext.request.contextPath}/resources/js/jquery-1.11.1.min.js"></script>-->

<script src="${pageContext.request.contextPath}/resources/js/jquery-ui-1.11.2.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/bootstrap-datetimepicker.min.js"></script>
<!--<script src="${pageContext.request.contextPath}/resources/js/bootstrap-datepicker.js"></script>-->
<script type="text/javascript">
    jQuery(document).ready(function ($)
    {
        $('.my-datepicker').datepicker({
            format: 'dd/mm/yyyy'
        });
        
      $(".form_datetime").datetimepicker({format: 'dd/mm/yyyy hh:ii'});
        
        
// Skins
        $('input.icheck-1').iCheck({
            checkboxClass: 'icheckbox_minimal',
            radioClass: 'iradio_minimal'
        });
        $('input.icheck-2').iCheck({
            checkboxClass: 'icheckbox_minimal-red',
            radioClass: 'iradio_minimal-red'
        });
        $('input.icheck-3').iCheck({
            checkboxClass: 'icheckbox_minimal-green',
            radioClass: 'iradio_minimal-green'
        });
        $('input.icheck-4').iCheck({
            checkboxClass: 'icheckbox_minimal-blue',
            radioClass: 'iradio_minimal-blue'
        });
        $('input.icheck-5').iCheck({
            checkboxClass: 'icheckbox_minimal-aero',
            radioClass: 'iradio_minimal-aero'
        });
        $('input.icheck-6').iCheck({
            checkboxClass: 'icheckbox_minimal-grey',
            radioClass: 'iradio_minimal-grey'
        });
        $('input.icheck-7').iCheck({
            checkboxClass: 'icheckbox_minimal-orange',
            radioClass: 'iradio_minimal-orange'
        });
        $('input.icheck-8').iCheck({
            checkboxClass: 'icheckbox_minimal-yellow',
            radioClass: 'iradio_minimal-yellow'
        });
        $('input.icheck-9').iCheck({
            checkboxClass: 'icheckbox_minimal-pink',
            radioClass: 'iradio_minimal-pink'
        });
        $('input.icheck-10').iCheck({
            checkboxClass: 'icheckbox_minimal-purple',
            radioClass: 'iradio_minimal-purple'
        });
// Styles
        $('input.icheck-11').iCheck({
            checkboxClass: 'icheckbox_square-blue',
            radioClass: 'iradio_square-yellow'
        });
        $('input.icheck-12').iCheck({
            checkboxClass: 'icheckbox_flat-pink',
            radioClass: 'iradio_flat-grey'
        });
        $('input.icheck-13').iCheck({
            checkboxClass: 'icheckbox_futurico',
            radioClass: 'iradio_futurico'
        });
        $('input.icheck-14').iCheck({
            checkboxClass: 'icheckbox_polaris',
            radioClass: 'iradio_polaris'
        });
        $('input.icheck-15').each(function (i, el)
        {
            var self = $(el),
                    label = self.next(),
                    label_text = label.text();
            label.remove();
            self.iCheck({
                checkboxClass: 'icheckbox_line-green',
                radioClass: 'iradio_line-red',
                insert: '<div class="icheck_line-icon"></div>' + label_text
            });
        });
    });
</script>