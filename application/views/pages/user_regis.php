<div class="row" id="show_user_regis">
    <div class="col-lg-12">
        <div class="card">
            <div class="card-body">
                <div class="row">
                    <div class="col-lg-10">
                        <h1 class="card-title">ข้อมูลการสมัครของผู้ใช้งาน</h1>
                    </div>
                    <div class="col-lg-2">
                        <!-- start modal add form     -->
                        <!-- <div class="modal fade" id="newProductModal" tabindex="-1" role="dialog" aria-labelledby="newProductModalLabel" aria-hidden="true">
                            <div class="modal-dialog modal-lg" role="document">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title" id="checkRegister">ตรวจสอบข้อมูลการสมัคร</h5>
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                            <span aria-hidden="true">&times;</span>
                                        </button>
                                    </div>
                                    <div class="modal-body">
                                        <form class="forms-sample" action="<?= site_url("/product/new_product_form") ?>" method="POST" id="addProductForm">
                                            <div class="form-group row">
                                                <label for="product_name" class="col-sm-3 col-form-label">Name</label>
                                                <div class="col-sm-9">
                                                    <input type="text" class="form-control" id="product_name" placeholder="input name" name="product_name">
                                                </div>
                                            </div>
                                            <div class="form-group row">
                                                <label for="product_price" class="col-sm-3 col-form-label">Price</label>
                                                <div class="col-sm-9">
                                                    <input type="number" class="form-control" id="product_price" placeholder="input price" name="product_price">
                                                </div>
                                            </div>
                                            <div class="form-group row">
                                                <label for="product_amount" class="col-sm-3 col-form-label">Amount</label>
                                                <div class="col-sm-9">
                                                    <input type="number" class="form-control" id="product_amount" placeholder="input amount" name="product_amount">
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-success" id="submitButton" onclick="submit_product()">Submit</button>
                                        <button type="button" class="btn btn-light" data-dismiss="modal">Cancel</button>
                                    </div>
                                </div>
                            </div>
                        </div> -->
                        <!-- end modal add form     -->

                        <!-- start modal edit form     -->
                        <div class="modal fade" id="editProductModal" tabindex="-1" role="dialog" aria-labelledby="editProductModalLabel" aria-hidden="true">
                            <div class="modal-dialog modal-lg" role="document">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title" id="editProductModalLabel">ตรวจสอบรายละเอียด</h5>
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                            <span aria-hidden="true">&times;</span>
                                        </button>
                                    </div>
                                    <div class="modal-body">
                                        <form class="forms-sample" action="<?= site_url("/product/edit_product_form") ?>" method="POST" id="editProductForm">
                                            <div class="form-group row">
                                                <label for="product_name" class="col-sm-3 col-form-label">ชื่อ-สกุล</label>
                                                <div class="col-sm-9">
                                                    <input type="hidden" class="form-control" id="edit_product_id" name="product_name">
                                                    <input type="text" class="form-control" id="edit_product_name" name="product_name">
                                                </div>
                                            </div>
                                            <div class="form-group row">
                                                <label for="product_price" class="col-sm-3 col-form-label">ชื่อเล่น</label>
                                                <div class="col-sm-9">
                                                    <input type="number" class="form-control" id="edit_product_price" name="product_price">
                                                </div>
                                            </div>
                                            <div class="form-group row">
                                                <label for="product_amount" class="col-sm-3 col-form-label">เพศ</label>
                                                <div class="col-sm-9">
                                                    <input type="number" class="form-control" id="edit_product_amount" name="product_amount">
                                                </div>
                                            </div>
                                            <div class="form-group row">
                                                <label for="product_amount" class="col-sm-3 col-form-label">อีเมล</label>
                                                <div class="col-sm-9">
                                                    <input type="number" class="form-control" id="edit_product_amount" name="product_amount">
                                                </div>
                                            </div>
                                            <div class="form-group row">
                                                <label for="product_amount" class="col-sm-3 col-form-label">วันเกิด</label>
                                                <div class="col-sm-9">
                                                    <input type="number" class="form-control" id="edit_product_amount" name="product_amount">
                                                </div>
                                            </div>
                                            <div class="form-group row">
                                                <label for="product_amount" class="col-sm-3 col-form-label">เบอร์โทรศัพท์</label>
                                                <div class="col-sm-9">
                                                    <input type="number" class="form-control" id="edit_product_amount" name="product_amount">
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-success" id="editButton" onclick="update_product()">Submit</button>
                                        <button type="button" class="btn btn-light" data-dismiss="modal">Cancel</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- end modal edit form     -->

                        <!-- start modal delete form     -->
                        <div class="modal fade" id="deleteProductModal" tabindex="-1" role="dialog" aria-labelledby="deleteProductModalLabel-2" aria-hidden="true">
                            <div class="modal-dialog modal-sm" role="document">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title" id="deleteProductModalLabel-2">Delete Product</h5>
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                            <span aria-hidden="true">&times;</span>
                                        </button>
                                    </div>
                                    <div class="modal-body">
                                        <p>You want to dalete data of product</p>
                                        <p>ID: <output type="number" id="delete_product_id" name="product_name"></p>
                                        <p>Name: <output type="text" id="delete_product_name" name="product_name"></p>
                                        <p>Gender: <output type="number" id="delete_product_price" name="product_price"></p>
                                        <p>Email: <output type="number" id="delete_product_amount" name="product_amount"></p>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-success" id="submitDelete_product" onclick="submitDelete_product()">Submit</button>
                                        <button type="button" class="btn btn-light" data-dismiss="modal">Cancel</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- end modal delete form     -->

                    </div>
                </div>
                <p class="card-description">
                    ตรวจสอบข้อมูลการสมัคร
                </p>
                <div class="table-responsive">
                    <table class="table" id="user_table">
                        <thead>
                            <tr>
                                <th>ลำดับที่</th>
                                <th>ชื่อจริง</th>
                                <th>เพศ</th>
                                <th>อีเมล</th>
                                <th>ตรวจสอบ</th>
                                <th>ลบ</th>
                            </tr>
                        </thead>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>

<script>
    $(document).ready(function() {
        $('#user_table').DataTable({
            "ajax": {
                "url": "<?php echo site_url("Check/get_regis_user") ?>",
                "dataSrc": "data",
            },
            "columns": [{
                    "data": "id"
                },
                {
                    "data": "firstname"
                },
                {
                    "data": "gender"
                },
                {
                    "data": "email"
                },
            ],
            "columnDefs": [{
                    "targets": 4,
                    "data": "id",
                    "render": function(data, type, row, meta) {
                        editButton = `<button type="button" class="btn btn-warning" id="editButton" data-toggle="modal" data-target="#editProductModal" onclick="edit_product(${data})">ตรวจสอบข้อมูล</button>`
                        return editButton;
                    },
                },
                {
                    "targets": 5,
                    "data": "id",
                    "render": function(data, type, row, meta) {
                        deleteButton = `<button type="button" class="btn btn-danger" id="deleteButton" data-toggle="modal" data-target="#deleteProductModal" onclick="delete_product(${data})">ลบ</button>`
                        return deleteButton;
                    },
                }
            ]
        });
    });

    // function submitDelete_product() {
    //     var product_id = $("#delete_product_id").val();
    //     var deleteProductDatas = {
    //         product_id: product_id,
    //     };
    //     var showData = $.ajax({
    //         type: 'POST',
    //         url: "<?= site_url("/product/delete_product_form") ?>",
    //         data: deleteProductDatas,
    //         dataType: "text",
    //         success: function(resultData) {
    //             $('#deleteProductModal').modal('hide')
    //             location.reload();
    //         }
    //     })
    // }

    // function delete_product(u_id) {
    //     var user_id = {
    //         u_id: u_id
    //     }

    //     var showData = $.ajax({
    //         type: 'POST',
    //         url: "<?= site_url("/User/show_user_form") ?>",
    //         data: user_id,
    //         dataType: "text",
    //         success: function(resultData) {
    //             productDetail = JSON.parse(resultData);
    //             var user_id = $("#delete_user_id").val(productDetail.id);
    //             var user_fisrtname = $("#delete_user_firstname").val(productDetail.firstname);
    //             var user_gender = $("#delete_user_gender").val(productDetail.gender);
    //             var user_email = $("#delete_user_email").val(productDetail.email);
    //         }
    //     })
    // }

    // function edit_product(p_id) { //show data of current product before update
    //     var product_id = {
    //         p_id: p_id
    //     }

    //     var showData = $.ajax({
    //         type: 'POST',
    //         url: "<?= site_url("/product/show_product_editForm") ?>",
    //         data: product_id,
    //         dataType: "text",
    //         success: function(resultData) {
    //             productDetail = JSON.parse(resultData);
    //             var product_id = $("#edit_product_id").val(productDetail.id);
    //             var product_name = $("#edit_product_name").val(productDetail.name);
    //             var product_price = $("#edit_product_price").val(productDetail.price);
    //             var product_amount = $("#edit_product_amount").val(productDetail.amount);
    //         }
    //     })
    // }
</script>