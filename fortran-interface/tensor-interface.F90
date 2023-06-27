! tensor-interface
! Copyright (C) 2023  Jan Brandejs, Laboratoire de Chimie et Physique Quantiques, Toulouse, France

module tensorInterface
     ! tensor creation, possibly without allocation of storage
     interface tensor_create
          module procedure tensor_create
     end interface tensor_create
     ! Allocate storage nad Fill tensor with initial values
     interface tensor_initialize
          module procedure tensor_initialize
     end interface tensor_initialize
     ! copy a tensor
     interface tensor_copy
          module procedure tensor_copy
     end interface tensor_copy
     ! add (sum) tensors
     interface tensor_add
          module procedure tensor_add
     end interface tensor_add
     ! contract tensors
     interface tensor_contract
          module procedure tensor_contract
     end interface tensor_contract

     interface tensor_reshape
          integer function tensor_transpose(tensorOut, tensorIn)
               implicit none
               type(tensor_t), intent(inout) :: tensorOut
               type(tensor_t), intent(inout) :: tensorIn
          end function tensor_transpose
     end interface tensor_reshape
     

     private tensor_create
     private tensor_initialize
     private tensor_copy
     private tensor_add
     private tensor_contract

    !------------------------------------------------------------------------------------
     function tensor_copy(tensorOut,tensorIn) result(err)
          implicit none                         
          type(tensor_t), intent(inout):: tensorOut 
          type(tensor_t), intent(inout):: tensorIn  
          integer:: err  

          ! ...
          return
     end function tensor_copy

end module