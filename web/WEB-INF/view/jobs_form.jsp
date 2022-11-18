<%-- 
    Document   : index
    Created on : Apr 15, 2018, 10:08:30 AM
    Author     : SURAJ CHANDEL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html>
    <title>Jobs</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <%@include file="include.jsp" %>

<!--    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/w3.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/font-awesome.min.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/font-awesome.min.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/font-awesome.css"/>-->
    <style>
        html,body,h1,h2,h3,h4
    </style>

    <body class="w3-light-grey" >

        <!--<div class="page-container">-->
        <%@include file="menu.jsp" %>

        <!-- !PAGE CONTENT! -->
        <div class="w3-main" style="margin-left:300px;margin-top:43px;">

            <!-- Header -->
            <header class="w3-container" style="padding-top:22px">
                <h5><b><i class="fa fa-dashboard"></i> Jobs Entry Form</b></h5>
            </header>
            <center>
                <table width="100%" border="1">
                    <tr>
                        <td width="20%"></td>
                        <td width="60%"> 
                            <c:if test="${param.successMsg != null && param.successMsg != ''}">
                                <div class="col-md-12 msg-div">
                                    <div class="alert alert-success"><button type="button" class="close" data-dismiss="alert">
                                            <span aria-hidden="true">x</span><span class="sr-only">Close</span> </button>${param.successMsg}.
                                    </div>
                                </div>
                            </c:if>
                            <c:if test="${param.errorMsg != null && param.errorMsg != ''}">
                                <div class="col-md-12 msg-div"> <div class="alert alert-danger"> <strong>${param.errorMsg}.</strong></div></div>
                            </c:if>
                            <f:form action="${baseUrl}save" method="post" name="dtr-form" id="dtr-form" commandName="command" class="validate" >

                                <table width="100%" border="0" cellspacing="8" cellpadding="8">
                                    <tr>
                                        <td width="30%"></td>
                                        <td width="70%"></td>
                                    </tr>
                                    <tr>
                                        <td colspan="2">
                                            <div class="panel-options">
                                                <div class="btn-group pull-right">
                                                    <label class="btn btn-white"><a href="${baseUrl}detail" id="addRecordLink" data-placement="top" data-toggle="tooltip" data-original-title="Search Record"><i class="fa fa-search"></i> Search Record</a></label>
                                                </div>                                        
                                            </div>          
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="lable-text">
                                            <label class="control-label"><strong>Tracking Number</strong><span style="color:#FF0000;font-size: 20px; ">*</span></label>
                                        </td>
                                        <td input-td>  
                                            <f:input path="trackingNo" class="form-control" data-validate="required" data-message-required="Please Enter Feeder Name" placeholder="Required Field"/>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="lable-text">
                                            <label class="control-label"><strong>Job Number</strong><span style="color:#FF0000;font-size: 20px; ">*</span></label>
                                        </td>
                                        <td>  
                                            <f:input path="jobNo" class="form-control" data-validate="required" data-message-required="Please Enter Feeder Name" placeholder="Required Field"/>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="lable-text">
                                            <label class="control-label"><strong>IC Number</strong><span style="color:#FF0000;font-size: 20px; ">*</span></label>
                                        </td>
                                        <td>  
                                            <f:input path="icNo" class="form-control" data-validate="required" data-message-required="Please Enter Feeder Name" placeholder="Required Field"/>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="lable-text">
                                            <label class="control-label"><strong>Barcode</strong><span style="color:#FF0000;font-size: 20px; ">*</span></label>
                                        </td>
                                        <td>  
                                            <f:input path="barcode" class="form-control" data-validate="required" data-message-required="Please Enter Feeder Name" placeholder="Required Field"/>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="lable-text">
                                            <label class="control-label"><strong>Indenter</strong><span style="color:#FF0000;font-size: 20px; ">*</span></label>
                                        </td>
                                        <td>  
                                            <f:input path="indenter" class="form-control" data-validate="required" data-message-required="Please Enter Feeder Name" placeholder="Required Field"/>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="lable-text">
                                            <label class="control-label"><strong>Phone</strong><span style="color:#FF0000;font-size: 20px; ">*</span></label>
                                        </td>
                                        <td>  
                                            <f:input path="phone" class="form-control" data-validate="required" data-message-required="Please Enter Feeder Name" placeholder="Required Field"/>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="lable-text">
                                            <label class="control-label"><strong>Project</strong><span style="color:#FF0000;font-size: 20px; ">*</span></label>
                                        </td>
                                        <td>  
                                            <f:input path="project" class="form-control" data-validate="required" data-message-required="Please Enter Feeder Name" placeholder="Required Field"/>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="lable-text">
                                            <label class="control-label"><strong>Sub-System</strong><span style="color:#FF0000;font-size: 20px; ">*</span></label>
                                        </td>
                                        <td>  
                                            <f:input path="subSystem" class="form-control" data-validate="required" data-message-required="Please Enter Feeder Name" placeholder="Required Field"/>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="lable-text">
                                            <label class="control-label"><strong>Circuit Name</strong><span style="color:#FF0000;font-size: 20px; ">*</span></label>
                                        </td>
                                        <td>  
                                            <f:input path="circuitName" class="form-control" data-validate="required" data-message-required="Please Enter Feeder Name" placeholder="Required Field"/>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="lable-text">
                                            <label class="control-label"><strong>Model</strong><span style="color:#FF0000;font-size: 20px; ">*</span></label>
                                        </td>
                                        <td>  
                                            <f:input path="model" class="form-control" data-validate="required" data-message-required="Please Enter Feeder Name" placeholder="Required Field"/>
                                        </td>
                                    </tr>
                                    <!--                                    <tr>
                                                                            <td class="lable-text">
                                                                                <label class="control-label"><strong>Loading Date</strong><span style="color:#FF0000;font-size: 20px; ">*</span></label>
                                                                            </td>
                                                                            <td>  
                                    <f:input path="loadingDate" class="form-control my-datepicker" data-validate="required" data-message-required="Please Enter Feeder Name" placeholder="Required Field"/>
                                </td>
                            </tr>-->
                                    <tr>
                                        <td class="lable-text">
                                            <label class="control-label"><strong>Status</strong><span style="color:#FF0000;font-size: 20px; ">*</span></label>
                                        </td>
                                        <td>  
                                            &nbsp;&nbsp;&nbsp;
                                            <f:radiobutton path="status" value="1" id="enableradio" class="icheck-11" checked="true" />
                                            <label for="enableradio">सक्रिय</label>&nbsp;&nbsp;&nbsp;
                                            <f:radiobutton path="status" value="0" id="desableradio" class="icheck-11" />
                                            <label for="desableradio">निष्क्रिय</label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="lable-text">
                                            <label class="control-label"><strong>Remark</strong><span style="color:#FF0000;font-size: 20px; ">*</span></label>
                                        </td>
                                        <td>  
                                            <f:textarea cols="3" rows="5" path="remark" class="form-control" data-validate="required" data-message-required="Please Enter Feeder Name" placeholder="Required Field"/>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2">
                                            <div class="panel-footer">
                                                <input type="submit" class="btn btn-primary pull-right no-margin" name="saveBtn" id="saveBtn" value="${action}">
                                                <input type="reset" name="reset" class="btn btn-warning no-margin" value="Reset Record" onclick="window.location = '${baseUrl}add'"/>
                                            </div>
                                        </td>
                                    </tr>
                                </table>

                                </div>
                                <f:hidden path="jobIdEnc" />
                            </f:form>

                        </td>

                        <td width="20%"></td>
                    </tr>
                </table>
            </center>
            <!-- Footer -->

            <%@include file="footer.jsp" %>

            <!-- End page content -->
            <!--</div>-->

        </div>
    </body>
</html>

