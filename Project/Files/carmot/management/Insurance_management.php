<?php
// In this file, I create a new class with its methods

require_once("../conexion/connect.php");

class Insurance_Management extends Conexion{
    public function __construct(){
        parent::__construct();
    }


    public function register_customer($name,$surname,$DoB,$sex,$address,$phone,$email){
        // --- insert into customers table
        $sql = "insert into customers(Name,Surname,Date_of_birth,Sex,Address,Email,Telephone) values(:m_name,:m_surname,:m_DoB,:m_sex,:m_address,:m_email,:m_phone)";
        $result = $this->conexion -> prepare($sql);
        $result -> bindValue(":m_name",$name);
        $result -> bindValue(":m_surname",$surname);
        $result -> bindValue(":m_DoB",$DoB);
        $result -> bindValue(":m_sex",$sex);
        $result -> bindValue(":m_address",$address);
        $result -> bindValue(":m_email",$email);
        $result -> bindValue(":m_phone",$phone);
        $result -> execute();
    }

    public function search_customer($name,$surname,$dob){
        $sql = "select * from customers where Name= :m_name and Surname= :m_surname and Date_of_birth = :m_dob";
        $result = $this->conexion -> prepare($sql);
        $result -> bindValue(":m_name",$name);
        $result -> bindValue(":m_surname",$surname);
        $result -> bindValue(":m_dob",$dob);
        $result -> execute();
        return $result;
    }

    public function select_customers(){
        $sql = "select * from customers";
        $result = $this->conexion -> prepare($sql);
        $result -> execute();
        return $result;
    }

/*
    public function number_customers(){
        $sql = "select * from customers";
        $result = $this->conexion -> prepare($sql);
        $result -> execute();
        return $result->rowCount();
    }

*/
    public function delete_customer($id){
        $sql = "delete from customers where c_id=$id";
        $result = $this->conexion -> prepare($sql);
        $result -> execute();
        return $result;
    }

    public function update_customer($id,$name,$surname,$address,$email,$phone){
        $sql = "update customers set Name='$name', Surname ='$surname', Address='$address', Email='$email, Telephone='$phone'' where c_id=$id";
        $result = $this->conexion -> prepare($sql);
        $result -> execute();
        return $result;
    }
}

?>