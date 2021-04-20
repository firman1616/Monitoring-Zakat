    <aside class="main-sidebar">
    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">
      <!-- Sidebar user panel -->
      <div class="user-panel">
        <div class="pull-left image">
          <img src="<?= base_url() ?>assets/template/dist/img/user2-160x160.jpg" class="img-circle" alt="User Image">
        </div>
        <div class="pull-left info">
          <p><?= $name; ?></p>
          <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
        </div>
      </div>
      
      <!-- sidebar menu: : style can be found in sidebar.less -->
      <ul class="sidebar-menu" data-widget="tree">
        <li class="header">MAIN NAVIGATION</li>
        <li class="active treeview menu-open">
          <a href="<?= site_url('admin/Dashboard') ?>">
            <i class="fa fa-dashboard"></i> <span>Dashboard</span>
          </a>
        </li>
        <li class="treeview">
          <a href="#">
            <i class="fa fa-umbrella"></i>
            <span>Pembayaran Zakat</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li><a href="<?= site_url('admin/Zakat') ?>"><i class="fa fa-circle-o"></i> Zakat Fitrah</a></li>
            <li><a href="<?= site_url('admin/Zakat/Maal') ?>"><i class="fa fa-circle-o"></i> Zakat Maal</a></li>
          </ul>
        </li>
        <li><a href="<?= site_url('admin/Penerima') ?>"><i class="fa fa-users"></i> <span>Penerima Zakat</span></a></li>
        <li><a href="<?= site_url('admin/Donatur') ?>"><i class="fa  fa-user-plus"></i> <span>Data Donatur</span></a></li>

        <li class="treeview">
          <a href="#">
            <i class="fa fa-gears"></i>
            <span>Master</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
          <li class="treeview">
              <a href="#"><i class="fa fa-circle-o"></i> Master User
                <span class="pull-right-container">
                  <i class="fa fa-angle-left pull-right"></i>
                </span>
              </a>
              <ul class="treeview-menu">
                <li><a href="<?= site_url('admin/Master') ?>"><i class="fa fa-circle-o"></i> Master User Petugas</a></li>
                <li><a href="<?= site_url('admin/Master/koor') ?>"><i class="fa fa-circle-o"></i> Master User Koordinator</a></li>
              </ul>
            </li>
            <li><a href="<?= site_url('admin/Master/kwitansi') ?>"><i class="fa fa-circle-o"></i> Master Kwitansi</a></li>
            <li><a href="pages/UI/buttons.html"><i class="fa fa-circle-o"></i> Buttons</a></li>
            <li><a href="pages/UI/sliders.html"><i class="fa fa-circle-o"></i> Sliders</a></li>
            <li><a href="pages/UI/timeline.html"><i class="fa fa-circle-o"></i> Timeline</a></li>
            <li><a href="pages/UI/modals.html"><i class="fa fa-circle-o"></i> Modals</a></li>
          </ul>
        </li>
        <li><a href="https://adminlte.io/docs"><i class="fa fa-book"></i> <span>Documentation</span></a></li>
      </ul>
    </section>
    <!-- /.sidebar -->
  </aside>
  