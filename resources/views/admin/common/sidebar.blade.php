<div class="sidebar-wrapper">
   <div>
       <div class="logo-wrapper">
           <a href="#">
               <img class="img-fluid for-light" src="{{ url('/') }}/{{ $settings['websiteLogo'] }}" alt="" style="width: 100%; height: 40px; display: block; margin: auto;">
               <img class="img-fluid for-dark" src="{{ url('backend/assets/images/logo/small-white-logo.png') }}" alt="">
           </a>
           <div class="back-btn">
               <i class="fa fa-angle-left"></i>
           </div>
       </div>
       <div class="logo-icon-wrapper">
           <a href="{{ url('/') }}/admin">
               <img class="img-fluid" src="{{ url('backend/assets/images/logo-icon.png') }}" alt="">
           </a>
       </div>
       <nav class="sidebar-main">
           <div class="left-arrow" id="left-arrow">
               <i data-feather="arrow-left"></i>
           </div>
           <div id="sidebar-menu">
               <ul class="sidebar-links" id="simple-bar">
                   <li class="back-btn">
                       <a href="#">
                           <img class="img-fluid" src="{{ url('backend/assets/images/logo-icon.png') }}" alt="">
                       </a>
                       <div class="mobile-back text-end">
                           <span>{{ $controller::message("Back") }}</span>
                           <i class="fa fa-angle-right ps-2" aria-hidden="true"></i>
                       </div>
                   </li>

                   @php($parents = $controller::getDataOrderBy("menus", "sortOrder", "ASC"))
                   @foreach($parents as $parent)
                       @php($rolesArrayMenuCheck = json_decode($parent['roleId'], true))
                       @if(!empty($rolesArrayMenuCheck) && !in_array(Session::get('roleId'), $rolesArrayMenuCheck))
                           @continue
                       @endif

                       @php($show = 0)
                       <li class="sidebar-list">
                           @php($link = $parent['link'] != "" ? url("/") . "/admin" . $parent['link'] : "#")
                           @if($parent['parentId'] == 0)
                               @php($childArray = [])
                               @php($childs = $controller::getDataWhere("menus", "parentId", $parent['menuId']))
                               @foreach($childs as $child)
                                   @php($rolesArrayMenuCheck = json_decode($child['roleId'], true))
                                   @if(!empty($rolesArrayMenuCheck) && !in_array(Session::get('roleId'), $rolesArrayMenuCheck))
                                       @continue
                                   @endif
                                   @php($module = $controller::getDataWhere("modules", "moduleId", $child['moduleId']))
                                   @php($childArray[] = !empty($module) ? strtolower($module[0]['moduleName']) : $child['link'])
                               @endforeach
                               @php($page = (Request::segment(3) != "") ? Request::segment(3) : Request::segment(2))
                               @php($show = in_array($page, $childArray) ? 1 : 0)

                               <a class="sidebar-link sidebar-title {{ ($show == 1) ? ' active' : '' }}" href="{{ $link }}">
                                   <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                                       <g>
                                           <g>
                                               <path d="M9.07861 16.1355H14.8936" stroke="#130F26" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"></path>
                                               <path fill-rule="evenodd" clip-rule="evenodd" d="M2.3999 13.713C2.3999 8.082 3.0139 8.475 6.3189 5.41C7.7649 4.246 10.0149 2 11.9579 2C13.8999 2 16.1949 4.235 17.6539 5.41C20.9589 8.475 21.5719 8.082 21.5719 13.713C21.5719 22 19.6129 22 11.9859 22C4.3589 22 2.3999 22 2.3999 13.713Z" stroke="#130F26" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"></path>
                                           </g>
                                       </g>
                                   </svg>
                                   <span>{{ $controller::message($parent['menuHeading']) }}</span>
                               </a>
                           @endif

                           @php($childs = $controller::getDataWhere("menus", "parentId", $parent['menuId']))
                           @if(!empty($childs))
                               <ul class="sidebar-submenu" style="{{ ($show == 1) ? 'display: block' : 'display: none' }}">
                                   @foreach($childs as $child)
                                       @php($rolesArrayMenuCheck = json_decode($child['roleId'], true))
                                       @if(!empty($rolesArrayMenuCheck) && !in_array(Session::get('roleId'), $rolesArrayMenuCheck))
                                           @continue
                                       @endif
                                       @php($module = $controller::getDataWhere("modules", "moduleId", $child['moduleId']))
                                       @if(!empty($module))
                                           <li>
                                               <a class="{{ $page == strtolower($module[0]['moduleName']) ? 'active' : '' }}" href="{{ url('/') }}/admin/page/{{ strtolower($module[0]['moduleName']) }}">
                                                   {{ $controller::message($child['menuHeading']) }}
                                               </a>
                                           </li>
                                       @else
                                           <li>
                                               <a class="{{ ($page == $child['link']) ? 'active' : '' }}" href="{{ url('/') }}/admin/{{ $child['link'] }}">
                                                   {{ $controller::message($child['menuHeading']) }}
                                               </a>
                                           </li>
                                       @endif
                                   @endforeach
                               </ul>
                           @endif
                       </li>
                   @endforeach

                   <li class="sidebar-list">
                       <a class="sidebar-link sidebar-title link-nav" href="{{ url('/') }}/admin/logout">
                           <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                               <g>
                                   <g>
                                       <path d="M8.54248 9.21777H15.3975" stroke="#130F26" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"></path>
                                       <path fill-rule="evenodd" clip-rule="evenodd" d="M11.9702 2.5C5.58324 2.5 4.50424 3.432 4.50424 10.929C4.50424 19.322 4.34724 21.5 5.94324 21.5C7.53824 21.5 10.1432 17.816 11.9702 17.816C13.7972 17.816 16.4022 21.5 17.9972 21.5C19.5932 21.5 19.4362 19.322 19.4362 10.929C19.4362 3.432 18.3572 2.5 11.9702 2.5Z" stroke="#130F26" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"></path>
                                   </g>
                               </g>
                           </svg>
                           <span>{{ $controller::message("Logout") }}</span>
                           <div class="according-menu">
                               <i class="fa fa-angle-right"></i>
                           </div>
                       </a>
                   </li>
               </ul>
           </div>
           <div class="right-arrow" id="right-arrow">
               <i data-feather="arrow-right"></i>
           </div>
       </nav>
   </div>
</div>