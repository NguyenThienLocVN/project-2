  <!-- ======= Sidebar ======= -->
  <aside id="sidebar" class="sidebar">

      <ul class="sidebar-nav" id="sidebar-nav">

          <li class="nav-item">
              <a class="nav-link " href="{{ route('admin.dashboard') }}">
                  <i class="bi bi-grid"></i>
                  <span>Dashboard</span>
              </a>
          </li><!-- End Dashboard Nav -->

          <li class="nav-item">
              <a class="nav-link collapsed" href="{{ route('admin.category.index') }}">
                  <i class="bi bi-list-task"></i>
                  <span>Danh mục bài viết</span>
              </a>
          </li>

          {{-- news --}}
          <li class="nav-item">
              <a class="nav-link collapsed" data-bs-target="#components-nav" data-bs-toggle="collapse" href="#">
                  <i class="bi bi-newspaper"></i><span>Bài viết</span><i class="bi bi-chevron-down ms-auto"></i>
              </a>
              <ul id="components-nav" class="nav-content collapse " data-bs-parent="#sidebar-nav">
                  <li>
                      <a href="{{ route('admin.news.index') }}">
                          <i class="bi bi-circle"></i><span>Danh sách</span>
                      </a>
                  </li>
                  <li>
                      <a href="{{ route('admin.news.create') }}">
                          <i class="bi bi-circle"></i><span>Tạo mới</span>
                      </a>
                  </li>
              </ul>
          </li><!-- End Components Nav -->
          <li class="nav-item">
              <a class="nav-link collapsed" data-bs-target="#setting-nav" data-bs-toggle="collapse" href="#">
                  <i class="bi bi-gear"></i><span>Cài đặt</span><i class="bi bi-chevron-down ms-auto"></i>
              </a>
              <ul id="setting-nav" class="nav-content collapse " data-bs-parent="#sidebar-nav">
                  <li>
                      <a href="{{ route('admin.header.index') }}">
                          <i class="bi bi-circle"></i><span>Menu</span>
                      </a>
                  </li>
                  <li>
                      <a href="{{ route('admin.news.create') }}">
                          <i class="bi bi-circle"></i><span>Bài viết</span>
                      </a>
                  </li>
                  <li>
                      <a href="{{ route('admin.media.index') }}">
                          <i class="bi bi-circle"></i><span>Media</span>
                      </a>
                  </li>
              </ul>
          </li><!-- End Components Nav -->
      </ul>

  </aside><!-- End Sidebar-->
