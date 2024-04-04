<%@ page import="java.util.ArrayList" %>
<%@ page import="model.Order" %>
<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
        <title>Linh Coffee - For The Good Teacher</title>
        <link rel="shortcut icon" href="resources/Banner/d.png" type="image/x-icon"/>
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
        <style>
            body {
                color: #566787;
                background: #f5f5f5;
                font-family: 'Varela Round', sans-serif;
                font-size: 13px;
            }

            .table-responsive {
                margin: 30px 0;
            }

            .table-wrapper {
                min-width: 1000px;
                background: #fff;
                padding: 20px 25px;
                border-radius: 3px;
                box-shadow: 0 1px 1px rgba(0, 0, 0, .05);
            }

            .table-wrapper .btn {
                float: right;
                color: #333;
                background-color: #fff;
                border-radius: 3px;
                border: none;
                outline: none !important;
                margin-left: 10px;
            }

            .table-wrapper .btn:hover {
                color: #333;
                background: #f2f2f2;
            }

            .table-wrapper .btn.btn-primary {
                color: #fff;
                background: #333;
            }

            .table-wrapper .btn.btn-primary:hover {
                background: #333;
            }

            .table-title .btn {
                font-size: 13px;
                border: none;
            }

            .table-title .btn i {
                float: left;
                font-size: 21px;
                margin-right: 5px;
            }

            .table-title .btn span {
                float: left;
                margin-top: 2px;
            }

            .table-title {
                color: #fff;
                background: #e07c51;
                padding: 16px 25px;
                margin: -20px -25px 10px;
                border-radius: 3px 3px 0 0;
            }

            .table-title h2 {
                margin: 5px 0 0;
                font-size: 24px;
            }

            .show-entries select.form-control {
                width: 60px;
                margin: 0 5px;
            }

            .table-filter .filter-group {
                float: right;
                margin-left: 15px;
            }

            .table-filter input, .table-filter select {
                height: 34px;
                border-radius: 3px;
                border-color: #ddd;
                box-shadow: none;
            }

            .table-filter {
                padding: 5px 0 15px;
                border-bottom: 1px solid #e9e9e9;
                margin-bottom: 5px;
            }

            .table-filter .btn {
                height: 34px;
            }

            .table-filter label {
                font-weight: normal;
                margin-left: 10px;
            }

            .table-filter select, .table-filter input {
                display: inline-block;
                margin-left: 5px;
            }

            .table-filter input {
                width: 200px;
                display: inline-block;
            }

            .filter-group select.form-control {
                width: 110px;
            }

            .filter-icon {
                float: right;
                margin-top: 7px;
            }

            .filter-icon i {
                font-size: 18px;
                opacity: 0.7;
            }

            table.table tr th, table.table tr td {
                border-color: #e9e9e9;
                padding: 12px 15px;
                vertical-align: middle;
            }

            table.table tr th:first-child {
                width: 60px;
            }

            table.table tr th:last-child {
                width: 80px;
            }

            table.table-striped tbody tr:nth-of-type(odd) {
                background-color: #fcfcfc;
            }

            table.table-striped.table-hover tbody tr:hover {
                background: #f5f5f5;
            }

            table.table th i {
                font-size: 13px;
                margin: 0 5px;
                cursor: pointer;
            }

            table.table td a {
                font-weight: bold;
                color: #566787;
                display: inline-block;
                text-decoration: none;
            }

            table.table td a:hover {
                color: #646464;
            }

            table.table td a.view {
                width: 30px;
                height: 30px;
                color: #646464;
                border: 2px solid;
                border-radius: 30px;
                text-align: center;
            }

            table.table td a.view i {
                font-size: 22px;
                margin: 2px 0 0 1px;
            }

            table.table .avatar {
                border-radius: 50%;
                vertical-align: middle;
                margin-right: 10px;
            }

            .status {
                font-size: 30px;
                margin: 2px 2px 0 0;
                display: inline-block;
                vertical-align: middle;
                line-height: 10px;
            }

            .deliverd {
                color: #10c469;
            }

            .shipped {
                color: #62c9e8;
            }

            .pending {
                color: #FFC107;
            }

            .cancelled {
                color: #ff5b5b;
            }

            .processing {
                color: #941989;
            }

            .pagination {
                float: right;
                margin: 0 0 5px;
            }

            .pagination li a {
                border: none;
                font-size: 13px;
                min-width: 30px;
                min-height: 30px;
                color: #999;
                margin: 0 2px;
                line-height: 30px;
                border-radius: 2px !important;
                text-align: center;
                padding: 0 6px;
            }

            .pagination li a:hover {
                color: #666;
            }

            .pagination li.active a {
                background: #03A9F4;
            }

            .pagination li.active a:hover {
                background: #0397d6;
            }

            .pagination li.disabled i {
                color: #ccc;
            }

            .pagination li i {
                font-size: 16px;
                padding-top: 6px
            }

            .hint-text {
                float: left;
                margin-top: 10px;
                font-size: 13px;
            }
        </style>
        <script>
            $(document).ready(function () {
                $('[data-toggle="tooltip"]').tooltip();
            });
        </script>

    </head>
    <%
        int id = 1;
        ArrayList<Order> orderList = (ArrayList<Order>) session.getAttribute("orderList");
        if (orderList != null) {
    %>
    <body>
        <div class="container-xl">
            <div class="table-responsive">
                <div class="table-wrapper">
                    <div class="table-title">
                        <div class="row">
                            <div class="col-sm-4">
                                <h2>Thông Tin <b>Đơn Hàng</b></h2>
                            </div>
                            <div class="col-sm-8">
                                <%--                                add ajax here--%>
                                <a href="./user-order" class="btn btn-primary"><i class="material-icons">&#xE863;</i>
                                    <span>Refresh List</span></a>
                                <a href="#" class="btn btn-secondary"><i class="material-icons">&#xE24D;</i> <span>Export to Excel</span></a>
                            </div>
                        </div>
                    </div>
                    <div class="table-filter">
                        <div class="row">
                            <%--                            <div class="col-sm-3">--%>
                            <%--                                <div class="show-entries">--%>
                            <%--                                    <span>Show</span>--%>
                            <%--                                    <select class="form-control">--%>
                            <%--                                        <option>5</option>--%>
                            <%--                                        <option>10</option>--%>
                            <%--                                        <option>15</option>--%>
                            <%--                                        <option>20</option>--%>
                            <%--                                    </select>--%>
                            <%--                                    <span>entries</span>--%>
                            <%--                                </div>--%>
                            <%--                            </div>--%>
                            <div class="col-sm-12">
                                <button type="button" class="btn btn-primary"><i class="fa fa-search"></i></button>
                                <div class="filter-group">
                                    <label>Name</label>
                                    <input type="text" class="form-control">
                                </div>
                                <div class="filter-group">
                                    <label>Status</label>
                                    <select class="form-control">
                                        <option>Any</option>
                                        <option>Delivered</option>
                                        <option>Shipped</option>
                                        <option>Pending</option>
                                        <option>Cancelled</option>
                                    </select>
                                </div>
                                <span class="filter-icon"><i class="fa fa-filter"></i></span>
                            </div>
                        </div>
                    </div>
                    <table class="table table-striped table-hover">
                        <thead>
                            <tr>
                                <th>Order ID</th>
                                <th>Order Date</th>
                                <th>Status</th>
                                <th>Net Amount</th>
                                <th>Shipping Method</th>
                                <th>Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            <% for (Order order : orderList) {
                            %>
                            <tr>
                                <td>#<%= id %>
                                </td>
                                <td><%=order.getOrderDate()%>
                                </td>
                                <td><span class="status <%=order.getStatus()%>">&bull;</span> <%=order.getStatus()%>
                                </td>
                                <td><%=order.getTotalMoney()%> VNĐ</td>
                                <td><%=order.getShippingMethod()%>
                                </td>
                                <td><a href="#" class="view" title="View Details" data-toggle="tooltip"><i
                                        class="material-icons">&#xE5C8;</i></a></td>
                                    <%id++; } %>
                        </tbody>
                    </table>
                    <div class="clearfix">
                        <div class="hint-text">Showing <b>5</b> out of <b>25</b> entries</div>
                        <ul class="pagination">
                            <li class="page-item disabled"><a href="#">Previous</a></li>
                            <li class="page-item"><a href="#" class="page-link">1</a></li>
                            <li class="page-item"><a href="#" class="page-link">2</a></li>
                            <li class="page-item"><a href="#" class="page-link">3</a></li>
                            <li class="page-item active"><a href="#" class="page-link">4</a></li>
                            <li class="page-item"><a href="#" class="page-link">5</a></li>
                            <li class="page-item"><a href="#" class="page-link">6</a></li>
                            <li class="page-item"><a href="#" class="page-link">7</a></li>
                            <li class="page-item"><a href="#" class="page-link">Next</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </body>
    <% } %>
</html>