[33mcommit 2af7d03f26e3fd45329afb9712be2988004894e4[m
Author: Chris <ej88ej@gmail.com>
Date:   Mon Aug 6 12:55:19 2018 +0900

    Navbar style

[1mdiff --git a/src/components/Navbar.vue b/src/components/Navbar.vue[m
[1mindex 4014402..45ae117 100644[m
[1m--- a/src/components/Navbar.vue[m
[1m+++ b/src/components/Navbar.vue[m
[36m@@ -1,8 +1,13 @@[m
 <template>[m
[31m-  <div>[m
[31m-    <router-link to="/">Home</router-link>[m
[31m-    <router-link to="/login">Login</router-link>[m
[31m-  </div>[m
[32m+[m[32m  <nav class="header">[m
[32m+[m[32m    <div class="header-logo">[m
[32m+[m[32m      <router-link to="/">Home</router-link>[m
[32m+[m[32m    </div>[m
[32m+[m[32m    <div class="header-auth">[m
[32m+[m[32m      <router-link to="/login">Login</router-link>[m
[32m+[m[32m      <!-- <a>Logout</a> -->[m
[32m+[m[32m    </div>[m
[32m+[m[32m  </nav>[m
 </template>[m
 [m
 <script>[m
[36m@@ -11,5 +16,46 @@[m [mexport default {[m
 </script>[m
 [m
 <style>[m
[31m-[m
[32m+[m[32m.header {[m
[32m+[m[32m  flex: none;[m
[32m+[m[32m  background-color: rgba(0,0,0,.15);[m
[32m+[m[32m  height: 32px;[m
[32m+[m[32m  padding: 4px;[m
[32m+[m[32m}[m
[32m+[m[32m.header a {[m
[32m+[m[32m  display: block;[m
[32m+[m[32m  height: 30px;[m
[32m+[m[32m  line-height: 30px;[m
[32m+[m[32m  text-decoration: none;[m
[32m+[m[32m  color: rgba(255,255,255,.5);[m
[32m+[m[32m}[m
[32m+[m[32m.header-logo {[m
[32m+[m[32m  position: absolute;[m
[32m+[m[32m  left: 50%;[m
[32m+[m[32m  top: 7px;[m
[32m+[m[32m  margin-left: -30px;[m
[32m+[m[32m  text-align: center;[m
[32m+[m[32m  font-weight: bolder;[m
[32m+[m[32m  font-size: 24px;[m
[32m+[m[32m}[m
[32m+[m[32m.header-logo a:hover,[m
[32m+[m[32m.header-logo a:focus {[m
[32m+[m[32m  color: rgba(255,255,255,.9);[m
[32m+[m[32m}[m
[32m+[m[32m.header-auth {[m
[32m+[m[32m  position: absolute;[m
[32m+[m[32m  right: 15px;[m
[32m+[m[32m  top: 5px;[m
[32m+[m[32m}[m
[32m+[m[32m.header-auth a {[m
[32m+[m[32m  border-radius: 2px;[m
[32m+[m[32m  padding: 0 10px;[m
[32m+[m[32m  background-color: rgba(255,255,255, .5);[m
[32m+[m[32m  color: white;[m
[32m+[m[32m  transition: all .3s;[m
[32m+[m[32m}[m
[32m+[m[32m.header-auth a:hover,[m
[32m+[m[32m.header-auth a:focus {[m
[32m+[m[32m  background-color: rgba(255,255,255, .3);[m
[32m+[m[32m}[m
 </style>[m
