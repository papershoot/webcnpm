<?php
namespace App\services;

use App\Policies\CategoryPolicy;
use App\Policies\MenuPolicy;
use App\Policies\ProductPolicy;
use App\Policies\RolePolicy;
use App\Policies\SettingPolicy;
use App\Policies\SliderPolicy;
use App\Policies\UserPolicy;
use Illuminate\Support\Facades\Gate;

class permisstiongateandpolicy{

    public function setpolyciAccess(){
        $this->gatecategory();
        $this->gaterole();
        $this->gateUser();
        $this->gatemenu();
        $this->gateproduct();
        $this->gateslider();
        $this->gatesetting();

    }
    public function gatecategory(){
        Gate::define('category-list', [CategoryPolicy::class, 'view']);
        Gate::define('category-add', [CategoryPolicy::class, 'create']);
        Gate::define('category-edit', [CategoryPolicy::class, 'update']);
        Gate::define('category-delete', [CategoryPolicy::class, 'delete']);

    }

    public function gateUser(){
        Gate::define('user-list', [UserPolicy::class, 'view']);
        Gate::define('user-add', [UserPolicy::class, 'create']);
        Gate::define('user-edit', [UserPolicy::class, 'update']);
        Gate::define('user-delete', [UserPolicy::class, 'delete']);
    }

    public function gaterole(){
        Gate::define('role-list', [RolePolicy::class, 'view']);
        Gate::define('role-add', [RolePolicy::class, 'create']);
        Gate::define('role-edit', [RolePolicy::class, 'update']);
        Gate::define('role-delete', [RolePolicy::class, 'delete']);

    }

    public function gateproduct(){
        Gate::define('product-list', [ProductPolicy::class, 'view']);
        Gate::define('product-add', [ProductPolicy::class, 'create']);
        Gate::define('product-edit', [ProductPolicy::class, 'update']);
        Gate::define('product-delete', [ProductPolicy::class, 'delete']);

    }

    public function gateslider(){
        Gate::define('slider-list', [SliderPolicy::class, 'view']);
        Gate::define('slider-add', [SliderPolicy::class, 'create']);
        Gate::define('slider-edit', [SliderPolicy::class, 'update']);
        Gate::define('slider-delete', [SliderPolicy::class, 'delete']);

    }

    public function gatemenu(){
        Gate::define('menu-list', [MenuPolicy::class, 'view']);
        Gate::define('menu-add', [MenuPolicy::class, 'create']);
        Gate::define('menu-edit', [MenuPolicy::class, 'update']);
        Gate::define('menu-delete', [MenuPolicy::class, 'delete']);

    }

    public function gatesetting(){
        Gate::define('setting-list', [SettingPolicy::class, 'view']);
        Gate::define('setting-add', [SettingPolicy::class, 'create']);
        Gate::define('setting-edit', [SettingPolicy::class, 'update']);
        Gate::define('setting-delete', [SettingPolicy::class, 'delete']);

    }
}


