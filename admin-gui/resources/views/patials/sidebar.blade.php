<nav class="sidebar sidebar-offcanvas" id="sidebar">
          <ul class="nav">
            <li class="nav-item nav-profile">
              <a href="#" class="nav-link">
                @if(\Illuminate\Support\Facades\Auth::check())
                <div class="nav-profile-text d-flex flex-column">
                  <span class="font-weight-bold mb-2">{{ \Illuminate\Support\Facades\Auth::user()->name }}</span>
                  <span class="text-secondary text-small">{{ \Illuminate\Support\Facades\Auth::user()->name }}</span>
                </div>
                @endif
                <i class="mdi mdi-bookmark-check text-success nav-profile-badge"></i>
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="{{route('dashboard')}}">
                <span class="menu-title">Dashboard</span>
                <i class="mdi mdi-home menu-icon"></i>
              </a>
            </li>
            @can('category-list')
            <li class="nav-item">
              <a class="nav-link" href="{{ route('category_index') }}">
                <span class="menu-title">Danh Mục sản phẩm</span>
                <i class="mdi mdi-contacts menu-icon"></i>
              </a>
            </li>
            @endcan
            @can('menu-list')
            <li class="nav-item">
              <a class="nav-link" href="{{ route('menu_index') }}">
                <span class="menu-title">Menus</span>
                <i class="mdi mdi-format-list-bulleted menu-icon"></i>
              </a>
            </li>
            @endcan
            @can('product-list')
            <li class="nav-item">
              <a class="nav-link" href="{{ route('product_index') }}">
                <span class="menu-title">Danh sách sản phẩm</span>
                <i class="mdi mdi-table-large menu-icon"></i>

              </a>
            </li>
            @endcan
            @can('user-list')
            <li class="nav-item">
              <a class="nav-link" href="{{route('user_index')}}">
                <span class="menu-title">User</span>
                <i class="mdi mdi-account menu-icon"></i>
              </a>
            </li>
            @endcan
            @can('slider-list')
            <li class="nav-item">
              <a class="nav-link" href="{{ route('slider_index') }}">
                <span class="menu-title">Slider</span>
                <i class="mdi mdi-account menu-icon"></i>
              </a>
            </li>
            @endcan
            @can('setting-list')
            <li class="nav-item">
              <a class="nav-link" href="{{ route('setting_index') }}">
                <span class="menu-title">Setting</span>
                <i class="mdi mdi-account menu-icon"></i>
              </a>
            </li>
            @endcan
            @can('role-list')
            <li class="nav-item">
              <a class="nav-link" data-bs-toggle="collapse" href="#general-pages" aria-expanded="false" aria-controls="general-pages">
                <span class="menu-title">Quyền truy cập</span>
                <i class="menu-arrow"></i>
                <i class="mdi mdi-medical-bag menu-icon"></i>
              </a>
              <div class="collapse" id="general-pages">
                <ul class="nav flex-column sub-menu">
                  <li class="nav-item"> <a class="nav-link" href="{{ route('role_index') }}"> Danh sách quyền truy cập </a></li>
                  <li class="nav-item"> <a class="nav-link" href="{{ route('create_permisstion') }}"> Tạo dữ liệu quyền truy cập </a></li>
                </ul>
              </div>
            </li>
            @endcan
          </ul>
        </nav>