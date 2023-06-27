! tensor-interface
! Copyright (C) 2023  Jan Brandejs, Laboratoire de Chimie et Physique Quantiques, Toulouse, France

module tensorType

    contains 

    type, public:: tensor_t
       type(tensor_metadata_t), private:: metadata !tensor metadata
       type(tensor_storage_t), private:: storage     !tensor data storage 
       contains
        procedure, private:: metadataConstructor    ! metadata constructor
        procedure, private:: copyConstructor    ! copy constructor
        
        procedure, private:: slice              ! slice constructor

        generic, public:: assignment(=)=>copyConstructor         !equals (copy) assignment
        
        procedure, public:: get_dimensions => getDims   ! returns the sizes of each index of the tensor
        generic, public::   get_subtensor => getSubten  ! extracts a subtensor
        generic, public:: print_metadata => printMeta  ! prints metadta
        procedure, private:: getDims
        procedure, private:: getSubten
        procedure, private:: printMeta 
       

        final:: tensorDestructor
    end type tensor_t

end module