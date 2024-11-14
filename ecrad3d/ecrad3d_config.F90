module ecrad3d_config

  use parkind1, only : jprb

  enum, bind(c)
     enumerator IBoundaryPeriodic, IBoundaryClosed
  end enum
  
  type config_type

     ! Do we represent 3D transport between columns
     logical :: do_3d         = .false.
     ! If do_3d==true, do we do 3D effects only for the direct solar
     ! beam, or also diffuse transport
     logical :: do_3d_direct_only = .false.

     ! length scale of horizontal diffusion 
     real(jprb) :: diffusion_length_scale = 1000.0_jprb

  end type config_type

end module ecrad3d_config
