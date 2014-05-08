<?php
include_once 'Conexion.php';
class Business {
 
    // variables
     private $id_business;
     private $name;

    function Business($id=0) // declara el constructor, si trae el numero de cliente lo busca , si no, trae todos los clientes
	{
		if ($id!=0)
		{      
                        $conexion=new Conexion();        
			$sql="select * from business where id_business='$id'";
                        $row=$conexion->sql($sql);
                        $array= mysql_fetch_array($row);
			$this->id_business=$array['id_business'];
                        $this->name=$array['name'];
            
		}
	}
        
        // Get
         function getIDBusiness()
	 { return $this->id_business;}
           function getName()
	 { return $this->name;}
         
         
         
}

         //Set
          function setIdBusiness($val)
	 { $this->id_publicacion=$val;}
           function setName($val)
	 { $this->name=$val;}

                                      
        function insertBusiness()	// inserta el cliente cargado en los atributos
	{               
                      
                        $conexion=new Conexion();    
                        $query="insert into business(name)values('$this->name')";
			$conexion->sql($query);      
	
        }   
        
        
      
             function deleteBusiness()	
	{            
			$conexion=new Conexion();    
                        $query="delete from business where id_business = $this->id_business";
                        $conexion->sql($query);
                     

	}

        	function updateBusiness()	// actualiza el cliente cargado en los atributos
	{                    

                        $conexion=new Conexion();    
			$query="update business set name='$this->name' where id_business='$this->id_business'";
                        $conexion->sql($query);
                        
                        
	}
        
        
                function getBusiness()	// inserta el cliente cargado en los atributos
	{
$conexion=new Conexion();    
$sql="select * from business order by name asc";
                        
 $row=$conexion->sql($sql);
 return $row; //regresamos el arreglo con la consulta de Noticias por Campus
	}
        

// Ejemplo consulta multiples Tablas        
        
        
//                function getNoticiasPublicadas()	// inserta el cliente cargado en los atributos
//	{
//$conexion=new Conexion();    
//$sql="SELECT noticia.id_noticia,noticia.balazo,noticia.url,ciudad.ciudad AS campus, unidadacademica.unidad AS unidad_academica,tema.tema,noticia.titulo,noticia.fecha
//FROM noticia,ciudad,unidadacademica,tema WHERE noticia.campus = ciudad.idciudad
//and noticia.unidad_academica = unidadacademica.idunidad
//and noticia.tema = tema.id_tema and noticia.publicado='1' order by noticia.id_noticia desc limit 0,5";
//                        
// $row=$conexion->sql($sql);
// return $row; //regresamos el arreglo con la consulta de Noticias por Campus
//	}        
//        

              
}

  

?>
