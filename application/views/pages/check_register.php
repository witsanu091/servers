<div class="row" id="show_register">
  <div class="col-lg-12">
    <div class="card">
      <div class="card-body">
        <div class="row">
          <div class="col-lg-12 text-center">
            <h3 class="card-content">ข้อมูลของสมาชิก</h3></br>
          </div>
          <div class="col-md-6 col-lg-6 grid-margin stretch-card zoom" onclick="window.location.href = '<?= site_url('/Check/check_regis_user') ?>'">
            <div class="card bg-gradient-primary text-white text-center card-shadow-primary">
              <div class="card-body">
                <h6 class="font-weight-normal">ข้อมูลสมาชิก</h6>
                <h2 class="mb-0">ผู้ใช้งาน</h2>
              </div>
            </div>
          </div>
          <div class="col-md-6 col-lg-6 grid-margin stretch-card zoom" onclick="window.location.href = '<?= site_url('/Check/check_regis_trainer') ?>'">
            <div class="card bg-gradient-danger text-white text-center card-shadow-danger">
              <div class="card-body">
                <h6 class="font-weight-normal">ข้อมูลสมาชิก</h6>
                <h2 class="mb-0">เทรนเนอร์</h2>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>