<?php

class AdministrationController extends Controllers{
    public function index(){
        View::view("admin",[]);
    }
}