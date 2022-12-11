<div class="leftside-menu">
    
    <!-- LOGO -->
    <a href="/" class="logo text-center logo-light">
        <span class="logo-lg">
            <img src="/home/assets/img/Logo BJM.png" alt="" style="width: 200px; height: 60px;">
        </span>
    </a>

    <!-- LOGO -->
    <a href="/" class="logo text-center logo-dark">
        <span class="logo-lg">
            <img src="/assets/images/logo-dark.png" alt="" height="16">
        </span>
        <span class="logo-sm">
            <img src="/assets/images/logo_sm_dark.png" alt="" height="16">
        </span>
    </a>

    <div class="h-100" id="leftside-menu-container" data-simplebar="">

        <!--- Sidemenu -->
        <ul class="side-nav">

            <li class="side-nav-item">
                <a  href="/dashboard" aria-expanded="false" aria-controls="sidebarDashboards" class="side-nav-link">
                    <br><i class="uil-home-alt" href="/dashboard"></i>
                    <span class="badge bg-success float-end" href=/"dashboard"></span>
                    <span> Dashboards User</span>
                    
                </a>
                 <div class="collapse" id="sidebarDashboards">
                    <ul class="side-nav-second-level">
                        <li>
                            <a href="dashboard-analytics.html">Analytics</a>
                        </li>
                        <li>
                            <a href="dashboard-crm.html">CRM</a>
                        </li>
                        <li>
                            <a href="index.html">Ecommerce</a>
                        </li>
                        <li>
                            <a href="dashboard-projects.html">Projects</a>
                        </li>
                    </ul>
                </div> 
            </li>


            <li class="side-nav-item">
                <a href="/servispanggilan" class="side-nav-link">
                    <i class="uil-folder-plus"></i>
                    <span> Servis Panggilan</span>
                </a>
            </li>
 
            <li class="side-nav-item">
                <a href="{{route('diagnosauser')}}" class="side-nav-link">
                    <i class="uil-folder-plus"></i>
                    <span>Diagnosa Kerusakan</span>
                </a>
            </li>
            <li class="side-nav-title side-nav-item">List Data</li>

            <li class="side-nav-item">
                <a data-bs-toggle="collapse" href="#sidebarEmail" aria-expanded="false" aria-controls="sidebarEmail" class="side-nav-link">
                    <i class="uil-envelope"></i>
                    <span> Data Transaksi </span>
                    <span class="menu-arrow"></span>
                </a>
                <div class="collapse" id="sidebarEmail">
                    <ul class="side-nav-second-level">
                        <li>
                            <a href="/rincianbiaya">Rincian Biaya</a>
                        </li>
                        <!-- <li>
                            <a href="/service">Data Servis</a>
                        </li>
                        <li>
                            <a href="/pembelian">Data Pembelian</a>
                        </li> -->
                    </ul>
                </div>
            </li>
            <li class="side-nav-item">
                <a href="/laporanUser" class="side-nav-link">
                    <i class="uil-folder-plus"></i>
                    <span> Laporan </span>
                </a>
            </li>

        <!-- End Sidebar -->

        <div class="clearfix"></div>

    </div>
    <!-- Sidebar -left -->

</div>