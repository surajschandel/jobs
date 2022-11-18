<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <%@include file="../common/include.jsp" %>
        <c:set var="pageName" value="डी.टी.र. मास्टर"></c:set>
        <title>${pageName} : ${initParam['applicationName']}</title>
        <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/common/pagging_searching.js"></script>
        <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/master/jobsList.js"></script>
        <script type="text/javascript">
             $(document).bind('cbox_closed', function () {
                searchList(); // Or Call url
            });
        </script>
    </head>
    <body class="page-body skin-facebook horizontal-menu-skin-facebook user-info-navbar-skin-navy">
        <%@include file="../common/top_settings.jsp" %>
        <div class="page-container">
            <%@include file="../common/left_menu.jsp" %>
            <div class="main-content">
                <%@include file="../common/header.jsp" %> 
                <div class="row">
                    <div class="col-md-12">
                        <div class="panel panel-flat no-margin no-padding" >
                            <div class="panel-heading no-padding no-margin" style="border:0" >
                                <h2 class="panel-title">${pageName}</h2>
                                <div class="panel-options">
                                    <div class="btn-group pull-right">
                                        <!--<label class="btn btn-white"><a href="${baseUrl}add" id="addRecordLink" class="iframe" data-placement="top" data-toggle="tooltip" data-original-title="Add Record"><i class="fa fa-plus"></i> Add Record</a></label>-->
                                    </div>                                        
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="panel panel-default panel-border">
                            <div class="panel-heading">
                                <h3 class="panel-title">डी.टी.र. खोजे</h3>
                                <div class="panel-options">
                                    <a href="#" data-toggle="panel" style="text-decoration: none;">
                                        <span class="collapse-icon">-</span> 
                                        <span class="expand-icon">+</span>
                                    </a>
                                </div>
                            </div>
                            <div class="panel-body">
                                <form onsubmit="return false;">
                                    <div class="box-body">
                                        <div class="form-group row">
                                            <div class="col-sm-4">
                                                <label class="control-label"><strong>रीजन</strong></label>
                                                <select id="regionId" title="Select Region" onchange="getCircleList(this.value, 'circleId');" class="form-control input-sm">
                                                    <option value="">रीजन चुने</option>
                                                    <c:forEach items="${regionList}" var="r">
                                                        <option value="${r.regionId}">${r.name}</option>
                                                    </c:forEach>
                                                </select>
                                            </div>
                                            <div class="col-sm-4">
                                                <label class="control-label"><strong>सर्कल</strong></label>
                                                <select id="circleId" title="Select Circle" onchange="getDivisionList(this.value, 'divisionId');" class="form-control input-sm">
                                                    <option value="">सर्कल चुने</option>
                                                </select>
                                            </div>
                                            <div class="col-sm-4">
                                                <label class="control-label"><strong>डिवीजन</strong></label>
                                                <select id="divisionId" title="Select Division" onchange="getSubDivisionList(this.value, 'subdivisionId');" class="form-control input-sm">
                                                    <option value="">डिवीजन चुने</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="clearfix"></div>
                                        <div class="form-group row">
                                            <div class="col-sm-4">
                                                <label class="control-label"><strong>सब डिवीजन</strong></label>
                                                <select id="subdivisionId" title="Select Sub-Division" onchange="getDcList(this.value, 'dcId');" class="form-control input-sm">
                                                    <option value="">सब डिवीजन चुने</option>
                                                </select>
                                            </div>
                                            <div class="col-sm-4">
                                                <label class="control-label"><strong>डी.सी.</strong></label>
                                                <select id="dcId" title="Select DC" onchange="getSubStationList(this.value, 'subStationId');" class="form-control input-sm">
                                                    <option value="">डी.सी. चुने</option>
                                                </select>
                                            </div>
                                            <div class="col-sm-4">
                                                <label class="control-label"><strong>सबस्टेशन</strong></label>
                                                <select id="subStationId" title="Select SubStation" onchange="getFeederList(this.value, 'feederId');" class="form-control input-sm">
                                                    <option value="">सबस्टेशन चुने</option>
                                                </select>
                                            </div>                                               

                                        </div>
                                        <div class="clearfix"></div>
                                        <div class="form-group row">
                                            <div class="col-sm-4">
                                                <label class="control-label"><strong>फीडर</strong></label>
                                                <select id="feederId" title="Select Feeder" onchange="getFeederVillageList(this.value, 'feederVillageId');" class="form-control input-sm">
                                                    <option value="">फीडर चुने</option>
                                                </select>
                                            </div>
                                            <div class="col-sm-4">
                                                <label class="control-label"><strong>ग्राम </strong></label>
                                                <select id="feederVillageId" title="Select Village"  class="form-control input-sm">
                                                    <option value="">ग्राम चुने</option>
                                                </select>
                                            </div>
                                            <div class="col-sm-4">
                                                <div class="form-group">
                                                    <label class="control-label"><strong>डी.टी.र. नाम</strong></label>
                                                    <input type="text" class="form-control" id="name" name="name" placeholder="Search Field">
                                                </div>
                                            </div>
                                            <div class="col-sm-4">
                                                <div class="form-group">
                                                    <label class="control-label"><strong>डी.टी.र. कोड</strong></label>
                                                    <input type="text" class="form-control" id="code" name="code" placeholder="Search Field">
                                                </div>
                                            </div>
                                             <div class="col-sm-4">
                                                <div class="form-group">
                                                    <label class="control-label"><strong> दिनांक</strong></label>
                                                    <input type="text" class="form-control my-datepicker" id="addedDateStr" name="addedDateStr" placeholder="Search Field">
                                                </div>
                                            </div>
                                            <div class="col-sm-4">                                                
                                                <div class="form-group">
                                                    <label class="control-label"><strong>दिनांक सिम्बोल</strong></label>
                                                    <select id="dateType"  class="form-control">
                                                        <option value="">-- Select --</option>
                                                        <c:forEach items="${symbolList}" var="c">
                                                            <option value="${c.value1}">${c.name}</option>
                                                        </c:forEach>
                                                    </select> 
                                                </div>
                                                <!--<input  id="reqDate" name="reqDate" type="text" class="datepicker my-tf" />--> 
                                            </div>
                                            
                                        </div>
                                    </div>
                                    <div class="bax-footer">
                                        <input type="reset" name="reset" class="btn btn-warning no-margin" value="Reset Search" onclick="window.location = '${baseUrl}detail'"/>
                                        <input type="submit" onclick="searchList();" name="search" class="btn btn-primary pull-right no-margin" value="Search Record" />
                                    </div>
                                </form>
                            </div>
                        </div>
                        <div class="panel panel-default panel-border hidden" id="detail-data-list">                            
                            <%@include file="../common/list_header.jsp" %>
                            <h3 class="panel-title">डी.टी.र. सूची</h3>
                            <div class="panel-body">
                                <%@include file="../common/pagging_panel_header.jsp" %>
                                <table class="table table-striped table-bordered dataTable no-footer" role="grid">
                                    <thead>
                                        <tr>
                                            <th width="6%">क्र</th>
                                            <th width="8%">डी.टी.र.का नाम</th>
                                            <th width="10%">डी.टी.र.का नाम (हिन्दी)</th>
                                            <th width="8%">कोड</th>
                                            <th width="10%">ग्राम</th>
                                            <th width="10%">फीडर</th>
                                            <th width="8%">सबस्टेशन</th>
                                            <th width="8%">डी.सी.</th>
                                            <th width="8%">सब डिवीजन</th>
                                            <th width="8%">डिवीजन</th>
                                            <th width="7%">स्थिती</th>        
                                            <th width="15%" ><div align="center"> कार्यवाही</div></th>
                                        </tr>
                                    </thead>
                                    <tbody id="dtrListData"></tbody>
                                </table>
                                <%@include file="../common/pagging_panel_footer.jsp" %>
                            </div>
                        </div>
                    </div>
                    <%@include file="../common/master_dtl_footer.jsp" %>
                </div>
                <%@include file="../common/footer.jsp" %>
            </div>
        </div>
    </body>
</html>
