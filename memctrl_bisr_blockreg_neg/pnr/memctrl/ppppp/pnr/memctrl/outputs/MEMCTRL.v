// Fusion Compiler Version U-2022.12-SP1 Verilog Writer
// Generated on 12/15/2024 at 6:33:32
// Library Name: MEMCTRL
// Block Name: MEMCTRL
// User Label: 
// Write Command: write_verilog -exclude { leaf_module_declarations corner_cells pad_spacer_cells filler_cells flip_chip_pad_cells empty_modules unconnected_ports spare_cells } ./outputs/MEMCTRL.v
module MEMCTRL ( ODATA , BIST_PASS , ADDR , CE , CLK , CSB , IDATA , OEB , 
    RSTN , WEB , BIST_EN , BISR_EN , BIST_MODE , VDD , VSS ) ;
output [7:0] ODATA ;
output BIST_PASS ;
input  [15:0] ADDR ;
input  CE ;
input  CLK ;
input  CSB ;
input  [7:0] IDATA ;
input  OEB ;
input  RSTN ;
input  WEB ;
input  BIST_EN ;
input  BISR_EN ;
input  [2:0] BIST_MODE ;
input  VDD ;
input  VSS ;

wire HFSNET_1225 ;
wire HFSNET_1224 ;
wire HFSNET_1222 ;
wire HFSNET_1221 ;
wire HFSNET_1231 ;
wire aps_rename_229_ ;
wire aps_rename_230_ ;
wire HFSNET_1274 ;
wire aps_rename_231_ ;
wire ctmn_3986 ;
wire HFSNET_814 ;
wire ctmn_3987 ;
wire ctmn_3988 ;
wire ctmn_3989 ;
wire ctmn_3990 ;
wire ctmn_3991 ;
wire ctmn_3992 ;
wire ctmn_3993 ;
wire ctmn_3994 ;
wire ctmn_3995 ;
wire ctmn_3953 ;
wire ctmn_3954 ;
wire ctmn_3955 ;
wire ctmn_3984 ;
wire ctmn_3956 ;
wire optlc_net_220 ;
wire optlc_net_221 ;
wire ctmn_3959 ;
wire ctmn_3960 ;
wire ctmn_3961 ;
wire ctmn_3962 ;
wire ctmn_3963 ;
wire ctmn_3964 ;
wire ctmn_3965 ;
wire ctmn_3966 ;
wire ctmn_3967 ;
wire [15:0] BINARY_COUNTER_ADDR ;
wire [15:1] GRAY_COUNTER_ADDR ;
wire ctmn_3968_CDR1 ;
wire PREV_CE ;
wire [7:7] TOGGLED_DATA ;
wire ctmn_3969 ;
wire ctmn_3970 ;
wire phfnn_26 ;
wire \CLK_clock_gate_UFSM/CSB_DELAY_reg ;
wire ctmn_3971 ;
wire phfnn_27 ;
wire ctmn_3972 ;
wire [15:0] LFSR_ADDR ;
wire [7:0] LFSR_DATA ;
wire MEM_CE ;
wire ctmn_3973 ;
wire ctmn_3974 ;
wire ctmn_3975 ;
wire ctmn_3976 ;
wire ctmn_3977_CDR1 ;
wire ctmn_3978 ;
wire ctmn_3979 ;
wire ctmn_3980 ;
wire [9:0] MEM_ADDR ;
wire MEM_WEB ;
wire [63:0] MEM_OEB ;
wire [63:0] MEM_CSB ;
wire ctmn_3981 ;
wire ctmn_3982 ;
wire ctmn_3983 ;
wire ctmn_3985 ;
wire ctmn_3897 ;
wire ctmn_3898 ;
wire [9:0] FSM_ADDR ;
wire [7:0] MEM_IDATA ;
wire ctmn_3899 ;
wire phfnn_28 ;
wire ctmn_3900 ;
wire ctmn_3901 ;
wire ctmn_3902 ;
wire ctmn_3903 ;
wire ctmn_3904 ;
wire ctmn_3905 ;
wire ctmn_3906 ;
wire ctmn_3907 ;
wire ctmn_3908 ;
wire \CE_clock_gate_UGRAY_COUNTER_16B/binary_reg ;
wire ctmn_3909 ;
wire phfnn_29 ;
wire ctmn_3911 ;
wire phfnn_30 ;
wire ctmn_3913 ;
wire phfnn_39 ;
wire ctmn_3915 ;
wire phfnn_42 ;
wire ctmn_3917 ;
wire phfnn_45 ;
wire ctmn_3919 ;
wire phfnn_46 ;
wire ctmn_3921 ;
wire ctmn_3922 ;
wire phfnn_48 ;
wire ctmn_3924 ;
wire ctmn_3925 ;
wire ctmn_3926 ;
wire phfnn_31 ;
wire ctmn_3928 ;
wire phfnn_32 ;
wire ctmn_3930 ;
wire phfnn_40 ;
wire phfnn_33 ;
wire phfnn_34 ;
wire ctmn_3932 ;
wire phfnn_43 ;
wire phfnn_35 ;
wire ctmn_3935 ;
wire optlc_net_222 ;
wire ctmn_3936 ;
wire ctmn_3937 ;
wire ctmn_3938 ;
wire HFSNET_787 ;
wire ctmn_3940 ;
supply1 VDD ;
supply0 VSS ;
wire phfnn_37 ;
wire phfnn_38 ;
wire ctmn_3942 ;
wire phfnn_41 ;
wire ctmn_3894 ;
wire ctmn_3555 ;
wire ctmn_3557 ;
wire ctmn_3892 ;
wire ctmn_3556 ;
wire ctmn_3558 ;
wire ctmn_3559 ;
wire ctmn_3560_CDR1 ;
wire phfnn_44 ;
wire ctmn_3561 ;
wire \ULFSR_8B/N1 ;
wire \ULFSR_8B/N2 ;
wire \ULFSR_8B/N3 ;
wire \ULFSR_8B/N4 ;
wire \ULFSR_8B/N5 ;
wire \ULFSR_8B/N6 ;
wire \ULFSR_8B/N7 ;
wire ctmn_3887 ;
wire ctmn_3888 ;
wire phfnn_47 ;
wire ctmn_3889 ;
wire [2:0] \UCOMP_8B/prev_BIST_MODE ;
wire ctmn_3890 ;
wire ctmn_3891 ;
wire HFSNET_0 ;
wire ctmn_49_CDR1 ;
wire ctmn_3944 ;
wire \UCOMP_8B/N4 ;
wire ctmn_50_CDR1 ;
wire ctmn_51_CDR1 ;
wire ctmn_3946 ;
wire ctmn_3947 ;
wire ctmn_52_CDR1 ;
wire ctmn_53_CDR1 ;
wire ctmn_3949 ;
wire ctmn_54_CDR1 ;
wire ctmn_3950 ;
wire \ULFSR_16B/N1 ;
wire \ULFSR_16B/N2 ;
wire \ULFSR_16B/N3 ;
wire \ULFSR_16B/N4 ;
wire \ULFSR_16B/N5 ;
wire \ULFSR_16B/N6 ;
wire \ULFSR_16B/N7 ;
wire \ULFSR_16B/N8 ;
wire \ULFSR_16B/N9 ;
wire \ULFSR_16B/N10 ;
wire \ULFSR_16B/N11 ;
wire \ULFSR_16B/N12 ;
wire \ULFSR_16B/N13 ;
wire \ULFSR_16B/N14 ;
wire \ULFSR_16B/N15 ;
wire ctmn_3951 ;
wire ctmn_3952 ;
wire ctmn_3893 ;
wire HFSNET_811 ;
wire HFSNET_805 ;
wire ctmn_3505 ;
wire \UBINARY_COUNTER_16B/N1 ;
wire \UBINARY_COUNTER_16B/N2 ;
wire \UBINARY_COUNTER_16B/N3 ;
wire \UBINARY_COUNTER_16B/N4 ;
wire \UBINARY_COUNTER_16B/N5 ;
wire \UBINARY_COUNTER_16B/N6 ;
wire \UBINARY_COUNTER_16B/N7 ;
wire \UBINARY_COUNTER_16B/N8 ;
wire \UBINARY_COUNTER_16B/N9 ;
wire \UBINARY_COUNTER_16B/N10 ;
wire \UBINARY_COUNTER_16B/N11 ;
wire \UBINARY_COUNTER_16B/N12 ;
wire \UBINARY_COUNTER_16B/N13 ;
wire \UBINARY_COUNTER_16B/N14 ;
wire ctmn_3506 ;
wire ctmn_55_CDR1 ;
wire HFSNET_802 ;
wire ctmn_3508 ;
wire ctmn_3509 ;
wire ctmn_3510 ;
wire ctmn_3511 ;
wire ctmn_3512 ;
wire ctmn_3513 ;
wire ctmn_3514 ;
wire ctmn_3515 ;
wire ctmn_3516 ;
wire ctmn_3517 ;
wire ctmn_3518 ;
wire ctmn_56_CDR1 ;
wire ctmn_3520 ;
wire ctmn_3521 ;
wire ctmn_3522 ;
wire ctmn_3523 ;
wire ctmn_3524 ;
wire ctmn_3525 ;
wire ctmn_3526 ;
wire \UGRAY_COUNTER_16B/N1 ;
wire [15:0] \UGRAY_COUNTER_16B/binary ;
wire \UGRAY_COUNTER_16B/N2 ;
wire \UGRAY_COUNTER_16B/N3 ;
wire \UGRAY_COUNTER_16B/N4 ;
wire \UGRAY_COUNTER_16B/N5 ;
wire \UGRAY_COUNTER_16B/N6 ;
wire \UGRAY_COUNTER_16B/N7 ;
wire \UGRAY_COUNTER_16B/N8 ;
wire \UGRAY_COUNTER_16B/N9 ;
wire \UGRAY_COUNTER_16B/N10 ;
wire \UGRAY_COUNTER_16B/N11 ;
wire \UGRAY_COUNTER_16B/N12 ;
wire \UGRAY_COUNTER_16B/N13 ;
wire ctmn_3527 ;
wire ctmn_3528 ;
wire ctmn_57_CDR1 ;
wire \UGRAY_COUNTER_16B/N17 ;
wire \UGRAY_COUNTER_16B/N18 ;
wire \UGRAY_COUNTER_16B/N19 ;
wire \UGRAY_COUNTER_16B/N20 ;
wire \UGRAY_COUNTER_16B/N21 ;
wire \UGRAY_COUNTER_16B/N22 ;
wire \UGRAY_COUNTER_16B/N23 ;
wire \UGRAY_COUNTER_16B/N24 ;
wire \UGRAY_COUNTER_16B/N25 ;
wire \UGRAY_COUNTER_16B/N26 ;
wire \UGRAY_COUNTER_16B/N27 ;
wire \UGRAY_COUNTER_16B/N28 ;
wire \UGRAY_COUNTER_16B/N29 ;
wire \UGRAY_COUNTER_16B/N30 ;
wire \UGRAY_COUNTER_16B/N31 ;
wire ctmn_58_CDR1 ;
wire ctmn_3530 ;
wire ctmn_3531 ;
wire ctmn_3532 ;
wire ctmn_3533 ;
wire ctmn_59_CDR1 ;
wire ctmn_3535 ;
wire ctmn_3536 ;
wire ctmn_3537 ;
wire ctmn_3538 ;
wire ctmn_3539 ;
wire ctmn_60_CDR1 ;
wire ctmn_3541 ;
wire ctmn_3542 ;
wire ctmn_3543 ;
wire ctmn_3544 ;
wire ctmn_3545 ;
wire ctmn_3546 ;
wire ctmn_3547 ;
wire ctmn_3548 ;
wire ctmn_3549 ;
wire ctmn_3550 ;
wire ctmn_3551 ;
wire ctmn_61_CDR1 ;
wire ctmn_3553 ;
wire ctmn_3562 ;
wire ctmn_3563 ;
wire ctmn_3564 ;
wire ctmn_3565 ;
wire ctmn_3566 ;
wire ctmn_3567 ;
wire ctmn_3568 ;
wire ctmn_3569 ;
wire ctmn_3570_CDR1 ;
wire ctmn_3571_CDR1 ;
wire ctmn_3572_CDR1 ;
wire ctmn_3573_CDR1 ;
wire ctmn_3574 ;
wire ctmn_3575 ;
wire ctmn_3576 ;
wire ctmn_3577 ;
wire ctmn_3578_CDR1 ;
wire ctmn_71_CDR1 ;
wire ctmn_3580_CDR1 ;
wire ctmn_3581 ;
wire ctmn_3582 ;
wire ctmn_3583 ;
wire ctmn_3584_CDR1 ;
wire ctmn_3585 ;
wire ctmn_3586 ;
wire ctmn_3587 ;
wire ctmn_3588 ;
wire ctmn_3589 ;
wire ctmn_3590 ;
wire ctmn_3591 ;
wire ctmn_3592 ;
wire ctmn_3593 ;
wire ctmn_3594_CDR1 ;
wire ctmn_3595_CDR1 ;
wire ctmn_3596_CDR1 ;
wire ctmn_3597_CDR1 ;
wire ctmn_3598 ;
wire ctmn_3599 ;
wire ctmn_3600 ;
wire ctmn_3601 ;
wire ctmn_3602_CDR1 ;
wire ctmn_72_CDR1 ;
wire ctmn_3604_CDR1 ;
wire ctmn_3605 ;
wire ctmn_3606 ;
wire ctmn_3607 ;
wire ctmn_3608 ;
wire ctmn_3609 ;
wire ctmn_3610 ;
wire ctmn_3611 ;
wire ctmn_3612 ;
wire ctmn_3613_CDR1 ;
wire ctmn_3614_CDR1 ;
wire ctmn_3615_CDR1 ;
wire ctmn_3616_CDR1 ;
wire ctmn_3617 ;
wire ctmn_3618 ;
wire ctmn_3619 ;
wire ctmn_3620 ;
wire ctmn_3621 ;
wire ctmn_3622 ;
wire ctmn_3623 ;
wire ctmn_3624 ;
wire ctmn_3625_CDR1 ;
wire ctmn_3626_CDR1 ;
wire ctmn_3627_CDR1 ;
wire ctmn_3628_CDR1 ;
wire ctmn_3629 ;
wire ctmn_3630 ;
wire ctmn_3631 ;
wire ctmn_3632_CDR1 ;
wire ctmn_3633 ;
wire ctmn_3634 ;
wire ctmn_3635 ;
wire ctmn_3636 ;
wire ctmn_3637 ;
wire ctmn_3638 ;
wire ctmn_3639 ;
wire ctmn_3640 ;
wire ctmn_3641 ;
wire ctmn_3642_CDR1 ;
wire ctmn_3643_CDR1 ;
wire ctmn_3644_CDR1 ;
wire ctmn_3645_CDR1 ;
wire ctmn_3646 ;
wire ctmn_3647 ;
wire ctmn_3648 ;
wire ctmn_3649 ;
wire ctmn_3650_CDR1 ;
wire HFSNET_1 ;
wire ctmn_3652_CDR1 ;
wire ctmn_3653_CDR1 ;
wire ctmn_3654_CDR1 ;
wire ctmn_3655_CDR1 ;
wire ctmn_3656_CDR1 ;
wire ctmn_3657_CDR1 ;
wire ctmn_3658_CDR1 ;
wire ctmn_3659_CDR1 ;
wire ctmn_68_CDR1 ;
wire ctmn_3661_CDR1 ;
wire ctmn_3662_CDR1 ;
wire ctmn_3663_CDR1 ;
wire ctmn_3664_CDR1 ;
wire ctmn_3665_CDR1 ;
wire ctmn_3666_CDR1 ;
wire ctmn_3667_CDR1 ;
wire ctmn_69_CDR1 ;
wire ctmn_3669_CDR1 ;
wire ctmn_3670_CDR1 ;
wire ctmn_3671_CDR1 ;
wire ctmn_3672_CDR1 ;
wire ctmn_3673_CDR1 ;
wire ctmn_3674_CDR1 ;
wire ctmn_3675_CDR1 ;
wire ctmn_3676_CDR1 ;
wire ctmn_3677_CDR1 ;
wire ctmn_3678_CDR1 ;
wire ctmn_3679_CDR1 ;
wire ctmn_3680_CDR1 ;
wire ctmn_3681_CDR1 ;
wire ctmn_3682_CDR1 ;
wire ctmn_3683_CDR1 ;
wire ctmn_70_CDR1 ;
wire ctmn_3685_CDR1 ;
wire ctmn_3686_CDR1 ;
wire ctmn_3687_CDR1 ;
wire ctmn_3688_CDR1 ;
wire ctmn_3689_CDR1 ;
wire ctmn_3690_CDR1 ;
wire ctmn_3691_CDR1 ;
wire ctmn_3692_CDR1 ;
wire ctmn_65_CDR1 ;
wire ctmn_3694_CDR1 ;
wire ctmn_3695_CDR1 ;
wire ctmn_3696_CDR1 ;
wire ctmn_3697_CDR1 ;
wire ctmn_3698_CDR1 ;
wire ctmn_3699_CDR1 ;
wire ctmn_3700_CDR1 ;
wire ctmn_66_CDR1 ;
wire ctmn_3702_CDR1 ;
wire ctmn_3703_CDR1 ;
wire ctmn_3704_CDR1 ;
wire ctmn_3705_CDR1 ;
wire ctmn_3706_CDR1 ;
wire ctmn_3707_CDR1 ;
wire ctmn_3708_CDR1 ;
wire ctmn_3709_CDR1 ;
wire ctmn_3710_CDR1 ;
wire ctmn_3711_CDR1 ;
wire ctmn_3712_CDR1 ;
wire ctmn_3713_CDR1 ;
wire ctmn_3714_CDR1 ;
wire ctmn_3715_CDR1 ;
wire ctmn_3716_CDR1 ;
wire ctmn_67_CDR1 ;
wire ctmn_3718_CDR1 ;
wire ctmn_3719_CDR1 ;
wire ctmn_3720_CDR1 ;
wire ctmn_3721_CDR1 ;
wire ctmn_3722_CDR1 ;
wire ctmn_3723_CDR1 ;
wire ctmn_3724_CDR1 ;
wire ctmn_3725_CDR1 ;
wire ctmn_62_CDR1 ;
wire ctmn_3727_CDR1 ;
wire ctmn_3728_CDR1 ;
wire ctmn_3729_CDR1 ;
wire ctmn_3730_CDR1 ;
wire ctmn_3731_CDR1 ;
wire ctmn_3732_CDR1 ;
wire ctmn_3733_CDR1 ;
wire ctmn_63_CDR1 ;
wire ctmn_3735_CDR1 ;
wire ctmn_3736_CDR1 ;
wire ctmn_3737_CDR1 ;
wire ctmn_3738_CDR1 ;
wire ctmn_3739_CDR1 ;
wire ctmn_3740_CDR1 ;
wire ctmn_3741_CDR1 ;
wire ctmn_3742_CDR1 ;
wire ctmn_3743_CDR1 ;
wire ctmn_3744_CDR1 ;
wire ctmn_3745_CDR1 ;
wire ctmn_3746_CDR1 ;
wire ctmn_3747_CDR1 ;
wire ctmn_3748_CDR1 ;
wire ctmn_3749_CDR1 ;
wire ctmn_64_CDR1 ;
wire ctmn_3751_CDR1 ;
wire ctmn_3752_CDR1 ;
wire ctmn_3753_CDR1 ;
wire ctmn_3754_CDR1 ;
wire ctmn_3755_CDR1 ;
wire ctmn_3756_CDR1 ;
wire ctmn_3757_CDR1 ;
wire ctmn_3758_CDR1 ;
wire HFSNET_2 ;
wire ctmn_3760_CDR1 ;
wire ctmn_3761_CDR1 ;
wire ctmn_3762_CDR1 ;
wire ctmn_3763_CDR1 ;
wire ctmn_3764_CDR1 ;
wire ctmn_3765_CDR1 ;
wire ctmn_3766_CDR1 ;
wire HFSNET_3 ;
wire ctmn_3768_CDR1 ;
wire ctmn_3769_CDR1 ;
wire ctmn_3770_CDR1 ;
wire ctmn_3771_CDR1 ;
wire ctmn_3772_CDR1 ;
wire ctmn_3773_CDR1 ;
wire ctmn_3774_CDR1 ;
wire ctmn_3775_CDR1 ;
wire ctmn_3776_CDR1 ;
wire ctmn_3777_CDR1 ;
wire ctmn_3778_CDR1 ;
wire ctmn_3779_CDR1 ;
wire ctmn_3780_CDR1 ;
wire ctmn_3781_CDR1 ;
wire ctmn_3782_CDR1 ;
wire HFSNET_4 ;
wire ctmn_3784_CDR1 ;
wire ctmn_3785_CDR1 ;
wire ctmn_3786_CDR1 ;
wire ctmn_3787_CDR1 ;
wire ctmn_3788_CDR1 ;
wire ctmn_3789_CDR1 ;
wire ctmn_3790_CDR1 ;
wire ctmn_3791_CDR1 ;
wire HFSNET_5 ;
wire ctmn_3793_CDR1 ;
wire ctmn_3794_CDR1 ;
wire ctmn_3795_CDR1 ;
wire ctmn_3796_CDR1 ;
wire ctmn_3797_CDR1 ;
wire ctmn_3798_CDR1 ;
wire ctmn_3799_CDR1 ;
wire gre_a_BUF_4_291 ;
wire ctmn_3801_CDR1 ;
wire ctmn_3802_CDR1 ;
wire ctmn_3803_CDR1 ;
wire ctmn_3804_CDR1 ;
wire ctmn_3805_CDR1 ;
wire ctmn_3806_CDR1 ;
wire ctmn_3807_CDR1 ;
wire ctmn_3808_CDR1 ;
wire ctmn_3809_CDR1 ;
wire ctmn_3810_CDR1 ;
wire ctmn_3811_CDR1 ;
wire ctmn_3812_CDR1 ;
wire ctmn_3813_CDR1 ;
wire ctmn_3814_CDR1 ;
wire ctmn_3815_CDR1 ;
wire HFSNET_7 ;
wire ctmn_3817_CDR1 ;
wire ctmn_3818_CDR1 ;
wire ctmn_3819_CDR1 ;
wire ctmn_3820_CDR1 ;
wire ctmn_3821_CDR1 ;
wire ctmn_3822_CDR1 ;
wire ctmn_3823_CDR1 ;
wire ctmn_3824_CDR1 ;
wire HFSNET_8 ;
wire ctmn_3826_CDR1 ;
wire ctmn_3827_CDR1 ;
wire ctmn_3828_CDR1 ;
wire \UFSM/N257 ;
wire \UFSM/CSB_DELAY ;
wire ctmn_3829_CDR1 ;
wire ctmn_3830_CDR1 ;
wire ctmn_3831_CDR1 ;
wire ctmn_3832_CDR1 ;
wire HFSNET_9 ;
wire ctmn_3834_CDR1 ;
wire ctmn_3835_CDR1 ;
wire ctmn_3836_CDR1 ;
wire ctmn_3837_CDR1 ;
wire ctmn_3838_CDR1 ;
wire ctmn_3839_CDR1 ;
wire ctmn_3840_CDR1 ;
wire ctmn_3841_CDR1 ;
wire ctmn_3842_CDR1 ;
wire ctmn_3843_CDR1 ;
wire ctmn_3844_CDR1 ;
wire ctmn_3845_CDR1 ;
wire ctmn_3846_CDR1 ;
wire ctmn_3847_CDR1 ;
wire ctmn_3848_CDR1 ;
wire gre_a_BUF_78_292 ;
wire ctmn_3850_CDR1 ;
wire ctmn_3851_CDR1 ;
wire ctmn_3852_CDR1 ;
wire ctmn_3853_CDR1 ;
wire ctmn_3854_CDR1 ;
wire ctmn_3855_CDR1 ;
wire ctmn_3856_CDR1 ;
wire ctmn_3857_CDR1 ;
wire HFSNET_11 ;
wire ctmn_3859_CDR1 ;
wire ctmn_3860_CDR1 ;
wire ctmn_3861_CDR1 ;
wire ctmn_3862_CDR1 ;
wire ctmn_3863_CDR1 ;
wire ctmn_3864_CDR1 ;
wire ctmn_3865_CDR1 ;
wire ZBUF_65_1 ;
wire ctmn_3867_CDR1 ;
wire ctmn_3868_CDR1 ;
wire ctmn_3869_CDR1 ;
wire ctmn_3870_CDR1 ;
wire ctmn_3871_CDR1 ;
wire ctmn_3872_CDR1 ;
wire ctmn_3873_CDR1 ;
wire ctmn_3874_CDR1 ;
wire ctmn_3875_CDR1 ;
wire ctmn_3876_CDR1 ;
wire ctmn_3877_CDR1 ;
wire ctmn_3878_CDR1 ;
wire ctmn_3879_CDR1 ;
wire ctmn_3880_CDR1 ;
wire ctmn_3881_CDR1 ;
wire gre_a_BUF_1703_292 ;
wire ctmn_3883_CDR1 ;
wire ctmn_3884_CDR1 ;
wire ctmn_3885 ;
wire ctmn_3886 ;
wire \CE_clock_gate_UBINARY_COUNTER_16B/binary_reg ;
wire clkgt_enable_net_327 ;
wire clkgt_nextstate_net_329 ;
wire clkgt_enable_net_331 ;
wire clkgt_nextstate_net_333 ;
wire SEQMAP_NET_819 ;
wire SEQMAP_NET_820 ;
wire \UFSM/N323 ;
wire \UFSM/N324 ;
wire \UFSM/N325 ;
wire \UFSM/N326 ;
wire \UFSM/N327 ;
wire \UFSM/N328 ;
wire \UFSM/N329 ;
wire \UFSM/N330 ;
wire \UFSM/N331 ;
wire \UFSM/N332 ;
wire \UFSM/N333 ;
wire \UFSM/N334 ;
wire \UFSM/N335 ;
wire \UFSM/N336 ;
wire \UFSM/N337 ;
wire \UFSM/N338 ;
wire \UFSM/N339 ;
wire \UFSM/N340 ;
wire \UFSM/N341 ;
wire \UFSM/N342 ;
wire \UFSM/N343 ;
wire \UFSM/N344 ;
wire \UFSM/N345 ;
wire \UFSM/N346 ;
wire \UFSM/N347 ;
wire \UFSM/N348 ;
wire \UFSM/N349 ;
wire \UFSM/N350 ;
wire \UFSM/N351 ;
wire \UFSM/N352 ;
wire \UFSM/N353 ;
wire \UFSM/N354 ;
wire \UFSM/N355 ;
wire \UFSM/N356 ;
wire \UFSM/N357 ;
wire \UFSM/N358 ;
wire \UFSM/N359 ;
wire \UFSM/N360 ;
wire \UFSM/N361 ;
wire \UFSM/N362 ;
wire \UFSM/N363 ;
wire \UFSM/N364 ;
wire \UFSM/N365 ;
wire \UFSM/N366 ;
wire \UFSM/N367 ;
wire \UFSM/N368 ;
wire \UFSM/N369 ;
wire \UFSM/N370 ;
wire \UFSM/N371 ;
wire \UFSM/N372 ;
wire \UFSM/N373 ;
wire \UFSM/N374 ;
wire \UFSM/N375 ;
wire \UFSM/N376 ;
wire \UFSM/N377 ;
wire \UFSM/N378 ;
wire \UFSM/N379 ;
wire \UFSM/N380 ;
wire \UFSM/N381 ;
wire \UFSM/N382 ;
wire \UFSM/N383 ;
wire \UFSM/N384 ;
wire \UFSM/N385 ;
wire \UFSM/N386 ;
wire \UFSM/OEB_DELAY ;
wire \UFSM/WEB_DELAY ;
wire ZCTSNET_34 ;
wire SEQMAP_NET_821 ;
wire SEQMAP_NET_822 ;
wire SEQMAP_NET_823 ;
wire SEQMAP_NET_824 ;
wire SEQMAP_NET_825 ;
wire SEQMAP_NET_826 ;
wire SEQMAP_NET_827 ;
wire SEQMAP_NET_828 ;
wire SEQMAP_NET_829 ;
wire SEQMAP_NET_830 ;
wire SEQMAP_NET_831 ;
wire SEQMAP_NET_832 ;
wire SEQMAP_NET_833 ;
wire SEQMAP_NET_834 ;
wire SEQMAP_NET_835 ;
wire SEQMAP_NET_836 ;
wire SEQMAP_NET_837 ;
wire SEQMAP_NET_838 ;
wire SEQMAP_NET_839 ;
wire SEQMAP_NET_840 ;
wire SEQMAP_NET_841 ;
wire SEQMAP_NET_842 ;
wire SEQMAP_NET_843 ;
wire SEQMAP_NET_844 ;
wire SEQMAP_NET_845 ;
wire SEQMAP_NET_846 ;
wire SEQMAP_NET_847 ;
wire SEQMAP_NET_848 ;
wire SEQMAP_NET_849 ;
wire SEQMAP_NET_850 ;
wire SEQMAP_NET_851 ;
wire SEQMAP_NET_852 ;
wire SEQMAP_NET_853 ;
wire SEQMAP_NET_854 ;
wire SEQMAP_NET_855 ;
wire SEQMAP_NET_856 ;
wire SEQMAP_NET_857 ;
wire SEQMAP_NET_858 ;
wire SEQMAP_NET_859 ;
wire SEQMAP_NET_860 ;
wire SEQMAP_NET_861 ;
wire SEQMAP_NET_862 ;
wire SEQMAP_NET_863 ;
wire SEQMAP_NET_864 ;
wire SEQMAP_NET_865 ;
wire SEQMAP_NET_866 ;
wire SEQMAP_NET_867 ;
wire SEQMAP_NET_868 ;
wire SEQMAP_NET_869 ;
wire SEQMAP_NET_870 ;
wire SEQMAP_NET_871 ;
wire SEQMAP_NET_872 ;
wire SEQMAP_NET_873 ;
wire SEQMAP_NET_874 ;
wire SEQMAP_NET_875 ;
wire SEQMAP_NET_876 ;
wire SEQMAP_NET_877 ;
wire SEQMAP_NET_878 ;
wire SEQMAP_NET_879 ;
wire SEQMAP_NET_880 ;
wire SEQMAP_NET_881 ;
wire SEQMAP_NET_882 ;
wire SEQMAP_NET_883 ;
wire SEQMAP_NET_884 ;
wire SEQMAP_NET_885 ;
wire HFSNET_14 ;
wire copt_gre_net_459 ;
wire copt_gre_net_460 ;
wire HFSNET_17 ;
wire copt_gre_net_461 ;
wire HFSNET_19 ;
wire HFSNET_20 ;
wire ZBUF_2_3 ;
wire HFSNET_22 ;
wire copt_gre_net_462 ;
wire copt_gre_net_463 ;
wire HFSNET_25 ;
wire HFSNET_26 ;
wire copt_gre_net_464 ;
wire HFSNET_28 ;
wire HFSNET_29 ;
wire copt_gre_net_465 ;
wire copt_gre_net_466 ;
wire HFSNET_32 ;
wire HFSNET_33 ;
wire copt_gre_net_467 ;
wire HFSNET_35 ;
wire copt_gre_net_468 ;
wire copt_gre_net_469 ;
wire HFSNET_38 ;
wire copt_gre_net_470 ;
wire HFSNET_42 ;
wire ZBUF_91_3 ;
wire HFSNET_44 ;
wire copt_gre_net_471 ;
wire HFSNET_46 ;
wire copt_gre_net_472 ;
wire copt_gre_net_473 ;
wire copt_gre_net_474 ;
wire copt_gre_net_475 ;
wire HFSNET_51 ;
wire HFSNET_52 ;
wire copt_gre_net_476 ;
wire copt_gre_net_477 ;
wire HFSNET_55 ;
wire HFSNET_56 ;
wire copt_gre_net_478 ;
wire HFSNET_58 ;
wire copt_gre_net_479 ;
wire copt_gre_net_480 ;
wire copt_gre_net_481 ;
wire copt_gre_net_482 ;
wire copt_gre_net_483 ;
wire copt_gre_net_484 ;
wire copt_gre_net_485 ;
wire HFSNET_67 ;
wire copt_gre_net_487 ;
wire copt_gre_net_488 ;
wire copt_gre_net_489 ;
wire HFSNET_71 ;
wire HFSNET_73 ;
wire HFSNET_75 ;
wire HFSNET_76 ;
wire copt_gre_net_490 ;
wire copt_gre_net_491 ;
wire HFSNET_79 ;
wire copt_gre_net_492 ;
wire copt_gre_net_493 ;
wire ZBUF_439_0 ;
wire copt_gre_net_494 ;
wire ZBUF_9_0 ;
wire HFSNET_86 ;
wire HFSNET_87 ;
wire copt_gre_net_495 ;
wire HFSNET_89 ;
wire copt_gre_net_496 ;
wire HFSNET_92 ;
wire copt_gre_net_498 ;
wire copt_gre_net_499 ;
wire HFSNET_96 ;
wire HFSNET_97 ;
wire HFSNET_98 ;
wire copt_gre_net_500 ;
wire copt_gre_net_501 ;
wire copt_gre_net_502 ;
wire copt_gre_net_503 ;
wire copt_gre_net_504 ;
wire copt_gre_net_505 ;
wire copt_gre_net_506 ;
wire copt_gre_net_507 ;
wire copt_gre_net_508 ;
wire HFSNET_108 ;
wire copt_gre_net_509 ;
wire copt_gre_net_510 ;
wire copt_gre_net_511 ;
wire copt_gre_net_512 ;
wire copt_gre_net_513 ;
wire HFSNET_114 ;
wire copt_gre_net_514 ;
wire HFSNET_116 ;
wire HFSNET_117 ;
wire copt_gre_net_515 ;
wire copt_gre_net_516 ;
wire ZBUF_54_3 ;
wire HFSNET_121 ;
wire HFSNET_122 ;
wire ZBUF_25_3 ;
wire HFSNET_124 ;
wire HFSNET_125 ;
wire copt_gre_net_517 ;
wire copt_gre_net_518 ;
wire copt_gre_net_519 ;
wire copt_gre_net_520 ;
wire HFSNET_130 ;
wire HFSNET_131 ;
wire ZBUF_223_30 ;
wire HFSNET_133 ;
wire HFSNET_134 ;
wire copt_gre_net_521 ;
wire copt_gre_net_522 ;
wire copt_gre_net_523 ;
wire copt_gre_net_524 ;
wire copt_gre_net_525 ;
wire copt_gre_net_526 ;
wire copt_gre_net_527 ;
wire HFSNET_142 ;
wire HFSNET_143 ;
wire HFSNET_144 ;
wire copt_gre_net_528 ;
wire HFSNET_146 ;
wire HFSNET_147 ;
wire HFSNET_148 ;
wire HFSNET_150 ;
wire HFSNET_151 ;
wire HFSNET_152 ;
wire copt_gre_net_530 ;
wire copt_gre_net_531 ;
wire HFSNET_156 ;
wire copt_gre_net_532 ;
wire HFSNET_158 ;
wire copt_gre_net_533 ;
wire copt_gre_net_534 ;
wire HFSNET_161 ;
wire HFSNET_162 ;
wire copt_gre_net_535 ;
wire copt_gre_net_536 ;
wire copt_gre_net_537 ;
wire copt_gre_net_538 ;
wire copt_gre_net_539 ;
wire HFSNET_169 ;
wire HFSNET_170 ;
wire HFSNET_172 ;
wire HFSNET_173 ;
wire HFSNET_174 ;
wire HFSNET_175 ;
wire HFSNET_176 ;
wire ZBUF_120_30 ;
wire HFSNET_178 ;
wire copt_gre_net_540 ;
wire copt_gre_net_541 ;
wire copt_gre_net_542 ;
wire copt_gre_net_543 ;
wire copt_gre_net_544 ;
wire copt_gre_net_545 ;
wire copt_gre_net_546 ;
wire copt_gre_net_547 ;
wire HFSNET_187 ;
wire copt_gre_net_548 ;
wire copt_gre_net_549 ;
wire HFSNET_190 ;
wire HFSNET_191 ;
wire HFSNET_192 ;
wire HFSNET_193 ;
wire copt_gre_net_550 ;
wire copt_gre_net_551 ;
wire copt_gre_net_553 ;
wire copt_gre_net_554 ;
wire copt_gre_net_555 ;
wire copt_gre_net_556 ;
wire copt_gre_net_557 ;
wire copt_gre_net_558 ;
wire copt_gre_net_559 ;
wire copt_gre_net_560 ;
wire copt_gre_net_561 ;
wire HFSNET_206 ;
wire copt_gre_net_562 ;
wire copt_gre_net_563 ;
wire HFSNET_209 ;
wire copt_gre_net_564 ;
wire copt_gre_net_565 ;
wire copt_gre_net_566 ;
wire ZBUF_54_4 ;
wire copt_gre_net_567 ;
wire HFSNET_215 ;
wire copt_gre_net_568 ;
wire HFSNET_217 ;
wire copt_gre_net_569 ;
wire copt_gre_net_570 ;
wire copt_gre_net_571 ;
wire HFSNET_221 ;
wire HFSNET_223 ;
wire copt_gre_net_572 ;
wire copt_gre_net_573 ;
wire HFSNET_226 ;
wire HFSNET_227 ;
wire HFSNET_228 ;
wire copt_gre_net_574 ;
wire HFSNET_231 ;
wire HFSNET_232 ;
wire copt_gre_net_575 ;
wire copt_gre_net_576 ;
wire ZBUF_264_1 ;
wire HFSNET_236 ;
wire copt_gre_net_577 ;
wire HFSNET_238 ;
wire copt_gre_net_578 ;
wire HFSNET_240 ;
wire ZBUF_196_4 ;
wire HFSNET_242 ;
wire ZBUF_106_4 ;
wire HFSNET_244 ;
wire HFSNET_245 ;
wire copt_gre_net_579 ;
wire HFSNET_247 ;
wire copt_gre_net_580 ;
wire HFSNET_249 ;
wire HFSNET_250 ;
wire HFSNET_252 ;
wire HFSNET_253 ;
wire HFSNET_255 ;
wire HFSNET_256 ;
wire copt_gre_net_581 ;
wire HFSNET_258 ;
wire copt_gre_net_582 ;
wire copt_gre_net_584 ;
wire copt_gre_net_585 ;
wire copt_gre_net_586 ;
wire HFSNET_265 ;
wire copt_gre_net_587 ;
wire HFSNET_267 ;
wire HFSNET_268 ;
wire copt_gre_net_588 ;
wire copt_gre_net_589 ;
wire copt_gre_net_591 ;
wire copt_gre_net_592 ;
wire copt_gre_net_593 ;
wire copt_gre_net_594 ;
wire copt_gre_net_595 ;
wire copt_gre_net_596 ;
wire copt_gre_net_597 ;
wire copt_gre_net_598 ;
wire copt_gre_net_599 ;
wire HFSNET_281 ;
wire copt_gre_net_600 ;
wire HFSNET_283 ;
wire HFSNET_284 ;
wire HFSNET_285 ;
wire copt_gre_net_601 ;
wire HFSNET_287 ;
wire copt_gre_net_602 ;
wire copt_gre_net_603 ;
wire copt_gre_net_604 ;
wire copt_gre_net_605 ;
wire copt_gre_net_606 ;
wire copt_gre_net_608 ;
wire copt_gre_net_609 ;
wire copt_gre_net_610 ;
wire copt_gre_net_611 ;
wire copt_gre_net_612 ;
wire copt_gre_net_613 ;
wire copt_gre_net_614 ;
wire copt_gre_net_615 ;
wire copt_gre_net_616 ;
wire copt_gre_net_617 ;
wire copt_gre_net_618 ;
wire HFSNET_305 ;
wire copt_gre_net_619 ;
wire copt_gre_net_620 ;
wire HFSNET_308 ;
wire copt_gre_net_621 ;
wire copt_gre_net_622 ;
wire copt_gre_net_623 ;
wire HFSNET_312 ;
wire HFSNET_313 ;
wire copt_gre_net_624 ;
wire copt_gre_net_625 ;
wire copt_gre_net_626 ;
wire HFSNET_317 ;
wire copt_gre_net_627 ;
wire HFSNET_319 ;
wire copt_gre_net_628 ;
wire copt_gre_net_629 ;
wire copt_gre_net_630 ;
wire copt_gre_net_631 ;
wire HFSNET_324 ;
wire copt_gre_net_632 ;
wire HFSNET_326 ;
wire HFSNET_327 ;
wire HFSNET_329 ;
wire HFSNET_330 ;
wire HFSNET_331 ;
wire copt_gre_net_633 ;
wire HFSNET_333 ;
wire HFSNET_334 ;
wire HFSNET_335 ;
wire copt_gre_net_634 ;
wire HFSNET_337 ;
wire copt_gre_net_635 ;
wire HFSNET_339 ;
wire copt_gre_net_636 ;
wire copt_gre_net_637 ;
wire copt_gre_net_638 ;
wire copt_gre_net_640 ;
wire HFSNET_345 ;
wire copt_gre_net_641 ;
wire copt_gre_net_642 ;
wire copt_gre_net_643 ;
wire copt_gre_net_644 ;
wire HFSNET_350 ;
wire HFSNET_351 ;
wire copt_gre_net_645 ;
wire copt_gre_net_646 ;
wire copt_gre_net_647 ;
wire HFSNET_355 ;
wire HFSNET_356 ;
wire HFSNET_357 ;
wire copt_gre_net_648 ;
wire copt_gre_net_649 ;
wire copt_gre_net_650 ;
wire copt_gre_net_651 ;
wire copt_gre_net_652 ;
wire copt_gre_net_653 ;
wire copt_gre_net_654 ;
wire HFSNET_365 ;
wire copt_gre_net_655 ;
wire copt_gre_net_656 ;
wire copt_gre_net_657 ;
wire copt_gre_net_658 ;
wire HFSNET_370 ;
wire copt_gre_net_659 ;
wire copt_gre_net_660 ;
wire copt_gre_net_662 ;
wire copt_gre_net_664 ;
wire copt_gre_net_665 ;
wire copt_gre_net_666 ;
wire copt_gre_net_667 ;
wire ZBUF_3623_30 ;
wire ZBUF_4351_30 ;
wire copt_gre_net_668 ;
wire ZBUF_61_4 ;
wire copt_gre_net_669 ;
wire copt_gre_net_670 ;
wire copt_gre_net_671 ;
wire copt_gre_net_672 ;
wire copt_gre_net_673 ;
wire copt_gre_net_674 ;
wire copt_gre_net_675 ;
wire copt_gre_net_676 ;
wire copt_gre_net_677 ;
wire HFSNET_394 ;
wire HFSNET_395 ;
wire HFSNET_396 ;
wire HFSNET_397 ;
wire HFSNET_398 ;
wire copt_gre_net_678 ;
wire HFSNET_400 ;
wire HFSNET_401 ;
wire copt_gre_net_679 ;
wire copt_gre_net_680 ;
wire copt_gre_net_681 ;
wire copt_gre_net_682 ;
wire copt_gre_net_683 ;
wire ZBUF_4_4 ;
wire HFSNET_408 ;
wire copt_gre_net_685 ;
wire copt_gre_net_686 ;
wire copt_gre_net_687 ;
wire copt_gre_net_688 ;
wire copt_gre_net_689 ;
wire copt_gre_net_690 ;
wire HFSNET_416 ;
wire copt_gre_net_691 ;
wire copt_gre_net_692 ;
wire copt_gre_net_693 ;
wire HFSNET_420 ;
wire HFSNET_423 ;
wire HFSNET_424 ;
wire HFSNET_425 ;
wire copt_gre_net_694 ;
wire HFSNET_427 ;
wire HFSNET_428 ;
wire HFSNET_429 ;
wire ZBUF_76_32 ;
wire HFSNET_431 ;
wire copt_gre_net_695 ;
wire copt_gre_net_696 ;
wire copt_gre_net_697 ;
wire copt_gre_net_698 ;
wire ZBUF_21_32 ;
wire copt_gre_net_699 ;
wire copt_gre_net_700 ;
wire ZBUF_2_4 ;
wire copt_gre_net_701 ;
wire ZBUF_126_32 ;
wire HFSNET_442 ;
wire copt_gre_net_702 ;
wire copt_gre_net_703 ;
wire copt_gre_net_704 ;
wire copt_gre_net_705 ;
wire HFSNET_447 ;
wire copt_gre_net_706 ;
wire HFSNET_449 ;
wire copt_gre_net_707 ;
wire HFSNET_451 ;
wire HFSNET_452 ;
wire copt_gre_net_708 ;
wire HFSNET_454 ;
wire copt_gre_net_709 ;
wire copt_gre_net_710 ;
wire HFSNET_457 ;
wire copt_gre_net_711 ;
wire copt_gre_net_712 ;
wire copt_gre_net_713 ;
wire copt_gre_net_714 ;
wire HFSNET_462 ;
wire HFSNET_464 ;
wire HFSNET_465 ;
wire copt_gre_net_715 ;
wire copt_gre_net_716 ;
wire copt_gre_net_717 ;
wire HFSNET_471 ;
wire HFSNET_472 ;
wire copt_gre_net_718 ;
wire HFSNET_474 ;
wire HFSNET_475 ;
wire HFSNET_476 ;
wire copt_gre_net_719 ;
wire copt_gre_net_720 ;
wire copt_gre_net_722 ;
wire copt_gre_net_723 ;
wire copt_gre_net_724 ;
wire copt_gre_net_725 ;
wire copt_gre_net_726 ;
wire copt_gre_net_728 ;
wire HFSNET_487 ;
wire HFSNET_488 ;
wire HFSNET_489 ;
wire HFSNET_490 ;
wire HFSNET_491 ;
wire HFSNET_492 ;
wire HFSNET_493 ;
wire HFSNET_494 ;
wire copt_gre_net_729 ;
wire HFSNET_496 ;
wire copt_gre_net_730 ;
wire copt_gre_net_731 ;
wire HFSNET_500 ;
wire HFSNET_501 ;
wire copt_gre_net_732 ;
wire ZBUF_214_2 ;
wire HFSNET_504 ;
wire copt_gre_net_733 ;
wire HFSNET_506 ;
wire copt_gre_net_734 ;
wire HFSNET_509 ;
wire HFSNET_510 ;
wire HFSNET_511 ;
wire copt_gre_net_736 ;
wire HFSNET_513 ;
wire copt_gre_net_737 ;
wire HFSNET_515 ;
wire HFSNET_517 ;
wire copt_gre_net_738 ;
wire HFSNET_520 ;
wire copt_gre_net_740 ;
wire HFSNET_522 ;
wire copt_gre_net_741 ;
wire copt_gre_net_743 ;
wire HFSNET_526 ;
wire HFSNET_527 ;
wire HFSNET_528 ;
wire HFSNET_529 ;
wire copt_gre_net_744 ;
wire copt_gre_net_745 ;
wire copt_gre_net_746 ;
wire copt_gre_net_747 ;
wire copt_gre_net_748 ;
wire HFSNET_536 ;
wire copt_gre_net_749 ;
wire copt_gre_net_750 ;
wire HFSNET_540 ;
wire HFSNET_541 ;
wire copt_gre_net_752 ;
wire HFSNET_543 ;
wire HFSNET_544 ;
wire HFSNET_545 ;
wire copt_gre_net_753 ;
wire HFSNET_547 ;
wire copt_gre_net_754 ;
wire copt_gre_net_755 ;
wire copt_gre_net_756 ;
wire HFSNET_554 ;
wire HFSNET_555 ;
wire HFSNET_556 ;
wire copt_gre_net_758 ;
wire copt_gre_net_759 ;
wire copt_gre_net_760 ;
wire copt_gre_net_761 ;
wire copt_gre_net_762 ;
wire copt_gre_net_763 ;
wire copt_gre_net_764 ;
wire copt_gre_net_766 ;
wire ZBUF_170_32 ;
wire copt_gre_net_767 ;
wire copt_gre_net_768 ;
wire ZBUF_30_32 ;
wire HFSNET_571 ;
wire copt_gre_net_769 ;
wire HFSNET_573 ;
wire HFSNET_577 ;
wire copt_gre_net_771 ;
wire copt_gre_net_772 ;
wire copt_gre_net_773 ;
wire HFSNET_581 ;
wire copt_gre_net_774 ;
wire copt_gre_net_775 ;
wire copt_gre_net_776 ;
wire HFSNET_585 ;
wire copt_gre_net_777 ;
wire copt_gre_net_778 ;
wire copt_gre_net_779 ;
wire copt_gre_net_780 ;
wire copt_gre_net_781 ;
wire copt_gre_net_782 ;
wire copt_gre_net_783 ;
wire copt_gre_net_784 ;
wire copt_gre_net_785 ;
wire copt_gre_net_786 ;
wire copt_gre_net_787 ;
wire copt_gre_net_788 ;
wire copt_gre_net_789 ;
wire HFSNET_599 ;
wire copt_gre_net_790 ;
wire copt_gre_net_791 ;
wire copt_gre_net_792 ;
wire copt_gre_net_793 ;
wire copt_gre_net_794 ;
wire copt_gre_net_795 ;
wire copt_gre_net_796 ;
wire copt_gre_net_797 ;
wire copt_gre_net_798 ;
wire copt_gre_net_799 ;
wire copt_gre_net_800 ;
wire copt_gre_net_801 ;
wire copt_gre_net_802 ;
wire copt_gre_net_803 ;
wire copt_gre_net_805 ;
wire copt_gre_net_806 ;
wire copt_gre_net_807 ;
wire copt_gre_net_808 ;
wire copt_gre_net_809 ;
wire copt_gre_net_810 ;
wire copt_gre_net_811 ;
wire ZBUF_52_3 ;
wire copt_gre_net_812 ;
wire ZBUF_235_4 ;
wire copt_gre_net_813 ;
wire copt_gre_net_814 ;
wire copt_gre_net_815 ;
wire HFSNET_629 ;
wire ZBUF_95_4 ;
wire copt_gre_net_816 ;
wire copt_gre_net_817 ;
wire copt_gre_net_818 ;
wire HFSNET_634 ;
wire copt_gre_net_819 ;
wire copt_gre_net_820 ;
wire copt_gre_net_821 ;
wire copt_gre_net_822 ;
wire ZBUF_103_4 ;
wire copt_gre_net_823 ;
wire HFSNET_641 ;
wire copt_gre_net_824 ;
wire copt_gre_net_825 ;
wire HFSNET_644 ;
wire HFSNET_645 ;
wire copt_gre_net_307 ;
wire copt_gre_net_308 ;
wire HFSNET_649 ;
wire HFSNET_650 ;
wire copt_gre_net_826 ;
wire ZBUF_243_4 ;
wire copt_gre_net_309 ;
wire copt_gre_net_827 ;
wire copt_gre_net_828 ;
wire copt_gre_net_829 ;
wire copt_gre_net_830 ;
wire copt_gre_net_832 ;
wire copt_gre_net_833 ;
wire copt_gre_net_834 ;
wire HFSNET_662 ;
wire copt_gre_net_835 ;
wire copt_gre_net_836 ;
wire HFSNET_665 ;
wire copt_gre_net_837 ;
wire copt_gre_net_838 ;
wire HFSNET_669 ;
wire HFSNET_670 ;
wire HFSNET_671 ;
wire HFSNET_672 ;
wire HFSNET_673 ;
wire HFSNET_674 ;
wire HFSNET_675 ;
wire ZBUF_291_6 ;
wire HFSNET_677 ;
wire HFSNET_678 ;
wire HFSNET_680 ;
wire HFSNET_681 ;
wire HFSNET_682 ;
wire HFSNET_683 ;
wire HFSNET_684 ;
wire copt_gre_net_839 ;
wire HFSNET_686 ;
wire copt_gre_net_840 ;
wire HFSNET_688 ;
wire HFSNET_689 ;
wire HFSNET_690 ;
wire HFSNET_691 ;
wire copt_gre_net_841 ;
wire HFSNET_693 ;
wire HFSNET_695 ;
wire HFSNET_696 ;
wire HFSNET_697 ;
wire HFSNET_698 ;
wire HFSNET_699 ;
wire ZBUF_288_6 ;
wire HFSNET_702 ;
wire copt_gre_net_842 ;
wire HFSNET_704 ;
wire copt_gre_net_843 ;
wire HFSNET_706 ;
wire HFSNET_707 ;
wire HFSNET_708 ;
wire HFSNET_709 ;
wire copt_gre_net_844 ;
wire HFSNET_711 ;
wire copt_gre_net_845 ;
wire HFSNET_713 ;
wire HFSNET_714 ;
wire HFSNET_715 ;
wire copt_gre_net_846 ;
wire HFSNET_717 ;
wire HFSNET_718 ;
wire HFSNET_719 ;
wire HFSNET_720 ;
wire copt_gre_net_847 ;
wire HFSNET_722 ;
wire HFSNET_723 ;
wire HFSNET_724 ;
wire HFSNET_725 ;
wire HFSNET_726 ;
wire HFSNET_727 ;
wire HFSNET_728 ;
wire [511:0] \USRAM/TMP_ODATA ;
wire HFSNET_729 ;
wire copt_gre_net_848 ;
wire HFSNET_731 ;
wire HFSNET_732 ;
wire HFSNET_733 ;
wire HFSNET_734 ;
wire HFSNET_735 ;
wire HFSNET_736 ;
wire HFSNET_738 ;
wire HFSNET_739 ;
wire HFSNET_740 ;
wire HFSNET_741 ;
wire copt_gre_net_849 ;
wire HFSNET_743 ;
wire HFSNET_744 ;
wire HFSNET_745 ;
wire ZBUF_158_33 ;
wire HFSNET_747 ;
wire HFSNET_748 ;
wire HFSNET_749 ;
wire aps_rename_6_ ;
wire HFSNET_751 ;
wire HFSNET_752 ;
wire HFSNET_753 ;
wire HFSNET_754 ;
wire ZBUF_310_5 ;
wire HFSNET_756 ;
wire ZBUF_63_11 ;
wire HFSNET_758 ;
wire ZBUF_162_11 ;
wire HFSNET_760 ;
wire HFSNET_761 ;
wire HFSNET_762 ;
wire copt_gre_net_850 ;
wire copt_gre_net_851 ;
wire ZBUF_279_16 ;
wire copt_gre_net_852 ;
wire ZBUF_4_16 ;
wire copt_gre_net_853 ;
wire HFSNET_771 ;
wire copt_gre_net_854 ;
wire HFSNET_773 ;
wire HFSNET_774 ;
wire HFSNET_775 ;
wire HFSNET_776 ;
wire ZBUF_279_17 ;
wire ZBUF_251_17 ;
wire copt_gre_net_855 ;
wire ZBUF_180_17 ;
wire copt_gre_net_856 ;
wire HFSNET_782 ;
wire HFSNET_783 ;
wire copt_gre_net_857 ;
wire copt_gre_net_858 ;
wire copt_gre_net_859 ;
wire HFSNET_788 ;
wire HFSNET_789 ;
wire HFSNET_790 ;
wire HFSNET_791 ;
wire ZINV_187_6 ;
wire HFSNET_793 ;
wire HFSNET_794 ;
wire copt_gre_net_860 ;
wire copt_gre_net_861 ;
wire copt_gre_net_862 ;
wire HFSNET_798 ;
wire HFSNET_799 ;
wire copt_gre_net_863 ;
wire ZINV_234_6 ;
wire HFSNET_804 ;
wire HFSNET_806 ;
wire HFSNET_807 ;
wire HFSNET_808 ;
wire HFSNET_809 ;
wire ZBUF_143_34 ;
wire HFSNET_813 ;
wire HFSNET_815 ;
wire HFSNET_816 ;
wire HFSNET_817 ;
wire copt_gre_net_864 ;
wire copt_gre_net_865 ;
wire HFSNET_821 ;
wire HFSNET_822 ;
wire ZBUF_76_17 ;
wire copt_gre_net_867 ;
wire ZBUF_247_34 ;
wire copt_gre_net_868 ;
wire ZBUF_278_34 ;
wire copt_gre_net_869 ;
wire HFSNET_829 ;
wire copt_gre_net_870 ;
wire copt_gre_net_871 ;
wire copt_gre_net_872 ;
wire ZBUF_251_34 ;
wire HFSNET_834 ;
wire HFSNET_835 ;
wire HFSNET_836 ;
wire HFSNET_837 ;
wire copt_gre_net_873 ;
wire copt_gre_net_874 ;
wire HFSNET_840 ;
wire HFSNET_841 ;
wire HFSNET_842 ;
wire copt_gre_net_875 ;
wire ZBUF_189_34 ;
wire ZBUF_101_18 ;
wire copt_gre_net_876 ;
wire copt_gre_net_877 ;
wire HFSNET_849 ;
wire copt_gre_net_878 ;
wire ZBUF_100_18 ;
wire ZBUF_62_18 ;
wire HFSNET_853 ;
wire ZBUF_130_34 ;
wire copt_gre_net_879 ;
wire copt_gre_net_880 ;
wire HFSNET_858 ;
wire copt_gre_net_881 ;
wire HFSNET_860 ;
wire HFSNET_861 ;
wire ZBUF_2_24 ;
wire HFSNET_863 ;
wire copt_gre_net_882 ;
wire copt_gre_net_883 ;
wire HFSNET_866 ;
wire ZBUF_80_24 ;
wire HFSNET_868 ;
wire HFSNET_869 ;
wire HFSNET_870 ;
wire ZBUF_125_24 ;
wire HFSNET_872 ;
wire copt_gre_net_884 ;
wire ZBUF_77_24 ;
wire HFSNET_875 ;
wire copt_gre_net_885 ;
wire copt_gre_net_886 ;
wire copt_gre_net_887 ;
wire copt_gre_net_888 ;
wire copt_gre_net_889 ;
wire HFSNET_881 ;
wire copt_gre_net_890 ;
wire HFSNET_883 ;
wire ZBUF_50_24 ;
wire ZBUF_2_26 ;
wire ZBUF_285_26 ;
wire copt_gre_net_892 ;
wire copt_gre_net_893 ;
wire ZBUF_227_34 ;
wire HFSNET_891 ;
wire copt_gre_net_894 ;
wire ZBUF_57_26 ;
wire HFSNET_896 ;
wire copt_gre_net_895 ;
wire copt_gre_net_896 ;
wire copt_gre_net_897 ;
wire copt_gre_net_898 ;
wire copt_gre_net_899 ;
wire copt_gre_net_900 ;
wire ZBUF_92_26 ;
wire copt_gre_net_901 ;
wire HFSNET_906 ;
wire copt_gre_net_902 ;
wire copt_gre_net_903 ;
wire ZBUF_106_28 ;
wire ZBUF_163_7 ;
wire copt_gre_net_904 ;
wire copt_gre_net_906 ;
wire HFSNET_914 ;
wire copt_gre_net_907 ;
wire copt_gre_net_908 ;
wire copt_gre_net_909 ;
wire copt_gre_net_910 ;
wire HFSNET_919 ;
wire HFSNET_920 ;
wire ZINV_185_7 ;
wire ZBUF_97_30 ;
wire HFSNET_923 ;
wire copt_gre_net_911 ;
wire copt_gre_net_912 ;
wire HFSNET_926 ;
wire HFSNET_927 ;
wire copt_gre_net_913 ;
wire HFSNET_929 ;
wire HFSNET_930 ;
wire copt_gre_net_914 ;
wire copt_gre_net_915 ;
wire ZBUF_2_32 ;
wire copt_gre_net_916 ;
wire ZINV_232_7 ;
wire copt_gre_net_917 ;
wire HFSNET_938 ;
wire HFSNET_939 ;
wire copt_gre_net_918 ;
wire HFSNET_941 ;
wire copt_gre_net_919 ;
wire copt_gre_net_920 ;
wire copt_gre_net_921 ;
wire copt_gre_net_922 ;
wire HFSNET_946 ;
wire copt_gre_net_923 ;
wire ZBUF_301_7 ;
wire HFSNET_949 ;
wire HFSNET_950 ;
wire HFSNET_951 ;
wire ZBUF_2_34 ;
wire HFSNET_953 ;
wire HFSNET_954 ;
wire copt_gre_net_925 ;
wire copt_gre_net_926 ;
wire copt_gre_net_927 ;
wire ZBUF_97_34 ;
wire HFSNET_963 ;
wire copt_gre_net_928 ;
wire copt_gre_net_929 ;
wire copt_gre_net_930 ;
wire copt_gre_net_931 ;
wire copt_gre_net_932 ;
wire HFSNET_971 ;
wire copt_gre_net_933 ;
wire copt_gre_net_934 ;
wire copt_gre_net_935 ;
wire copt_gre_net_936 ;
wire HFSNET_976 ;
wire copt_gre_net_937 ;
wire copt_gre_net_938 ;
wire HFSNET_979 ;
wire HFSNET_980 ;
wire copt_gre_net_939 ;
wire HFSNET_984 ;
wire copt_gre_net_940 ;
wire ZBUF_2_36 ;
wire ZBUF_2_37 ;
wire HFSNET_989 ;
wire copt_gre_net_941 ;
wire HFSNET_991 ;
wire ZBUF_28_37 ;
wire HFSNET_994 ;
wire copt_gre_net_942 ;
wire copt_gre_net_943 ;
wire HFSNET_998 ;
wire copt_gre_net_944 ;
wire copt_gre_net_945 ;
wire ZBUF_100_39 ;
wire ZBUF_2_42 ;
wire ZBUF_109_39 ;
wire copt_gre_net_946 ;
wire HFSNET_1005 ;
wire copt_gre_net_947 ;
wire HFSNET_1007 ;
wire copt_gre_net_948 ;
wire HFSNET_1009 ;
wire copt_gre_net_949 ;
wire copt_gre_net_950 ;
wire copt_gre_net_951 ;
wire HFSNET_1013 ;
wire copt_gre_net_952 ;
wire HFSNET_1016 ;
wire copt_gre_net_953 ;
wire HFSNET_1019 ;
wire copt_gre_net_954 ;
wire copt_gre_net_955 ;
wire copt_gre_net_956 ;
wire ZBUF_244_40 ;
wire HFSNET_1024 ;
wire copt_gre_net_957 ;
wire HFSNET_1026 ;
wire copt_gre_net_958 ;
wire copt_gre_net_959 ;
wire HFSNET_1030 ;
wire HFSNET_1031 ;
wire copt_gre_net_960 ;
wire ZBUF_233_41 ;
wire copt_gre_net_961 ;
wire HFSNET_1035 ;
wire ZBUF_94_7 ;
wire HFSNET_1039 ;
wire ZBUF_185_43 ;
wire HFSNET_1041 ;
wire HFSNET_1042 ;
wire copt_gre_net_963 ;
wire HFSNET_1045 ;
wire copt_gre_net_965 ;
wire HFSNET_1047 ;
wire ZBUF_98_43 ;
wire ZBUF_352_43 ;
wire copt_gre_net_966 ;
wire copt_gre_net_967 ;
wire HFSNET_1055 ;
wire copt_gre_net_969 ;
wire copt_gre_net_970 ;
wire HFSNET_1058 ;
wire ZBUF_2_46 ;
wire HFSNET_1060 ;
wire copt_gre_net_971 ;
wire ZBUF_121_47 ;
wire copt_gre_net_972 ;
wire HFSNET_1065 ;
wire copt_gre_net_973 ;
wire ZBUF_2_47 ;
wire HFSNET_1069 ;
wire HFSNET_1070 ;
wire copt_gre_net_974 ;
wire copt_gre_net_975 ;
wire copt_gre_net_976 ;
wire copt_gre_net_977 ;
wire copt_gre_net_978 ;
wire copt_gre_net_979 ;
wire ZBUF_82_47 ;
wire ZBUF_105_47 ;
wire HFSNET_1080 ;
wire copt_gre_net_980 ;
wire copt_gre_net_981 ;
wire ZBUF_2_48 ;
wire ZBUF_2_49 ;
wire ZBUF_153_43 ;
wire HFSNET_1086 ;
wire copt_gre_net_982 ;
wire copt_gre_net_983 ;
wire HFSNET_1090 ;
wire copt_gre_net_984 ;
wire copt_gre_net_985 ;
wire HFSNET_1093 ;
wire copt_gre_net_986 ;
wire copt_gre_net_987 ;
wire HFSNET_1097 ;
wire HFSNET_1098 ;
wire copt_gre_net_988 ;
wire copt_gre_net_989 ;
wire copt_gre_net_990 ;
wire HFSNET_1102 ;
wire copt_gre_net_991 ;
wire copt_gre_net_992 ;
wire copt_gre_net_993 ;
wire copt_gre_net_994 ;
wire copt_gre_net_995 ;
wire copt_gre_net_996 ;
wire HFSNET_1110 ;
wire copt_gre_net_997 ;
wire copt_gre_net_998 ;
wire copt_gre_net_999 ;
wire copt_gre_net_1000 ;
wire copt_gre_net_1001 ;
wire HFSNET_1116 ;
wire copt_gre_net_1002 ;
wire copt_gre_net_1003 ;
wire HFSNET_1120 ;
wire HFSNET_1121 ;
wire HFSNET_1122 ;
wire HFSNET_1123 ;
wire HFSNET_1124 ;
wire HFSNET_1125 ;
wire ropt_net_1515 ;
wire copt_gre_net_1005 ;
wire copt_gre_net_1006 ;
wire HFSNET_1130 ;
wire copt_gre_net_1007 ;
wire HFSNET_1132 ;
wire HFSNET_1133 ;
wire HFSNET_1134 ;
wire HFSNET_1135 ;
wire HFSNET_1136 ;
wire copt_gre_net_1008 ;
wire HFSNET_1138 ;
wire copt_gre_net_1009 ;
wire HFSNET_1140 ;
wire HFSNET_1141 ;
wire HFSNET_1142 ;
wire HFSNET_1143 ;
wire copt_gre_net_1010 ;
wire HFSNET_1145 ;
wire copt_gre_net_1011 ;
wire ZBUF_2_56 ;
wire ZBUF_2_57 ;
wire ZBUF_43_44 ;
wire HFSNET_1151 ;
wire copt_gre_net_1012 ;
wire optlc_net_223 ;
wire copt_gre_net_1013 ;
wire copt_gre_net_1015 ;
wire copt_gre_net_1016 ;
wire ZBUF_88_44 ;
wire optlc_net_224 ;
wire copt_gre_net_1018 ;
wire HFSNET_1163 ;
wire HFSNET_1164 ;
wire ZBUF_286_44 ;
wire copt_gre_net_1019 ;
wire HFSNET_1168 ;
wire copt_gre_net_1020 ;
wire ZBUF_4_45 ;
wire copt_gre_net_1021 ;
wire HFSNET_1173 ;
wire HFSNET_1174 ;
wire optlc_net_225 ;
wire copt_gre_net_1023 ;
wire copt_gre_net_1024 ;
wire optlc_net_226 ;
wire copt_gre_net_1025 ;
wire HFSNET_1181 ;
wire copt_gre_net_1026 ;
wire ZBUF_53_59 ;
wire HFSNET_1186 ;
wire HFSNET_1187 ;
wire HFSNET_1188 ;
wire HFSNET_1189 ;
wire copt_gre_net_1027 ;
wire optlc_net_227 ;
wire copt_gre_net_1028 ;
wire copt_gre_net_1029 ;
wire optlc_net_228 ;
wire copt_gre_net_1030 ;
wire copt_gre_net_1031 ;
wire copt_gre_net_1032 ;
wire copt_gre_net_1033 ;
wire copt_gre_net_1034 ;
wire HFSNET_1201 ;
wire HFSNET_1202 ;
wire copt_gre_net_1035 ;
wire copt_gre_net_1036 ;
wire copt_gre_net_1037 ;
wire optlc_net_229 ;
wire copt_gre_net_1038 ;
wire copt_gre_net_1039 ;
wire copt_gre_net_1040 ;
wire HFSNET_1210 ;
wire copt_gre_net_1041 ;
wire ZBUF_2_60 ;
wire HFSNET_1213 ;
wire copt_gre_net_1042 ;
wire optlc_net_230 ;
wire copt_gre_net_1043 ;
wire optlc_net_231 ;
wire copt_gre_net_1044 ;
wire tmp_net73 ;
wire copt_gre_net_1045 ;
wire copt_gre_net_1046 ;
wire copt_gre_net_1047 ;
wire copt_gre_net_1048 ;
wire HFSNET_1226 ;
wire copt_gre_net_1049 ;
wire copt_gre_net_1050 ;
wire copt_gre_net_1051 ;
wire copt_gre_net_1052 ;
wire copt_gre_net_1053 ;
wire HFSNET_1233 ;
wire HFSNET_1234 ;
wire copt_gre_net_1054 ;
wire HFSNET_1236 ;
wire copt_gre_net_1055 ;
wire copt_gre_net_1056 ;
wire optlc_net_232 ;
wire copt_gre_net_1057 ;
wire copt_gre_net_1058 ;
wire copt_gre_net_1060 ;
wire copt_gre_net_1061 ;
wire copt_gre_net_1062 ;
wire copt_gre_net_1063 ;
wire copt_gre_net_1064 ;
wire HFSNET_1249 ;
wire copt_gre_net_1065 ;
wire copt_gre_net_1066 ;
wire HFSNET_1253 ;
wire HFSNET_1254 ;
wire optlc_net_233 ;
wire HFSNET_1256 ;
wire HFSNET_1257 ;
wire HFSNET_1258 ;
wire copt_gre_net_1067 ;
wire HFSNET_1260 ;
wire copt_gre_net_1068 ;
wire HFSNET_1262 ;
wire HFSNET_1263 ;
wire HFSNET_1264 ;
wire HFSNET_1265 ;
wire HFSNET_1266 ;
wire optlc_net_234 ;
wire HFSNET_1268 ;
wire HFSNET_1269 ;
wire HFSNET_1270 ;
wire HFSNET_1271 ;
wire HFSNET_1272 ;
wire optlc_net_235 ;
wire copt_gre_net_1069 ;
wire HFSNET_1275 ;
wire HFSNET_1276 ;
wire copt_gre_net_1071 ;
wire ZBUF_2_62 ;
wire ZBUF_126_46 ;
wire copt_gre_net_1073 ;
wire copt_gre_net_1074 ;
wire ZBUF_55_62 ;
wire copt_gre_net_1076 ;
wire copt_gre_net_1077 ;
wire copt_gre_net_1078 ;
wire HFSNET_1291 ;
wire copt_gre_net_1079 ;
wire copt_gre_net_1080 ;
wire copt_gre_net_1081 ;
wire HFSNET_1296 ;
wire optlc_net_236 ;
wire HFSNET_1298 ;
wire HFSNET_1299 ;
wire HFSNET_1300 ;
wire copt_gre_net_1082 ;
wire HFSNET_1302 ;
wire copt_gre_net_1083 ;
wire HFSNET_1304 ;
wire HFSNET_1305 ;
wire HFSNET_1306 ;
wire HFSNET_1307 ;
wire optlc_net_237 ;
wire copt_gre_net_1084 ;
wire ZBUF_162_47 ;
wire copt_gre_net_1085 ;
wire copt_gre_net_1086 ;
wire HFSNET_1315 ;
wire HFSNET_1316 ;
wire copt_gre_net_1087 ;
wire HFSNET_1319 ;
wire ZBUF_68_63 ;
wire optlc_net_238 ;
wire copt_gre_net_1088 ;
wire ZBUF_67_63 ;
wire copt_gre_net_1089 ;
wire HFSNET_1326 ;
wire ZBUF_60_63 ;
wire optlc_net_239 ;
wire HFSNET_1329 ;
wire HFSNET_1330 ;
wire HFSNET_1331 ;
wire ZBUF_59_63 ;
wire HFSNET_1333 ;
wire HFSNET_1334 ;
wire HFSNET_1335 ;
wire copt_gre_net_1090 ;
wire copt_gre_net_1091 ;
wire copt_gre_net_1092 ;
wire copt_gre_net_1093 ;
wire copt_gre_net_1094 ;
wire ZBUF_63_65 ;
wire copt_gre_net_1095 ;
wire copt_gre_net_1096 ;
wire HFSNET_1345 ;
wire HFSNET_1346 ;
wire copt_gre_net_1098 ;
wire ZBUF_53_65 ;
wire copt_gre_net_1099 ;
wire HFSNET_1351 ;
wire copt_gre_net_1100 ;
wire copt_gre_net_1101 ;
wire HFSNET_1354 ;
wire copt_gre_net_1102 ;
wire HFSNET_1356 ;
wire HFSNET_1357 ;
wire HFSNET_1358 ;
wire HFSNET_1359 ;
wire HFSNET_1360 ;
wire copt_gre_net_1103 ;
wire HFSNET_1362 ;
wire HFSNET_1363 ;
wire HFSNET_1365 ;
wire HFSNET_1366 ;
wire HFSNET_1367 ;
wire HFSNET_1368 ;
wire ZBUF_2_68 ;
wire copt_gre_net_1104 ;
wire optlc_net_240 ;
wire HFSNET_1372 ;
wire HFSNET_1373 ;
wire copt_gre_net_1105 ;
wire HFSNET_1375 ;
wire HFSNET_1376 ;
wire copt_gre_net_1106 ;
wire copt_gre_net_1107 ;
wire HFSNET_1379 ;
wire HFSNET_1380 ;
wire HFSNET_1381 ;
wire copt_gre_net_1108 ;
wire HFSNET_1383 ;
wire copt_gre_net_1109 ;
wire copt_gre_net_1112 ;
wire ZBUF_73_69 ;
wire HFSNET_1389 ;
wire copt_gre_net_1113 ;
wire ZBUF_86_69 ;
wire HFSNET_1392 ;
wire optlc_net_241 ;
wire HFSNET_1394 ;
wire HFSNET_1395 ;
wire copt_gre_net_1114 ;
wire copt_gre_net_1115 ;
wire HFSNET_1399 ;
wire HFSNET_1400 ;
wire copt_gre_net_1116 ;
wire HFSNET_1402 ;
wire copt_gre_net_1117 ;
wire copt_gre_net_1118 ;
wire optlc_net_242 ;
wire optlc_net_243 ;
wire optlc_net_244 ;
wire optlc_net_245 ;
wire optlc_net_246 ;
wire optlc_net_247 ;
wire optlc_net_248 ;
wire optlc_net_249 ;
wire optlc_net_250 ;
wire optlc_net_251 ;
wire optlc_net_252 ;
wire optlc_net_253 ;
wire optlc_net_254 ;
wire optlc_net_255 ;
wire optlc_net_256 ;
wire optlc_net_257 ;
wire optlc_net_258 ;
wire optlc_net_259 ;
wire optlc_net_260 ;
wire optlc_net_261 ;
wire optlc_net_262 ;
wire optlc_net_263 ;
wire optlc_net_264 ;
wire optlc_net_265 ;
wire optlc_net_266 ;
wire optlc_net_267 ;
wire optlc_net_268 ;
wire optlc_net_269 ;
wire optlc_net_270 ;
wire optlc_net_271 ;
wire optlc_net_272 ;
wire optlc_net_273 ;
wire optlc_net_274 ;
wire optlc_net_275 ;
wire optlc_net_276 ;
wire optlc_net_277 ;
wire optlc_net_278 ;
wire optlc_net_279 ;
wire optlc_net_280 ;
wire optlc_net_281 ;
wire optlc_net_282 ;
wire optlc_net_283 ;
wire optlc_net_284 ;
wire optlc_net_285 ;
wire optlc_net_286 ;
wire optlc_net_287 ;
wire optlc_net_288 ;
wire optlc_net_289 ;
wire optlc_net_290 ;
wire optlc_net_291 ;
wire optlc_net_292 ;
wire optlc_net_293 ;
wire optlc_net_294 ;
wire optlc_net_295 ;
wire optlc_net_296 ;
wire optlc_net_297 ;
wire ZBUF_212_0 ;
wire copt_gre_net_1119 ;
wire ZBUF_21_1 ;
wire copt_gre_net_1120 ;
wire copt_gre_net_1122 ;
wire ZBUF_2_6 ;
wire ZBUF_2_8 ;
wire ZBUF_2_9 ;
wire ZBUF_2_10 ;
wire copt_gre_net_1123 ;
wire ZBUF_79_10 ;
wire copt_gre_net_1124 ;
wire copt_gre_net_1125 ;
wire copt_gre_net_1127 ;
wire copt_gre_net_1128 ;
wire ZBUF_17_12 ;
wire ZBUF_21_49 ;
wire ZBUF_1280_12 ;
wire copt_gre_net_1130 ;
wire ZBUF_47_12 ;
wire ZBUF_292_12 ;
wire ZBUF_242_12 ;
wire ZBUF_251_12 ;
wire copt_gre_net_1131 ;
wire copt_gre_net_1132 ;
wire copt_gre_net_1133 ;
wire copt_gre_net_1134 ;
wire ZBUF_269_15 ;
wire ZBUF_252_49 ;
wire ZBUF_119_16 ;
wire ZBUF_122_70 ;
wire copt_gre_net_1136 ;
wire ZBUF_226_49 ;
wire copt_gre_net_1137 ;
wire copt_gre_net_1138 ;
wire ZBUF_74_17 ;
wire copt_gre_net_1139 ;
wire copt_gre_net_1141 ;
wire ZBUF_37_49 ;
wire copt_gre_net_1142 ;
wire ZBUF_2_71 ;
wire ZBUF_60_71 ;
wire copt_gre_net_1143 ;
wire copt_gre_net_1144 ;
wire ZBUF_2_19 ;
wire copt_gre_net_1145 ;
wire copt_gre_net_1146 ;
wire ZBUF_2_22 ;
wire ZBUF_21_22 ;
wire ZBUF_2_23 ;
wire copt_gre_net_1147 ;
wire ZBUF_1922_25 ;
wire copt_gre_net_1148 ;
wire ZBUF_183_49 ;
wire ZBUF_85_49 ;
wire ZBUF_187_49 ;
wire ZBUF_253_49 ;
wire ZBUF_104_72 ;
wire ZBUF_51_72 ;
wire copt_gre_net_1149 ;
wire copt_gre_net_1150 ;
wire copt_gre_net_1151 ;
wire copt_gre_net_1152 ;
wire ZBUF_104_73 ;
wire ZBUF_95_73 ;
wire ZBUF_2_50 ;
wire ZBUF_2_51 ;
wire ZBUF_150_51 ;
wire copt_gre_net_1153 ;
wire ZBUF_47_51 ;
wire ZBUF_99_73 ;
wire copt_gre_net_1154 ;
wire copt_gre_net_1155 ;
wire copt_gre_net_1156 ;
wire copt_gre_net_1157 ;
wire ZBUF_102_73 ;
wire ZBUF_152_52 ;
wire copt_gre_net_1159 ;
wire copt_gre_net_1160 ;
wire copt_gre_net_1161 ;
wire copt_gre_net_1162 ;
wire copt_gre_net_1163 ;
wire copt_gre_net_1164 ;
wire copt_gre_net_1165 ;
wire ZBUF_97_74 ;
wire copt_gre_net_1166 ;
wire ZBUF_2_53 ;
wire copt_gre_net_1167 ;
wire ZBUF_23_54 ;
wire copt_gre_net_1168 ;
wire copt_gre_net_1169 ;
wire ZBUF_397_54 ;
wire ZBUF_76_54 ;
wire ZBUF_36_54 ;
wire ZBUF_52_54 ;
wire copt_gre_net_1170 ;
wire copt_gre_net_1171 ;
wire ZBUF_9_54 ;
wire ZBUF_2_78 ;
wire ZBUF_42_78 ;
wire copt_gre_net_1172 ;
wire ZBUF_2_79 ;
wire ZBUF_166_55 ;
wire ZBUF_31_79 ;
wire copt_gre_net_1173 ;
wire ZBUF_76_79 ;
wire ZBUF_147_79 ;
wire ZBUF_241_55 ;
wire ZBUF_182_55 ;
wire copt_gre_net_1174 ;
wire copt_gre_net_1175 ;
wire ZBUF_2_80 ;
wire copt_gre_net_1176 ;
wire ZBUF_62_57 ;
wire ZBUF_2_81 ;
wire copt_gre_net_1177 ;
wire copt_gre_net_1178 ;
wire ZBUF_58_82 ;
wire ZBUF_2_83 ;
wire copt_gre_net_1179 ;
wire copt_gre_net_1180 ;
wire copt_gre_net_1181 ;
wire copt_gre_net_1182 ;
wire copt_gre_net_1183 ;
wire copt_gre_net_1184 ;
wire copt_gre_net_1185 ;
wire copt_gre_net_1186 ;
wire ZBUF_159_60 ;
wire copt_gre_net_1187 ;
wire ZBUF_570_60 ;
wire ZBUF_4_60 ;
wire copt_gre_net_1188 ;
wire ZBUF_85_60 ;
wire copt_gre_net_1189 ;
wire copt_gre_net_1190 ;
wire ZINV_325_61 ;
wire copt_gre_net_1191 ;
wire ZINV_270_61 ;
wire ZINV_440_61 ;
wire ZBUF_158_61 ;
wire ZBUF_62_61 ;
wire ZBUF_154_61 ;
wire ZBUF_365_61 ;
wire ZBUF_155_85 ;
wire ZBUF_76_61 ;
wire ZBUF_474_61 ;
wire copt_gre_net_1192 ;
wire copt_gre_net_1193 ;
wire ZINV_11_61 ;
wire ZINV_4_61 ;
wire ZINV_38_61 ;
wire ZBUF_131_0 ;
wire ZCTSNET_0 ;
wire ZCTSNET_1 ;
wire ZCTSNET_2 ;
wire ZCTSNET_3 ;
wire ZCTSNET_4 ;
wire ctosc_gls_3 ;
wire ctosc_gls_4 ;
wire ZCTSNET_7 ;
wire ZCTSNET_8 ;
wire ZCTSNET_9 ;
wire ctosc_gls_5 ;
wire ZCTSNET_11 ;
wire ZCTSNET_12 ;
wire ZCTSNET_13 ;
wire ZCTSNET_14 ;
wire ZCTSNET_15 ;
wire ZCTSNET_16 ;
wire ZCTSNET_17 ;
wire ZCTSNET_18 ;
wire ZCTSNET_19 ;
wire ZCTSNET_20 ;
wire ZCTSNET_21 ;
wire ZCTSNET_22 ;
wire ZCTSNET_23 ;
wire ZCTSNET_24 ;
wire ZCTSNET_25 ;
wire ZCTSNET_26 ;
wire ZCTSNET_27 ;
wire ZCTSNET_28 ;
wire ZCTSNET_29 ;
wire ZCTSNET_30 ;
wire ZCTSNET_31 ;
wire ZCTSNET_32 ;
wire ZCTSNET_33 ;
wire ZCTSNET_35 ;
wire ZCTSNET_36 ;
wire ZCTSNET_37 ;
wire ZCTSNET_38 ;
wire ZCTSNET_39 ;
wire ZCTSNET_40 ;
wire ZCTSNET_41 ;
wire ZCTSNET_42 ;
wire ZCTSNET_43 ;
wire ZCTSNET_44 ;
wire ZCTSNET_45 ;
wire ZCTSNET_46 ;
wire ZCTSNET_47 ;
wire ZCTSNET_48 ;
wire ZCTSNET_49 ;
wire ZCTSNET_50 ;
wire ZCTSNET_51 ;
wire ZCTSNET_52 ;
wire ctosc_gls_6 ;
wire ctosc_drc_2 ;
wire ctosc_drc_0 ;
wire ctosc_gls_7 ;
wire ctosc_drc_3 ;
wire ctosc_gls_8 ;
wire ctosc_dly_trglat_8 ;
wire ctosc_dly_trglat_9 ;
wire ctosc_dly_trglat_10 ;
wire ctosc_dly_trglat_11 ;
wire ctosc_dly_trglat_12 ;
wire ctosc_dly_trglat_13 ;
wire copt_gre_net_1194 ;
wire copt_gre_net_1195 ;
wire copt_gre_net_1196 ;
wire copt_gre_net_1197 ;
wire copt_gre_net_1198 ;
wire copt_gre_net_1199 ;
wire ZBUF_54_89 ;
wire ZBUF_97_89 ;
wire ZBUF_2_91 ;
wire copt_gre_net_1200 ;
wire ZBUF_2_92 ;
wire copt_gre_net_1201 ;
wire ZBUF_2_93 ;
wire ZBUF_32_93 ;
wire ZBUF_2_94 ;
wire ZBUF_103_94 ;
wire ZBUF_2_95 ;
wire ZBUF_2_96 ;
wire ZBUF_147_98 ;
wire ZBUF_2_99 ;
wire ZBUF_75_99 ;
wire copt_gre_net_1202 ;
wire copt_gre_net_1203 ;
wire ZBUF_2_103 ;
wire ZBUF_60_103 ;
wire copt_gre_net_1205 ;
wire ZBUF_76_104 ;
wire ZBUF_2_105 ;
wire ZBUF_2_106 ;
wire copt_gre_net_1206 ;
wire copt_gre_net_1207 ;
wire ZBUF_55_107 ;
wire copt_gre_net_1208 ;
wire ZBUF_2_110 ;
wire ZBUF_2_111 ;
wire ZBUF_144_111 ;
wire copt_gre_net_1209 ;
wire ZBUF_60_111 ;
wire copt_gre_net_1210 ;
wire copt_gre_net_1211 ;
wire copt_gre_net_1212 ;
wire copt_gre_net_1213 ;
wire ZBUF_263_114 ;
wire copt_gre_net_1214 ;
wire copt_gre_net_1215 ;
wire copt_gre_net_1216 ;
wire copt_gre_net_1217 ;
wire copt_gre_net_1218 ;
wire ZBUF_159_118 ;
wire ZBUF_2_119 ;
wire ZBUF_81_120 ;
wire ZBUF_56_120 ;
wire ZBUF_2_121 ;
wire ZBUF_240_121 ;
wire copt_gre_net_1219 ;
wire ZBUF_291_121 ;
wire ZBUF_2_122 ;
wire ZBUF_19_122 ;
wire ZBUF_271_123 ;
wire ZBUF_2_124 ;
wire ZBUF_71_124 ;
wire ZBUF_2_125 ;
wire copt_gre_net_1221 ;
wire ZBUF_2_127 ;
wire ZBUF_2_128 ;
wire ZBUF_2_129 ;
wire ZBUF_27_129 ;
wire copt_gre_net_1223 ;
wire ZBUF_24_130 ;
wire copt_gre_net_1224 ;
wire ZBUF_56_132 ;
wire copt_gre_net_1225 ;
wire copt_gre_net_1226 ;
wire ZBUF_39_133 ;
wire copt_gre_net_1227 ;
wire copt_gre_net_1228 ;
wire ZBUF_68_133 ;
wire copt_gre_net_1229 ;
wire copt_gre_net_1230 ;
wire ZBUF_59_134 ;
wire copt_gre_net_1231 ;
wire ZBUF_2_136 ;
wire copt_gre_net_1232 ;
wire ZBUF_2_138 ;
wire copt_gre_net_1233 ;
wire ZBUF_2_141 ;
wire copt_gre_net_1235 ;
wire ZBUF_2_143 ;
wire ZBUF_82_144 ;
wire ZBUF_155_144 ;
wire ZBUF_142_144 ;
wire ZBUF_230_144 ;
wire ZBUF_2_145 ;
wire ZBUF_35_145 ;
wire copt_gre_net_1236 ;
wire ZBUF_27_146 ;
wire ZBUF_61_146 ;
wire copt_gre_net_1237 ;
wire ZBUF_225_147 ;
wire copt_gre_net_1238 ;
wire copt_gre_net_1239 ;
wire copt_gre_net_1240 ;
wire copt_gre_net_1242 ;
wire copt_gre_net_1243 ;
wire copt_gre_net_1244 ;
wire copt_gre_net_1245 ;
wire ZBUF_142_151 ;
wire ZBUF_2_152 ;
wire copt_gre_net_1246 ;
wire ZBUF_2_154 ;
wire ZBUF_21_154 ;
wire ZBUF_2_155 ;
wire ZBUF_73_155 ;
wire copt_gre_net_1247 ;
wire ZBUF_147_156 ;
wire ZBUF_21_156 ;
wire ZBUF_4_156 ;
wire ZBUF_301_156 ;
wire copt_gre_net_1248 ;
wire ZBUF_193_156 ;
wire copt_gre_net_1249 ;
wire ZBUF_2_157 ;
wire copt_gre_net_1250 ;
wire ZBUF_159_157 ;
wire ZBUF_54_157 ;
wire copt_gre_net_1251 ;
wire ZBUF_105_157 ;
wire ZBUF_517_157 ;
wire copt_gre_net_1253 ;
wire copt_gre_net_1254 ;
wire copt_gre_net_1255 ;
wire ZBUF_223_157 ;
wire ZBUF_297_157 ;
wire ZBUF_4_158 ;
wire ZBUF_313_158 ;
wire ZBUF_269_158 ;
wire copt_gre_net_1257 ;
wire ZBUF_200_159 ;
wire ZBUF_57_159 ;
wire ZBUF_2_159 ;
wire ZBUF_65_159 ;
wire copt_gre_net_1258 ;
wire ZBUF_30_159 ;
wire ZBUF_226_159 ;
wire ZBUF_29_159 ;
wire ZBUF_144_159 ;
wire ZBUF_200_160 ;
wire ZBUF_196_160 ;
wire copt_gre_net_1259 ;
wire ZBUF_72_160 ;
wire copt_gre_net_1260 ;
wire ZBUF_110_160 ;
wire ZBUF_179_160 ;
wire ZBUF_108_160 ;
wire ZBUF_88_160 ;
wire copt_gre_net_1261 ;
wire copt_gre_net_1262 ;
wire ZBUF_114_160 ;
wire ZBUF_153_160 ;
wire ZBUF_149_160 ;
wire ZBUF_62_160 ;
wire copt_gre_net_1264 ;
wire copt_gre_net_1265 ;
wire copt_gre_net_1266 ;
wire ZBUF_142_161 ;
wire copt_gre_net_1267 ;
wire copt_gre_net_1268 ;
wire copt_gre_net_1269 ;
wire ZBUF_2_162 ;
wire copt_gre_net_1270 ;
wire ZBUF_31_163 ;
wire copt_gre_net_1272 ;
wire copt_gre_net_1273 ;
wire ZBUF_58_163 ;
wire copt_gre_net_1275 ;
wire copt_gre_net_1276 ;
wire copt_gre_net_1277 ;
wire ZBUF_104_165 ;
wire copt_gre_net_1279 ;
wire ZBUF_274_166 ;
wire copt_gre_net_1280 ;
wire copt_gre_net_1281 ;
wire copt_gre_net_1282 ;
wire copt_gre_net_1283 ;
wire ZBUF_163_166 ;
wire ZBUF_125_166 ;
wire copt_gre_net_1284 ;
wire ZBUF_6_167 ;
wire ZBUF_372_167 ;
wire copt_gre_net_1285 ;
wire ZBUF_208_167 ;
wire copt_gre_net_1286 ;
wire ZBUF_105_167 ;
wire ZBUF_2_168 ;
wire ZBUF_2_169 ;
wire ZBUF_61_169 ;
wire ZBUF_6_169 ;
wire copt_gre_net_1287 ;
wire ZBUF_68_169 ;
wire ZBUF_99_169 ;
wire ZBUF_170_169 ;
wire ZBUF_2_170 ;
wire ZBUF_2_172 ;
wire ZBUF_174_172 ;
wire ZBUF_163_172 ;
wire ZBUF_230_172 ;
wire copt_gre_net_1288 ;
wire ZBUF_2_174 ;
wire copt_gre_net_1289 ;
wire copt_gre_net_1290 ;
wire ZBUF_765_174 ;
wire copt_gre_net_1291 ;
wire copt_gre_net_1292 ;
wire ZBUF_2_175 ;
wire ZBUF_1032_175 ;
wire copt_gre_net_1293 ;
wire ZBUF_757_175 ;
wire copt_gre_net_1294 ;
wire ZBUF_502_175 ;
wire copt_gre_net_1295 ;
wire ZBUF_59_175 ;
wire ZBUF_2_176 ;
wire copt_gre_net_1296 ;
wire copt_gre_net_1297 ;
wire copt_gre_net_1298 ;
wire ZBUF_69_176 ;
wire copt_gre_net_1299 ;
wire copt_gre_net_1300 ;
wire ZBUF_18_177 ;
wire copt_gre_net_1301 ;
wire ZBUF_397_178 ;
wire ZBUF_2_179 ;
wire copt_gre_net_1303 ;
wire copt_gre_net_1304 ;
wire ZBUF_2_181 ;
wire copt_gre_net_1305 ;
wire copt_gre_net_1306 ;
wire ZBUF_101_181 ;
wire ZBUF_228_181 ;
wire ZBUF_63_181 ;
wire ZBUF_71_181 ;
wire copt_gre_net_1307 ;
wire ZBUF_191_181 ;
wire ZBUF_131_181 ;
wire copt_gre_net_1308 ;
wire ZBUF_184_181 ;
wire copt_gre_net_1309 ;
wire ZBUF_120_181 ;
wire ZBUF_445_181 ;
wire ZBUF_30_181 ;
wire ZBUF_95_181 ;
wire copt_gre_net_1310 ;
wire copt_gre_net_1311 ;
wire ZBUF_30_182 ;
wire copt_gre_net_1312 ;
wire copt_gre_net_1313 ;
wire ZBUF_116_182 ;
wire copt_gre_net_1314 ;
wire copt_gre_net_1315 ;
wire copt_gre_net_1316 ;
wire copt_gre_net_1317 ;
wire ZBUF_222_184 ;
wire ZBUF_66_184 ;
wire ZBUF_35_184 ;
wire copt_gre_net_1318 ;
wire ZBUF_75_185 ;
wire ZBUF_75_186 ;
wire ZBUF_75_187 ;
wire ZBUF_75_188 ;
wire ZBUF_35_188 ;
wire copt_gre_net_1319 ;
wire ZBUF_75_189 ;
wire ZBUF_75_190 ;
wire ZBUF_132_190 ;
wire ZBUF_75_191 ;
wire ZBUF_128_191 ;
wire ZBUF_129_191 ;
wire ZBUF_282_191 ;
wire ZBUF_129_192 ;
wire copt_gre_net_1320 ;
wire copt_gre_net_1321 ;
wire ZBUF_35_192 ;
wire copt_gre_net_1322 ;
wire ZBUF_71_192 ;
wire ZBUF_76_192 ;
wire copt_gre_net_1323 ;
wire copt_gre_net_1324 ;
wire copt_gre_net_1325 ;
wire ZBUF_76_194 ;
wire copt_gre_net_1326 ;
wire copt_gre_net_1327 ;
wire ZBUF_4_195 ;
wire copt_gre_net_1328 ;
wire ZBUF_38_195 ;
wire copt_gre_net_1329 ;
wire ZBUF_120_196 ;
wire copt_gre_net_1330 ;
wire ZBUF_68_197 ;
wire copt_gre_net_1331 ;
wire copt_gre_net_1332 ;
wire ZBUF_79_198 ;
wire copt_gre_net_1333 ;
wire ZBUF_2_201 ;
wire ZBUF_63_201 ;
wire ZBUF_97_201 ;
wire ZBUF_62_201 ;
wire ZBUF_120_201 ;
wire ZBUF_69_201 ;
wire ZBUF_2_202 ;
wire ZBUF_2_203 ;
wire copt_gre_net_1334 ;
wire ZBUF_34_204 ;
wire ZBUF_24_204 ;
wire ZBUF_74_204 ;
wire ZBUF_120_205 ;
wire ZBUF_2_206 ;
wire ZBUF_2_207 ;
wire ZBUF_40_207 ;
wire copt_gre_net_1336 ;
wire ZBUF_2_209 ;
wire ZBUF_2_211 ;
wire ZBUF_2_212 ;
wire copt_gre_net_1337 ;
wire copt_gre_net_1338 ;
wire ZBUF_80_214 ;
wire ZBUF_2_216 ;
wire ZBUF_28_216 ;
wire ZBUF_19_216 ;
wire copt_gre_net_1339 ;
wire ZBUF_58_217 ;
wire ZBUF_2_218 ;
wire copt_gre_net_1340 ;
wire ZBUF_66_220 ;
wire ZBUF_2_221 ;
wire copt_gre_net_1341 ;
wire ZBUF_2_223 ;
wire ZBUF_114_223 ;
wire ZBUF_23_224 ;
wire copt_gre_net_1342 ;
wire ZBUF_29_224 ;
wire ZBUF_61_224 ;
wire copt_gre_net_1343 ;
wire copt_gre_net_1344 ;
wire ZBUF_63_224 ;
wire ZBUF_2_225 ;
wire copt_gre_net_1345 ;
wire ZBUF_60_226 ;
wire copt_gre_net_1346 ;
wire ZBUF_2_228 ;
wire copt_gre_net_1347 ;
wire ZBUF_84_229 ;
wire copt_gre_net_1348 ;
wire ZBUF_30_229 ;
wire ZBUF_24_229 ;
wire copt_gre_net_1349 ;
wire ZBUF_2_231 ;
wire ZBUF_134_231 ;
wire copt_gre_net_1350 ;
wire ZBUF_63_233 ;
wire copt_gre_net_1351 ;
wire copt_gre_net_1352 ;
wire copt_gre_net_1353 ;
wire ZBUF_130_234 ;
wire ZBUF_25_234 ;
wire ZBUF_220_234 ;
wire ZBUF_2_235 ;
wire ZBUF_148_235 ;
wire ZBUF_49_235 ;
wire copt_gre_net_1354 ;
wire ZBUF_229_235 ;
wire ZBUF_94_235 ;
wire ZBUF_33_235 ;
wire copt_gre_net_1355 ;
wire copt_gre_net_1356 ;
wire ZBUF_329_235 ;
wire ZBUF_91_235 ;
wire copt_gre_net_1358 ;
wire copt_gre_net_1359 ;
wire copt_gre_net_1360 ;
wire ZBUF_59_236 ;
wire ZBUF_136_236 ;
wire ZBUF_34_236 ;
wire ZBUF_272_236 ;
wire copt_gre_net_1361 ;
wire ZBUF_136_237 ;
wire ZBUF_182_237 ;
wire ZBUF_2_237 ;
wire copt_gre_net_1362 ;
wire copt_gre_net_1363 ;
wire ZBUF_736_237 ;
wire ZBUF_22_237 ;
wire copt_gre_net_1364 ;
wire ZBUF_302_237 ;
wire ZBUF_2_238 ;
wire ZBUF_100_238 ;
wire ZBUF_120_238 ;
wire copt_gre_net_1365 ;
wire ZBUF_97_238 ;
wire copt_gre_net_1366 ;
wire copt_gre_net_1367 ;
wire ZBUF_18_238 ;
wire ZBUF_131_238 ;
wire ZBUF_75_239 ;
wire copt_gre_net_1369 ;
wire copt_gre_net_1370 ;
wire copt_gre_net_1371 ;
wire ZBUF_131_239 ;
wire ZBUF_199_239 ;
wire ZBUF_69_239 ;
wire ZBUF_137_239 ;
wire copt_gre_net_1372 ;
wire copt_gre_net_1373 ;
wire copt_gre_net_1374 ;
wire copt_gre_net_1376 ;
wire ZBUF_71_240 ;
wire ZBUF_229_240 ;
wire copt_gre_net_1377 ;
wire copt_gre_net_1378 ;
wire copt_gre_net_1379 ;
wire copt_gre_net_1380 ;
wire copt_gre_net_1381 ;
wire ZBUF_24_241 ;
wire copt_gre_net_1383 ;
wire ZBUF_178_241 ;
wire \USRAM/guide_buf ;
wire \USRAM/guide_buf_1 ;
wire \USRAM/guide_buf_2 ;
wire \USRAM/guide_buf_3 ;
wire \USRAM/guide_buf_4 ;
wire \USRAM/guide_buf_5 ;
wire \USRAM/guide_buf_6 ;
wire \USRAM/guide_buf_7 ;
wire \USRAM/guide_buf_8 ;
wire \USRAM/guide_buf_9 ;
wire \USRAM/guide_buf_10 ;
wire \USRAM/guide_buf_11 ;
wire \USRAM/guide_buf_12 ;
wire \USRAM/guide_buf_13 ;
wire \USRAM/guide_buf_14 ;
wire \USRAM/guide_buf_15 ;
wire \USRAM/guide_buf_16 ;
wire \USRAM/guide_buf_17 ;
wire \USRAM/guide_buf_18 ;
wire \USRAM/guide_buf_19 ;
wire \USRAM/guide_buf_20 ;
wire \USRAM/guide_buf_21 ;
wire \USRAM/guide_buf_22 ;
wire \USRAM/guide_buf_23 ;
wire \USRAM/guide_buf_24 ;
wire \USRAM/guide_buf_25 ;
wire \USRAM/guide_buf_26 ;
wire \USRAM/guide_buf_27 ;
wire \USRAM/guide_buf_28 ;
wire \USRAM/guide_buf_29 ;
wire \USRAM/guide_buf_30 ;
wire \USRAM/guide_buf_31 ;
wire \USRAM/guide_buf_32 ;
wire \USRAM/guide_buf_33 ;
wire \USRAM/guide_buf_34 ;
wire \USRAM/guide_buf_35 ;
wire \USRAM/guide_buf_36 ;
wire \USRAM/guide_buf_37 ;
wire \USRAM/guide_buf_38 ;
wire \USRAM/guide_buf_39 ;
wire \USRAM/guide_buf_40 ;
wire \USRAM/guide_buf_41 ;
wire \USRAM/guide_buf_42 ;
wire \USRAM/guide_buf_43 ;
wire \USRAM/guide_buf_44 ;
wire \USRAM/guide_buf_45 ;
wire \USRAM/guide_buf_46 ;
wire \USRAM/guide_buf_47 ;
wire \USRAM/guide_buf_48 ;
wire \USRAM/guide_buf_49 ;
wire \USRAM/guide_buf_50 ;
wire \USRAM/guide_buf_51 ;
wire \USRAM/guide_buf_52 ;
wire \USRAM/guide_buf_53 ;
wire \USRAM/guide_buf_54 ;
wire \USRAM/guide_buf_55 ;
wire \USRAM/guide_buf_56 ;
wire \USRAM/guide_buf_57 ;
wire \USRAM/guide_buf_58 ;
wire \USRAM/guide_buf_59 ;
wire \USRAM/guide_buf_60 ;
wire \USRAM/guide_buf_61 ;
wire \USRAM/guide_buf_62 ;
wire \USRAM/guide_buf_63 ;
wire \USRAM/guide_buf_64 ;
wire \USRAM/guide_buf_65 ;
wire \USRAM/guide_buf_66 ;
wire \USRAM/guide_buf_67 ;
wire \USRAM/guide_buf_68 ;
wire \USRAM/guide_buf_69 ;
wire \USRAM/guide_buf_70 ;
wire \USRAM/guide_buf_71 ;
wire \USRAM/guide_buf_72 ;
wire \USRAM/guide_buf_73 ;
wire \USRAM/guide_buf_74 ;
wire \USRAM/guide_buf_75 ;
wire \USRAM/guide_buf_76 ;
wire \USRAM/guide_buf_77 ;
wire \USRAM/guide_buf_78 ;
wire \USRAM/guide_buf_79 ;
wire \USRAM/guide_buf_80 ;
wire \USRAM/guide_buf_81 ;
wire \USRAM/guide_buf_82 ;
wire \USRAM/guide_buf_83 ;
wire \USRAM/guide_buf_84 ;
wire \USRAM/guide_buf_85 ;
wire \USRAM/guide_buf_86 ;
wire \USRAM/guide_buf_87 ;
wire \USRAM/guide_buf_88 ;
wire \USRAM/guide_buf_89 ;
wire \USRAM/guide_buf_90 ;
wire \USRAM/guide_buf_91 ;
wire \USRAM/guide_buf_92 ;
wire \USRAM/guide_buf_93 ;
wire \USRAM/guide_buf_94 ;
wire \USRAM/guide_buf_95 ;
wire \USRAM/guide_buf_96 ;
wire \USRAM/guide_buf_97 ;
wire \USRAM/guide_buf_98 ;
wire \USRAM/guide_buf_99 ;
wire \USRAM/guide_buf_100 ;
wire \USRAM/guide_buf_101 ;
wire \USRAM/guide_buf_102 ;
wire \USRAM/guide_buf_103 ;
wire \USRAM/guide_buf_104 ;
wire \USRAM/guide_buf_105 ;
wire \USRAM/guide_buf_106 ;
wire \USRAM/guide_buf_107 ;
wire \USRAM/guide_buf_108 ;
wire \USRAM/guide_buf_109 ;
wire \USRAM/guide_buf_110 ;
wire \USRAM/guide_buf_111 ;
wire \USRAM/guide_buf_112 ;
wire \USRAM/guide_buf_113 ;
wire \USRAM/guide_buf_114 ;
wire \USRAM/guide_buf_115 ;
wire \USRAM/guide_buf_116 ;
wire \USRAM/guide_buf_117 ;
wire \USRAM/guide_buf_118 ;
wire \USRAM/guide_buf_119 ;
wire \USRAM/guide_buf_120 ;
wire \USRAM/guide_buf_121 ;
wire \USRAM/guide_buf_122 ;
wire \USRAM/guide_buf_123 ;
wire \USRAM/guide_buf_124 ;
wire \USRAM/guide_buf_125 ;
wire \USRAM/guide_buf_126 ;
wire \USRAM/guide_buf_127 ;
wire \USRAM/guide_buf_128 ;
wire \USRAM/guide_buf_129 ;
wire \USRAM/guide_buf_130 ;
wire \USRAM/guide_buf_131 ;
wire \USRAM/guide_buf_132 ;
wire \USRAM/guide_buf_133 ;
wire \USRAM/guide_buf_134 ;
wire \USRAM/guide_buf_135 ;
wire \USRAM/guide_buf_136 ;
wire \USRAM/guide_buf_137 ;
wire \USRAM/guide_buf_138 ;
wire \USRAM/guide_buf_139 ;
wire \USRAM/guide_buf_140 ;
wire \USRAM/guide_buf_141 ;
wire \USRAM/guide_buf_142 ;
wire \USRAM/guide_buf_143 ;
wire \USRAM/guide_buf_144 ;
wire \USRAM/guide_buf_145 ;
wire \USRAM/guide_buf_146 ;
wire \USRAM/guide_buf_147 ;
wire \USRAM/guide_buf_148 ;
wire \USRAM/guide_buf_149 ;
wire \USRAM/guide_buf_150 ;
wire \USRAM/guide_buf_151 ;
wire \USRAM/guide_buf_152 ;
wire \USRAM/guide_buf_153 ;
wire \USRAM/guide_buf_154 ;
wire \USRAM/guide_buf_155 ;
wire \USRAM/guide_buf_156 ;
wire \USRAM/guide_buf_157 ;
wire \USRAM/guide_buf_158 ;
wire \USRAM/guide_buf_159 ;
wire \USRAM/guide_buf_160 ;
wire \USRAM/guide_buf_161 ;
wire \USRAM/guide_buf_162 ;
wire \USRAM/guide_buf_163 ;
wire \USRAM/guide_buf_164 ;
wire \USRAM/guide_buf_165 ;
wire \USRAM/guide_buf_166 ;
wire \USRAM/guide_buf_167 ;
wire \USRAM/guide_buf_168 ;
wire \USRAM/guide_buf_169 ;
wire \USRAM/guide_buf_170 ;
wire \USRAM/guide_buf_171 ;
wire \USRAM/guide_buf_172 ;
wire \USRAM/guide_buf_173 ;
wire \USRAM/guide_buf_174 ;
wire \USRAM/guide_buf_175 ;
wire \USRAM/guide_buf_176 ;
wire \USRAM/guide_buf_177 ;
wire \USRAM/guide_buf_178 ;
wire \USRAM/guide_buf_179 ;
wire \USRAM/guide_buf_180 ;
wire \USRAM/guide_buf_181 ;
wire \USRAM/guide_buf_182 ;
wire \USRAM/guide_buf_183 ;
wire \USRAM/guide_buf_184 ;
wire \USRAM/guide_buf_185 ;
wire \USRAM/guide_buf_186 ;
wire \USRAM/guide_buf_187 ;
wire \USRAM/guide_buf_188 ;
wire \USRAM/guide_buf_189 ;
wire \USRAM/guide_buf_190 ;
wire \USRAM/guide_buf_191 ;
wire \USRAM/guide_buf_192 ;
wire \USRAM/guide_buf_193 ;
wire \USRAM/guide_buf_194 ;
wire \USRAM/guide_buf_195 ;
wire \USRAM/guide_buf_196 ;
wire \USRAM/guide_buf_197 ;
wire \USRAM/guide_buf_198 ;
wire \USRAM/guide_buf_199 ;
wire \USRAM/guide_buf_200 ;
wire \USRAM/guide_buf_201 ;
wire \USRAM/guide_buf_202 ;
wire \USRAM/guide_buf_203 ;
wire \USRAM/guide_buf_204 ;
wire \USRAM/guide_buf_205 ;
wire \USRAM/guide_buf_206 ;
wire \USRAM/guide_buf_207 ;
wire \USRAM/guide_buf_208 ;
wire \USRAM/guide_buf_209 ;
wire \USRAM/guide_buf_210 ;
wire \USRAM/guide_buf_211 ;
wire \USRAM/guide_buf_212 ;
wire \USRAM/guide_buf_213 ;
wire \USRAM/guide_buf_214 ;
wire \USRAM/guide_buf_215 ;
wire \USRAM/guide_buf_216 ;
wire \USRAM/guide_buf_217 ;
wire \USRAM/guide_buf_218 ;
wire \USRAM/guide_buf_219 ;
wire \USRAM/guide_buf_220 ;
wire \USRAM/guide_buf_221 ;
wire \USRAM/guide_buf_222 ;
wire \USRAM/guide_buf_223 ;
wire \USRAM/guide_buf_224 ;
wire \USRAM/guide_buf_225 ;
wire \USRAM/guide_buf_226 ;
wire \USRAM/guide_buf_227 ;
wire \USRAM/guide_buf_228 ;
wire \USRAM/guide_buf_229 ;
wire \USRAM/guide_buf_230 ;
wire \USRAM/guide_buf_231 ;
wire \USRAM/guide_buf_232 ;
wire \USRAM/guide_buf_233 ;
wire \USRAM/guide_buf_234 ;
wire \USRAM/guide_buf_235 ;
wire \USRAM/guide_buf_236 ;
wire \USRAM/guide_buf_237 ;
wire \USRAM/guide_buf_238 ;
wire \USRAM/guide_buf_239 ;
wire \USRAM/guide_buf_240 ;
wire \USRAM/guide_buf_241 ;
wire \USRAM/guide_buf_242 ;
wire \USRAM/guide_buf_243 ;
wire \USRAM/guide_buf_244 ;
wire \USRAM/guide_buf_245 ;
wire \USRAM/guide_buf_246 ;
wire \USRAM/guide_buf_247 ;
wire \USRAM/guide_buf_248 ;
wire \USRAM/guide_buf_249 ;
wire \USRAM/guide_buf_250 ;
wire \USRAM/guide_buf_251 ;
wire \USRAM/guide_buf_252 ;
wire \USRAM/guide_buf_253 ;
wire \USRAM/guide_buf_254 ;
wire \USRAM/guide_buf_255 ;
wire \USRAM/guide_buf_256 ;
wire \USRAM/guide_buf_257 ;
wire \USRAM/guide_buf_258 ;
wire \USRAM/guide_buf_259 ;
wire \USRAM/guide_buf_260 ;
wire \USRAM/guide_buf_261 ;
wire \USRAM/guide_buf_262 ;
wire \USRAM/guide_buf_263 ;
wire \USRAM/guide_buf_264 ;
wire \USRAM/guide_buf_265 ;
wire \USRAM/guide_buf_266 ;
wire \USRAM/guide_buf_267 ;
wire \USRAM/guide_buf_268 ;
wire \USRAM/guide_buf_269 ;
wire \USRAM/guide_buf_270 ;
wire \USRAM/guide_buf_271 ;
wire \USRAM/guide_buf_272 ;
wire \USRAM/guide_buf_273 ;
wire \USRAM/guide_buf_274 ;
wire \USRAM/guide_buf_275 ;
wire \USRAM/guide_buf_276 ;
wire \USRAM/guide_buf_277 ;
wire \USRAM/guide_buf_278 ;
wire \USRAM/guide_buf_279 ;
wire \USRAM/guide_buf_280 ;
wire \USRAM/guide_buf_281 ;
wire \USRAM/guide_buf_282 ;
wire \USRAM/guide_buf_283 ;
wire \USRAM/guide_buf_284 ;
wire \USRAM/guide_buf_285 ;
wire \USRAM/guide_buf_286 ;
wire \USRAM/guide_buf_287 ;
wire \USRAM/guide_buf_288 ;
wire \USRAM/guide_buf_289 ;
wire \USRAM/guide_buf_290 ;
wire \USRAM/guide_buf_291 ;
wire \USRAM/guide_buf_292 ;
wire \USRAM/guide_buf_293 ;
wire \USRAM/guide_buf_294 ;
wire \USRAM/guide_buf_295 ;
wire \USRAM/guide_buf_296 ;
wire \USRAM/guide_buf_297 ;
wire \USRAM/guide_buf_298 ;
wire \USRAM/guide_buf_299 ;
wire \USRAM/guide_buf_300 ;
wire \USRAM/guide_buf_301 ;
wire \USRAM/guide_buf_302 ;
wire \USRAM/guide_buf_303 ;
wire \USRAM/guide_buf_304 ;
wire \USRAM/guide_buf_305 ;
wire \USRAM/guide_buf_306 ;
wire \USRAM/guide_buf_307 ;
wire \USRAM/guide_buf_308 ;
wire \USRAM/guide_buf_309 ;
wire \USRAM/guide_buf_310 ;
wire \USRAM/guide_buf_311 ;
wire \USRAM/guide_buf_312 ;
wire \USRAM/guide_buf_313 ;
wire \USRAM/guide_buf_314 ;
wire \USRAM/guide_buf_315 ;
wire \USRAM/guide_buf_316 ;
wire \USRAM/guide_buf_317 ;
wire \USRAM/guide_buf_318 ;
wire \USRAM/guide_buf_319 ;
wire \USRAM/guide_buf_320 ;
wire \USRAM/guide_buf_321 ;
wire \USRAM/guide_buf_322 ;
wire \USRAM/guide_buf_323 ;
wire \USRAM/guide_buf_324 ;
wire \USRAM/guide_buf_325 ;
wire \USRAM/guide_buf_326 ;
wire \USRAM/guide_buf_327 ;
wire \USRAM/guide_buf_328 ;
wire \USRAM/guide_buf_329 ;
wire \USRAM/guide_buf_330 ;
wire \USRAM/guide_buf_331 ;
wire \USRAM/guide_buf_332 ;
wire \USRAM/guide_buf_333 ;
wire \USRAM/guide_buf_334 ;
wire \USRAM/guide_buf_335 ;
wire \USRAM/guide_buf_336 ;
wire \USRAM/guide_buf_337 ;
wire \USRAM/guide_buf_338 ;
wire \USRAM/guide_buf_339 ;
wire \USRAM/guide_buf_340 ;
wire \USRAM/guide_buf_341 ;
wire \USRAM/guide_buf_342 ;
wire \USRAM/guide_buf_343 ;
wire \USRAM/guide_buf_344 ;
wire \USRAM/guide_buf_345 ;
wire \USRAM/guide_buf_346 ;
wire \USRAM/guide_buf_347 ;
wire \USRAM/guide_buf_348 ;
wire \USRAM/guide_buf_349 ;
wire \USRAM/guide_buf_350 ;
wire \USRAM/guide_buf_351 ;
wire \USRAM/guide_buf_352 ;
wire \USRAM/guide_buf_353 ;
wire \USRAM/guide_buf_354 ;
wire \USRAM/guide_buf_355 ;
wire \USRAM/guide_buf_356 ;
wire \USRAM/guide_buf_357 ;
wire \USRAM/guide_buf_358 ;
wire \USRAM/guide_buf_359 ;
wire \USRAM/guide_buf_360 ;
wire \USRAM/guide_buf_361 ;
wire \USRAM/guide_buf_362 ;
wire \USRAM/guide_buf_363 ;
wire \USRAM/guide_buf_364 ;
wire \USRAM/guide_buf_365 ;
wire \USRAM/guide_buf_366 ;
wire \USRAM/guide_buf_367 ;
wire \USRAM/guide_buf_368 ;
wire \USRAM/guide_buf_369 ;
wire \USRAM/guide_buf_370 ;
wire \USRAM/guide_buf_371 ;
wire \USRAM/guide_buf_372 ;
wire \USRAM/guide_buf_373 ;
wire \USRAM/guide_buf_374 ;
wire \USRAM/guide_buf_375 ;
wire \USRAM/guide_buf_376 ;
wire \USRAM/guide_buf_377 ;
wire \USRAM/guide_buf_378 ;
wire \USRAM/guide_buf_379 ;
wire \USRAM/guide_buf_380 ;
wire \USRAM/guide_buf_381 ;
wire \USRAM/guide_buf_382 ;
wire \USRAM/guide_buf_383 ;
wire \USRAM/guide_buf_384 ;
wire \USRAM/guide_buf_385 ;
wire \USRAM/guide_buf_386 ;
wire \USRAM/guide_buf_387 ;
wire \USRAM/guide_buf_388 ;
wire \USRAM/guide_buf_389 ;
wire \USRAM/guide_buf_390 ;
wire \USRAM/guide_buf_391 ;
wire \USRAM/guide_buf_392 ;
wire \USRAM/guide_buf_393 ;
wire \USRAM/guide_buf_394 ;
wire \USRAM/guide_buf_395 ;
wire \USRAM/guide_buf_396 ;
wire \USRAM/guide_buf_397 ;
wire \USRAM/guide_buf_398 ;
wire \USRAM/guide_buf_399 ;
wire \USRAM/guide_buf_400 ;
wire \USRAM/guide_buf_401 ;
wire \USRAM/guide_buf_402 ;
wire \USRAM/guide_buf_403 ;
wire \USRAM/guide_buf_404 ;
wire \USRAM/guide_buf_405 ;
wire \USRAM/guide_buf_406 ;
wire \USRAM/guide_buf_407 ;
wire \USRAM/guide_buf_408 ;
wire \USRAM/guide_buf_409 ;
wire \USRAM/guide_buf_410 ;
wire \USRAM/guide_buf_411 ;
wire \USRAM/guide_buf_412 ;
wire \USRAM/guide_buf_413 ;
wire \USRAM/guide_buf_414 ;
wire \USRAM/guide_buf_415 ;
wire \USRAM/guide_buf_416 ;
wire \USRAM/guide_buf_417 ;
wire \USRAM/guide_buf_418 ;
wire \USRAM/guide_buf_419 ;
wire \USRAM/guide_buf_420 ;
wire \USRAM/guide_buf_421 ;
wire \USRAM/guide_buf_422 ;
wire \USRAM/guide_buf_423 ;
wire \USRAM/guide_buf_424 ;
wire \USRAM/guide_buf_425 ;
wire \USRAM/guide_buf_426 ;
wire \USRAM/guide_buf_427 ;
wire \USRAM/guide_buf_428 ;
wire \USRAM/guide_buf_429 ;
wire \USRAM/guide_buf_430 ;
wire \USRAM/guide_buf_431 ;
wire \USRAM/guide_buf_432 ;
wire \USRAM/guide_buf_433 ;
wire \USRAM/guide_buf_434 ;
wire \USRAM/guide_buf_435 ;
wire \USRAM/guide_buf_436 ;
wire \USRAM/guide_buf_437 ;
wire \USRAM/guide_buf_438 ;
wire \USRAM/guide_buf_439 ;
wire \USRAM/guide_buf_440 ;
wire \USRAM/guide_buf_441 ;
wire \USRAM/guide_buf_442 ;
wire \USRAM/guide_buf_443 ;
wire \USRAM/guide_buf_444 ;
wire \USRAM/guide_buf_445 ;
wire \USRAM/guide_buf_446 ;
wire \USRAM/guide_buf_447 ;
wire \USRAM/guide_buf_448 ;
wire \USRAM/guide_buf_449 ;
wire \USRAM/guide_buf_450 ;
wire \USRAM/guide_buf_451 ;
wire \USRAM/guide_buf_452 ;
wire \USRAM/guide_buf_453 ;
wire \USRAM/guide_buf_454 ;
wire \USRAM/guide_buf_455 ;
wire \USRAM/guide_buf_456 ;
wire \USRAM/guide_buf_457 ;
wire \USRAM/guide_buf_458 ;
wire \USRAM/guide_buf_459 ;
wire \USRAM/guide_buf_460 ;
wire \USRAM/guide_buf_461 ;
wire \USRAM/guide_buf_462 ;
wire \USRAM/guide_buf_463 ;
wire \USRAM/guide_buf_464 ;
wire \USRAM/guide_buf_465 ;
wire \USRAM/guide_buf_466 ;
wire \USRAM/guide_buf_467 ;
wire \USRAM/guide_buf_468 ;
wire \USRAM/guide_buf_469 ;
wire \USRAM/guide_buf_470 ;
wire \USRAM/guide_buf_471 ;
wire \USRAM/guide_buf_472 ;
wire \USRAM/guide_buf_473 ;
wire \USRAM/guide_buf_474 ;
wire \USRAM/guide_buf_475 ;
wire \USRAM/guide_buf_476 ;
wire \USRAM/guide_buf_477 ;
wire \USRAM/guide_buf_478 ;
wire \USRAM/guide_buf_479 ;
wire \USRAM/guide_buf_480 ;
wire \USRAM/guide_buf_481 ;
wire \USRAM/guide_buf_482 ;
wire \USRAM/guide_buf_483 ;
wire \USRAM/guide_buf_484 ;
wire \USRAM/guide_buf_485 ;
wire \USRAM/guide_buf_486 ;
wire \USRAM/guide_buf_487 ;
wire \USRAM/guide_buf_488 ;
wire \USRAM/guide_buf_489 ;
wire \USRAM/guide_buf_490 ;
wire \USRAM/guide_buf_491 ;
wire \USRAM/guide_buf_492 ;
wire \USRAM/guide_buf_493 ;
wire \USRAM/guide_buf_494 ;
wire \USRAM/guide_buf_495 ;
wire \USRAM/guide_buf_496 ;
wire \USRAM/guide_buf_497 ;
wire \USRAM/guide_buf_498 ;
wire \USRAM/guide_buf_499 ;
wire \USRAM/guide_buf_500 ;
wire \USRAM/guide_buf_501 ;
wire \USRAM/guide_buf_502 ;
wire \USRAM/guide_buf_503 ;
wire \USRAM/guide_buf_504 ;
wire \USRAM/guide_buf_505 ;
wire \USRAM/guide_buf_506 ;
wire \USRAM/guide_buf_507 ;
wire \USRAM/guide_buf_508 ;
wire \USRAM/guide_buf_509 ;
wire \USRAM/guide_buf_510 ;
wire \USRAM/guide_buf_511 ;
wire \USRAM/guide_buf_512 ;
wire \USRAM/guide_buf_513 ;
wire \USRAM/guide_buf_514 ;
wire \USRAM/guide_buf_515 ;
wire \USRAM/guide_buf_516 ;
wire \USRAM/guide_buf_517 ;
wire \USRAM/guide_buf_518 ;
wire \USRAM/guide_buf_519 ;
wire \USRAM/guide_buf_520 ;
wire \USRAM/guide_buf_521 ;
wire \USRAM/guide_buf_522 ;
wire \USRAM/guide_buf_523 ;
wire \USRAM/guide_buf_524 ;
wire \USRAM/guide_buf_525 ;
wire \USRAM/guide_buf_526 ;
wire \USRAM/guide_buf_527 ;
wire \USRAM/guide_buf_528 ;
wire \USRAM/guide_buf_529 ;
wire \USRAM/guide_buf_530 ;
wire \USRAM/guide_buf_531 ;
wire \USRAM/guide_buf_532 ;
wire \USRAM/guide_buf_533 ;
wire \USRAM/guide_buf_534 ;
wire \USRAM/guide_buf_535 ;
wire \USRAM/guide_buf_536 ;
wire \USRAM/guide_buf_537 ;
wire \USRAM/guide_buf_538 ;
wire \USRAM/guide_buf_539 ;
wire \USRAM/guide_buf_540 ;
wire \USRAM/guide_buf_541 ;
wire \USRAM/guide_buf_542 ;
wire \USRAM/guide_buf_543 ;
wire \USRAM/guide_buf_544 ;
wire \USRAM/guide_buf_545 ;
wire \USRAM/guide_buf_546 ;
wire \USRAM/guide_buf_547 ;
wire \USRAM/guide_buf_548 ;
wire \USRAM/guide_buf_549 ;
wire \USRAM/guide_buf_550 ;
wire \USRAM/guide_buf_551 ;
wire \USRAM/guide_buf_552 ;
wire \USRAM/guide_buf_553 ;
wire \USRAM/guide_buf_554 ;
wire \USRAM/guide_buf_555 ;
wire \USRAM/guide_buf_556 ;
wire \USRAM/guide_buf_557 ;
wire \USRAM/guide_buf_558 ;
wire \USRAM/guide_buf_559 ;
wire \USRAM/guide_buf_560 ;
wire \USRAM/guide_buf_561 ;
wire \USRAM/guide_buf_562 ;
wire \USRAM/guide_buf_563 ;
wire \USRAM/guide_buf_564 ;
wire \USRAM/guide_buf_565 ;
wire \USRAM/guide_buf_566 ;
wire \USRAM/guide_buf_567 ;
wire \USRAM/guide_buf_568 ;
wire \USRAM/guide_buf_569 ;
wire \USRAM/guide_buf_570 ;
wire \USRAM/guide_buf_571 ;
wire \USRAM/guide_buf_572 ;
wire \USRAM/guide_buf_573 ;
wire \USRAM/guide_buf_574 ;
wire \USRAM/guide_buf_575 ;
wire \USRAM/guide_buf_576 ;
wire \USRAM/guide_buf_577 ;
wire \USRAM/guide_buf_578 ;
wire \USRAM/guide_buf_579 ;
wire \USRAM/guide_buf_580 ;
wire \USRAM/guide_buf_581 ;
wire \USRAM/guide_buf_582 ;
wire \USRAM/guide_buf_583 ;
wire \USRAM/guide_buf_584 ;
wire \USRAM/guide_buf_585 ;
wire \USRAM/guide_buf_586 ;
wire \USRAM/guide_buf_587 ;
wire \USRAM/guide_buf_588 ;
wire \USRAM/guide_buf_589 ;
wire \USRAM/guide_buf_590 ;
wire \USRAM/guide_buf_591 ;
wire \USRAM/guide_buf_592 ;
wire \USRAM/guide_buf_593 ;
wire \USRAM/guide_buf_594 ;
wire \USRAM/guide_buf_595 ;
wire \USRAM/guide_buf_596 ;
wire \USRAM/guide_buf_597 ;
wire \USRAM/guide_buf_598 ;
wire \USRAM/guide_buf_599 ;
wire \USRAM/guide_buf_600 ;
wire \USRAM/guide_buf_601 ;
wire \USRAM/guide_buf_602 ;
wire \USRAM/guide_buf_603 ;
wire \USRAM/guide_buf_604 ;
wire \USRAM/guide_buf_605 ;
wire \USRAM/guide_buf_606 ;
wire \USRAM/guide_buf_607 ;
wire \USRAM/guide_buf_608 ;
wire \USRAM/guide_buf_609 ;
wire \USRAM/guide_buf_610 ;
wire \USRAM/guide_buf_611 ;
wire \USRAM/guide_buf_612 ;
wire \USRAM/guide_buf_613 ;
wire \USRAM/guide_buf_614 ;
wire \USRAM/guide_buf_615 ;
wire \USRAM/guide_buf_616 ;
wire \USRAM/guide_buf_617 ;
wire \USRAM/guide_buf_618 ;
wire \USRAM/guide_buf_619 ;
wire \USRAM/guide_buf_620 ;
wire \USRAM/guide_buf_621 ;
wire \USRAM/guide_buf_622 ;
wire \USRAM/guide_buf_623 ;
wire \USRAM/guide_buf_624 ;
wire \USRAM/guide_buf_625 ;
wire \USRAM/guide_buf_626 ;
wire \USRAM/guide_buf_627 ;
wire \USRAM/guide_buf_628 ;
wire \USRAM/guide_buf_629 ;
wire \USRAM/guide_buf_630 ;
wire \USRAM/guide_buf_631 ;
wire \USRAM/guide_buf_632 ;
wire \USRAM/guide_buf_633 ;
wire \USRAM/guide_buf_634 ;
wire \USRAM/guide_buf_635 ;
wire \USRAM/guide_buf_636 ;
wire \USRAM/guide_buf_637 ;
wire \USRAM/guide_buf_638 ;
wire \USRAM/guide_buf_639 ;
wire \USRAM/guide_buf_640 ;
wire \USRAM/guide_buf_641 ;
wire \USRAM/guide_buf_642 ;
wire \USRAM/guide_buf_643 ;
wire \USRAM/guide_buf_644 ;
wire \USRAM/guide_buf_645 ;
wire \USRAM/guide_buf_646 ;
wire \USRAM/guide_buf_647 ;
wire \USRAM/guide_buf_648 ;
wire \USRAM/guide_buf_649 ;
wire \USRAM/guide_buf_650 ;
wire \USRAM/guide_buf_651 ;
wire \USRAM/guide_buf_652 ;
wire \USRAM/guide_buf_653 ;
wire \USRAM/guide_buf_654 ;
wire \USRAM/guide_buf_655 ;
wire \USRAM/guide_buf_656 ;
wire \USRAM/guide_buf_657 ;
wire \USRAM/guide_buf_658 ;
wire \USRAM/guide_buf_659 ;
wire copt_gre_net_1384 ;
wire ZBUF_139_241 ;
wire copt_gre_net_1385 ;
wire copt_gre_net_1386 ;
wire copt_gre_net_1387 ;
wire ZBUF_122_241 ;
wire copt_gre_net_1388 ;
wire ZBUF_73_241 ;
wire ZBUF_45_241 ;
wire ZBUF_126_241 ;
wire N135 ;
wire ZBUF_113_241 ;
wire ZBUF_58_241 ;
wire ZBUF_105_241 ;
wire ZBUF_2_242 ;
wire ZBUF_106_242 ;
wire copt_gre_net_1389 ;
wire copt_gre_net_1390 ;
wire ZBUF_26_243 ;
wire ZBUF_2_244 ;
wire copt_gre_net_1391 ;
wire ZBUF_68_245 ;
wire copt_gre_net_1392 ;
wire ZBUF_167_245 ;
wire ZBUF_33_245 ;
wire copt_gre_net_1393 ;
wire ZBUF_196_245 ;
wire ZBUF_125_245 ;
wire copt_gre_net_1394 ;
wire copt_gre_net_1395 ;
wire ZBUF_103_245 ;
wire ZBUF_120_245 ;
wire ZBUF_34_245 ;
wire copt_gre_net_1396 ;
wire copt_gre_net_1397 ;
wire copt_gre_net_1398 ;
wire copt_gre_net_1399 ;
wire copt_gre_net_1400 ;
wire ZBUF_75_246 ;
wire ZBUF_75_247 ;
wire ZBUF_16_247 ;
wire ZBUF_180_247 ;
wire ZBUF_183_247 ;
wire ZBUF_75_248 ;
wire ZBUF_73_248 ;
wire ZBUF_80_248 ;
wire ZBUF_205_248 ;
wire ZBUF_124_248 ;
wire ZBUF_124_249 ;
wire copt_gre_net_1401 ;
wire ZBUF_13_249 ;
wire copt_gre_net_1402 ;
wire copt_gre_net_1403 ;
wire ZBUF_243_250 ;
wire ZBUF_387_250 ;
wire copt_gre_net_1404 ;
wire ZBUF_75_250 ;
wire ZBUF_4_251 ;
wire copt_gre_net_1405 ;
wire ZBUF_75_251 ;
wire ZBUF_255_251 ;
wire ZBUF_76_251 ;
wire ZBUF_75_252 ;
wire ZBUF_75_253 ;
wire copt_gre_net_1406 ;
wire ZBUF_121_253 ;
wire ZBUF_49_253 ;
wire copt_gre_net_1408 ;
wire ZBUF_49_254 ;
wire copt_gre_net_1409 ;
wire copt_gre_net_1410 ;
wire copt_gre_net_1411 ;
wire copt_gre_net_1412 ;
wire copt_gre_net_1413 ;
wire ZBUF_122_255 ;
wire copt_gre_net_1414 ;
wire ZBUF_4_256 ;
wire copt_gre_net_1415 ;
wire ZBUF_55_256 ;
wire copt_gre_net_1416 ;
wire copt_gre_net_1417 ;
wire copt_gre_net_1418 ;
wire ZBUF_31_258 ;
wire copt_gre_net_1419 ;
wire ZBUF_32_258 ;
wire ZBUF_78_258 ;
wire ZBUF_205_258 ;
wire copt_gre_net_1420 ;
wire copt_gre_net_1421 ;
wire copt_gre_net_1422 ;
wire ZBUF_47_258 ;
wire ZBUF_2_258 ;
wire copt_gre_net_1423 ;
wire copt_gre_net_1424 ;
wire copt_gre_net_1425 ;
wire ZBUF_19_259 ;
wire ZBUF_161_259 ;
wire ZBUF_35_259 ;
wire copt_gre_net_1426 ;
wire copt_gre_net_1427 ;
wire ZBUF_586_259 ;
wire ZBUF_25_259 ;
wire copt_gre_net_1428 ;
wire ZBUF_103_260 ;
wire ZBUF_75_261 ;
wire copt_gre_net_1430 ;
wire ZBUF_218_261 ;
wire copt_gre_net_1431 ;
wire ZBUF_218_262 ;
wire ZBUF_66_262 ;
wire ZBUF_125_262 ;
wire copt_gre_net_1432 ;
wire ZBUF_33_262 ;
wire copt_gre_net_1433 ;
wire ZBUF_157_262 ;
wire ZBUF_148_262 ;
wire ZBUF_122_262 ;
wire ZBUF_122_263 ;
wire ZBUF_126_263 ;
wire ZBUF_75_263 ;
wire ZBUF_75_264 ;
wire copt_gre_net_1434 ;
wire copt_gre_net_1435 ;
wire ZBUF_69_266 ;
wire ZBUF_77_266 ;
wire ZBUF_73_266 ;
wire copt_gre_net_1436 ;
wire ZBUF_76_267 ;
wire ZBUF_93_267 ;
wire ZBUF_76_268 ;
wire copt_gre_net_1437 ;
wire ZBUF_129_269 ;
wire copt_gre_net_1438 ;
wire ZBUF_35_269 ;
wire ZBUF_122_270 ;
wire ZBUF_216_270 ;
wire ZBUF_4_270 ;
wire copt_gre_net_1439 ;
wire copt_gre_net_1440 ;
wire ZBUF_76_271 ;
wire copt_gre_net_1441 ;
wire copt_gre_net_1442 ;
wire ZBUF_25_271 ;
wire copt_gre_net_1443 ;
wire copt_gre_net_1444 ;
wire copt_gre_net_1445 ;
wire ZBUF_118_271 ;
wire ZBUF_76_272 ;
wire ZBUF_118_272 ;
wire ZBUF_76_273 ;
wire copt_gre_net_1447 ;
wire copt_gre_net_1448 ;
wire copt_gre_net_1449 ;
wire copt_gre_net_1450 ;
wire copt_gre_net_1451 ;
wire ZBUF_28_274 ;
wire copt_gre_net_1452 ;
wire copt_gre_net_1454 ;
wire copt_gre_net_1455 ;
wire copt_gre_net_1456 ;
wire copt_gre_net_1457 ;
wire copt_gre_net_1458 ;
wire copt_gre_net_1459 ;
wire copt_gre_net_1460 ;
wire copt_gre_net_1461 ;
wire copt_gre_net_1463 ;
wire ZBUF_2_275 ;
wire ZBUF_105_275 ;
wire copt_gre_net_1464 ;
wire ZBUF_737_275 ;
wire ZBUF_1508_275 ;
wire ZBUF_647_275 ;
wire ZBUF_737_276 ;
wire ZBUF_632_276 ;
wire ZBUF_637_276 ;
wire copt_gre_net_1465 ;
wire ZBUF_2232_276 ;
wire ZBUF_747_276 ;
wire ZBUF_742_276 ;
wire ropt_net_1466 ;
wire ZBUF_637_277 ;
wire ZBUF_607_277 ;
wire ropt_net_1467 ;
wire ZBUF_2186_277 ;
wire ropt_net_1468 ;
wire ZBUF_617_278 ;
wire ZBUF_26_278 ;
wire ZBUF_742_278 ;
wire ZBUF_2_279 ;
wire ZBUF_612_279 ;
wire ZBUF_1382_279 ;
wire ZBUF_485_279 ;
wire ZBUF_2_280 ;
wire ZBUF_2_281 ;
wire ZBUF_607_281 ;
wire ZBUF_662_281 ;
wire ZBUF_737_281 ;
wire ZBUF_657_281 ;
wire ZBUF_468_281 ;
wire ZBUF_1388_281 ;
wire ropt_net_1469 ;
wire ropt_net_1470 ;
wire ropt_net_1471 ;
wire ropt_net_1472 ;
wire ZBUF_34_283 ;
wire ropt_net_1473 ;
wire ropt_net_1474 ;
wire ZBUF_161_283 ;
wire ZBUF_268_283 ;
wire ZBUF_2_284 ;
wire ZBUF_687_284 ;
wire ZBUF_712_284 ;
wire ZBUF_677_284 ;
wire ZBUF_58_284 ;
wire ZBUF_834_284 ;
wire ropt_net_1475 ;
wire ropt_net_1476 ;
wire ropt_net_1477 ;
wire ZBUF_244_286 ;
wire ropt_net_1478 ;
wire ropt_net_1479 ;
wire ZBUF_34_287 ;
wire ropt_net_1480 ;
wire ropt_net_1481 ;
wire ropt_net_1482 ;
wire ropt_net_1483 ;
wire ZBUF_118_289 ;
wire ropt_net_1484 ;
wire ropt_net_1485 ;
wire ropt_net_1486 ;
wire ZBUF_6_290 ;
wire ropt_net_1487 ;
wire ZBUF_957_290 ;
wire ropt_net_1488 ;
wire ropt_net_1489 ;
wire ropt_net_1490 ;
wire ropt_net_1491 ;
wire ropt_net_1492 ;
wire ZBUF_188_290 ;
wire ropt_net_1493 ;
wire ropt_net_1494 ;
wire ropt_net_1495 ;
wire gre_mt_BUF_74_291 ;
wire copt_gre_net_310 ;
wire copt_gre_net_311 ;
wire copt_gre_net_312 ;
wire copt_gre_net_313 ;
wire copt_gre_net_315 ;
wire copt_gre_net_316 ;
wire copt_gre_net_317 ;
wire copt_gre_net_318 ;
wire copt_gre_net_319 ;
wire copt_gre_net_320 ;
wire copt_gre_net_321 ;
wire copt_gre_net_322 ;
wire copt_gre_net_323 ;
wire copt_gre_net_324 ;
wire copt_gre_net_325 ;
wire copt_gre_net_326 ;
wire copt_gre_net_327 ;
wire copt_gre_net_328 ;
wire copt_gre_net_329 ;
wire copt_gre_net_330 ;
wire copt_gre_net_331 ;
wire copt_gre_net_332 ;
wire copt_gre_net_333 ;
wire copt_gre_net_334 ;
wire copt_gre_net_335 ;
wire copt_gre_net_336 ;
wire copt_gre_net_337 ;
wire copt_gre_net_338 ;
wire copt_gre_net_339 ;
wire copt_gre_net_340 ;
wire copt_gre_net_341 ;
wire copt_gre_net_342 ;
wire copt_gre_net_343 ;
wire copt_gre_net_344 ;
wire copt_gre_net_345 ;
wire copt_gre_net_346 ;
wire copt_gre_net_348 ;
wire copt_gre_net_350 ;
wire copt_gre_net_351 ;
wire copt_gre_net_352 ;
wire copt_gre_net_353 ;
wire copt_gre_net_354 ;
wire ropt_net_1496 ;
wire copt_gre_net_357 ;
wire copt_gre_net_358 ;
wire copt_gre_net_359 ;
wire copt_gre_net_360 ;
wire copt_gre_net_361 ;
wire copt_gre_net_362 ;
wire copt_gre_net_363 ;
wire copt_gre_net_365 ;
wire ropt_net_1497 ;
wire copt_gre_net_368 ;
wire ropt_net_1498 ;
wire copt_gre_net_371 ;
wire copt_gre_net_372 ;
wire copt_gre_net_373 ;
wire copt_gre_net_374 ;
wire copt_gre_net_375 ;
wire copt_gre_net_376 ;
wire ropt_net_1499 ;
wire ropt_net_1500 ;
wire ropt_net_1501 ;
wire copt_gre_net_381 ;
wire copt_gre_net_382 ;
wire ropt_net_1502 ;
wire ropt_net_1503 ;
wire ropt_net_1504 ;
wire copt_gre_net_386 ;
wire copt_gre_net_388 ;
wire copt_gre_net_389 ;
wire copt_gre_net_390 ;
wire copt_gre_net_392 ;
wire copt_gre_net_393 ;
wire ropt_net_1506 ;
wire copt_gre_net_395 ;
wire copt_gre_net_397 ;
wire copt_gre_net_398 ;
wire copt_gre_net_399 ;
wire copt_gre_net_400 ;
wire copt_gre_net_401 ;
wire copt_gre_net_402 ;
wire copt_gre_net_403 ;
wire copt_gre_net_404 ;
wire copt_gre_net_405 ;
wire copt_gre_net_406 ;
wire ropt_net_1507 ;
wire copt_gre_net_408 ;
wire copt_gre_net_409 ;
wire copt_gre_net_411 ;
wire copt_gre_net_412 ;
wire ropt_net_1508 ;
wire copt_gre_net_414 ;
wire copt_gre_net_415 ;
wire copt_gre_net_417 ;
wire copt_gre_net_418 ;
wire copt_gre_net_419 ;
wire copt_gre_net_420 ;
wire ropt_net_1510 ;
wire copt_gre_net_422 ;
wire ropt_net_1511 ;
wire copt_gre_net_424 ;
wire copt_gre_net_427 ;
wire ropt_net_1512 ;
wire copt_gre_net_430 ;
wire copt_gre_net_432 ;
wire ropt_net_1514 ;
wire copt_gre_net_436 ;
wire copt_gre_net_438 ;
wire copt_gre_net_439 ;
wire copt_gre_net_440 ;
wire copt_gre_net_441 ;
wire copt_gre_net_442 ;
wire copt_gre_net_443 ;
wire ropt_net_1516 ;
wire ropt_net_1517 ;
wire copt_gre_net_446 ;
wire copt_gre_net_447 ;
wire copt_gre_net_449 ;
wire ropt_net_1518 ;
wire copt_gre_net_451 ;
wire copt_gre_net_454 ;
wire ropt_net_1519 ;
wire copt_gre_net_456 ;
wire copt_gre_net_457 ;
wire copt_gre_net_458 ;
wire ropt_net_1520 ;
wire ropt_net_1521 ;

OA221X1_HVT ctmi_4700 ( .A1 ( ctmn_3885 ) , .A2 ( ctmn_3985 ) , 
    .A3 ( \UGRAY_COUNTER_16B/binary [3] ) , 
    .A4 ( \UGRAY_COUNTER_16B/binary [2] ) , .A5 ( BIST_MODE[1] ) , 
    .Y ( \UGRAY_COUNTER_16B/N30 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0_HVT ctmi_4008 ( .A ( BISR_EN ) , .Y ( \UFSM/N257 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AND2X1_HVT ctmi_4009 ( .A1 ( ZBUF_230_172 ) , .A2 ( ctmn_3528 ) , 
    .Y ( SEQMAP_NET_822 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1_HVT ctmi_4010 ( .A1 ( ctmn_3514 ) , .A2 ( ctmn_3520 ) , 
    .Y ( ctmn_3521 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
OA22X1_HVT ctmi_4701 ( .A1 ( ctmn_3886 ) , .A2 ( ctmn_3986 ) , 
    .A3 ( \UGRAY_COUNTER_16B/binary [4] ) , .A4 ( ctmn_3987 ) , 
    .Y ( \UGRAY_COUNTER_16B/N28 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
OA22X2_HVT ctmi_4692 ( .A1 ( BIST_EN ) , .A2 ( IDATA[1] ) , 
    .A3 ( HFSNET_815 ) , .A4 ( ctmn_3966 ) , .Y ( MEM_IDATA[1] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0_HVT ctmi_4702 ( .A1 ( HFSNET_811 ) , 
    .A2 ( \UGRAY_COUNTER_16B/binary [5] ) , .Y ( ctmn_3986 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AND2X1_HVT ctmi_4703 ( .A1 ( BIST_MODE[1] ) , 
    .A2 ( \UGRAY_COUNTER_16B/binary [5] ) , .Y ( ctmn_3987 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
MUX21X1_HVT ctmi_4704 ( .A1 ( ctmn_3987 ) , .A2 ( ctmn_3986 ) , 
    .S0 ( \UGRAY_COUNTER_16B/binary [6] ) , .Y ( \UGRAY_COUNTER_16B/N27 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
MUX21X1_HVT ctmi_4705 ( .A1 ( ctmn_3988 ) , .A2 ( ctmn_3989 ) , 
    .S0 ( \UGRAY_COUNTER_16B/binary [6] ) , .Y ( \UGRAY_COUNTER_16B/N26 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
OA22X2_HVT ctmi_4693 ( .A1 ( BIST_EN ) , .A2 ( IDATA[2] ) , 
    .A3 ( HFSNET_815 ) , .A4 ( ctmn_3960 ) , .Y ( MEM_IDATA[2] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
OAI22X1_HVT ctmi_4694 ( .A1 ( \UFSM/N257 ) , .A2 ( WEB ) , .A3 ( BISR_EN ) , 
    .A4 ( \UFSM/WEB_DELAY ) , .Y ( SEQMAP_NET_885 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
OA22X2_HVT ctmi_4695 ( .A1 ( BIST_EN ) , .A2 ( IDATA[3] ) , 
    .A3 ( HFSNET_816 ) , .A4 ( ctmn_3962 ) , .Y ( MEM_IDATA[3] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
OA22X2_HVT ctmi_4696 ( .A1 ( BIST_EN ) , .A2 ( IDATA[4] ) , 
    .A3 ( HFSNET_815 ) , .A4 ( ctmn_3964 ) , .Y ( MEM_IDATA[4] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
OA22X2_HVT ctmi_4697 ( .A1 ( BIST_EN ) , .A2 ( IDATA[5] ) , 
    .A3 ( HFSNET_815 ) , .A4 ( ctmn_3973 ) , .Y ( MEM_IDATA[5] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1_HVT ctmi_4651 ( .A1 ( HFSNET_804 ) , .A2 ( ctmn_3954 ) , 
    .Y ( SEQMAP_NET_819 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
XNOR3X1_HVT ctmi_4652 ( .A1 ( ctmn_3953 ) , .A2 ( LFSR_DATA[3] ) , 
    .A3 ( LFSR_DATA[4] ) , .Y ( ctmn_3954 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
XOR2X1_HVT ctmi_4653 ( .A1 ( LFSR_DATA[5] ) , .A2 ( LFSR_DATA[7] ) , 
    .Y ( ctmn_3953 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1_HVT \UFSM/MEM_OEB_reg[47] ( .D ( SEQMAP_NET_837 ) , 
    .SI ( optlc_net_227 ) , .SE ( optlc_net_224 ) , .CLK ( ZCTSNET_37 ) , 
    .RSTB ( RSTN ) , .Q ( ctmn_3635 ) , .QN ( MEM_OEB[47] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1_HVT \UGRAY_COUNTER_16B/gray_reg[15] ( .D ( \UGRAY_COUNTER_16B/N17 ) , 
    .SI ( optlc_net_283 ) , .SE ( optlc_net_283 ) , .CLK ( CE ) , 
    .RSTB ( RSTN ) , .Q ( GRAY_COUNTER_ADDR[15] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NAND2X0_HVT ctmi_4558 ( .A1 ( ctmn_3532 ) , .A2 ( ctmn_3894 ) , 
    .Y ( \UFSM/N325 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1_HVT \ULFSR_16B/out_reg[15] ( .D ( \ULFSR_16B/N1 ) , 
    .SI ( optlc_net_272 ) , .SE ( optlc_net_272 ) , .CLK ( HFSNET_808 ) , 
    .RSTB ( RSTN ) , .Q ( LFSR_ADDR[15] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1_HVT ctmi_4654 ( .A1 ( BIST_MODE[0] ) , .A2 ( ctmn_3956 ) , 
    .Y ( SEQMAP_NET_820 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1_HVT \ULFSR_16B/out_reg[14] ( .D ( \ULFSR_16B/N2 ) , 
    .SI ( optlc_net_272 ) , .SE ( optlc_net_272 ) , .CLK ( HFSNET_808 ) , 
    .RSTB ( RSTN ) , .Q ( LFSR_ADDR[14] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SRAM1RW1024x8 \USRAM/genblk1[0].UMEM (
    .A ( { ZBUF_75_188 , HFSNET_1090 , HFSNET_1058 , ZBUF_226_49 , 
        ZBUF_251_34 , ZBUF_253_49 , HFSNET_1005 , HFSNET_1345 , 
        copt_gre_net_412 , HFSNET_817 } ) ,
    .CE ( ZCTSNET_24 ) , .CSB ( \USRAM/guide_buf_11 ) ,
    .I ( { ZBUF_124_249 , ZBUF_118_271 , HFSNET_929 , ZBUF_124_248 , 
        HFSNET_1316 , ZBUF_76_271 , HFSNET_1201 , ZBUF_76_194 } ) ,
    .OEB ( \USRAM/guide_buf_20 ) , .WEB ( copt_gre_net_1235 ) , 
    .O ( \USRAM/TMP_ODATA [7:0] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
XNOR3X1_HVT ctmi_4655 ( .A1 ( ctmn_3955 ) , .A2 ( LFSR_ADDR[12] ) , 
    .A3 ( LFSR_ADDR[10] ) , .Y ( ctmn_3956 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFNARX1_HVT \UCOMP_8B/prev_BIST_MODE_reg[0] ( .D ( BIST_MODE[0] ) , 
    .SI ( optlc_net_257 ) , .SE ( optlc_net_257 ) , .CLK ( ctosc_gls_3 ) , 
    .RSTB ( RSTN ) , .Q ( \UCOMP_8B/prev_BIST_MODE [0] ) , .QN ( ctmn_3981 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
XOR2X1_HVT ctmi_4656 ( .A1 ( LFSR_ADDR[13] ) , .A2 ( LFSR_ADDR[15] ) , 
    .Y ( ctmn_3955 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
OA221X1_HVT ctmi_328 ( .A1 ( HFSNET_807 ) , .A2 ( HFSNET_807 ) , 
    .A3 ( phfnn_31 ) , .A4 ( BINARY_COUNTER_ADDR[6] ) , .A5 ( ctmn_3913 ) , 
    .Y ( \UBINARY_COUNTER_16B/N10 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
OA221X1_HVT ctmi_327 ( .A1 ( HFSNET_807 ) , .A2 ( HFSNET_807 ) , 
    .A3 ( phfnn_39 ) , .A4 ( BINARY_COUNTER_ADDR[7] ) , .A5 ( ctmn_3930 ) , 
    .Y ( \UBINARY_COUNTER_16B/N9 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
OA221X1_HVT ctmi_325 ( .A1 ( HFSNET_806 ) , .A2 ( HFSNET_806 ) , 
    .A3 ( phfnn_42 ) , .A4 ( BINARY_COUNTER_ADDR[9] ) , .A5 ( ctmn_3932 ) , 
    .Y ( \UBINARY_COUNTER_16B/N7 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT HFSBUF_2_343 ( .A ( MEM_ADDR[0] ) , .Y ( HFSNET_0 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
OA221X1_HVT ctmi_4661 ( .A1 ( \UCOMP_8B/prev_BIST_MODE [2] ) , 
    .A2 ( HFSNET_805 ) , .A3 ( aps_rename_6_ ) , .A4 ( ctmn_3978 ) , 
    .A5 ( ctmn_3979 ) , .Y ( ctmn_3980 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
OA221X1_HVT ctmi_342 ( .A1 ( ctmn_3980 ) , .A2 ( ctmn_3980 ) , 
    .A3 ( HFSNET_802 ) , .A4 ( \UCOMP_8B/prev_BIST_MODE [0] ) , 
    .A5 ( ctmn_3983 ) , .Y ( \UCOMP_8B/N4 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND4X1_HVT ctmi_4663 ( .A1 ( ctmn_3967 ) , .A2 ( ctmn_3961 ) , 
    .A3 ( ctmn_3965 ) , .A4 ( ctmn_3963 ) , .Y ( ctmn_3968_CDR1 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
XNOR2X1_HVT ctmi_4664 ( .A1 ( ctmn_3960 ) , .A2 ( aps_rename_229_ ) , 
    .Y ( ctmn_3961 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO21X1_HVT ctmi_4665 ( .A1 ( ctmn_3505 ) , .A2 ( LFSR_DATA[2] ) , 
    .A3 ( ctmn_3959 ) , .Y ( ctmn_3960 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AOI221X1_HVT ctmi_341 ( .A1 ( HFSNET_814 ) , .A2 ( HFSNET_814 ) , 
    .A3 ( ctmn_3968_CDR1 ) , .A4 ( ctmn_3977_CDR1 ) , .A5 ( OEB ) , 
    .Y ( ctmn_3978 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6328 ( .A ( copt_gre_net_460 ) , 
    .Y ( copt_gre_net_459 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
XNOR2X1_HVT ctmi_4669 ( .A1 ( ctmn_3962 ) , .A2 ( HFSNET_1231 ) , 
    .Y ( ctmn_3963 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO21X2_HVT ctmi_4670 ( .A1 ( ctmn_3505 ) , .A2 ( LFSR_DATA[3] ) , 
    .A3 ( ctmn_3959 ) , .Y ( ctmn_3962 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
XNOR2X1_HVT ctmi_4671 ( .A1 ( ctmn_3964 ) , .A2 ( HFSNET_756 ) , 
    .Y ( ctmn_3965 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO21X1_HVT ctmi_4672 ( .A1 ( ctmn_3505 ) , .A2 ( LFSR_DATA[4] ) , 
    .A3 ( ctmn_3959 ) , .Y ( ctmn_3964 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
XNOR2X1_HVT ctmi_4673 ( .A1 ( ctmn_3966 ) , .A2 ( aps_rename_230_ ) , 
    .Y ( ctmn_3967 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO21X1_HVT ctmi_4674 ( .A1 ( ctmn_3505 ) , .A2 ( LFSR_DATA[1] ) , 
    .A3 ( ctmn_3959 ) , .Y ( ctmn_3966 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND4X1_HVT ctmi_4675 ( .A1 ( ctmn_3970 ) , .A2 ( ctmn_3974 ) , 
    .A3 ( ctmn_3972 ) , .A4 ( ctmn_3976 ) , .Y ( ctmn_3977_CDR1 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X0_HVT ctmi_4560 ( .A1 ( ZBUF_397_178 ) , .A2 ( copt_gre_net_432 ) , 
    .Y ( \UFSM/N323 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
OR2X1_HVT ctmi_4561 ( .A1 ( BINARY_COUNTER_ADDR[0] ) , .A2 ( HFSNET_805 ) , 
    .Y ( clkgt_enable_net_327 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
XNOR2X1_HVT ctmi_4676 ( .A1 ( ctmn_3969 ) , .A2 ( HFSNET_760 ) , 
    .Y ( ctmn_3970 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO21X1_HVT ctmi_4677 ( .A1 ( ctmn_3505 ) , .A2 ( LFSR_DATA[7] ) , 
    .A3 ( ctmn_3959 ) , .Y ( ctmn_3969 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
XNOR2X1_HVT ctmi_4678 ( .A1 ( ctmn_3971 ) , .A2 ( HFSNET_1224 ) , 
    .Y ( ctmn_3972 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO21X1_HVT ctmi_4679 ( .A1 ( ctmn_3505 ) , .A2 ( LFSR_DATA[6] ) , 
    .A3 ( ctmn_3959 ) , .Y ( ctmn_3971 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
XNOR2X1_HVT ctmi_4680 ( .A1 ( ctmn_3973 ) , .A2 ( HFSNET_758 ) , 
    .Y ( ctmn_3974 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO21X1_HVT ctmi_4681 ( .A1 ( ctmn_3505 ) , .A2 ( LFSR_DATA[5] ) , 
    .A3 ( ctmn_3959 ) , .Y ( ctmn_3973 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
XNOR2X1_HVT ctmi_4682 ( .A1 ( ctmn_3975 ) , .A2 ( HFSNET_751 ) , 
    .Y ( ctmn_3976 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO21X1_HVT ctmi_4683 ( .A1 ( ctmn_3505 ) , .A2 ( LFSR_DATA[0] ) , 
    .A3 ( ctmn_3959 ) , .Y ( ctmn_3975 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X0_HVT ctmi_4684 ( .A1 ( \UCOMP_8B/prev_BIST_MODE [2] ) , 
    .A2 ( HFSNET_805 ) , .Y ( ctmn_3979 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
OA221X1_HVT ctmi_4685 ( .A1 ( \UCOMP_8B/prev_BIST_MODE [1] ) , 
    .A2 ( HFSNET_811 ) , .A3 ( ctmn_3981 ) , .A4 ( BIST_MODE[0] ) , 
    .A5 ( ctmn_3982 ) , .Y ( ctmn_3983 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X1_HVT ctmi_220 ( .A1 ( ctmn_3518 ) , .A2 ( ctmn_3516 ) , 
    .Y ( ctmn_3543 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X0_HVT ctmi_4687 ( .A1 ( \UCOMP_8B/prev_BIST_MODE [1] ) , 
    .A2 ( HFSNET_811 ) , .Y ( ctmn_3982 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1_HVT ctmi_4035 ( .A1 ( HFSNET_794 ) , .A2 ( ctmn_3532 ) , 
    .Y ( SEQMAP_NET_823 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1_HVT \ULFSR_8B/out_reg[6] ( .D ( \ULFSR_8B/N2 ) , 
    .SI ( optlc_net_275 ) , .SE ( optlc_net_275 ) , .CLK ( HFSNET_790 ) , 
    .RSTB ( RSTN ) , .Q ( LFSR_DATA[6] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X0_HVT ctmi_4559 ( .A1 ( ZBUF_230_172 ) , .A2 ( copt_gre_net_432 ) , 
    .Y ( \UFSM/N324 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6329 ( .A ( copt_gre_net_461 ) , 
    .Y ( copt_gre_net_460 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
CGLPPRX2_HVT \clock_gate_UFSM/CSB_DELAY_reg ( .SE ( optlc_net_281 ) , 
    .EN ( \UFSM/N257 ) , .CLK ( ZCTSNET_51 ) , 
    .GCLK ( \CLK_clock_gate_UFSM/CSB_DELAY_reg ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AND2X1_HVT ctmi_221 ( .A1 ( BINARY_COUNTER_ADDR[13] ) , .A2 ( phfnn_46 ) , 
    .Y ( ctmn_3925 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1_HVT ctmi_4040 ( .A1 ( HFSNET_794 ) , .A2 ( HFSNET_773 ) , 
    .Y ( SEQMAP_NET_824 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1_HVT \ULFSR_8B/out_reg[7] ( .D ( \ULFSR_8B/N1 ) , 
    .SI ( optlc_net_275 ) , .SE ( optlc_net_275 ) , .CLK ( HFSNET_790 ) , 
    .RSTB ( RSTN ) , .Q ( LFSR_DATA[7] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1_HVT ctmi_4042 ( .A1 ( HFSNET_794 ) , .A2 ( HFSNET_774 ) , 
    .Y ( SEQMAP_NET_825 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X0_HVT ctmi_4557 ( .A1 ( HFSNET_773 ) , .A2 ( ctmn_3894 ) , 
    .Y ( \UFSM/N326 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NOR2X0_HVT ctmi_4563 ( .A1 ( HFSNET_805 ) , .A2 ( BINARY_COUNTER_ADDR[1] ) , 
    .Y ( clkgt_nextstate_net_329 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1_HVT ctmi_4046 ( .A1 ( ctmn_3528 ) , .A2 ( copt_gre_net_436 ) , 
    .Y ( SEQMAP_NET_826 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X0_HVT ctmi_4556 ( .A1 ( HFSNET_774 ) , .A2 ( ctmn_3894 ) , 
    .Y ( \UFSM/N327 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1_HVT ctmi_4048 ( .A1 ( ctmn_3528 ) , .A2 ( HFSNET_776 ) , 
    .Y ( SEQMAP_NET_827 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X0_HVT ctmi_4555 ( .A1 ( copt_gre_net_436 ) , .A2 ( copt_gre_net_432 ) , 
    .Y ( \UFSM/N328 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
OR2X1_HVT ctmi_4564 ( .A1 ( \UGRAY_COUNTER_16B/binary [0] ) , 
    .A2 ( HFSNET_811 ) , .Y ( clkgt_enable_net_331 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AND2X1_HVT ctmi_4050 ( .A1 ( ctmn_3528 ) , .A2 ( copt_gre_net_1166 ) , 
    .Y ( SEQMAP_NET_828 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X0_HVT ctmi_4554 ( .A1 ( HFSNET_776 ) , .A2 ( copt_gre_net_432 ) , 
    .Y ( \UFSM/N329 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1_HVT ctmi_4052 ( .A1 ( HFSNET_794 ) , .A2 ( ZBUF_765_174 ) , 
    .Y ( SEQMAP_NET_829 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X0_HVT ctmi_4553 ( .A1 ( copt_gre_net_1166 ) , .A2 ( copt_gre_net_432 ) , 
    .Y ( \UFSM/N330 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0_HVT phfnr_buf_273 ( .A ( ctmn_3925 ) , .Y ( phfnn_48 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1_HVT \ULFSR_8B/out_reg[5] ( .D ( \ULFSR_8B/N3 ) , 
    .SI ( optlc_net_251 ) , .SE ( optlc_net_251 ) , .CLK ( HFSNET_790 ) , 
    .RSTB ( RSTN ) , .Q ( LFSR_DATA[5] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1_HVT \ULFSR_8B/out_reg[4] ( .D ( \ULFSR_8B/N4 ) , 
    .SI ( optlc_net_251 ) , .SE ( optlc_net_251 ) , .CLK ( HFSNET_790 ) , 
    .RSTB ( RSTN ) , .Q ( LFSR_DATA[4] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1_HVT \ULFSR_8B/out_reg[3] ( .D ( \ULFSR_8B/N5 ) , 
    .SI ( optlc_net_275 ) , .SE ( optlc_net_275 ) , .CLK ( HFSNET_790 ) , 
    .RSTB ( RSTN ) , .Q ( LFSR_DATA[3] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1_HVT \ULFSR_8B/out_reg[2] ( .D ( \ULFSR_8B/N6 ) , 
    .SI ( optlc_net_275 ) , .SE ( optlc_net_275 ) , .CLK ( HFSNET_790 ) , 
    .RSTB ( RSTN ) , .Q ( LFSR_DATA[2] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1_HVT \ULFSR_8B/out_reg[1] ( .D ( \ULFSR_8B/N7 ) , 
    .SI ( optlc_net_251 ) , .SE ( optlc_net_251 ) , .CLK ( HFSNET_790 ) , 
    .RSTB ( RSTN ) , .Q ( LFSR_DATA[1] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1_HVT \ULFSR_8B/out_reg[0] ( .D ( SEQMAP_NET_819 ) , 
    .SI ( optlc_net_251 ) , .SE ( optlc_net_251 ) , .CLK ( HFSNET_790 ) , 
    .RSTB ( RSTN ) , .QN ( LFSR_DATA[0] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1_HVT \ULFSR_16B/out_reg[8] ( .D ( \ULFSR_16B/N8 ) , 
    .SI ( optlc_net_264 ) , .SE ( optlc_net_264 ) , .CLK ( HFSNET_808 ) , 
    .RSTB ( RSTN ) , .Q ( LFSR_ADDR[8] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1_HVT ctmi_4056 ( .A1 ( ctmn_3528 ) , .A2 ( copt_gre_net_1137 ) , 
    .Y ( SEQMAP_NET_830 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X0_HVT ctmi_4552 ( .A1 ( ZBUF_765_174 ) , .A2 ( ctmn_3894 ) , 
    .Y ( \UFSM/N331 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1_HVT ctmi_4566 ( .A1 ( ctmn_3897 ) , .A2 ( BIST_MODE[1] ) , 
    .Y ( clkgt_nextstate_net_333 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1_HVT ctmi_4059 ( .A1 ( HFSNET_794 ) , .A2 ( ctmn_3545 ) , 
    .Y ( SEQMAP_NET_831 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFNARX1_HVT \UCOMP_8B/prev_BIST_MODE_reg[2] ( .D ( HFSNET_807 ) , 
    .SI ( optlc_net_258 ) , .SE ( optlc_net_258 ) , .CLK ( ctosc_gls_3 ) , 
    .RSTB ( RSTN ) , .Q ( \UCOMP_8B/prev_BIST_MODE [2] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFNARX1_HVT \UCOMP_8B/prev_BIST_MODE_reg[1] ( .D ( BIST_MODE[1] ) , 
    .SI ( optlc_net_257 ) , .SE ( optlc_net_257 ) , .CLK ( ctosc_gls_3 ) , 
    .RSTB ( RSTN ) , .Q ( \UCOMP_8B/prev_BIST_MODE [1] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1_HVT \UBINARY_COUNTER_16B/binary_reg[15] ( 
    .D ( \UBINARY_COUNTER_16B/N1 ) , .SI ( optlc_net_276 ) , 
    .SE ( optlc_net_276 ) , .CLK ( HFSNET_791 ) , .RSTB ( RSTN ) , 
    .Q ( BINARY_COUNTER_ADDR[15] ) , .QN ( ctmn_3908 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1_HVT \ULFSR_16B/out_reg[13] ( .D ( \ULFSR_16B/N3 ) , 
    .SI ( optlc_net_269 ) , .SE ( optlc_net_269 ) , .CLK ( HFSNET_808 ) , 
    .RSTB ( RSTN ) , .Q ( LFSR_ADDR[13] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1_HVT \UFSM/WEB_DELAY_reg ( .D ( WEB ) , .SI ( optlc_net_281 ) , 
    .SE ( optlc_net_281 ) , .CLK ( \CLK_clock_gate_UFSM/CSB_DELAY_reg ) , 
    .RSTB ( RSTN ) , .Q ( \UFSM/WEB_DELAY ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1_HVT \ULFSR_16B/out_reg[12] ( .D ( \ULFSR_16B/N4 ) , 
    .SI ( optlc_net_269 ) , .SE ( optlc_net_269 ) , .CLK ( HFSNET_808 ) , 
    .RSTB ( RSTN ) , .Q ( LFSR_ADDR[12] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X0_HVT ctmi_4551 ( .A1 ( copt_gre_net_1137 ) , .A2 ( copt_gre_net_432 ) , 
    .Y ( \UFSM/N332 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1_HVT ctmi_4061 ( .A1 ( ctmn_3528 ) , .A2 ( copt_gre_net_1216 ) , 
    .Y ( SEQMAP_NET_832 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X0_HVT ctmi_4550 ( .A1 ( copt_gre_net_1200 ) , .A2 ( copt_gre_net_432 ) , 
    .Y ( \UFSM/N333 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1_HVT ctmi_4063 ( .A1 ( HFSNET_794 ) , .A2 ( ctmn_3547 ) , 
    .Y ( SEQMAP_NET_833 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X0_HVT ctmi_4549 ( .A1 ( copt_gre_net_1216 ) , .A2 ( copt_gre_net_432 ) , 
    .Y ( \UFSM/N334 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1_HVT \ULFSR_16B/out_reg[11] ( .D ( \ULFSR_16B/N5 ) , 
    .SI ( optlc_net_272 ) , .SE ( optlc_net_272 ) , .CLK ( HFSNET_808 ) , 
    .RSTB ( RSTN ) , .Q ( LFSR_ADDR[11] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1_HVT \ULFSR_16B/out_reg[10] ( .D ( \ULFSR_16B/N6 ) , 
    .SI ( optlc_net_276 ) , .SE ( optlc_net_276 ) , .CLK ( HFSNET_808 ) , 
    .RSTB ( RSTN ) , .Q ( LFSR_ADDR[10] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1_HVT \ULFSR_16B/out_reg[9] ( .D ( \ULFSR_16B/N7 ) , 
    .SI ( optlc_net_264 ) , .SE ( optlc_net_264 ) , .CLK ( HFSNET_808 ) , 
    .RSTB ( RSTN ) , .Q ( LFSR_ADDR[9] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1_HVT \UFSM/CSB_DELAY_reg ( .D ( CSB ) , .SI ( optlc_net_281 ) , 
    .SE ( optlc_net_281 ) , .CLK ( \CLK_clock_gate_UFSM/CSB_DELAY_reg ) , 
    .RSTB ( RSTN ) , .Q ( \UFSM/CSB_DELAY ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1_HVT ctmi_4065 ( .A1 ( ctmn_3528 ) , .A2 ( HFSNET_783 ) , 
    .Y ( SEQMAP_NET_834 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X0_HVT ctmi_4548 ( .A1 ( ctmn_3547 ) , .A2 ( ctmn_3894 ) , 
    .Y ( \UFSM/N335 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1_HVT ctmi_4067 ( .A1 ( ctmn_3528 ) , .A2 ( copt_gre_net_1208 ) , 
    .Y ( SEQMAP_NET_835 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X0_HVT ctmi_4547 ( .A1 ( HFSNET_783 ) , .A2 ( copt_gre_net_432 ) , 
    .Y ( \UFSM/N336 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1_HVT ctmi_4069 ( .A1 ( ctmn_3528 ) , .A2 ( copt_gre_net_1186 ) , 
    .Y ( SEQMAP_NET_836 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X0_HVT ctmi_4546 ( .A1 ( copt_gre_net_1208 ) , .A2 ( copt_gre_net_432 ) , 
    .Y ( \UFSM/N337 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1_HVT ctmi_4071 ( .A1 ( ZBUF_397_178 ) , .A2 ( copt_gre_net_430 ) , 
    .Y ( SEQMAP_NET_837 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND3X1_HVT ctmi_4689 ( .A1 ( ctmn_3897 ) , .A2 ( BIST_MODE[1] ) , 
    .A3 ( \UGRAY_COUNTER_16B/binary [2] ) , .Y ( ctmn_3984 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AND2X1_HVT ctmi_4090 ( .A1 ( ZBUF_158_33 ) , .A2 ( ctmn_3555 ) , 
    .Y ( SEQMAP_NET_853 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1_HVT \ULFSR_16B/out_reg[7] ( .D ( \ULFSR_16B/N9 ) , 
    .SI ( optlc_net_262 ) , .SE ( optlc_net_262 ) , .CLK ( HFSNET_808 ) , 
    .RSTB ( RSTN ) , .Q ( LFSR_ADDR[7] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1_HVT \ULFSR_16B/out_reg[6] ( .D ( \ULFSR_16B/N10 ) , 
    .SI ( optlc_net_262 ) , .SE ( optlc_net_262 ) , .CLK ( HFSNET_809 ) , 
    .RSTB ( RSTN ) , .Q ( LFSR_ADDR[6] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1_HVT \ULFSR_16B/out_reg[5] ( .D ( \ULFSR_16B/N11 ) , 
    .SI ( optlc_net_291 ) , .SE ( optlc_net_291 ) , .CLK ( HFSNET_809 ) , 
    .RSTB ( RSTN ) , .Q ( LFSR_ADDR[5] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1_HVT \ULFSR_16B/out_reg[4] ( .D ( \ULFSR_16B/N12 ) , 
    .SI ( optlc_net_267 ) , .SE ( optlc_net_267 ) , .CLK ( HFSNET_809 ) , 
    .RSTB ( RSTN ) , .Q ( LFSR_ADDR[4] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1_HVT \ULFSR_16B/out_reg[3] ( .D ( \ULFSR_16B/N13 ) , 
    .SI ( optlc_net_267 ) , .SE ( optlc_net_267 ) , .CLK ( HFSNET_809 ) , 
    .RSTB ( RSTN ) , .Q ( LFSR_ADDR[3] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1_HVT \ULFSR_16B/out_reg[2] ( .D ( \ULFSR_16B/N14 ) , 
    .SI ( optlc_net_278 ) , .SE ( optlc_net_278 ) , .CLK ( HFSNET_809 ) , 
    .RSTB ( RSTN ) , .Q ( LFSR_ADDR[2] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1_HVT \ULFSR_16B/out_reg[1] ( .D ( \ULFSR_16B/N15 ) , 
    .SI ( optlc_net_291 ) , .SE ( optlc_net_291 ) , .CLK ( HFSNET_809 ) , 
    .RSTB ( RSTN ) , .Q ( LFSR_ADDR[1] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1_HVT \ULFSR_16B/out_reg[0] ( .D ( SEQMAP_NET_820 ) , 
    .SI ( optlc_net_261 ) , .SE ( optlc_net_261 ) , .CLK ( HFSNET_809 ) , 
    .RSTB ( RSTN ) , .QN ( LFSR_ADDR[0] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1_HVT \UFSM/MEM_CSB_reg[62] ( .D ( \UFSM/N324 ) , 
    .SI ( optlc_net_256 ) , .SE ( optlc_net_256 ) , .CLK ( ZCTSNET_45 ) , 
    .RSTB ( RSTN ) , .Q ( MEM_CSB[62] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1_HVT ctmi_4075 ( .A1 ( ZBUF_230_172 ) , .A2 ( copt_gre_net_430 ) , 
    .Y ( SEQMAP_NET_838 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1_HVT ctmi_4076 ( .A1 ( ctmn_3532 ) , .A2 ( copt_gre_net_430 ) , 
    .Y ( SEQMAP_NET_839 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1_HVT ctmi_4077 ( .A1 ( HFSNET_773 ) , .A2 ( copt_gre_net_430 ) , 
    .Y ( SEQMAP_NET_840 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1_HVT ctmi_4078 ( .A1 ( HFSNET_774 ) , .A2 ( copt_gre_net_430 ) , 
    .Y ( SEQMAP_NET_841 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1_HVT \UGRAY_COUNTER_16B/binary_reg[14] ( 
    .D ( \UGRAY_COUNTER_16B/N2 ) , .SI ( optlc_net_277 ) , 
    .SE ( optlc_net_277 ) , .CLK ( HFSNET_793 ) , .RSTB ( RSTN ) , 
    .Q ( \UGRAY_COUNTER_16B/binary [14] ) , .QN ( ctmn_3887 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1_HVT \UBINARY_COUNTER_16B/binary_reg[12] ( 
    .D ( \UBINARY_COUNTER_16B/N4 ) , .SI ( optlc_net_266 ) , 
    .SE ( optlc_net_266 ) , .CLK ( HFSNET_791 ) , .RSTB ( RSTN ) , 
    .Q ( BINARY_COUNTER_ADDR[12] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1_HVT \UBINARY_COUNTER_16B/binary_reg[11] ( 
    .D ( \UBINARY_COUNTER_16B/N5 ) , .SI ( optlc_net_266 ) , 
    .SE ( optlc_net_266 ) , .CLK ( HFSNET_791 ) , .RSTB ( RSTN ) , 
    .Q ( BINARY_COUNTER_ADDR[11] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1_HVT \UBINARY_COUNTER_16B/binary_reg[10] ( 
    .D ( \UBINARY_COUNTER_16B/N6 ) , .SI ( optlc_net_266 ) , 
    .SE ( optlc_net_266 ) , .CLK ( HFSNET_791 ) , .RSTB ( RSTN ) , 
    .Q ( BINARY_COUNTER_ADDR[10] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1_HVT \UBINARY_COUNTER_16B/binary_reg[9] ( 
    .D ( \UBINARY_COUNTER_16B/N7 ) , .SI ( optlc_net_264 ) , 
    .SE ( optlc_net_264 ) , .CLK ( HFSNET_791 ) , .RSTB ( RSTN ) , 
    .Q ( BINARY_COUNTER_ADDR[9] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1_HVT \UBINARY_COUNTER_16B/binary_reg[8] ( 
    .D ( \UBINARY_COUNTER_16B/N8 ) , .SI ( optlc_net_264 ) , 
    .SE ( optlc_net_264 ) , .CLK ( HFSNET_791 ) , .RSTB ( RSTN ) , 
    .Q ( BINARY_COUNTER_ADDR[8] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1_HVT \UBINARY_COUNTER_16B/binary_reg[7] ( 
    .D ( \UBINARY_COUNTER_16B/N9 ) , .SI ( optlc_net_261 ) , 
    .SE ( optlc_net_261 ) , 
    .CLK ( \CE_clock_gate_UBINARY_COUNTER_16B/binary_reg ) , .RSTB ( RSTN ) , 
    .Q ( BINARY_COUNTER_ADDR[7] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1_HVT \UBINARY_COUNTER_16B/binary_reg[6] ( 
    .D ( \UBINARY_COUNTER_16B/N10 ) , .SI ( optlc_net_261 ) , 
    .SE ( optlc_net_261 ) , 
    .CLK ( \CE_clock_gate_UBINARY_COUNTER_16B/binary_reg ) , .RSTB ( RSTN ) , 
    .Q ( BINARY_COUNTER_ADDR[6] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1_HVT \UBINARY_COUNTER_16B/binary_reg[5] ( 
    .D ( \UBINARY_COUNTER_16B/N11 ) , .SI ( optlc_net_261 ) , 
    .SE ( optlc_net_261 ) , 
    .CLK ( \CE_clock_gate_UBINARY_COUNTER_16B/binary_reg ) , .RSTB ( RSTN ) , 
    .Q ( BINARY_COUNTER_ADDR[5] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1_HVT \UBINARY_COUNTER_16B/binary_reg[4] ( 
    .D ( \UBINARY_COUNTER_16B/N12 ) , .SI ( optlc_net_292 ) , 
    .SE ( optlc_net_292 ) , 
    .CLK ( \CE_clock_gate_UBINARY_COUNTER_16B/binary_reg ) , .RSTB ( RSTN ) , 
    .Q ( BINARY_COUNTER_ADDR[4] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1_HVT \UBINARY_COUNTER_16B/binary_reg[3] ( 
    .D ( \UBINARY_COUNTER_16B/N13 ) , .SI ( optlc_net_290 ) , 
    .SE ( optlc_net_290 ) , 
    .CLK ( \CE_clock_gate_UBINARY_COUNTER_16B/binary_reg ) , .RSTB ( RSTN ) , 
    .Q ( BINARY_COUNTER_ADDR[3] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1_HVT \UBINARY_COUNTER_16B/binary_reg[2] ( 
    .D ( \UBINARY_COUNTER_16B/N14 ) , .SI ( optlc_net_292 ) , 
    .SE ( optlc_net_290 ) , 
    .CLK ( \CE_clock_gate_UBINARY_COUNTER_16B/binary_reg ) , .RSTB ( RSTN ) , 
    .Q ( BINARY_COUNTER_ADDR[2] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1_HVT \UBINARY_COUNTER_16B/binary_reg[1] ( 
    .D ( clkgt_nextstate_net_329 ) , .SI ( optlc_net_290 ) , 
    .SE ( optlc_net_290 ) , 
    .CLK ( \CE_clock_gate_UBINARY_COUNTER_16B/binary_reg ) , .RSTB ( RSTN ) , 
    .Q ( BINARY_COUNTER_ADDR[1] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1_HVT ctmi_4079 ( .A1 ( HFSNET_775 ) , .A2 ( copt_gre_net_430 ) , 
    .Y ( SEQMAP_NET_842 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
DFFARX1_HVT \UFSM/MEM_CE_reg ( .D ( HFSNET_790 ) , .CLK ( ZCTSNET_34 ) , 
    .RSTB ( RSTN ) , .Q ( MEM_CE ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1_HVT \UBINARY_COUNTER_16B/binary_reg[14] ( 
    .D ( \UBINARY_COUNTER_16B/N2 ) , .SI ( optlc_net_266 ) , 
    .SE ( optlc_net_266 ) , .CLK ( HFSNET_791 ) , .RSTB ( RSTN ) , 
    .Q ( BINARY_COUNTER_ADDR[14] ) , .QN ( ctmn_3924 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1_HVT \UBINARY_COUNTER_16B/binary_reg[13] ( 
    .D ( \UBINARY_COUNTER_16B/N3 ) , .SI ( optlc_net_276 ) , 
    .SE ( optlc_net_276 ) , .CLK ( HFSNET_791 ) , .RSTB ( RSTN ) , 
    .Q ( BINARY_COUNTER_ADDR[13] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1_HVT ctmi_4080 ( .A1 ( ctmn_3538 ) , .A2 ( copt_gre_net_430 ) , 
    .Y ( SEQMAP_NET_843 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1_HVT ctmi_4081 ( .A1 ( copt_gre_net_1167 ) , .A2 ( copt_gre_net_430 ) , 
    .Y ( SEQMAP_NET_844 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1_HVT ctmi_4082 ( .A1 ( ZBUF_765_174 ) , .A2 ( copt_gre_net_430 ) , 
    .Y ( SEQMAP_NET_845 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1_HVT \UGRAY_COUNTER_16B/binary_reg[13] ( 
    .D ( \UGRAY_COUNTER_16B/N3 ) , .SI ( optlc_net_277 ) , 
    .SE ( optlc_net_277 ) , .CLK ( HFSNET_793 ) , .RSTB ( RSTN ) , 
    .Q ( \UGRAY_COUNTER_16B/binary [13] ) , .QN ( ctmn_3936 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1_HVT \UGRAY_COUNTER_16B/binary_reg[4] ( 
    .D ( \UGRAY_COUNTER_16B/N12 ) , .SI ( optlc_net_267 ) , 
    .SE ( optlc_net_267 ) , 
    .CLK ( \CE_clock_gate_UGRAY_COUNTER_16B/binary_reg ) , .RSTB ( RSTN ) , 
    .Q ( \UGRAY_COUNTER_16B/binary [4] ) , .QN ( ctmn_3886 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1_HVT \UGRAY_COUNTER_16B/binary_reg[12] ( 
    .D ( \UGRAY_COUNTER_16B/N4 ) , .SI ( optlc_net_233 ) , 
    .SE ( optlc_net_233 ) , .CLK ( HFSNET_793 ) , .RSTB ( RSTN ) , 
    .Q ( \UGRAY_COUNTER_16B/binary [12] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1_HVT \UGRAY_COUNTER_16B/binary_reg[11] ( 
    .D ( \UGRAY_COUNTER_16B/N5 ) , .SI ( optlc_net_233 ) , 
    .SE ( optlc_net_233 ) , .CLK ( HFSNET_793 ) , .RSTB ( RSTN ) , 
    .Q ( \UGRAY_COUNTER_16B/binary [11] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1_HVT \UGRAY_COUNTER_16B/binary_reg[10] ( 
    .D ( \UGRAY_COUNTER_16B/N6 ) , .SI ( optlc_net_259 ) , 
    .SE ( optlc_net_259 ) , .CLK ( HFSNET_793 ) , .RSTB ( RSTN ) , 
    .Q ( \UGRAY_COUNTER_16B/binary [10] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1_HVT \UGRAY_COUNTER_16B/binary_reg[9] ( .D ( \UGRAY_COUNTER_16B/N7 ) , 
    .SI ( optlc_net_259 ) , .SE ( optlc_net_259 ) , .CLK ( HFSNET_793 ) , 
    .RSTB ( RSTN ) , .Q ( \UGRAY_COUNTER_16B/binary [9] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1_HVT \UGRAY_COUNTER_16B/binary_reg[8] ( .D ( \UGRAY_COUNTER_16B/N8 ) , 
    .SI ( optlc_net_258 ) , .SE ( optlc_net_258 ) , .CLK ( HFSNET_793 ) , 
    .RSTB ( RSTN ) , .Q ( \UGRAY_COUNTER_16B/binary [8] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1_HVT \UGRAY_COUNTER_16B/binary_reg[7] ( .D ( \UGRAY_COUNTER_16B/N9 ) , 
    .SI ( optlc_net_263 ) , .SE ( optlc_net_295 ) , .CLK ( HFSNET_793 ) , 
    .RSTB ( RSTN ) , .Q ( \UGRAY_COUNTER_16B/binary [7] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1_HVT \UGRAY_COUNTER_16B/binary_reg[6] ( 
    .D ( \UGRAY_COUNTER_16B/N10 ) , .SI ( optlc_net_295 ) , 
    .SE ( optlc_net_295 ) , .CLK ( HFSNET_793 ) , .RSTB ( RSTN ) , 
    .Q ( \UGRAY_COUNTER_16B/binary [6] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1_HVT \UGRAY_COUNTER_16B/binary_reg[5] ( 
    .D ( \UGRAY_COUNTER_16B/N11 ) , .SI ( optlc_net_260 ) , 
    .SE ( optlc_net_260 ) , .CLK ( HFSNET_793 ) , .RSTB ( RSTN ) , 
    .Q ( \UGRAY_COUNTER_16B/binary [5] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1_HVT \UGRAY_COUNTER_16B/binary_reg[3] ( 
    .D ( \UGRAY_COUNTER_16B/N13 ) , .SI ( optlc_net_284 ) , 
    .SE ( optlc_net_284 ) , 
    .CLK ( \CE_clock_gate_UGRAY_COUNTER_16B/binary_reg ) , .RSTB ( RSTN ) , 
    .Q ( \UGRAY_COUNTER_16B/binary [3] ) , .QN ( ctmn_3885 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1_HVT \UGRAY_COUNTER_16B/binary_reg[2] ( 
    .D ( \UGRAY_COUNTER_16B/N31 ) , .SI ( optlc_net_284 ) , 
    .SE ( optlc_net_284 ) , 
    .CLK ( \CE_clock_gate_UGRAY_COUNTER_16B/binary_reg ) , .RSTB ( RSTN ) , 
    .Q ( \UGRAY_COUNTER_16B/binary [2] ) , .QN ( ctmn_3985 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1_HVT \UGRAY_COUNTER_16B/binary_reg[1] ( 
    .D ( clkgt_nextstate_net_333 ) , .SI ( optlc_net_284 ) , 
    .SE ( optlc_net_284 ) , 
    .CLK ( \CE_clock_gate_UGRAY_COUNTER_16B/binary_reg ) , .RSTB ( RSTN ) , 
    .Q ( \UGRAY_COUNTER_16B/binary [1] ) , .QN ( ctmn_3897 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFASX1_HVT \UGRAY_COUNTER_16B/binary_reg[0] ( .D ( clkgt_enable_net_331 ) , 
    .SI ( optlc_net_260 ) , .SE ( optlc_net_260 ) , .CLK ( CE ) , 
    .SETB ( RSTN ) , .QN ( \UGRAY_COUNTER_16B/binary [0] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1_HVT \UFSM/MEM_OEB_reg[63] ( .D ( SEQMAP_NET_821 ) , 
    .SI ( optlc_net_254 ) , .SE ( optlc_net_254 ) , .CLK ( ZCTSNET_45 ) , 
    .RSTB ( RSTN ) , .Q ( ctmn_3562 ) , .QN ( MEM_OEB[63] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AND2X1_HVT ctmi_4083 ( .A1 ( copt_gre_net_1138 ) , .A2 ( copt_gre_net_430 ) , 
    .Y ( SEQMAP_NET_846 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1_HVT ctmi_4084 ( .A1 ( copt_gre_net_1200 ) , .A2 ( ctmn_3553 ) , 
    .Y ( SEQMAP_NET_847 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1_HVT \UGRAY_COUNTER_16B/gray_reg[13] ( .D ( \UGRAY_COUNTER_16B/N19 ) , 
    .SI ( optlc_net_279 ) , .SE ( optlc_net_279 ) , .CLK ( HFSNET_808 ) , 
    .RSTB ( RSTN ) , .Q ( GRAY_COUNTER_ADDR[13] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1_HVT \UGRAY_COUNTER_16B/gray_reg[12] ( .D ( \UGRAY_COUNTER_16B/N20 ) , 
    .SI ( optlc_net_279 ) , .SE ( optlc_net_279 ) , .CLK ( HFSNET_808 ) , 
    .RSTB ( RSTN ) , .Q ( GRAY_COUNTER_ADDR[12] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1_HVT \UGRAY_COUNTER_16B/gray_reg[11] ( .D ( \UGRAY_COUNTER_16B/N21 ) , 
    .SI ( optlc_net_283 ) , .SE ( optlc_net_283 ) , .CLK ( HFSNET_808 ) , 
    .RSTB ( RSTN ) , .Q ( GRAY_COUNTER_ADDR[11] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1_HVT \UGRAY_COUNTER_16B/gray_reg[10] ( .D ( \UGRAY_COUNTER_16B/N22 ) , 
    .SI ( optlc_net_280 ) , .SE ( optlc_net_280 ) , .CLK ( CE ) , 
    .RSTB ( RSTN ) , .Q ( GRAY_COUNTER_ADDR[10] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1_HVT \UGRAY_COUNTER_16B/gray_reg[9] ( .D ( \UGRAY_COUNTER_16B/N23 ) , 
    .SI ( optlc_net_280 ) , .SE ( optlc_net_280 ) , .CLK ( CE ) , 
    .RSTB ( RSTN ) , .Q ( GRAY_COUNTER_ADDR[9] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1_HVT \UGRAY_COUNTER_16B/gray_reg[8] ( .D ( \UGRAY_COUNTER_16B/N24 ) , 
    .SI ( optlc_net_280 ) , .SE ( optlc_net_280 ) , .CLK ( CE ) , 
    .RSTB ( RSTN ) , .Q ( GRAY_COUNTER_ADDR[8] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1_HVT \UGRAY_COUNTER_16B/gray_reg[7] ( .D ( \UGRAY_COUNTER_16B/N25 ) , 
    .SI ( optlc_net_262 ) , .SE ( optlc_net_262 ) , .CLK ( CE ) , 
    .RSTB ( RSTN ) , .Q ( GRAY_COUNTER_ADDR[7] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1_HVT \UGRAY_COUNTER_16B/gray_reg[6] ( .D ( \UGRAY_COUNTER_16B/N26 ) , 
    .SI ( optlc_net_260 ) , .SE ( optlc_net_260 ) , .CLK ( CE ) , 
    .RSTB ( RSTN ) , .Q ( GRAY_COUNTER_ADDR[6] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1_HVT \UGRAY_COUNTER_16B/gray_reg[5] ( .D ( \UGRAY_COUNTER_16B/N27 ) , 
    .SI ( optlc_net_291 ) , .SE ( optlc_net_291 ) , .CLK ( CE ) , 
    .RSTB ( RSTN ) , .Q ( GRAY_COUNTER_ADDR[5] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1_HVT \UGRAY_COUNTER_16B/gray_reg[4] ( .D ( \UGRAY_COUNTER_16B/N28 ) , 
    .SI ( optlc_net_292 ) , .SE ( optlc_net_292 ) , .CLK ( HFSNET_809 ) , 
    .RSTB ( RSTN ) , .Q ( GRAY_COUNTER_ADDR[4] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1_HVT \UGRAY_COUNTER_16B/gray_reg[3] ( .D ( \UGRAY_COUNTER_16B/N29 ) , 
    .SI ( optlc_net_282 ) , .SE ( optlc_net_282 ) , .CLK ( HFSNET_809 ) , 
    .RSTB ( RSTN ) , .Q ( GRAY_COUNTER_ADDR[3] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1_HVT \UGRAY_COUNTER_16B/gray_reg[2] ( .D ( \UGRAY_COUNTER_16B/N30 ) , 
    .SI ( optlc_net_282 ) , .SE ( optlc_net_282 ) , .CLK ( HFSNET_809 ) , 
    .RSTB ( RSTN ) , .Q ( GRAY_COUNTER_ADDR[2] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1_HVT \UGRAY_COUNTER_16B/gray_reg[1] ( .D ( \UGRAY_COUNTER_16B/N31 ) , 
    .SI ( optlc_net_278 ) , .SE ( optlc_net_278 ) , .CLK ( HFSNET_809 ) , 
    .RSTB ( RSTN ) , .Q ( GRAY_COUNTER_ADDR[1] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1_HVT \UFSM/MEM_ADDR_reg[9] ( .D ( FSM_ADDR[9] ) , 
    .SI ( optlc_net_258 ) , .SE ( optlc_net_258 ) , .CLK ( ZCTSNET_43 ) , 
    .RSTB ( RSTN ) , .Q ( MEM_ADDR[9] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1_HVT ctmi_4085 ( .A1 ( copt_gre_net_1216 ) , .A2 ( ctmn_3553 ) , 
    .Y ( SEQMAP_NET_848 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1_HVT ctmi_4086 ( .A1 ( HFSNET_782 ) , .A2 ( ctmn_3553 ) , 
    .Y ( SEQMAP_NET_849 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1_HVT ctmi_4087 ( .A1 ( HFSNET_783 ) , .A2 ( ctmn_3553 ) , 
    .Y ( SEQMAP_NET_850 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1_HVT ctmi_4088 ( .A1 ( copt_gre_net_1208 ) , .A2 ( ctmn_3553 ) , 
    .Y ( SEQMAP_NET_851 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1_HVT \UGRAY_COUNTER_16B/gray_reg[14] ( .D ( \UGRAY_COUNTER_16B/N18 ) , 
    .SI ( optlc_net_283 ) , .SE ( optlc_net_283 ) , .CLK ( CE ) , 
    .RSTB ( RSTN ) , .Q ( GRAY_COUNTER_ADDR[14] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1_HVT \UFSM/MEM_ADDR_reg[8] ( .D ( FSM_ADDR[8] ) , 
    .SI ( optlc_net_263 ) , .SE ( optlc_net_263 ) , .CLK ( ZCTSNET_43 ) , 
    .RSTB ( RSTN ) , .Q ( MEM_ADDR[8] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1_HVT \UFSM/MEM_ADDR_reg[7] ( .D ( FSM_ADDR[7] ) , 
    .SI ( optlc_net_263 ) , .SE ( optlc_net_263 ) , .CLK ( ZCTSNET_43 ) , 
    .RSTB ( RSTN ) , .Q ( MEM_ADDR[7] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1_HVT \UFSM/MEM_ADDR_reg[6] ( .D ( FSM_ADDR[6] ) , 
    .SI ( optlc_net_295 ) , .SE ( optlc_net_295 ) , .CLK ( ZCTSNET_43 ) , 
    .RSTB ( RSTN ) , .Q ( MEM_ADDR[6] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1_HVT \UFSM/MEM_ADDR_reg[5] ( .D ( FSM_ADDR[5] ) , 
    .SI ( optlc_net_294 ) , .SE ( optlc_net_294 ) , .CLK ( ZCTSNET_42 ) , 
    .RSTB ( RSTN ) , .Q ( MEM_ADDR[5] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1_HVT \UFSM/MEM_ADDR_reg[4] ( .D ( FSM_ADDR[4] ) , 
    .SI ( optlc_net_268 ) , .SE ( optlc_net_268 ) , .CLK ( ZCTSNET_42 ) , 
    .RSTB ( RSTN ) , .Q ( MEM_ADDR[4] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1_HVT \UFSM/MEM_ADDR_reg[3] ( .D ( FSM_ADDR[3] ) , 
    .SI ( optlc_net_294 ) , .SE ( optlc_net_294 ) , .CLK ( ZCTSNET_42 ) , 
    .RSTB ( RSTN ) , .Q ( MEM_ADDR[3] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1_HVT \UFSM/MEM_ADDR_reg[2] ( .D ( FSM_ADDR[2] ) , 
    .SI ( optlc_net_268 ) , .SE ( optlc_net_268 ) , .CLK ( ZCTSNET_42 ) , 
    .RSTB ( RSTN ) , .Q ( MEM_ADDR[2] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1_HVT \UFSM/MEM_ADDR_reg[1] ( .D ( FSM_ADDR[1] ) , 
    .SI ( optlc_net_268 ) , .SE ( optlc_net_268 ) , .CLK ( ZCTSNET_42 ) , 
    .RSTB ( RSTN ) , .Q ( MEM_ADDR[1] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1_HVT \UFSM/MEM_ADDR_reg[0] ( .D ( FSM_ADDR[0] ) , 
    .SI ( optlc_net_267 ) , .SE ( optlc_net_267 ) , .CLK ( ZCTSNET_42 ) , 
    .RSTB ( RSTN ) , .Q ( MEM_ADDR[0] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1_HVT \UFSM/MEM_OEB_reg[62] ( .D ( SEQMAP_NET_822 ) , 
    .SI ( optlc_net_256 ) , .SE ( optlc_net_256 ) , .CLK ( ZCTSNET_45 ) , 
    .RSTB ( RSTN ) , .Q ( ctmn_3557 ) , .QN ( MEM_OEB[62] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1_HVT \UFSM/MEM_OEB_reg[61] ( .D ( SEQMAP_NET_823 ) , 
    .SI ( optlc_net_232 ) , .SE ( optlc_net_232 ) , .CLK ( ZCTSNET_36 ) , 
    .RSTB ( RSTN ) , .Q ( ctmn_3585 ) , .QN ( MEM_OEB[61] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1_HVT \UFSM/MEM_OEB_reg[60] ( .D ( SEQMAP_NET_824 ) , 
    .SI ( optlc_net_232 ) , .SE ( optlc_net_232 ) , .CLK ( ZCTSNET_37 ) , 
    .RSTB ( RSTN ) , .Q ( ctmn_3564 ) , .QN ( MEM_OEB[60] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1_HVT \UFSM/MEM_OEB_reg[59] ( .D ( SEQMAP_NET_825 ) , 
    .SI ( optlc_net_228 ) , .SE ( optlc_net_228 ) , .CLK ( ZCTSNET_37 ) , 
    .RSTB ( RSTN ) , .Q ( ctmn_3567 ) , .QN ( MEM_OEB[59] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1_HVT \UFSM/MEM_OEB_reg[58] ( .D ( SEQMAP_NET_826 ) , 
    .SI ( optlc_net_254 ) , .SE ( optlc_net_254 ) , .CLK ( ZCTSNET_45 ) , 
    .RSTB ( RSTN ) , .Q ( ctmn_3633 ) , .QN ( MEM_OEB[58] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1_HVT \UFSM/MEM_OEB_reg[57] ( .D ( SEQMAP_NET_827 ) , 
    .SI ( optlc_net_255 ) , .SE ( optlc_net_255 ) , .CLK ( ZCTSNET_46 ) , 
    .RSTB ( RSTN ) , .Q ( ctmn_3599 ) , .QN ( MEM_OEB[57] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AND2X1_HVT ctmi_4089 ( .A1 ( copt_gre_net_1186 ) , .A2 ( ctmn_3553 ) , 
    .Y ( SEQMAP_NET_852 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND3X4_HVT ctmi_4091 ( .A1 ( HFSNET_789 ) , .A2 ( ctmn_3526 ) , 
    .A3 ( phfnn_37 ) , .Y ( ctmn_3555 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX2_HVT ZCTSINV_3433_5003 ( .A ( ZCTSNET_50 ) , .Y ( ZCTSNET_34 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1_HVT ctmi_4108 ( .A1 ( ctmn_3551 ) , .A2 ( ctmn_3556 ) , 
    .Y ( SEQMAP_NET_869 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1_HVT ctmi_4093 ( .A1 ( HFSNET_771 ) , .A2 ( ctmn_3555 ) , 
    .Y ( SEQMAP_NET_854 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1_HVT ctmi_4094 ( .A1 ( ctmn_3532 ) , .A2 ( ctmn_3555 ) , 
    .Y ( SEQMAP_NET_855 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1_HVT ctmi_4095 ( .A1 ( ctmn_3533 ) , .A2 ( ctmn_3555 ) , 
    .Y ( SEQMAP_NET_856 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1_HVT ctmi_4096 ( .A1 ( ctmn_3536 ) , .A2 ( ctmn_3555 ) , 
    .Y ( SEQMAP_NET_857 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1_HVT ctmi_4097 ( .A1 ( HFSNET_775 ) , .A2 ( ctmn_3555 ) , 
    .Y ( SEQMAP_NET_858 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1_HVT ctmi_4098 ( .A1 ( HFSNET_776 ) , .A2 ( gre_a_BUF_1703_292 ) , 
    .Y ( SEQMAP_NET_859 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1_HVT ctmi_4099 ( .A1 ( ctmn_3539 ) , .A2 ( gre_a_BUF_1703_292 ) , 
    .Y ( SEQMAP_NET_860 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1_HVT ctmi_4100 ( .A1 ( ctmn_3542 ) , .A2 ( gre_a_BUF_1703_292 ) , 
    .Y ( SEQMAP_NET_861 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1_HVT ctmi_4101 ( .A1 ( ctmn_3544 ) , .A2 ( ctmn_3555 ) , 
    .Y ( SEQMAP_NET_862 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1_HVT ctmi_4102 ( .A1 ( copt_gre_net_1201 ) , 
    .A2 ( gre_a_BUF_1703_292 ) , .Y ( SEQMAP_NET_863 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AND2X1_HVT ctmi_4103 ( .A1 ( copt_gre_net_1217 ) , 
    .A2 ( gre_a_BUF_1703_292 ) , .Y ( SEQMAP_NET_864 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AND2X1_HVT ctmi_4104 ( .A1 ( HFSNET_782 ) , .A2 ( gre_a_BUF_1703_292 ) , 
    .Y ( SEQMAP_NET_865 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1_HVT ctmi_4105 ( .A1 ( ctmn_3548 ) , .A2 ( ctmn_3555 ) , 
    .Y ( SEQMAP_NET_866 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1_HVT \UFSM/MEM_OEB_reg[24] ( .D ( SEQMAP_NET_860 ) , 
    .SI ( optlc_net_288 ) , .SE ( optlc_net_288 ) , .CLK ( ZCTSNET_41 ) , 
    .RSTB ( RSTN ) , .Q ( ctmn_3639 ) , .QN ( MEM_OEB[24] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AND2X1_HVT ctmi_4106 ( .A1 ( copt_gre_net_1209 ) , 
    .A2 ( gre_a_BUF_1703_292 ) , .Y ( SEQMAP_NET_867 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AND2X1_HVT ctmi_4107 ( .A1 ( copt_gre_net_1187 ) , 
    .A2 ( gre_a_BUF_1703_292 ) , .Y ( SEQMAP_NET_868 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AND3X4_HVT ctmi_4109 ( .A1 ( ctmn_3526 ) , .A2 ( phfnn_37 ) , 
    .A3 ( HFSNET_787 ) , .Y ( ctmn_3556 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
OR3X2_HVT ctmi_4126 ( .A1 ( HFSNET_677 ) , .A2 ( ctmn_3604_CDR1 ) , 
    .A3 ( ctmn_3653_CDR1 ) , .Y ( HFSNET_1274 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AND2X1_HVT ctmi_4110 ( .A1 ( HFSNET_771 ) , .A2 ( ctmn_3556 ) , 
    .Y ( SEQMAP_NET_870 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1_HVT ctmi_4111 ( .A1 ( ctmn_3532 ) , .A2 ( ctmn_3556 ) , 
    .Y ( SEQMAP_NET_871 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
CGLPPRX2_HVT \clock_gate_UBINARY_COUNTER_16B/binary_reg ( 
    .SE ( optlc_net_291 ) , .EN ( clkgt_enable_net_327 ) , 
    .CLK ( HFSNET_809 ) , 
    .GCLK ( \CE_clock_gate_UBINARY_COUNTER_16B/binary_reg ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1_HVT \UFSM/MEM_OEB_reg[55] ( .D ( SEQMAP_NET_829 ) , 
    .SI ( optlc_net_224 ) , .SE ( optlc_net_224 ) , .CLK ( ZCTSNET_37 ) , 
    .RSTB ( RSTN ) , .Q ( ctmn_3561 ) , .QN ( MEM_OEB[55] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1_HVT \UFSM/MEM_OEB_reg[54] ( .D ( SEQMAP_NET_830 ) , 
    .SI ( optlc_net_234 ) , .SE ( optlc_net_234 ) , .CLK ( ZCTSNET_46 ) , 
    .RSTB ( RSTN ) , .Q ( ctmn_3648 ) , .QN ( MEM_OEB[54] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1_HVT \UFSM/MEM_OEB_reg[53] ( .D ( SEQMAP_NET_831 ) , 
    .SI ( optlc_net_222 ) , .SE ( optlc_net_222 ) , .CLK ( ZCTSNET_36 ) , 
    .RSTB ( RSTN ) , .Q ( ctmn_3581 ) , .QN ( MEM_OEB[53] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1_HVT \UFSM/MEM_OEB_reg[52] ( .D ( SEQMAP_NET_832 ) , 
    .SI ( optlc_net_255 ) , .SE ( optlc_net_255 ) , .CLK ( ZCTSNET_45 ) , 
    .RSTB ( RSTN ) , .Q ( ctmn_3588 ) , .QN ( MEM_OEB[52] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1_HVT \UFSM/MEM_OEB_reg[51] ( .D ( SEQMAP_NET_833 ) , 
    .SI ( optlc_net_222 ) , .SE ( optlc_net_222 ) , .CLK ( ZCTSNET_36 ) , 
    .RSTB ( RSTN ) , .Q ( ctmn_3637 ) , .QN ( MEM_OEB[51] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1_HVT \UFSM/MEM_OEB_reg[50] ( .D ( SEQMAP_NET_834 ) , 
    .SI ( optlc_net_253 ) , .SE ( optlc_net_253 ) , .CLK ( ZCTSNET_45 ) , 
    .RSTB ( RSTN ) , .Q ( ctmn_3577 ) , .QN ( MEM_OEB[50] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1_HVT \UFSM/MEM_OEB_reg[49] ( .D ( SEQMAP_NET_835 ) , 
    .SI ( optlc_net_253 ) , .SE ( optlc_net_253 ) , .CLK ( ZCTSNET_45 ) , 
    .RSTB ( RSTN ) , .Q ( ctmn_3569 ) , .QN ( MEM_OEB[49] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1_HVT \UFSM/MEM_OEB_reg[48] ( .D ( SEQMAP_NET_836 ) , 
    .SI ( optlc_net_253 ) , .SE ( optlc_net_253 ) , .CLK ( ZCTSNET_45 ) , 
    .RSTB ( RSTN ) , .Q ( ctmn_3559 ) , .QN ( MEM_OEB[48] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFASX1_HVT \UBINARY_COUNTER_16B/binary_reg[0] ( 
    .D ( clkgt_enable_net_327 ) , .SI ( optlc_net_293 ) , 
    .SE ( optlc_net_293 ) , .CLK ( HFSNET_809 ) , .SETB ( RSTN ) , 
    .QN ( BINARY_COUNTER_ADDR[0] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1_HVT \UFSM/MEM_OEB_reg[46] ( .D ( SEQMAP_NET_838 ) , 
    .SI ( optlc_net_228 ) , .SE ( optlc_net_228 ) , .CLK ( ZCTSNET_37 ) , 
    .RSTB ( RSTN ) , .Q ( ctmn_3568 ) , .QN ( MEM_OEB[46] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1_HVT \UFSM/MEM_OEB_reg[45] ( .D ( SEQMAP_NET_839 ) , 
    .SI ( optlc_net_226 ) , .SE ( optlc_net_226 ) , .CLK ( ZCTSNET_35 ) , 
    .RSTB ( RSTN ) , .Q ( ctmn_3629 ) , .QN ( MEM_OEB[45] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1_HVT \UFSM/MEM_OEB_reg[44] ( .D ( SEQMAP_NET_840 ) , 
    .SI ( optlc_net_226 ) , .SE ( optlc_net_226 ) , .CLK ( ZCTSNET_35 ) , 
    .RSTB ( RSTN ) , .Q ( ctmn_3646 ) , .QN ( MEM_OEB[44] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1_HVT \UFSM/MEM_OEB_reg[43] ( .D ( SEQMAP_NET_841 ) , 
    .SI ( optlc_net_228 ) , .SE ( optlc_net_228 ) , .CLK ( ZCTSNET_37 ) , 
    .RSTB ( RSTN ) , .Q ( ctmn_3641 ) , .QN ( MEM_OEB[43] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1_HVT \UFSM/MEM_OEB_reg[42] ( .D ( SEQMAP_NET_842 ) , 
    .SI ( optlc_net_231 ) , .SE ( optlc_net_231 ) , .CLK ( ZCTSNET_36 ) , 
    .RSTB ( RSTN ) , .Q ( ctmn_3558 ) , .QN ( MEM_OEB[42] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1_HVT \UFSM/MEM_OEB_reg[41] ( .D ( SEQMAP_NET_843 ) , 
    .SI ( optlc_net_227 ) , .SE ( optlc_net_227 ) , .CLK ( ZCTSNET_37 ) , 
    .RSTB ( RSTN ) , .Q ( ctmn_3563 ) , .QN ( MEM_OEB[41] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1_HVT \UFSM/MEM_OEB_reg[40] ( .D ( SEQMAP_NET_844 ) , 
    .SI ( optlc_net_230 ) , .SE ( optlc_net_230 ) , .CLK ( ZCTSNET_36 ) , 
    .RSTB ( RSTN ) , .Q ( ctmn_3576 ) , .QN ( MEM_OEB[40] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1_HVT \UFSM/MEM_OEB_reg[39] ( .D ( SEQMAP_NET_845 ) , 
    .SI ( optlc_net_226 ) , .SE ( optlc_net_226 ) , .CLK ( ZCTSNET_35 ) , 
    .RSTB ( RSTN ) , .Q ( ctmn_3620 ) , .QN ( MEM_OEB[39] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1_HVT \UFSM/MEM_OEB_reg[38] ( .D ( SEQMAP_NET_846 ) , 
    .SI ( optlc_net_228 ) , .SE ( optlc_net_228 ) , .CLK ( ZCTSNET_37 ) , 
    .RSTB ( RSTN ) , .Q ( ctmn_3566 ) , .QN ( MEM_OEB[38] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1_HVT \UFSM/MEM_OEB_reg[37] ( .D ( SEQMAP_NET_847 ) , 
    .SI ( optlc_net_241 ) , .SE ( optlc_net_241 ) , .CLK ( ZCTSNET_47 ) , 
    .RSTB ( RSTN ) , .Q ( ctmn_3634 ) , .QN ( MEM_OEB[37] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1_HVT \UFSM/MEM_OEB_reg[36] ( .D ( SEQMAP_NET_848 ) , 
    .SI ( optlc_net_241 ) , .SE ( optlc_net_241 ) , .CLK ( ZCTSNET_47 ) , 
    .RSTB ( RSTN ) , .Q ( ctmn_3647 ) , .QN ( MEM_OEB[36] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1_HVT \UFSM/MEM_OEB_reg[35] ( .D ( SEQMAP_NET_849 ) , 
    .SI ( optlc_net_241 ) , .SE ( optlc_net_241 ) , .CLK ( ZCTSNET_47 ) , 
    .RSTB ( RSTN ) , .Q ( ctmn_3610 ) , .QN ( MEM_OEB[35] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1_HVT \UFSM/MEM_OEB_reg[34] ( .D ( SEQMAP_NET_850 ) , 
    .SI ( optlc_net_270 ) , .SE ( optlc_net_270 ) , .CLK ( ZCTSNET_47 ) , 
    .RSTB ( RSTN ) , .Q ( ctmn_3574 ) , .QN ( MEM_OEB[34] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1_HVT \UFSM/MEM_OEB_reg[33] ( .D ( SEQMAP_NET_851 ) , 
    .SI ( optlc_net_235 ) , .SE ( optlc_net_235 ) , .CLK ( ZCTSNET_47 ) , 
    .RSTB ( RSTN ) , .Q ( ctmn_3592 ) , .QN ( MEM_OEB[33] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1_HVT \UFSM/MEM_OEB_reg[32] ( .D ( SEQMAP_NET_852 ) , 
    .SI ( optlc_net_235 ) , .SE ( optlc_net_235 ) , .CLK ( ZCTSNET_47 ) , 
    .RSTB ( RSTN ) , .Q ( ctmn_3640 ) , .QN ( MEM_OEB[32] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1_HVT \UFSM/MEM_OEB_reg[31] ( .D ( SEQMAP_NET_853 ) , 
    .SI ( optlc_net_250 ) , .SE ( optlc_net_250 ) , .CLK ( ZCTSNET_50 ) , 
    .RSTB ( RSTN ) , .Q ( ctmn_3586 ) , .QN ( MEM_OEB[31] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1_HVT \UFSM/MEM_OEB_reg[30] ( .D ( SEQMAP_NET_854 ) , 
    .SI ( optlc_net_250 ) , .SE ( optlc_net_250 ) , .CLK ( ZCTSNET_50 ) , 
    .RSTB ( RSTN ) , .Q ( ctmn_3583 ) , .QN ( MEM_OEB[30] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1_HVT \UFSM/MEM_OEB_reg[29] ( .D ( SEQMAP_NET_855 ) , 
    .SI ( optlc_net_287 ) , .SE ( optlc_net_287 ) , .CLK ( ZCTSNET_50 ) , 
    .RSTB ( RSTN ) , .Q ( ctmn_3622 ) , .QN ( MEM_OEB[29] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1_HVT \UFSM/MEM_OEB_reg[28] ( .D ( SEQMAP_NET_856 ) , 
    .SI ( optlc_net_220 ) , .SE ( optlc_net_220 ) , .CLK ( ZCTSNET_50 ) , 
    .RSTB ( RSTN ) , .Q ( ctmn_3587 ) , .QN ( MEM_OEB[28] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1_HVT \UFSM/MEM_OEB_reg[27] ( .D ( SEQMAP_NET_857 ) , 
    .SI ( optlc_net_220 ) , .SE ( optlc_net_220 ) , .CLK ( ZCTSNET_50 ) , 
    .RSTB ( RSTN ) , .Q ( ctmn_3607 ) , .QN ( MEM_OEB[27] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1_HVT \UFSM/MEM_OEB_reg[26] ( .D ( SEQMAP_NET_858 ) , 
    .SI ( optlc_net_220 ) , .SE ( optlc_net_220 ) , .CLK ( ZCTSNET_50 ) , 
    .RSTB ( RSTN ) , .Q ( ctmn_3605 ) , .QN ( MEM_OEB[26] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1_HVT \UFSM/MEM_OEB_reg[25] ( .D ( SEQMAP_NET_859 ) , 
    .SI ( optlc_net_296 ) , .SE ( optlc_net_296 ) , .CLK ( ZCTSNET_48 ) , 
    .RSTB ( RSTN ) , .Q ( ctmn_3638 ) , .QN ( MEM_OEB[25] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1_HVT \UFSM/MEM_CSB_reg[63] ( .D ( \UFSM/N323 ) , 
    .SI ( optlc_net_252 ) , .SE ( optlc_net_252 ) , .CLK ( ZCTSNET_45 ) , 
    .RSTB ( RSTN ) , .Q ( MEM_CSB[63] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1_HVT \UFSM/PREV_CE_reg ( .D ( CE ) , .SI ( optlc_net_259 ) , 
    .SE ( optlc_net_259 ) , .CLK ( ZCTSNET_34 ) , .RSTB ( RSTN ) , 
    .Q ( PREV_CE ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1_HVT \UFSM/MEM_OEB_reg[22] ( .D ( SEQMAP_NET_862 ) , 
    .SI ( optlc_net_246 ) , .SE ( optlc_net_246 ) , .CLK ( ZCTSNET_40 ) , 
    .RSTB ( RSTN ) , .Q ( ctmn_3636 ) , .QN ( MEM_OEB[22] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1_HVT \UFSM/MEM_OEB_reg[21] ( .D ( SEQMAP_NET_863 ) , 
    .SI ( optlc_net_296 ) , .SE ( optlc_net_296 ) , .CLK ( ZCTSNET_48 ) , 
    .RSTB ( RSTN ) , .Q ( ctmn_3591 ) , .QN ( MEM_OEB[21] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1_HVT \UFSM/MEM_OEB_reg[20] ( .D ( SEQMAP_NET_864 ) , 
    .SI ( optlc_net_289 ) , .SE ( optlc_net_289 ) , .CLK ( ZCTSNET_48 ) , 
    .RSTB ( RSTN ) , .Q ( ctmn_3590 ) , .QN ( MEM_OEB[20] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1_HVT \UFSM/MEM_OEB_reg[19] ( .D ( SEQMAP_NET_865 ) , 
    .SI ( optlc_net_289 ) , .SE ( optlc_net_289 ) , .CLK ( ZCTSNET_48 ) , 
    .RSTB ( RSTN ) , .Q ( ctmn_3623 ) , .QN ( MEM_OEB[19] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1_HVT \UFSM/MEM_OEB_reg[18] ( .D ( SEQMAP_NET_866 ) , 
    .SI ( optlc_net_248 ) , .SE ( optlc_net_248 ) , .CLK ( ZCTSNET_40 ) , 
    .RSTB ( RSTN ) , .Q ( ctmn_3589 ) , .QN ( MEM_OEB[18] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1_HVT \UFSM/MEM_OEB_reg[17] ( .D ( SEQMAP_NET_867 ) , 
    .SI ( optlc_net_289 ) , .SE ( optlc_net_289 ) , .CLK ( ZCTSNET_48 ) , 
    .RSTB ( RSTN ) , .Q ( ctmn_3565 ) , .QN ( MEM_OEB[17] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1_HVT \UFSM/MEM_OEB_reg[16] ( .D ( SEQMAP_NET_868 ) , 
    .SI ( optlc_net_289 ) , .SE ( optlc_net_289 ) , .CLK ( ZCTSNET_48 ) , 
    .RSTB ( RSTN ) , .Q ( ctmn_3593 ) , .QN ( MEM_OEB[16] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1_HVT \UFSM/MEM_OEB_reg[15] ( .D ( SEQMAP_NET_869 ) , 
    .SI ( optlc_net_265 ) , .SE ( optlc_net_265 ) , .CLK ( ZCTSNET_41 ) , 
    .RSTB ( RSTN ) , .Q ( ctmn_3601 ) , .QN ( MEM_OEB[15] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1_HVT \UFSM/MEM_OEB_reg[14] ( .D ( SEQMAP_NET_870 ) , 
    .SI ( optlc_net_247 ) , .SE ( optlc_net_247 ) , .CLK ( ZCTSNET_40 ) , 
    .RSTB ( RSTN ) , .Q ( ctmn_3631 ) , .QN ( MEM_OEB[14] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1_HVT \UFSM/MEM_OEB_reg[13] ( .D ( SEQMAP_NET_871 ) , 
    .SI ( optlc_net_236 ) , .SE ( optlc_net_236 ) , .CLK ( ZCTSNET_39 ) , 
    .RSTB ( RSTN ) , .Q ( ctmn_3618 ) , .QN ( MEM_OEB[13] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1_HVT \UFSM/MEM_OEB_reg[12] ( .D ( SEQMAP_NET_872 ) , 
    .SI ( optlc_net_236 ) , .SE ( optlc_net_236 ) , .CLK ( ZCTSNET_39 ) , 
    .RSTB ( RSTN ) , .Q ( ctmn_3619 ) , .QN ( MEM_OEB[12] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1_HVT \UFSM/MEM_OEB_reg[11] ( .D ( SEQMAP_NET_873 ) , 
    .SI ( optlc_net_237 ) , .SE ( optlc_net_237 ) , .CLK ( ZCTSNET_39 ) , 
    .RSTB ( RSTN ) , .Q ( ctmn_3609 ) , .QN ( MEM_OEB[11] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1_HVT \UFSM/MEM_OEB_reg[10] ( .D ( SEQMAP_NET_874 ) , 
    .SI ( optlc_net_229 ) , .SE ( optlc_net_229 ) , .CLK ( ZCTSNET_39 ) , 
    .RSTB ( RSTN ) , .Q ( ctmn_3575 ) , .QN ( MEM_OEB[10] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1_HVT \UFSM/MEM_OEB_reg[9] ( .D ( SEQMAP_NET_875 ) , 
    .SI ( optlc_net_238 ) , .SE ( optlc_net_238 ) , .CLK ( ZCTSNET_39 ) , 
    .RSTB ( RSTN ) , .Q ( ctmn_3608 ) , .QN ( MEM_OEB[9] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1_HVT \UFSM/MEM_OEB_reg[8] ( .D ( SEQMAP_NET_876 ) , 
    .SI ( optlc_net_237 ) , .SE ( optlc_net_237 ) , .CLK ( ZCTSNET_39 ) , 
    .RSTB ( RSTN ) , .Q ( ctmn_3624 ) , .QN ( MEM_OEB[8] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1_HVT \UFSM/MEM_OEB_reg[7] ( .D ( SEQMAP_NET_877 ) , 
    .SI ( optlc_net_247 ) , .SE ( optlc_net_247 ) , .CLK ( ZCTSNET_40 ) , 
    .RSTB ( RSTN ) , .Q ( ctmn_3606 ) , .QN ( MEM_OEB[7] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1_HVT \UFSM/MEM_OEB_reg[6] ( .D ( SEQMAP_NET_878 ) , 
    .SI ( optlc_net_244 ) , .SE ( optlc_net_244 ) , .CLK ( ZCTSNET_40 ) , 
    .RSTB ( RSTN ) , .Q ( ctmn_3582 ) , .QN ( MEM_OEB[6] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1_HVT \UFSM/MEM_OEB_reg[5] ( .D ( SEQMAP_NET_879 ) , 
    .SI ( optlc_net_229 ) , .SE ( optlc_net_229 ) , .CLK ( ZCTSNET_39 ) , 
    .RSTB ( RSTN ) , .Q ( ctmn_3621 ) , .QN ( MEM_OEB[5] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1_HVT \UFSM/MEM_OEB_reg[4] ( .D ( SEQMAP_NET_880 ) , 
    .SI ( optlc_net_274 ) , .SE ( optlc_net_274 ) , .CLK ( ZCTSNET_41 ) , 
    .RSTB ( RSTN ) , .Q ( ctmn_3612 ) , .QN ( MEM_OEB[4] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1_HVT \UFSM/MEM_OEB_reg[3] ( .D ( SEQMAP_NET_881 ) , 
    .SI ( optlc_net_285 ) , .SE ( optlc_net_285 ) , .CLK ( ZCTSNET_41 ) , 
    .RSTB ( RSTN ) , .Q ( ctmn_3600 ) , .QN ( MEM_OEB[3] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1_HVT \UFSM/MEM_OEB_reg[2] ( .D ( SEQMAP_NET_882 ) , 
    .SI ( optlc_net_247 ) , .SE ( optlc_net_247 ) , .CLK ( ZCTSNET_40 ) , 
    .RSTB ( RSTN ) , .Q ( ctmn_3630 ) , .QN ( MEM_OEB[2] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1_HVT \UFSM/MEM_OEB_reg[1] ( .D ( SEQMAP_NET_883 ) , 
    .SI ( optlc_net_244 ) , .SE ( optlc_net_244 ) , .CLK ( ZCTSNET_40 ) , 
    .RSTB ( RSTN ) , .Q ( ctmn_3611 ) , .QN ( MEM_OEB[1] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
OR3X2_HVT ctmi_4224 ( .A1 ( ZBUF_2_51 ) , .A2 ( ctmn_3669_CDR1 ) , 
    .A3 ( ctmn_3686_CDR1 ) , .Y ( aps_rename_230_ ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
OR3X2_HVT ctmi_4258 ( .A1 ( HFSNET_675 ) , .A2 ( ctmn_3702_CDR1 ) , 
    .A3 ( ctmn_3719_CDR1 ) , .Y ( aps_rename_229_ ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFNARX1_HVT \UCOMP_8B/BIST_PASS_reg ( .D ( \UCOMP_8B/N4 ) , 
    .SI ( optlc_net_263 ) , .SE ( optlc_net_263 ) , .CLK ( ctosc_gls_3 ) , 
    .RSTB ( RSTN ) , .Q ( aps_rename_231_ ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1_HVT \UFSM/MEM_CSB_reg[61] ( .D ( \UFSM/N325 ) , 
    .SI ( optlc_net_230 ) , .SE ( optlc_net_230 ) , .CLK ( ZCTSNET_36 ) , 
    .RSTB ( RSTN ) , .Q ( MEM_CSB[61] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1_HVT \UFSM/MEM_CSB_reg[60] ( .D ( \UFSM/N326 ) , 
    .SI ( optlc_net_223 ) , .SE ( optlc_net_223 ) , .CLK ( ZCTSNET_37 ) , 
    .RSTB ( RSTN ) , .Q ( MEM_CSB[60] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1_HVT \UFSM/MEM_CSB_reg[59] ( .D ( \UFSM/N327 ) , 
    .SI ( optlc_net_221 ) , .SE ( optlc_net_221 ) , .CLK ( ZCTSNET_35 ) , 
    .RSTB ( RSTN ) , .Q ( MEM_CSB[59] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1_HVT \UFSM/MEM_CSB_reg[58] ( .D ( \UFSM/N328 ) , 
    .SI ( optlc_net_256 ) , .SE ( optlc_net_256 ) , .CLK ( ZCTSNET_45 ) , 
    .RSTB ( RSTN ) , .Q ( MEM_CSB[58] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1_HVT \UFSM/MEM_CSB_reg[57] ( .D ( \UFSM/N329 ) , 
    .SI ( optlc_net_239 ) , .SE ( optlc_net_239 ) , .CLK ( ZCTSNET_46 ) , 
    .RSTB ( RSTN ) , .Q ( MEM_CSB[57] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1_HVT \UFSM/MEM_CSB_reg[56] ( .D ( \UFSM/N330 ) , 
    .SI ( optlc_net_249 ) , .SE ( optlc_net_249 ) , .CLK ( ZCTSNET_45 ) , 
    .RSTB ( RSTN ) , .Q ( MEM_CSB[56] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1_HVT \UFSM/MEM_CSB_reg[55] ( .D ( \UFSM/N331 ) , 
    .SI ( optlc_net_230 ) , .SE ( optlc_net_230 ) , .CLK ( ZCTSNET_36 ) , 
    .RSTB ( RSTN ) , .Q ( MEM_CSB[55] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1_HVT \UFSM/MEM_CSB_reg[54] ( .D ( \UFSM/N332 ) , 
    .SI ( optlc_net_255 ) , .SE ( optlc_net_255 ) , .CLK ( ZCTSNET_45 ) , 
    .RSTB ( RSTN ) , .Q ( MEM_CSB[54] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1_HVT \UFSM/MEM_CSB_reg[53] ( .D ( \UFSM/N333 ) , 
    .SI ( optlc_net_240 ) , .SE ( optlc_net_240 ) , .CLK ( ZCTSNET_46 ) , 
    .RSTB ( RSTN ) , .Q ( MEM_CSB[53] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1_HVT \UFSM/MEM_CSB_reg[52] ( .D ( \UFSM/N334 ) , 
    .SI ( optlc_net_239 ) , .SE ( optlc_net_239 ) , .CLK ( ZCTSNET_46 ) , 
    .RSTB ( RSTN ) , .Q ( MEM_CSB[52] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1_HVT \UFSM/MEM_CSB_reg[51] ( .D ( \UFSM/N335 ) , 
    .SI ( optlc_net_222 ) , .SE ( optlc_net_222 ) , .CLK ( ZCTSNET_36 ) , 
    .RSTB ( RSTN ) , .Q ( MEM_CSB[51] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1_HVT \UFSM/MEM_CSB_reg[50] ( .D ( \UFSM/N336 ) , 
    .SI ( optlc_net_239 ) , .SE ( optlc_net_239 ) , .CLK ( ZCTSNET_46 ) , 
    .RSTB ( RSTN ) , .Q ( MEM_CSB[50] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1_HVT \UFSM/MEM_CSB_reg[49] ( .D ( \UFSM/N337 ) , 
    .SI ( optlc_net_234 ) , .SE ( optlc_net_234 ) , .CLK ( ZCTSNET_46 ) , 
    .RSTB ( RSTN ) , .Q ( MEM_CSB[49] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1_HVT \UFSM/MEM_CSB_reg[48] ( .D ( \UFSM/N338 ) , 
    .SI ( optlc_net_255 ) , .SE ( optlc_net_239 ) , .CLK ( ZCTSNET_46 ) , 
    .RSTB ( RSTN ) , .Q ( MEM_CSB[48] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1_HVT \UFSM/MEM_CSB_reg[47] ( .D ( \UFSM/N339 ) , 
    .SI ( optlc_net_222 ) , .SE ( optlc_net_222 ) , .CLK ( ZCTSNET_36 ) , 
    .RSTB ( RSTN ) , .Q ( MEM_CSB[47] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1_HVT \UFSM/MEM_CSB_reg[46] ( .D ( \UFSM/N340 ) , 
    .SI ( optlc_net_221 ) , .SE ( optlc_net_221 ) , .CLK ( ZCTSNET_35 ) , 
    .RSTB ( RSTN ) , .Q ( MEM_CSB[46] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1_HVT \UFSM/MEM_CSB_reg[45] ( .D ( \UFSM/N341 ) , 
    .SI ( optlc_net_223 ) , .SE ( optlc_net_223 ) , .CLK ( ZCTSNET_37 ) , 
    .RSTB ( RSTN ) , .Q ( MEM_CSB[45] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1_HVT \UFSM/MEM_CSB_reg[44] ( .D ( \UFSM/N342 ) , 
    .SI ( optlc_net_221 ) , .SE ( optlc_net_221 ) , .CLK ( ZCTSNET_35 ) , 
    .RSTB ( RSTN ) , .Q ( MEM_CSB[44] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1_HVT \UFSM/MEM_CSB_reg[43] ( .D ( \UFSM/N343 ) , 
    .SI ( optlc_net_223 ) , .SE ( optlc_net_223 ) , .CLK ( ZCTSNET_37 ) , 
    .RSTB ( RSTN ) , .Q ( MEM_CSB[43] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1_HVT \UFSM/MEM_CSB_reg[42] ( .D ( \UFSM/N344 ) , 
    .SI ( optlc_net_225 ) , .SE ( optlc_net_225 ) , .CLK ( ZCTSNET_35 ) , 
    .RSTB ( RSTN ) , .Q ( MEM_CSB[42] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1_HVT \UFSM/MEM_CSB_reg[41] ( .D ( \UFSM/N345 ) , 
    .SI ( optlc_net_225 ) , .SE ( optlc_net_225 ) , .CLK ( ZCTSNET_35 ) , 
    .RSTB ( RSTN ) , .Q ( MEM_CSB[41] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1_HVT \UFSM/MEM_CSB_reg[40] ( .D ( \UFSM/N346 ) , 
    .SI ( optlc_net_224 ) , .SE ( optlc_net_224 ) , .CLK ( ZCTSNET_37 ) , 
    .RSTB ( RSTN ) , .Q ( MEM_CSB[40] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1_HVT \UFSM/MEM_CSB_reg[39] ( .D ( \UFSM/N347 ) , 
    .SI ( optlc_net_223 ) , .SE ( optlc_net_223 ) , .CLK ( ZCTSNET_35 ) , 
    .RSTB ( RSTN ) , .Q ( MEM_CSB[39] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1_HVT \UFSM/MEM_CSB_reg[38] ( .D ( \UFSM/N348 ) , 
    .SI ( optlc_net_224 ) , .SE ( optlc_net_224 ) , .CLK ( ZCTSNET_37 ) , 
    .RSTB ( RSTN ) , .Q ( MEM_CSB[38] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1_HVT \UFSM/MEM_CSB_reg[37] ( .D ( \UFSM/N349 ) , 
    .SI ( optlc_net_273 ) , .SE ( optlc_net_273 ) , .CLK ( ZCTSNET_47 ) , 
    .RSTB ( RSTN ) , .Q ( MEM_CSB[37] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1_HVT \UFSM/MEM_CSB_reg[36] ( .D ( \UFSM/N350 ) , 
    .SI ( optlc_net_273 ) , .SE ( optlc_net_273 ) , .CLK ( ZCTSNET_47 ) , 
    .RSTB ( RSTN ) , .Q ( MEM_CSB[36] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1_HVT \UFSM/MEM_CSB_reg[35] ( .D ( \UFSM/N351 ) , 
    .SI ( optlc_net_273 ) , .SE ( optlc_net_273 ) , .CLK ( ZCTSNET_47 ) , 
    .RSTB ( RSTN ) , .Q ( MEM_CSB[35] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1_HVT \UFSM/MEM_CSB_reg[34] ( .D ( \UFSM/N352 ) , 
    .SI ( optlc_net_235 ) , .SE ( optlc_net_235 ) , .CLK ( ZCTSNET_47 ) , 
    .RSTB ( RSTN ) , .Q ( MEM_CSB[34] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1_HVT \UFSM/MEM_CSB_reg[33] ( .D ( \UFSM/N353 ) , 
    .SI ( optlc_net_271 ) , .SE ( optlc_net_271 ) , .CLK ( ZCTSNET_47 ) , 
    .RSTB ( RSTN ) , .Q ( MEM_CSB[33] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1_HVT \UFSM/MEM_CSB_reg[32] ( .D ( \UFSM/N354 ) , 
    .SI ( optlc_net_235 ) , .SE ( optlc_net_235 ) , .CLK ( ZCTSNET_47 ) , 
    .RSTB ( RSTN ) , .Q ( MEM_CSB[32] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1_HVT \UFSM/MEM_CSB_reg[31] ( .D ( \UFSM/N355 ) , 
    .SI ( optlc_net_287 ) , .SE ( optlc_net_287 ) , .CLK ( ZCTSNET_50 ) , 
    .RSTB ( RSTN ) , .Q ( MEM_CSB[31] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1_HVT \UFSM/MEM_CSB_reg[30] ( .D ( \UFSM/N356 ) , 
    .SI ( optlc_net_250 ) , .SE ( optlc_net_250 ) , .CLK ( ZCTSNET_50 ) , 
    .RSTB ( RSTN ) , .Q ( MEM_CSB[30] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1_HVT \UFSM/MEM_CSB_reg[29] ( .D ( \UFSM/N357 ) , 
    .SI ( optlc_net_250 ) , .SE ( optlc_net_250 ) , .CLK ( ZCTSNET_50 ) , 
    .RSTB ( RSTN ) , .Q ( MEM_CSB[29] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1_HVT \UFSM/MEM_CSB_reg[28] ( .D ( \UFSM/N358 ) , 
    .SI ( optlc_net_286 ) , .SE ( optlc_net_286 ) , .CLK ( ZCTSNET_50 ) , 
    .RSTB ( RSTN ) , .Q ( MEM_CSB[28] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1_HVT \UFSM/MEM_CSB_reg[27] ( .D ( \UFSM/N359 ) , 
    .SI ( optlc_net_286 ) , .SE ( optlc_net_286 ) , .CLK ( ZCTSNET_50 ) , 
    .RSTB ( RSTN ) , .Q ( MEM_CSB[27] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1_HVT \UFSM/MEM_CSB_reg[26] ( .D ( \UFSM/N360 ) , 
    .SI ( optlc_net_286 ) , .SE ( optlc_net_286 ) , .CLK ( ZCTSNET_50 ) , 
    .RSTB ( RSTN ) , .Q ( MEM_CSB[26] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1_HVT \UFSM/MEM_CSB_reg[25] ( .D ( \UFSM/N361 ) , 
    .SI ( optlc_net_297 ) , .SE ( optlc_net_297 ) , .CLK ( ZCTSNET_48 ) , 
    .RSTB ( RSTN ) , .Q ( MEM_CSB[25] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1_HVT \UFSM/MEM_CSB_reg[24] ( .D ( \UFSM/N362 ) , 
    .SI ( optlc_net_265 ) , .SE ( optlc_net_265 ) , .CLK ( ZCTSNET_41 ) , 
    .RSTB ( RSTN ) , .Q ( MEM_CSB[24] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1_HVT \UFSM/MEM_CSB_reg[23] ( .D ( \UFSM/N363 ) , 
    .SI ( optlc_net_285 ) , .SE ( optlc_net_285 ) , .CLK ( ZCTSNET_41 ) , 
    .RSTB ( RSTN ) , .Q ( MEM_CSB[23] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1_HVT \UFSM/MEM_CSB_reg[22] ( .D ( \UFSM/N364 ) , 
    .SI ( optlc_net_248 ) , .SE ( optlc_net_248 ) , .CLK ( ZCTSNET_40 ) , 
    .RSTB ( RSTN ) , .Q ( MEM_CSB[22] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1_HVT \UFSM/MEM_CSB_reg[21] ( .D ( \UFSM/N365 ) , 
    .SI ( optlc_net_296 ) , .SE ( optlc_net_296 ) , .CLK ( ZCTSNET_48 ) , 
    .RSTB ( RSTN ) , .Q ( MEM_CSB[21] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1_HVT \UFSM/MEM_CSB_reg[20] ( .D ( \UFSM/N366 ) , 
    .SI ( optlc_net_297 ) , .SE ( optlc_net_297 ) , .CLK ( ZCTSNET_48 ) , 
    .RSTB ( RSTN ) , .Q ( MEM_CSB[20] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1_HVT \UFSM/MEM_CSB_reg[19] ( .D ( \UFSM/N367 ) , 
    .SI ( optlc_net_288 ) , .SE ( optlc_net_288 ) , .CLK ( ZCTSNET_41 ) , 
    .RSTB ( RSTN ) , .Q ( MEM_CSB[19] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1_HVT \UFSM/MEM_CSB_reg[18] ( .D ( \UFSM/N368 ) , 
    .SI ( optlc_net_243 ) , .SE ( optlc_net_243 ) , .CLK ( ZCTSNET_40 ) , 
    .RSTB ( RSTN ) , .Q ( MEM_CSB[18] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1_HVT \UFSM/MEM_CSB_reg[17] ( .D ( \UFSM/N369 ) , 
    .SI ( optlc_net_297 ) , .SE ( optlc_net_297 ) , .CLK ( ZCTSNET_48 ) , 
    .RSTB ( RSTN ) , .Q ( MEM_CSB[17] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1_HVT \UFSM/MEM_CSB_reg[16] ( .D ( \UFSM/N370 ) , 
    .SI ( optlc_net_288 ) , .SE ( optlc_net_288 ) , .CLK ( ZCTSNET_41 ) , 
    .RSTB ( RSTN ) , .Q ( MEM_CSB[16] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1_HVT \UFSM/MEM_CSB_reg[15] ( .D ( \UFSM/N371 ) , 
    .SI ( optlc_net_265 ) , .SE ( optlc_net_265 ) , .CLK ( ZCTSNET_41 ) , 
    .RSTB ( RSTN ) , .Q ( MEM_CSB[15] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1_HVT \UFSM/MEM_CSB_reg[14] ( .D ( \UFSM/N372 ) , 
    .SI ( optlc_net_248 ) , .SE ( optlc_net_248 ) , .CLK ( ZCTSNET_40 ) , 
    .RSTB ( RSTN ) , .Q ( MEM_CSB[14] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1_HVT \UFSM/MEM_CSB_reg[13] ( .D ( \UFSM/N373 ) , 
    .SI ( optlc_net_245 ) , .SE ( optlc_net_245 ) , .CLK ( ZCTSNET_39 ) , 
    .RSTB ( RSTN ) , .Q ( MEM_CSB[13] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1_HVT \UFSM/MEM_CSB_reg[12] ( .D ( \UFSM/N374 ) , 
    .SI ( optlc_net_245 ) , .SE ( optlc_net_245 ) , .CLK ( ZCTSNET_39 ) , 
    .RSTB ( RSTN ) , .Q ( MEM_CSB[12] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1_HVT \UFSM/MEM_CSB_reg[11] ( .D ( \UFSM/N375 ) , 
    .SI ( optlc_net_242 ) , .SE ( optlc_net_242 ) , .CLK ( ZCTSNET_39 ) , 
    .RSTB ( RSTN ) , .Q ( MEM_CSB[11] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1_HVT \UFSM/MEM_CSB_reg[10] ( .D ( \UFSM/N376 ) , 
    .SI ( optlc_net_242 ) , .SE ( optlc_net_242 ) , .CLK ( ZCTSNET_40 ) , 
    .RSTB ( RSTN ) , .Q ( MEM_CSB[10] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1_HVT \UFSM/MEM_CSB_reg[9] ( .D ( \UFSM/N377 ) , 
    .SI ( optlc_net_238 ) , .SE ( optlc_net_238 ) , .CLK ( ZCTSNET_39 ) , 
    .RSTB ( RSTN ) , .Q ( MEM_CSB[9] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1_HVT \UFSM/MEM_CSB_reg[8] ( .D ( \UFSM/N378 ) , 
    .SI ( optlc_net_245 ) , .SE ( optlc_net_245 ) , .CLK ( ZCTSNET_39 ) , 
    .RSTB ( RSTN ) , .Q ( MEM_CSB[8] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1_HVT \UFSM/MEM_CSB_reg[7] ( .D ( \UFSM/N379 ) , 
    .SI ( optlc_net_229 ) , .SE ( optlc_net_229 ) , .CLK ( ZCTSNET_39 ) , 
    .RSTB ( RSTN ) , .Q ( MEM_CSB[7] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1_HVT \UFSM/MEM_CSB_reg[6] ( .D ( \UFSM/N380 ) , 
    .SI ( optlc_net_229 ) , .SE ( optlc_net_229 ) , .CLK ( ZCTSNET_39 ) , 
    .RSTB ( RSTN ) , .Q ( MEM_CSB[6] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1_HVT \UFSM/MEM_CSB_reg[5] ( .D ( \UFSM/N381 ) , 
    .SI ( optlc_net_244 ) , .SE ( optlc_net_246 ) , .CLK ( ZCTSNET_40 ) , 
    .RSTB ( RSTN ) , .Q ( MEM_CSB[5] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1_HVT \UFSM/MEM_CSB_reg[4] ( .D ( \UFSM/N382 ) , 
    .SI ( optlc_net_285 ) , .SE ( optlc_net_285 ) , .CLK ( ZCTSNET_41 ) , 
    .RSTB ( RSTN ) , .Q ( MEM_CSB[4] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1_HVT \UFSM/MEM_CSB_reg[3] ( .D ( \UFSM/N383 ) , 
    .SI ( optlc_net_285 ) , .SE ( optlc_net_285 ) , .CLK ( ZCTSNET_41 ) , 
    .RSTB ( RSTN ) , .Q ( MEM_CSB[3] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1_HVT \UFSM/MEM_CSB_reg[2] ( .D ( \UFSM/N384 ) , 
    .SI ( optlc_net_243 ) , .SE ( optlc_net_243 ) , .CLK ( ZCTSNET_40 ) , 
    .RSTB ( RSTN ) , .Q ( MEM_CSB[2] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1_HVT \UFSM/MEM_CSB_reg[1] ( .D ( \UFSM/N385 ) , 
    .SI ( optlc_net_247 ) , .SE ( optlc_net_247 ) , .CLK ( ZCTSNET_40 ) , 
    .RSTB ( RSTN ) , .Q ( MEM_CSB[1] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1_HVT \UFSM/MEM_CSB_reg[0] ( .D ( \UFSM/N386 ) , 
    .SI ( optlc_net_243 ) , .SE ( optlc_net_243 ) , .CLK ( ZCTSNET_40 ) , 
    .RSTB ( RSTN ) , .Q ( MEM_CSB[0] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND3X1_HVT ctmi_223 ( .A1 ( BINARY_COUNTER_ADDR[11] ) , 
    .A2 ( BINARY_COUNTER_ADDR[10] ) , .A3 ( phfnn_43 ) , .Y ( ctmn_3935 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1_HVT \UFSM/MEM_OEB_reg[56] ( .D ( SEQMAP_NET_828 ) , 
    .SI ( optlc_net_249 ) , .SE ( optlc_net_249 ) , .CLK ( ZCTSNET_45 ) , 
    .RSTB ( RSTN ) , .Q ( ctmn_3598 ) , .QN ( MEM_OEB[56] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1_HVT \UFSM/MEM_WEB_reg ( .D ( SEQMAP_NET_885 ) , 
    .SI ( optlc_net_278 ) , .SE ( optlc_net_278 ) , .CLK ( ZCTSNET_42 ) , 
    .RSTB ( RSTN ) , .QN ( MEM_WEB ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1_HVT ctmi_4114 ( .A1 ( HFSNET_775 ) , .A2 ( ctmn_3556 ) , 
    .Y ( SEQMAP_NET_874 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1_HVT \UFSM/MEM_OEB_reg[23] ( .D ( SEQMAP_NET_861 ) , 
    .SI ( optlc_net_265 ) , .SE ( optlc_net_265 ) , .CLK ( ZCTSNET_41 ) , 
    .RSTB ( RSTN ) , .Q ( ctmn_3617 ) , .QN ( MEM_OEB[23] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AND2X1_HVT ctmi_4112 ( .A1 ( ctmn_3533 ) , .A2 ( ctmn_3556 ) , 
    .Y ( SEQMAP_NET_872 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1_HVT ctmi_4113 ( .A1 ( ctmn_3536 ) , .A2 ( ctmn_3556 ) , 
    .Y ( SEQMAP_NET_873 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1_HVT \UFSM/OEB_DELAY_reg ( .D ( OEB ) , .SI ( optlc_net_281 ) , 
    .SE ( optlc_net_281 ) , .CLK ( \CLK_clock_gate_UFSM/CSB_DELAY_reg ) , 
    .RSTB ( RSTN ) , .Q ( \UFSM/OEB_DELAY ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1_HVT ctmi_4115 ( .A1 ( ctmn_3538 ) , .A2 ( ctmn_3556 ) , 
    .Y ( SEQMAP_NET_875 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1_HVT ctmi_4116 ( .A1 ( ctmn_3539 ) , .A2 ( ctmn_3556 ) , 
    .Y ( SEQMAP_NET_876 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1_HVT ctmi_4117 ( .A1 ( ZBUF_765_174 ) , .A2 ( ctmn_3556 ) , 
    .Y ( SEQMAP_NET_877 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1_HVT ctmi_4118 ( .A1 ( copt_gre_net_1139 ) , .A2 ( ctmn_3556 ) , 
    .Y ( SEQMAP_NET_878 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1_HVT ctmi_4119 ( .A1 ( ctmn_3545 ) , .A2 ( ctmn_3556 ) , 
    .Y ( SEQMAP_NET_879 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1_HVT ctmi_4120 ( .A1 ( copt_gre_net_1217 ) , .A2 ( ctmn_3556 ) , 
    .Y ( SEQMAP_NET_880 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1_HVT ctmi_4121 ( .A1 ( HFSNET_782 ) , .A2 ( ctmn_3556 ) , 
    .Y ( SEQMAP_NET_881 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1_HVT ctmi_4122 ( .A1 ( ctmn_3548 ) , .A2 ( ctmn_3556 ) , 
    .Y ( SEQMAP_NET_882 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1_HVT ctmi_4123 ( .A1 ( ctmn_3549 ) , .A2 ( ctmn_3556 ) , 
    .Y ( SEQMAP_NET_883 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1_HVT ctmi_4124 ( .A1 ( ctmn_3550 ) , .A2 ( ctmn_3556 ) , 
    .Y ( SEQMAP_NET_884 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1_HVT ctmi_318 ( .A1 ( ctmn_3646 ) , .A2 ( ZBUF_230_144 ) , 
    .A3 ( ctmn_3629 ) , .A4 ( copt_gre_net_1340 ) , .A5 ( ctmn_71_CDR1 ) , 
    .Y ( ctmn_3604_CDR1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
OA22X2_HVT ctmi_4698 ( .A1 ( BIST_EN ) , .A2 ( IDATA[6] ) , 
    .A3 ( HFSNET_815 ) , .A4 ( ctmn_3971 ) , .Y ( MEM_IDATA[6] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
OA22X2_HVT ctmi_4699 ( .A1 ( BIST_EN ) , .A2 ( IDATA[7] ) , 
    .A3 ( HFSNET_815 ) , .A4 ( ctmn_3969 ) , .Y ( MEM_IDATA[7] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1_HVT ctmi_4706 ( .A1 ( HFSNET_813 ) , 
    .A2 ( \UGRAY_COUNTER_16B/binary [7] ) , .Y ( ctmn_3988 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NOR2X0_HVT ctmi_4707 ( .A1 ( HFSNET_811 ) , 
    .A2 ( \UGRAY_COUNTER_16B/binary [7] ) , .Y ( ctmn_3989 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
MUX21X1_HVT ctmi_4708 ( .A1 ( ctmn_3988 ) , .A2 ( ctmn_3989 ) , 
    .S0 ( \UGRAY_COUNTER_16B/binary [8] ) , .Y ( \UGRAY_COUNTER_16B/N25 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
MUX21X1_HVT ctmi_4709 ( .A1 ( ctmn_3990 ) , .A2 ( ctmn_3991 ) , 
    .S0 ( \UGRAY_COUNTER_16B/binary [8] ) , .Y ( \UGRAY_COUNTER_16B/N24 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1_HVT ctmi_4710 ( .A1 ( HFSNET_813 ) , 
    .A2 ( \UGRAY_COUNTER_16B/binary [9] ) , .Y ( ctmn_3990 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NOR2X0_HVT ctmi_4711 ( .A1 ( HFSNET_811 ) , 
    .A2 ( \UGRAY_COUNTER_16B/binary [9] ) , .Y ( ctmn_3991 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
MUX21X1_HVT ctmi_4712 ( .A1 ( ctmn_3990 ) , .A2 ( ctmn_3991 ) , 
    .S0 ( \UGRAY_COUNTER_16B/binary [10] ) , .Y ( \UGRAY_COUNTER_16B/N23 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
MUX21X1_HVT ctmi_4713 ( .A1 ( ctmn_3992 ) , .A2 ( ctmn_3993 ) , 
    .S0 ( \UGRAY_COUNTER_16B/binary [10] ) , .Y ( \UGRAY_COUNTER_16B/N22 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO222X1_HVT ctmi_4128 ( .A1 ( HFSNET_1373 ) , .A2 ( copt_gre_net_789 ) , 
    .A3 ( ctmn_3559 ) , .A4 ( \USRAM/guide_buf_502 ) , .A5 ( HFSNET_1368 ) , 
    .A6 ( ZBUF_2_106 ) , .Y ( ctmn_3560_CDR1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
OA221X1_HVT ctmi_324 ( .A1 ( HFSNET_806 ) , .A2 ( HFSNET_806 ) , 
    .A3 ( phfnn_43 ) , .A4 ( BINARY_COUNTER_ADDR[10] ) , .A5 ( ctmn_3917 ) , 
    .Y ( \UBINARY_COUNTER_16B/N6 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
OA22X2_HVT ctmi_4691 ( .A1 ( BIST_EN ) , .A2 ( IDATA[0] ) , 
    .A3 ( HFSNET_815 ) , .A4 ( ctmn_3975 ) , .Y ( MEM_IDATA[0] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1_HVT ctmi_4714 ( .A1 ( HFSNET_813 ) , 
    .A2 ( \UGRAY_COUNTER_16B/binary [11] ) , .Y ( ctmn_3992 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NOR2X0_HVT ctmi_4715 ( .A1 ( HFSNET_811 ) , 
    .A2 ( \UGRAY_COUNTER_16B/binary [11] ) , .Y ( ctmn_3993 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
MUX21X1_HVT ctmi_4716 ( .A1 ( ctmn_3992 ) , .A2 ( ctmn_3993 ) , 
    .S0 ( \UGRAY_COUNTER_16B/binary [12] ) , .Y ( \UGRAY_COUNTER_16B/N21 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
MUX21X1_HVT ctmi_4717 ( .A1 ( ctmn_3994 ) , .A2 ( ctmn_3995 ) , 
    .S0 ( \UGRAY_COUNTER_16B/binary [12] ) , .Y ( \UGRAY_COUNTER_16B/N20 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1_HVT ctmi_4718 ( .A1 ( HFSNET_813 ) , 
    .A2 ( \UGRAY_COUNTER_16B/binary [13] ) , .Y ( ctmn_3994 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AND2X1_HVT ctmi_4719 ( .A1 ( ctmn_3936 ) , .A2 ( HFSNET_813 ) , 
    .Y ( ctmn_3995 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
OA22X1_HVT ctmi_4720 ( .A1 ( ctmn_3887 ) , .A2 ( ctmn_3995 ) , 
    .A3 ( \UGRAY_COUNTER_16B/binary [14] ) , .A4 ( ctmn_3994 ) , 
    .Y ( \UGRAY_COUNTER_16B/N19 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
OA22X1_HVT ctmi_4721 ( .A1 ( ctmn_3947 ) , .A2 ( \UGRAY_COUNTER_16B/N18 ) , 
    .A3 ( phfnn_47 ) , .A4 ( \UGRAY_COUNTER_16B/N17 ) , 
    .Y ( \UGRAY_COUNTER_16B/N1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
MUX21X1_HVT ctmi_4722 ( .A1 ( ctmn_3995 ) , .A2 ( ctmn_3994 ) , 
    .S0 ( ctmn_3946 ) , .Y ( \UGRAY_COUNTER_16B/N3 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
OA22X1_HVT ctmi_4723 ( .A1 ( ctmn_3944 ) , .A2 ( ctmn_3993 ) , 
    .A3 ( phfnn_44 ) , .A4 ( ctmn_3992 ) , .Y ( \UGRAY_COUNTER_16B/N5 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
OA22X1_HVT ctmi_4724 ( .A1 ( ctmn_3942 ) , .A2 ( ctmn_3991 ) , 
    .A3 ( phfnn_41 ) , .A4 ( ctmn_3990 ) , .Y ( \UGRAY_COUNTER_16B/N7 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
OA22X1_HVT ctmi_4725 ( .A1 ( ctmn_3940 ) , .A2 ( ctmn_3989 ) , 
    .A3 ( phfnn_38 ) , .A4 ( ctmn_3988 ) , .Y ( \UGRAY_COUNTER_16B/N9 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
OA22X1_HVT ctmi_4726 ( .A1 ( ctmn_3938 ) , .A2 ( ctmn_3986 ) , 
    .A3 ( phfnn_29 ) , .A4 ( ctmn_3987 ) , .Y ( \UGRAY_COUNTER_16B/N11 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
MUX21X1_HVT ctmi_4727 ( .A1 ( \UGRAY_COUNTER_16B/N30 ) , 
    .A2 ( \UGRAY_COUNTER_16B/binary [3] ) , .S0 ( ctmn_3984 ) , 
    .Y ( \UGRAY_COUNTER_16B/N13 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SDFFARX1_HVT \UGRAY_COUNTER_16B/binary_reg[15] ( 
    .D ( \UGRAY_COUNTER_16B/N1 ) , .SI ( optlc_net_279 ) , 
    .SE ( optlc_net_279 ) , .CLK ( HFSNET_793 ) , .RSTB ( RSTN ) , 
    .Q ( \UGRAY_COUNTER_16B/binary [15] ) , .QN ( ctmn_3888 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1_HVT \UFSM/MEM_OEB_reg[0] ( .D ( SEQMAP_NET_884 ) , 
    .SI ( optlc_net_246 ) , .SE ( optlc_net_246 ) , .CLK ( ZCTSNET_40 ) , 
    .RSTB ( RSTN ) , .Q ( ctmn_3649 ) , .QN ( MEM_OEB[0] ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
OR3X2_HVT ctmi_4292 ( .A1 ( HFSNET_674 ) , .A2 ( ctmn_3735_CDR1 ) , 
    .A3 ( ctmn_3752_CDR1 ) , .Y ( HFSNET_1231 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
OR3X2_HVT ctmi_4326 ( .A1 ( HFSNET_673 ) , .A2 ( ctmn_3768_CDR1 ) , 
    .A3 ( ctmn_3785_CDR1 ) , .Y ( HFSNET_1221 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
OR3X4_HVT ctmi_4360 ( .A1 ( HFSNET_672 ) , .A2 ( ctmn_3801_CDR1 ) , 
    .A3 ( ctmn_3818_CDR1 ) , .Y ( HFSNET_1222 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
OR3X4_HVT ctmi_4394 ( .A1 ( HFSNET_671 ) , .A2 ( ctmn_3834_CDR1 ) , 
    .A3 ( ctmn_3851_CDR1 ) , .Y ( HFSNET_1224 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
OR3X2_HVT ctmi_4428 ( .A1 ( HFSNET_670 ) , .A2 ( ctmn_3867_CDR1 ) , 
    .A3 ( ctmn_3884_CDR1 ) , .Y ( HFSNET_1225 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
OA221X1_HVT ctmi_4462 ( .A1 ( ctmn_3885 ) , .A2 ( ctmn_3886 ) , 
    .A3 ( \UGRAY_COUNTER_16B/binary [3] ) , 
    .A4 ( \UGRAY_COUNTER_16B/binary [4] ) , .A5 ( BIST_MODE[1] ) , 
    .Y ( \UGRAY_COUNTER_16B/N29 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
OA221X1_HVT ctmi_4465 ( .A1 ( ctmn_3887 ) , .A2 ( ctmn_3888 ) , 
    .A3 ( \UGRAY_COUNTER_16B/binary [14] ) , 
    .A4 ( \UGRAY_COUNTER_16B/binary [15] ) , .A5 ( HFSNET_813 ) , 
    .Y ( \UGRAY_COUNTER_16B/N18 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0_HVT phfnr_buf_251 ( .A ( BINARY_COUNTER_ADDR[11] ) , .Y ( phfnn_26 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1_HVT ctmi_4468 ( .A1 ( HFSNET_813 ) , 
    .A2 ( \UGRAY_COUNTER_16B/binary [15] ) , .Y ( \UGRAY_COUNTER_16B/N17 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1_HVT ctmi_4469 ( .A1 ( HFSNET_804 ) , .A2 ( LFSR_ADDR[14] ) , 
    .Y ( \ULFSR_16B/N1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1_HVT ctmi_4470 ( .A1 ( HFSNET_804 ) , .A2 ( LFSR_ADDR[13] ) , 
    .Y ( \ULFSR_16B/N2 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1_HVT ctmi_4471 ( .A1 ( HFSNET_804 ) , .A2 ( LFSR_ADDR[12] ) , 
    .Y ( \ULFSR_16B/N3 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1_HVT ctmi_4472 ( .A1 ( HFSNET_804 ) , .A2 ( LFSR_ADDR[11] ) , 
    .Y ( \ULFSR_16B/N4 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1_HVT ctmi_4473 ( .A1 ( HFSNET_804 ) , .A2 ( LFSR_ADDR[10] ) , 
    .Y ( \ULFSR_16B/N5 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1_HVT ctmi_4474 ( .A1 ( HFSNET_804 ) , .A2 ( LFSR_ADDR[9] ) , 
    .Y ( \ULFSR_16B/N6 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1_HVT ctmi_4475 ( .A1 ( BIST_MODE[0] ) , .A2 ( LFSR_ADDR[8] ) , 
    .Y ( \ULFSR_16B/N7 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1_HVT ctmi_4476 ( .A1 ( BIST_MODE[0] ) , .A2 ( LFSR_ADDR[7] ) , 
    .Y ( \ULFSR_16B/N8 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1_HVT ctmi_4477 ( .A1 ( BIST_MODE[0] ) , .A2 ( LFSR_ADDR[6] ) , 
    .Y ( \ULFSR_16B/N9 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1_HVT ctmi_4478 ( .A1 ( BIST_MODE[0] ) , .A2 ( LFSR_ADDR[5] ) , 
    .Y ( \ULFSR_16B/N10 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1_HVT ctmi_4479 ( .A1 ( BIST_MODE[0] ) , .A2 ( LFSR_ADDR[4] ) , 
    .Y ( \ULFSR_16B/N11 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1_HVT ctmi_4480 ( .A1 ( BIST_MODE[0] ) , .A2 ( LFSR_ADDR[3] ) , 
    .Y ( \ULFSR_16B/N12 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1_HVT ctmi_4481 ( .A1 ( BIST_MODE[0] ) , .A2 ( LFSR_ADDR[2] ) , 
    .Y ( \ULFSR_16B/N13 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1_HVT ctmi_4482 ( .A1 ( BIST_MODE[0] ) , .A2 ( LFSR_ADDR[1] ) , 
    .Y ( \ULFSR_16B/N14 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1_HVT ctmi_4483 ( .A1 ( BIST_MODE[0] ) , .A2 ( LFSR_ADDR[0] ) , 
    .Y ( \ULFSR_16B/N15 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1_HVT ctmi_4484 ( .A1 ( HFSNET_804 ) , .A2 ( LFSR_DATA[6] ) , 
    .Y ( \ULFSR_8B/N1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1_HVT ctmi_4485 ( .A1 ( HFSNET_804 ) , .A2 ( LFSR_DATA[5] ) , 
    .Y ( \ULFSR_8B/N2 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1_HVT ctmi_4486 ( .A1 ( HFSNET_804 ) , .A2 ( LFSR_DATA[4] ) , 
    .Y ( \ULFSR_8B/N3 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1_HVT ctmi_4487 ( .A1 ( HFSNET_804 ) , .A2 ( LFSR_DATA[3] ) , 
    .Y ( \ULFSR_8B/N4 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1_HVT ctmi_4488 ( .A1 ( HFSNET_804 ) , .A2 ( LFSR_DATA[2] ) , 
    .Y ( \ULFSR_8B/N5 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1_HVT ctmi_4489 ( .A1 ( HFSNET_804 ) , .A2 ( LFSR_DATA[1] ) , 
    .Y ( \ULFSR_8B/N6 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1_HVT ctmi_4490 ( .A1 ( HFSNET_804 ) , .A2 ( LFSR_DATA[0] ) , 
    .Y ( \ULFSR_8B/N7 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X0_HVT ctmi_4491 ( .A1 ( ctmn_3550 ) , .A2 ( ctmn_3890 ) , 
    .Y ( \UFSM/N386 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND3X4_HVT ctmi_4492 ( .A1 ( ctmn_3889 ) , .A2 ( phfnn_37 ) , 
    .A3 ( HFSNET_787 ) , .Y ( ctmn_3890 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X0_HVT ctmi_4526 ( .A1 ( copt_gre_net_1186 ) , .A2 ( ctmn_3893 ) , 
    .Y ( \UFSM/N354 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X0_HVT ctmi_4509 ( .A1 ( copt_gre_net_1187 ) , .A2 ( ZBUF_502_175 ) , 
    .Y ( \UFSM/N370 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X0_HVT ctmi_4494 ( .A1 ( ctmn_3549 ) , .A2 ( ctmn_3890 ) , 
    .Y ( \UFSM/N385 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X0_HVT ctmi_4495 ( .A1 ( ctmn_3548 ) , .A2 ( ctmn_3890 ) , 
    .Y ( \UFSM/N384 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X0_HVT ctmi_4496 ( .A1 ( HFSNET_782 ) , .A2 ( HFSNET_798 ) , 
    .Y ( \UFSM/N383 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X0_HVT ctmi_4497 ( .A1 ( copt_gre_net_1217 ) , .A2 ( HFSNET_798 ) , 
    .Y ( \UFSM/N382 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X0_HVT ctmi_4498 ( .A1 ( ctmn_3545 ) , .A2 ( ctmn_3890 ) , 
    .Y ( \UFSM/N381 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X0_HVT ctmi_4499 ( .A1 ( copt_gre_net_1139 ) , .A2 ( ctmn_3890 ) , 
    .Y ( \UFSM/N380 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X0_HVT ctmi_4500 ( .A1 ( ZBUF_765_174 ) , .A2 ( ctmn_3890 ) , 
    .Y ( \UFSM/N379 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X0_HVT ctmi_4501 ( .A1 ( ctmn_3539 ) , .A2 ( ctmn_3890 ) , 
    .Y ( \UFSM/N378 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X0_HVT ctmi_4502 ( .A1 ( ctmn_3538 ) , .A2 ( ctmn_3890 ) , 
    .Y ( \UFSM/N377 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X0_HVT ctmi_4503 ( .A1 ( HFSNET_775 ) , .A2 ( ctmn_3890 ) , 
    .Y ( \UFSM/N376 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X0_HVT ctmi_4504 ( .A1 ( ctmn_3536 ) , .A2 ( ctmn_3890 ) , 
    .Y ( \UFSM/N375 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X0_HVT ctmi_4505 ( .A1 ( ctmn_3533 ) , .A2 ( ctmn_3890 ) , 
    .Y ( \UFSM/N374 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X0_HVT ctmi_4506 ( .A1 ( ctmn_3532 ) , .A2 ( ctmn_3890 ) , 
    .Y ( \UFSM/N373 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X0_HVT ctmi_4507 ( .A1 ( HFSNET_771 ) , .A2 ( ctmn_3890 ) , 
    .Y ( \UFSM/N372 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X0_HVT ctmi_4508 ( .A1 ( ctmn_3551 ) , .A2 ( ctmn_3890 ) , 
    .Y ( \UFSM/N371 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND3X1_HVT ctmi_4510 ( .A1 ( HFSNET_789 ) , .A2 ( ctmn_3889 ) , 
    .A3 ( phfnn_37 ) , .Y ( ctmn_3891 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X0_HVT ctmi_4511 ( .A1 ( copt_gre_net_1209 ) , .A2 ( ZBUF_502_175 ) , 
    .Y ( \UFSM/N369 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X0_HVT ctmi_4512 ( .A1 ( ctmn_3548 ) , .A2 ( HFSNET_799 ) , 
    .Y ( \UFSM/N368 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X0_HVT ctmi_4513 ( .A1 ( HFSNET_782 ) , .A2 ( ZBUF_502_175 ) , 
    .Y ( \UFSM/N367 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X0_HVT ctmi_4514 ( .A1 ( copt_gre_net_1217 ) , .A2 ( ZBUF_502_175 ) , 
    .Y ( \UFSM/N366 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X0_HVT ctmi_4515 ( .A1 ( copt_gre_net_1201 ) , .A2 ( ZBUF_502_175 ) , 
    .Y ( \UFSM/N365 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X0_HVT ctmi_4516 ( .A1 ( ctmn_3544 ) , .A2 ( HFSNET_799 ) , 
    .Y ( \UFSM/N364 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X0_HVT ctmi_4517 ( .A1 ( ctmn_3542 ) , .A2 ( ZBUF_502_175 ) , 
    .Y ( \UFSM/N363 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X0_HVT ctmi_4518 ( .A1 ( ctmn_3539 ) , .A2 ( ZBUF_502_175 ) , 
    .Y ( \UFSM/N362 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X0_HVT ctmi_4519 ( .A1 ( HFSNET_776 ) , .A2 ( ZBUF_502_175 ) , 
    .Y ( \UFSM/N361 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X0_HVT ctmi_4520 ( .A1 ( HFSNET_775 ) , .A2 ( HFSNET_799 ) , 
    .Y ( \UFSM/N360 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X0_HVT ctmi_4521 ( .A1 ( HFSNET_774 ) , .A2 ( HFSNET_799 ) , 
    .Y ( \UFSM/N359 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X0_HVT ctmi_4522 ( .A1 ( HFSNET_773 ) , .A2 ( HFSNET_799 ) , 
    .Y ( \UFSM/N358 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X0_HVT ctmi_4523 ( .A1 ( ctmn_3532 ) , .A2 ( HFSNET_799 ) , 
    .Y ( \UFSM/N357 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X0_HVT ctmi_4524 ( .A1 ( HFSNET_771 ) , .A2 ( HFSNET_799 ) , 
    .Y ( \UFSM/N356 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X0_HVT ctmi_4525 ( .A1 ( ZBUF_158_33 ) , .A2 ( HFSNET_799 ) , 
    .Y ( \UFSM/N355 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X4_HVT ctmi_4527 ( .A1 ( HFSNET_787 ) , .A2 ( ctmn_3892 ) , 
    .Y ( ctmn_3893 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X2_HVT ctmi_4528 ( .A1 ( ctmn_3525 ) , .A2 ( ctmn_3889 ) , 
    .Y ( ctmn_3892 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X0_HVT ctmi_4529 ( .A1 ( copt_gre_net_1208 ) , .A2 ( ctmn_3893 ) , 
    .Y ( \UFSM/N353 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X0_HVT ctmi_4530 ( .A1 ( HFSNET_783 ) , .A2 ( ctmn_3893 ) , 
    .Y ( \UFSM/N352 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X0_HVT ctmi_4531 ( .A1 ( HFSNET_782 ) , .A2 ( ctmn_3893 ) , 
    .Y ( \UFSM/N351 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X0_HVT ctmi_4532 ( .A1 ( copt_gre_net_1216 ) , .A2 ( ctmn_3893 ) , 
    .Y ( \UFSM/N350 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X0_HVT ctmi_4533 ( .A1 ( copt_gre_net_1200 ) , .A2 ( ctmn_3893 ) , 
    .Y ( \UFSM/N349 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X0_HVT ctmi_4534 ( .A1 ( copt_gre_net_1138 ) , .A2 ( copt_gre_net_449 ) , 
    .Y ( \UFSM/N348 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X0_HVT ctmi_4535 ( .A1 ( ZBUF_765_174 ) , .A2 ( copt_gre_net_449 ) , 
    .Y ( \UFSM/N347 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X0_HVT ctmi_4536 ( .A1 ( copt_gre_net_1167 ) , .A2 ( copt_gre_net_449 ) , 
    .Y ( \UFSM/N346 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X0_HVT ctmi_4537 ( .A1 ( ctmn_3538 ) , .A2 ( copt_gre_net_449 ) , 
    .Y ( \UFSM/N345 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X0_HVT ctmi_4538 ( .A1 ( HFSNET_775 ) , .A2 ( copt_gre_net_449 ) , 
    .Y ( \UFSM/N344 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X0_HVT ctmi_4539 ( .A1 ( HFSNET_774 ) , .A2 ( copt_gre_net_449 ) , 
    .Y ( \UFSM/N343 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X0_HVT ctmi_4540 ( .A1 ( HFSNET_773 ) , .A2 ( copt_gre_net_449 ) , 
    .Y ( \UFSM/N342 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X0_HVT ctmi_4541 ( .A1 ( ctmn_3532 ) , .A2 ( copt_gre_net_449 ) , 
    .Y ( \UFSM/N341 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X0_HVT ctmi_4542 ( .A1 ( ZBUF_230_172 ) , .A2 ( copt_gre_net_449 ) , 
    .Y ( \UFSM/N340 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X0_HVT ctmi_4543 ( .A1 ( ZBUF_397_178 ) , .A2 ( copt_gre_net_449 ) , 
    .Y ( \UFSM/N339 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X0_HVT ctmi_4544 ( .A1 ( copt_gre_net_1186 ) , .A2 ( copt_gre_net_432 ) , 
    .Y ( \UFSM/N338 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X4_HVT ctmi_4545 ( .A1 ( HFSNET_789 ) , .A2 ( ctmn_3892 ) , 
    .Y ( ctmn_3894 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX2_HVT HFSINV_784_1157 ( .A ( BIST_EN ) , .Y ( HFSNET_814 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1_HVT ctmi_4568 ( .A1 ( HFSNET_814 ) , .A2 ( ADDR[9] ) , 
    .A3 ( ctmn_3506 ) , .A4 ( LFSR_ADDR[9] ) , .A5 ( ctmn_3898 ) , 
    .Y ( FSM_ADDR[9] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1_HVT ctmi_4569 ( .A1 ( ctmn_3508 ) , .A2 ( BINARY_COUNTER_ADDR[9] ) , 
    .A3 ( ctmn_3509 ) , .A4 ( GRAY_COUNTER_ADDR[9] ) , .Y ( ctmn_3898 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1_HVT ctmi_4570 ( .A1 ( HFSNET_815 ) , .A2 ( ADDR[8] ) , 
    .A3 ( ctmn_3506 ) , .A4 ( LFSR_ADDR[8] ) , .A5 ( ctmn_3899 ) , 
    .Y ( FSM_ADDR[8] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1_HVT ctmi_4571 ( .A1 ( ctmn_3508 ) , .A2 ( BINARY_COUNTER_ADDR[8] ) , 
    .A3 ( ctmn_3509 ) , .A4 ( GRAY_COUNTER_ADDR[8] ) , .Y ( ctmn_3899 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1_HVT ctmi_4572 ( .A1 ( HFSNET_815 ) , .A2 ( ADDR[7] ) , 
    .A3 ( ctmn_3506 ) , .A4 ( LFSR_ADDR[7] ) , .A5 ( ctmn_3900 ) , 
    .Y ( FSM_ADDR[7] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1_HVT ctmi_4573 ( .A1 ( ctmn_3508 ) , .A2 ( BINARY_COUNTER_ADDR[7] ) , 
    .A3 ( ctmn_3509 ) , .A4 ( GRAY_COUNTER_ADDR[7] ) , .Y ( ctmn_3900 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1_HVT ctmi_4574 ( .A1 ( HFSNET_815 ) , .A2 ( ADDR[6] ) , 
    .A3 ( ctmn_3506 ) , .A4 ( LFSR_ADDR[6] ) , .A5 ( ctmn_3901 ) , 
    .Y ( FSM_ADDR[6] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1_HVT ctmi_4575 ( .A1 ( ctmn_3508 ) , .A2 ( BINARY_COUNTER_ADDR[6] ) , 
    .A3 ( ctmn_3509 ) , .A4 ( GRAY_COUNTER_ADDR[6] ) , .Y ( ctmn_3901 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1_HVT ctmi_4576 ( .A1 ( HFSNET_815 ) , .A2 ( ADDR[5] ) , 
    .A3 ( ctmn_3506 ) , .A4 ( LFSR_ADDR[5] ) , .A5 ( ctmn_3902 ) , 
    .Y ( FSM_ADDR[5] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1_HVT ctmi_4577 ( .A1 ( ctmn_3508 ) , .A2 ( BINARY_COUNTER_ADDR[5] ) , 
    .A3 ( ctmn_3509 ) , .A4 ( GRAY_COUNTER_ADDR[5] ) , .Y ( ctmn_3902 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1_HVT ctmi_4578 ( .A1 ( HFSNET_816 ) , .A2 ( ADDR[4] ) , 
    .A3 ( ctmn_3506 ) , .A4 ( LFSR_ADDR[4] ) , .A5 ( ctmn_3903 ) , 
    .Y ( FSM_ADDR[4] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1_HVT ctmi_4579 ( .A1 ( ctmn_3508 ) , .A2 ( BINARY_COUNTER_ADDR[4] ) , 
    .A3 ( ctmn_3509 ) , .A4 ( GRAY_COUNTER_ADDR[4] ) , .Y ( ctmn_3903 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1_HVT ctmi_4580 ( .A1 ( HFSNET_816 ) , .A2 ( ADDR[3] ) , 
    .A3 ( ctmn_3506 ) , .A4 ( LFSR_ADDR[3] ) , .A5 ( ctmn_3904 ) , 
    .Y ( FSM_ADDR[3] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1_HVT ctmi_4581 ( .A1 ( ctmn_3508 ) , .A2 ( BINARY_COUNTER_ADDR[3] ) , 
    .A3 ( ctmn_3509 ) , .A4 ( GRAY_COUNTER_ADDR[3] ) , .Y ( ctmn_3904 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1_HVT ctmi_4582 ( .A1 ( HFSNET_816 ) , .A2 ( ADDR[2] ) , 
    .A3 ( ctmn_3506 ) , .A4 ( LFSR_ADDR[2] ) , .A5 ( ctmn_3905 ) , 
    .Y ( FSM_ADDR[2] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1_HVT ctmi_4583 ( .A1 ( ctmn_3508 ) , .A2 ( BINARY_COUNTER_ADDR[2] ) , 
    .A3 ( ctmn_3509 ) , .A4 ( GRAY_COUNTER_ADDR[2] ) , .Y ( ctmn_3905 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1_HVT ctmi_4584 ( .A1 ( HFSNET_816 ) , .A2 ( ADDR[1] ) , 
    .A3 ( ctmn_3506 ) , .A4 ( LFSR_ADDR[1] ) , .A5 ( ctmn_3906 ) , 
    .Y ( FSM_ADDR[1] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1_HVT ctmi_4585 ( .A1 ( ctmn_3508 ) , .A2 ( BINARY_COUNTER_ADDR[1] ) , 
    .A3 ( ctmn_3509 ) , .A4 ( GRAY_COUNTER_ADDR[1] ) , .Y ( ctmn_3906 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1_HVT ctmi_4586 ( .A1 ( HFSNET_816 ) , .A2 ( ADDR[0] ) , 
    .A3 ( ctmn_3506 ) , .A4 ( LFSR_ADDR[0] ) , .A5 ( ctmn_3907 ) , 
    .Y ( FSM_ADDR[0] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1_HVT ctmi_4587 ( .A1 ( ctmn_3508 ) , .A2 ( BINARY_COUNTER_ADDR[0] ) , 
    .A3 ( ctmn_3509 ) , .A4 ( \UGRAY_COUNTER_16B/binary [1] ) , 
    .Y ( ctmn_3907 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
OA221X1_HVT ctmi_4588 ( .A1 ( ctmn_3921 ) , .A2 ( ctmn_3922 ) , 
    .A3 ( ctmn_3921 ) , .A4 ( BINARY_COUNTER_ADDR[15] ) , .A5 ( HFSNET_806 ) , 
    .Y ( \UBINARY_COUNTER_16B/N1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND4X1_HVT ctmi_4589 ( .A1 ( ctmn_3908 ) , .A2 ( BINARY_COUNTER_ADDR[13] ) , 
    .A3 ( BINARY_COUNTER_ADDR[14] ) , .A4 ( phfnn_46 ) , .Y ( ctmn_3921 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0_HVT phfnr_buf_252 ( .A ( ctmn_3909 ) , .Y ( phfnn_27 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NAND3X0_HVT ctmi_4591 ( .A1 ( BINARY_COUNTER_ADDR[11] ) , 
    .A2 ( BINARY_COUNTER_ADDR[12] ) , .A3 ( phfnn_45 ) , .Y ( ctmn_3919 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND3X0_HVT ctmi_4592 ( .A1 ( BINARY_COUNTER_ADDR[10] ) , 
    .A2 ( BINARY_COUNTER_ADDR[9] ) , .A3 ( phfnn_42 ) , .Y ( ctmn_3917 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND3X0_HVT ctmi_4593 ( .A1 ( BINARY_COUNTER_ADDR[8] ) , 
    .A2 ( BINARY_COUNTER_ADDR[7] ) , .A3 ( phfnn_39 ) , .Y ( ctmn_3915 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND3X0_HVT ctmi_4594 ( .A1 ( BINARY_COUNTER_ADDR[6] ) , 
    .A2 ( BINARY_COUNTER_ADDR[5] ) , .A3 ( phfnn_30 ) , .Y ( ctmn_3913 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND3X0_HVT ctmi_4595 ( .A1 ( BINARY_COUNTER_ADDR[4] ) , 
    .A2 ( BINARY_COUNTER_ADDR[3] ) , .A3 ( phfnn_27 ) , .Y ( ctmn_3911 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X0_HVT ctmi_4596 ( .A1 ( BINARY_COUNTER_ADDR[1] ) , 
    .A2 ( BINARY_COUNTER_ADDR[2] ) , .Y ( ctmn_3909 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX0_HVT phfnr_buf_253 ( .A ( ctmn_3926 ) , .Y ( phfnn_28 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX0_HVT phfnr_buf_255 ( .A ( ctmn_3911 ) , .Y ( phfnn_30 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX0_HVT phfnr_buf_264 ( .A ( ctmn_3913 ) , .Y ( phfnn_39 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX0_HVT phfnr_buf_267 ( .A ( ctmn_3915 ) , .Y ( phfnn_42 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX0_HVT phfnr_buf_270 ( .A ( ctmn_3917 ) , .Y ( phfnn_45 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX0_HVT phfnr_buf_271 ( .A ( ctmn_3919 ) , .Y ( phfnn_46 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NAND3X0_HVT ctmi_4603 ( .A1 ( BINARY_COUNTER_ADDR[13] ) , 
    .A2 ( BINARY_COUNTER_ADDR[14] ) , .A3 ( phfnn_46 ) , .Y ( ctmn_3922 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
OA221X1_HVT ctmi_4604 ( .A1 ( phfnn_48 ) , .A2 ( ctmn_3924 ) , 
    .A3 ( ctmn_3925 ) , .A4 ( BINARY_COUNTER_ADDR[14] ) , .A5 ( HFSNET_806 ) , 
    .Y ( \UBINARY_COUNTER_16B/N2 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0_HVT phfnr_buf_254 ( .A ( ctmn_3938 ) , .Y ( phfnn_29 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX0_HVT phfnr_buf_256 ( .A ( ctmn_3928 ) , .Y ( phfnn_31 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX0_HVT phfnr_buf_257 ( .A ( ctmn_3511 ) , .Y ( phfnn_32 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
OA221X1_HVT ctmi_334 ( .A1 ( ctmn_3938 ) , .A2 ( ctmn_3938 ) , 
    .A3 ( \UGRAY_COUNTER_16B/binary [4] ) , .A4 ( ctmn_3937 ) , 
    .A5 ( BIST_MODE[1] ) , .Y ( \UGRAY_COUNTER_16B/N12 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AOI221X1_HVT ctmi_323 ( .A1 ( ctmn_3935 ) , .A2 ( ctmn_3935 ) , 
    .A3 ( phfnn_26 ) , .A4 ( ctmn_3917 ) , .A5 ( HFSNET_805 ) , 
    .Y ( \UBINARY_COUNTER_16B/N5 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0_HVT phfnr_buf_258 ( .A ( ctmn_3513 ) , .Y ( phfnn_33 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NAND3X0_HVT ctmi_4611 ( .A1 ( BINARY_COUNTER_ADDR[9] ) , 
    .A2 ( BINARY_COUNTER_ADDR[8] ) , .A3 ( phfnn_40 ) , .Y ( ctmn_3932 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND3X0_HVT ctmi_4612 ( .A1 ( BINARY_COUNTER_ADDR[7] ) , 
    .A2 ( BINARY_COUNTER_ADDR[6] ) , .A3 ( phfnn_31 ) , .Y ( ctmn_3930 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND3X0_HVT ctmi_4613 ( .A1 ( BINARY_COUNTER_ADDR[5] ) , 
    .A2 ( BINARY_COUNTER_ADDR[4] ) , .A3 ( phfnn_28 ) , .Y ( ctmn_3928 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND3X0_HVT ctmi_4614 ( .A1 ( BINARY_COUNTER_ADDR[1] ) , 
    .A2 ( BINARY_COUNTER_ADDR[3] ) , .A3 ( BINARY_COUNTER_ADDR[2] ) , 
    .Y ( ctmn_3926 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0_HVT phfnr_buf_259 ( .A ( ctmn_3516 ) , .Y ( phfnn_34 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX0_HVT phfnr_buf_260 ( .A ( ctmn_3518 ) , .Y ( phfnn_35 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX0_HVT phfnr_buf_265 ( .A ( ctmn_3930 ) , .Y ( phfnn_40 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX0_HVT phfnr_buf_268 ( .A ( ctmn_3932 ) , .Y ( phfnn_43 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NBUFFX2_HVT HFSBUF_157_1130 ( .A ( HFSNET_788 ) , .Y ( HFSNET_787 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0_HVT phfnr_buf_262 ( .A ( ctmn_3525 ) , .Y ( phfnn_37 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
OA221X1_HVT ctmi_326 ( .A1 ( HFSNET_807 ) , .A2 ( HFSNET_807 ) , 
    .A3 ( phfnn_40 ) , .A4 ( BINARY_COUNTER_ADDR[8] ) , .A5 ( ctmn_3915 ) , 
    .Y ( \UBINARY_COUNTER_16B/N8 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
OA221X1_HVT ctmi_329 ( .A1 ( BIST_MODE[2] ) , .A2 ( BIST_MODE[2] ) , 
    .A3 ( phfnn_30 ) , .A4 ( BINARY_COUNTER_ADDR[5] ) , .A5 ( ctmn_3928 ) , 
    .Y ( \UBINARY_COUNTER_16B/N11 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
OA221X1_HVT ctmi_330 ( .A1 ( BIST_MODE[2] ) , .A2 ( BIST_MODE[2] ) , 
    .A3 ( phfnn_28 ) , .A4 ( BINARY_COUNTER_ADDR[4] ) , .A5 ( ctmn_3911 ) , 
    .Y ( \UBINARY_COUNTER_16B/N12 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
OA221X1_HVT ctmi_331 ( .A1 ( BIST_MODE[2] ) , .A2 ( BIST_MODE[2] ) , 
    .A3 ( phfnn_27 ) , .A4 ( BINARY_COUNTER_ADDR[3] ) , .A5 ( ctmn_3926 ) , 
    .Y ( \UBINARY_COUNTER_16B/N13 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
OA221X1_HVT ctmi_332 ( .A1 ( BIST_MODE[2] ) , .A2 ( BIST_MODE[2] ) , 
    .A3 ( BINARY_COUNTER_ADDR[2] ) , .A4 ( BINARY_COUNTER_ADDR[1] ) , 
    .A5 ( ctmn_3909 ) , .Y ( \UBINARY_COUNTER_16B/N14 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
OA221X1_HVT ctmi_333 ( .A1 ( HFSNET_806 ) , .A2 ( HFSNET_806 ) , 
    .A3 ( phfnn_46 ) , .A4 ( BINARY_COUNTER_ADDR[13] ) , .A5 ( phfnn_48 ) , 
    .Y ( \UBINARY_COUNTER_16B/N3 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
OA221X1_HVT ctmi_4627 ( .A1 ( ctmn_3947 ) , .A2 ( ctmn_3887 ) , 
    .A3 ( phfnn_47 ) , .A4 ( \UGRAY_COUNTER_16B/binary [14] ) , 
    .A5 ( HFSNET_813 ) , .Y ( \UGRAY_COUNTER_16B/N2 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
OR2X1_HVT ctmi_4628 ( .A1 ( ctmn_3936 ) , .A2 ( ctmn_3946 ) , 
    .Y ( ctmn_3947 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0_HVT phfnr_buf_263 ( .A ( ctmn_3940 ) , .Y ( phfnn_38 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NAND3X1_HVT ctmi_4630 ( .A1 ( \UGRAY_COUNTER_16B/binary [11] ) , 
    .A2 ( \UGRAY_COUNTER_16B/binary [12] ) , .A3 ( phfnn_44 ) , 
    .Y ( ctmn_3946 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND3X0_HVT ctmi_4631 ( .A1 ( \UGRAY_COUNTER_16B/binary [9] ) , 
    .A2 ( \UGRAY_COUNTER_16B/binary [10] ) , .A3 ( phfnn_41 ) , 
    .Y ( ctmn_3944 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND3X0_HVT ctmi_4632 ( .A1 ( \UGRAY_COUNTER_16B/binary [7] ) , 
    .A2 ( \UGRAY_COUNTER_16B/binary [8] ) , .A3 ( phfnn_38 ) , 
    .Y ( ctmn_3942 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND3X0_HVT ctmi_4633 ( .A1 ( \UGRAY_COUNTER_16B/binary [5] ) , 
    .A2 ( \UGRAY_COUNTER_16B/binary [6] ) , .A3 ( phfnn_29 ) , 
    .Y ( ctmn_3940 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NAND2X0_HVT ctmi_4634 ( .A1 ( \UGRAY_COUNTER_16B/binary [4] ) , 
    .A2 ( ctmn_3937 ) , .Y ( ctmn_3938 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND3X1_HVT ctmi_4635 ( .A1 ( \UGRAY_COUNTER_16B/binary [2] ) , 
    .A2 ( \UGRAY_COUNTER_16B/binary [3] ) , 
    .A3 ( \UGRAY_COUNTER_16B/binary [1] ) , .Y ( ctmn_3937 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX0_HVT phfnr_buf_266 ( .A ( ctmn_3942 ) , .Y ( phfnn_41 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX0_HVT phfnr_buf_269 ( .A ( ctmn_3944 ) , .Y ( phfnn_44 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX0_HVT phfnr_buf_272 ( .A ( ctmn_3947 ) , .Y ( phfnn_47 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO221X1_HVT ctmi_274 ( .A1 ( ctmn_3598 ) , .A2 ( HFSNET_556 ) , 
    .A3 ( ZBUF_269_15 ) , .A4 ( copt_gre_net_1329 ) , .A5 ( ctmn_49_CDR1 ) , 
    .Y ( ctmn_3859_CDR1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
OR3X1_HVT ctmi_275 ( .A1 ( ctmn_3856_CDR1 ) , .A2 ( copt_gre_net_340 ) , 
    .A3 ( ctmn_3852_CDR1 ) , .Y ( ctmn_49_CDR1 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
OA221X1_HVT ctmi_336 ( .A1 ( HFSNET_813 ) , .A2 ( HFSNET_813 ) , 
    .A3 ( ctmn_3950 ) , .A4 ( \UGRAY_COUNTER_16B/binary [10] ) , 
    .A5 ( ctmn_3944 ) , .Y ( \UGRAY_COUNTER_16B/N6 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AND2X1_HVT ctmi_4642 ( .A1 ( \UGRAY_COUNTER_16B/binary [11] ) , 
    .A2 ( phfnn_44 ) , .Y ( ctmn_3949 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
OA221X1_HVT ctmi_337 ( .A1 ( HFSNET_813 ) , .A2 ( HFSNET_813 ) , 
    .A3 ( ctmn_3951 ) , .A4 ( \UGRAY_COUNTER_16B/binary [8] ) , 
    .A5 ( ctmn_3942 ) , .Y ( \UGRAY_COUNTER_16B/N8 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AND2X1_HVT ctmi_4644 ( .A1 ( \UGRAY_COUNTER_16B/binary [9] ) , 
    .A2 ( phfnn_41 ) , .Y ( ctmn_3950 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
OA221X1_HVT ctmi_338 ( .A1 ( BIST_MODE[1] ) , .A2 ( BIST_MODE[1] ) , 
    .A3 ( ctmn_3952 ) , .A4 ( \UGRAY_COUNTER_16B/binary [6] ) , 
    .A5 ( ctmn_3940 ) , .Y ( \UGRAY_COUNTER_16B/N10 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AND2X1_HVT ctmi_4646 ( .A1 ( \UGRAY_COUNTER_16B/binary [7] ) , 
    .A2 ( phfnn_38 ) , .Y ( ctmn_3951 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
OA221X1_HVT ctmi_339 ( .A1 ( ctmn_3984 ) , 
    .A2 ( \UGRAY_COUNTER_16B/binary [1] ) , .A3 ( ctmn_3984 ) , 
    .A4 ( ctmn_3985 ) , .A5 ( BIST_MODE[1] ) , .Y ( \UGRAY_COUNTER_16B/N31 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1_HVT ctmi_4648 ( .A1 ( \UGRAY_COUNTER_16B/binary [5] ) , 
    .A2 ( phfnn_29 ) , .Y ( ctmn_3952 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
OA221X1_HVT ctmi_335 ( .A1 ( HFSNET_813 ) , .A2 ( HFSNET_813 ) , 
    .A3 ( ctmn_3949 ) , .A4 ( \UGRAY_COUNTER_16B/binary [12] ) , 
    .A5 ( ctmn_3946 ) , .Y ( \UGRAY_COUNTER_16B/N4 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AND2X1_HVT ctmi_4650 ( .A1 ( ctmn_3528 ) , .A2 ( ZBUF_397_178 ) , 
    .Y ( SEQMAP_NET_821 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X2_HVT ctmi_276 ( .A1 ( ctmn_3646 ) , .A2 ( HFSNET_1124 ) , 
    .A3 ( ctmn_3629 ) , .A4 ( copt_gre_net_1002 ) , .A5 ( ctmn_50_CDR1 ) , 
    .Y ( ctmn_3867_CDR1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
OR3X2_HVT ctmi_277 ( .A1 ( ctmn_3864_CDR1 ) , .A2 ( HFSNET_744 ) , 
    .A3 ( ctmn_3860_CDR1 ) , .Y ( ctmn_50_CDR1 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO221X2_HVT ctmi_278 ( .A1 ( ZBUF_241_55 ) , .A2 ( HFSNET_547 ) , 
    .A3 ( copt_gre_net_456 ) , .A4 ( \USRAM/guide_buf_499 ) , 
    .A5 ( ctmn_51_CDR1 ) , .Y ( ctmn_3883_CDR1 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
OR3X1_HVT ctmi_279 ( .A1 ( ctmn_3880_CDR1 ) , .A2 ( HFSNET_749 ) , 
    .A3 ( HFSNET_747 ) , .Y ( ctmn_51_CDR1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
OAI22X1_HVT ctmi_4493 ( .A1 ( \UFSM/N257 ) , .A2 ( CSB ) , .A3 ( BISR_EN ) , 
    .A4 ( \UFSM/CSB_DELAY ) , .Y ( ctmn_3889 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X2_HVT ctmi_280 ( .A1 ( copt_gre_net_1005 ) , .A2 ( ctmn_3562 ) , 
    .A3 ( ctmn_3598 ) , .A4 ( HFSNET_555 ) , .A5 ( ctmn_52_CDR1 ) , 
    .Y ( ctmn_3826_CDR1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO21X1_HVT ctmi_4005 ( .A1 ( HFSNET_811 ) , .A2 ( HFSNET_805 ) , 
    .A3 ( TOGGLED_DATA[7] ) , .Y ( N135 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX2_HVT HFSINV_1300_1154 ( .A ( BIST_MODE[1] ) , .Y ( HFSNET_811 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX2_HVT HFSINV_1311_1148 ( .A ( BIST_MODE[2] ) , .Y ( HFSNET_805 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1_HVT ctmi_4011 ( .A1 ( ctmn_3511 ) , .A2 ( ctmn_3513 ) , 
    .Y ( ctmn_3514 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1_HVT ctmi_4012 ( .A1 ( HFSNET_814 ) , .A2 ( ADDR[11] ) , 
    .A3 ( LFSR_ADDR[11] ) , .A4 ( ctmn_3506 ) , .A5 ( ctmn_3510 ) , 
    .Y ( ctmn_3511 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
OR3X1_HVT ctmi_281 ( .A1 ( ctmn_3823_CDR1 ) , .A2 ( HFSNET_733 ) , 
    .A3 ( ctmn_3819_CDR1 ) , .Y ( ctmn_52_CDR1 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AND2X4_HVT ctmi_4014 ( .A1 ( ctmn_3505 ) , .A2 ( BIST_EN ) , 
    .Y ( ctmn_3506 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND3X1_HVT ctmi_4015 ( .A1 ( HFSNET_811 ) , .A2 ( HFSNET_805 ) , 
    .A3 ( BIST_MODE[0] ) , .Y ( ctmn_3505 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1_HVT ctmi_4016 ( .A1 ( BINARY_COUNTER_ADDR[11] ) , .A2 ( ctmn_3508 ) , 
    .A3 ( GRAY_COUNTER_ADDR[11] ) , .A4 ( ctmn_3509 ) , .Y ( ctmn_3510 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND4X4_HVT ctmi_4017 ( .A1 ( HFSNET_811 ) , .A2 ( HFSNET_802 ) , 
    .A3 ( HFSNET_807 ) , .A4 ( BIST_EN ) , .Y ( ctmn_3508 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
INVX0_HVT HFSINV_110_1145 ( .A ( BIST_MODE[0] ) , .Y ( HFSNET_802 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND4X4_HVT ctmi_4019 ( .A1 ( HFSNET_802 ) , .A2 ( HFSNET_805 ) , 
    .A3 ( BIST_MODE[1] ) , .A4 ( BIST_EN ) , .Y ( ctmn_3509 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO221X1_HVT ctmi_4020 ( .A1 ( HFSNET_814 ) , .A2 ( ADDR[12] ) , 
    .A3 ( LFSR_ADDR[12] ) , .A4 ( ctmn_3506 ) , .A5 ( ctmn_3512 ) , 
    .Y ( ctmn_3513 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1_HVT ctmi_4021 ( .A1 ( BINARY_COUNTER_ADDR[12] ) , .A2 ( ctmn_3508 ) , 
    .A3 ( GRAY_COUNTER_ADDR[12] ) , .A4 ( ctmn_3509 ) , .Y ( ctmn_3512 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1_HVT ctmi_4022 ( .A1 ( ctmn_3516 ) , .A2 ( phfnn_35 ) , 
    .Y ( ctmn_3520 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1_HVT ctmi_4023 ( .A1 ( HFSNET_814 ) , .A2 ( ADDR[13] ) , 
    .A3 ( ctmn_3506 ) , .A4 ( LFSR_ADDR[13] ) , .A5 ( ctmn_3515 ) , 
    .Y ( ctmn_3516 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1_HVT ctmi_4024 ( .A1 ( ctmn_3508 ) , .A2 ( BINARY_COUNTER_ADDR[13] ) , 
    .A3 ( ctmn_3509 ) , .A4 ( GRAY_COUNTER_ADDR[13] ) , .Y ( ctmn_3515 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1_HVT ctmi_4025 ( .A1 ( HFSNET_814 ) , .A2 ( ADDR[10] ) , 
    .A3 ( LFSR_ADDR[10] ) , .A4 ( ctmn_3506 ) , .A5 ( ctmn_3517 ) , 
    .Y ( ctmn_3518 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1_HVT ctmi_4026 ( .A1 ( ctmn_3508 ) , .A2 ( BINARY_COUNTER_ADDR[10] ) , 
    .A3 ( ctmn_3509 ) , .A4 ( GRAY_COUNTER_ADDR[10] ) , .Y ( ctmn_3517 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X2_HVT ctmi_282 ( .A1 ( ctmn_3646 ) , .A2 ( HFSNET_1123 ) , 
    .A3 ( ctmn_3629 ) , .A4 ( copt_gre_net_1349 ) , .A5 ( ctmn_53_CDR1 ) , 
    .Y ( ctmn_3834_CDR1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X4_HVT ctmi_4028 ( .A1 ( HFSNET_789 ) , .A2 ( ctmn_3527 ) , 
    .Y ( ctmn_3528 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1_HVT ctmi_4029 ( .A1 ( HFSNET_814 ) , .A2 ( ADDR[14] ) , 
    .A3 ( ctmn_3506 ) , .A4 ( LFSR_ADDR[14] ) , .A5 ( ctmn_3522 ) , 
    .Y ( ctmn_3523 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1_HVT ctmi_4030 ( .A1 ( ctmn_3508 ) , .A2 ( BINARY_COUNTER_ADDR[14] ) , 
    .A3 ( ctmn_3509 ) , .A4 ( GRAY_COUNTER_ADDR[14] ) , .Y ( ctmn_3522 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X2_HVT ctmi_4031 ( .A1 ( ctmn_3525 ) , .A2 ( ctmn_3526 ) , 
    .Y ( ctmn_3527 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X2_HVT ctmi_4032 ( .A1 ( HFSNET_814 ) , .A2 ( ADDR[15] ) , 
    .A3 ( ctmn_3506 ) , .A4 ( LFSR_ADDR[15] ) , .A5 ( ctmn_3524 ) , 
    .Y ( ctmn_3525 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1_HVT ctmi_4033 ( .A1 ( ctmn_3508 ) , .A2 ( BINARY_COUNTER_ADDR[15] ) , 
    .A3 ( ctmn_3509 ) , .A4 ( GRAY_COUNTER_ADDR[15] ) , .Y ( ctmn_3524 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
OAI22X1_HVT ctmi_4034 ( .A1 ( \UFSM/N257 ) , .A2 ( OEB ) , .A3 ( BISR_EN ) , 
    .A4 ( \UFSM/OEB_DELAY ) , .Y ( ctmn_3526 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X4_HVT ctmi_4036 ( .A1 ( ctmn_3530 ) , .A2 ( ctmn_3531 ) , 
    .Y ( ctmn_3532 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1_HVT ctmi_4037 ( .A1 ( ctmn_3513 ) , .A2 ( phfnn_32 ) , 
    .Y ( ctmn_3530 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
OR3X2_HVT ctmi_283 ( .A1 ( ctmn_3831_CDR1 ) , .A2 ( HFSNET_735 ) , 
    .A3 ( ctmn_3827_CDR1 ) , .Y ( ctmn_53_CDR1 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AND2X1_HVT ctmi_4039 ( .A1 ( ctmn_3518 ) , .A2 ( ctmn_3516 ) , 
    .Y ( ctmn_3531 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X2_HVT ctmi_4041 ( .A1 ( ctmn_3520 ) , .A2 ( ctmn_3530 ) , 
    .Y ( ctmn_3533 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X2_HVT ctmi_4043 ( .A1 ( ctmn_3531 ) , .A2 ( ctmn_3535 ) , 
    .Y ( ctmn_3536 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1_HVT ctmi_4044 ( .A1 ( ctmn_3511 ) , .A2 ( phfnn_33 ) , 
    .Y ( ctmn_3535 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X2_HVT ctmi_284 ( .A1 ( ZBUF_241_55 ) , .A2 ( copt_gre_net_1026 ) , 
    .A3 ( copt_gre_net_456 ) , .A4 ( \USRAM/guide_buf_498 ) , 
    .A5 ( ctmn_54_CDR1 ) , .Y ( ctmn_3850_CDR1 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AND2X1_HVT ctmi_4047 ( .A1 ( ctmn_3520 ) , .A2 ( ctmn_3535 ) , 
    .Y ( ctmn_3537 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND3X4_HVT ctmi_4049 ( .A1 ( phfnn_32 ) , .A2 ( phfnn_33 ) , 
    .A3 ( ctmn_3531 ) , .Y ( ctmn_3538 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND3X4_HVT ctmi_4051 ( .A1 ( phfnn_32 ) , .A2 ( phfnn_33 ) , 
    .A3 ( ctmn_3520 ) , .Y ( ctmn_3539 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X4_HVT ctmi_4053 ( .A1 ( ctmn_3514 ) , .A2 ( ctmn_3541 ) , 
    .Y ( ctmn_3542 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1_HVT ctmi_4054 ( .A1 ( ctmn_3518 ) , .A2 ( phfnn_34 ) , 
    .Y ( ctmn_3541 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
OR3X1_HVT ctmi_285 ( .A1 ( ctmn_3847_CDR1 ) , .A2 ( HFSNET_740 ) , 
    .A3 ( HFSNET_738 ) , .Y ( ctmn_54_CDR1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X1_HVT ctmi_4057 ( .A1 ( ctmn_3514 ) , .A2 ( ctmn_3543 ) , 
    .Y ( ctmn_3544 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1_HVT ctmi_286 ( .A1 ( copt_gre_net_1333 ) , .A2 ( ctmn_3562 ) , 
    .A3 ( ropt_net_1519 ) , .A4 ( copt_gre_net_997 ) , .A5 ( ctmn_55_CDR1 ) , 
    .Y ( ctmn_3793_CDR1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X4_HVT ctmi_4060 ( .A1 ( ctmn_3530 ) , .A2 ( ctmn_3541 ) , 
    .Y ( ctmn_3545 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X2_HVT ctmi_4062 ( .A1 ( ctmn_3530 ) , .A2 ( ctmn_3543 ) , 
    .Y ( ctmn_3546 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X4_HVT ctmi_4064 ( .A1 ( ctmn_3535 ) , .A2 ( ctmn_3541 ) , 
    .Y ( ctmn_3547 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X2_HVT ctmi_4066 ( .A1 ( ctmn_3535 ) , .A2 ( ctmn_3543 ) , 
    .Y ( ctmn_3548 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND3X1_HVT ctmi_4068 ( .A1 ( phfnn_32 ) , .A2 ( phfnn_33 ) , 
    .A3 ( ctmn_3541 ) , .Y ( ctmn_3549 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND3X1_HVT ctmi_4070 ( .A1 ( phfnn_32 ) , .A2 ( phfnn_33 ) , 
    .A3 ( ctmn_3543 ) , .Y ( ctmn_3550 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X4_HVT ctmi_4072 ( .A1 ( ctmn_3514 ) , .A2 ( ctmn_3531 ) , 
    .Y ( ctmn_3551 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND2X4_HVT ctmi_4073 ( .A1 ( ctmn_3527 ) , .A2 ( HFSNET_787 ) , 
    .Y ( ctmn_3553 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
OR3X1_HVT ctmi_287 ( .A1 ( ctmn_3790_CDR1 ) , .A2 ( HFSNET_724 ) , 
    .A3 ( ctmn_3786_CDR1 ) , .Y ( ctmn_55_CDR1 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO221X1_HVT ctmi_288 ( .A1 ( ctmn_3646 ) , .A2 ( HFSNET_1122 ) , 
    .A3 ( ctmn_3629 ) , .A4 ( copt_gre_net_1327 ) , .A5 ( ctmn_56_CDR1 ) , 
    .Y ( ctmn_3801_CDR1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
OR3X2_HVT ctmi_319 ( .A1 ( ctmn_3597_CDR1 ) , .A2 ( HFSNET_681 ) , 
    .A3 ( ctmn_3584_CDR1 ) , .Y ( ctmn_71_CDR1 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO221X1_HVT ctmi_4134 ( .A1 ( HFSNET_1402 ) , .A2 ( copt_gre_net_865 ) , 
    .A3 ( ropt_net_1519 ) , .A4 ( copt_gre_net_832 ) , .A5 ( HFSNET_678 ) , 
    .Y ( ctmn_3573_CDR1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
OR3X2_HVT ctmi_289 ( .A1 ( ctmn_3798_CDR1 ) , .A2 ( HFSNET_726 ) , 
    .A3 ( ctmn_3794_CDR1 ) , .Y ( ctmn_56_CDR1 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO221X1_HVT ctmi_290 ( .A1 ( ZBUF_241_55 ) , .A2 ( HFSNET_545 ) , 
    .A3 ( copt_gre_net_456 ) , .A4 ( \USRAM/guide_buf_497 ) , 
    .A5 ( ctmn_57_CDR1 ) , .Y ( ctmn_3817_CDR1 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO221X1_HVT ctmi_4137 ( .A1 ( ZBUF_2_48 ) , .A2 ( ctmn_3564 ) , 
    .A3 ( ZBUF_251_12 ) , .A4 ( ZBUF_100_39 ) , .A5 ( ctmn_3571_CDR1 ) , 
    .Y ( ctmn_3572_CDR1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
OR3X1_HVT ctmi_291 ( .A1 ( ctmn_3814_CDR1 ) , .A2 ( HFSNET_731 ) , 
    .A3 ( HFSNET_729 ) , .Y ( ctmn_57_CDR1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1_HVT ctmi_292 ( .A1 ( copt_gre_net_973 ) , .A2 ( ctmn_3562 ) , 
    .A3 ( ropt_net_1519 ) , .A4 ( ZBUF_61_146 ) , .A5 ( ctmn_58_CDR1 ) , 
    .Y ( ctmn_3760_CDR1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1_HVT ctmi_4140 ( .A1 ( copt_gre_net_608 ) , .A2 ( copt_gre_net_463 ) , 
    .A3 ( ctmn_3641 ) , .A4 ( HFSNET_423 ) , .A5 ( ctmn_3570_CDR1 ) , 
    .Y ( ctmn_3571_CDR1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
OR3X1_HVT ctmi_293 ( .A1 ( ctmn_3757_CDR1 ) , .A2 ( HFSNET_715 ) , 
    .A3 ( ctmn_3753_CDR1 ) , .Y ( ctmn_58_CDR1 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO221X1_HVT ctmi_294 ( .A1 ( ctmn_3646 ) , .A2 ( copt_gre_net_1431 ) , 
    .A3 ( ctmn_3629 ) , .A4 ( copt_gre_net_1331 ) , .A5 ( ctmn_59_CDR1 ) , 
    .Y ( ctmn_3768_CDR1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1_HVT ctmi_4143 ( .A1 ( copt_gre_net_553 ) , .A2 ( ctmn_3566 ) , 
    .A3 ( ZBUF_212_0 ) , .A4 ( copt_gre_net_1253 ) , .Y ( ctmn_3570_CDR1 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
OR3X2_HVT ctmi_295 ( .A1 ( ctmn_3765_CDR1 ) , .A2 ( HFSNET_717 ) , 
    .A3 ( ctmn_3761_CDR1 ) , .Y ( ctmn_59_CDR1 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO221X1_HVT ctmi_296 ( .A1 ( ZBUF_241_55 ) , .A2 ( HFSNET_544 ) , 
    .A3 ( copt_gre_net_456 ) , .A4 ( \USRAM/guide_buf_496 ) , 
    .A5 ( ctmn_60_CDR1 ) , .Y ( ctmn_3784_CDR1 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
OR3X1_HVT ctmi_297 ( .A1 ( ctmn_3781_CDR1 ) , .A2 ( HFSNET_722 ) , 
    .A3 ( HFSNET_720 ) , .Y ( ctmn_60_CDR1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO222X2_HVT ctmi_4147 ( .A1 ( copt_gre_net_726 ) , .A2 ( ZBUF_94_7 ) , 
    .A3 ( ctmn_3585 ) , .A4 ( copt_gre_net_694 ) , 
    .A5 ( \USRAM/guide_buf_422 ) , .A6 ( copt_gre_net_1464 ) , 
    .Y ( ctmn_3578_CDR1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X2_HVT ctmi_298 ( .A1 ( ZBUF_142_144 ) , .A2 ( ctmn_3562 ) , 
    .A3 ( HFSNET_1402 ) , .A4 ( copt_gre_net_353 ) , .A5 ( ctmn_61_CDR1 ) , 
    .Y ( ctmn_3727_CDR1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
OR3X1_HVT ctmi_299 ( .A1 ( ctmn_3724_CDR1 ) , .A2 ( HFSNET_706 ) , 
    .A3 ( ctmn_3720_CDR1 ) , .Y ( ctmn_61_CDR1 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO221X2_HVT ctmi_300 ( .A1 ( ctmn_3646 ) , .A2 ( HFSNET_1121 ) , 
    .A3 ( ctmn_3629 ) , .A4 ( HFSNET_452 ) , .A5 ( copt_gre_net_363 ) , 
    .Y ( ctmn_3735_CDR1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1_HVT ctmi_320 ( .A1 ( copt_gre_net_456 ) , 
    .A2 ( \USRAM/guide_buf_492 ) , .A3 ( ZBUF_241_55 ) , .A4 ( HFSNET_540 ) , 
    .A5 ( ctmn_72_CDR1 ) , .Y ( ctmn_3652_CDR1 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO222X1_HVT ctmi_4152 ( .A1 ( ctmn_3620 ) , .A2 ( HFSNET_394 ) , 
    .A3 ( copt_gre_net_1463 ) , .A4 ( HFSNET_339 ) , 
    .A5 ( \USRAM/guide_buf_332 ) , .A6 ( copt_gre_net_1465 ) , 
    .Y ( ctmn_3584_CDR1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
OR3X1_HVT ctmi_301 ( .A1 ( ctmn_3732_CDR1 ) , .A2 ( HFSNET_708 ) , 
    .A3 ( ctmn_3728_CDR1 ) , .Y ( ctmn_62_CDR1 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO221X2_HVT ctmi_302 ( .A1 ( ZBUF_241_55 ) , .A2 ( HFSNET_543 ) , 
    .A3 ( copt_gre_net_456 ) , .A4 ( \USRAM/guide_buf_495 ) , 
    .A5 ( ctmn_63_CDR1 ) , .Y ( ctmn_3751_CDR1 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
OR3X1_HVT ctmi_303 ( .A1 ( ctmn_3748_CDR1 ) , .A2 ( HFSNET_713 ) , 
    .A3 ( HFSNET_711 ) , .Y ( ctmn_63_CDR1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1_HVT ctmi_304 ( .A1 ( ZBUF_84_229 ) , .A2 ( ctmn_3562 ) , 
    .A3 ( ctmn_3598 ) , .A4 ( copt_gre_net_357 ) , .A5 ( ctmn_64_CDR1 ) , 
    .Y ( ctmn_3694_CDR1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
OR3X1_HVT ctmi_321 ( .A1 ( ctmn_3645_CDR1 ) , .A2 ( HFSNET_686 ) , 
    .A3 ( HFSNET_684 ) , .Y ( ctmn_72_CDR1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1_HVT ctmi_4158 ( .A1 ( copt_gre_net_454 ) , 
    .A2 ( \USRAM/guide_buf_302 ) , .A3 ( HFSNET_1363 ) , 
    .A4 ( copt_gre_net_1307 ) , .A5 ( HFSNET_680 ) , .Y ( ctmn_3597_CDR1 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
OR3X1_HVT ctmi_305 ( .A1 ( ctmn_3691_CDR1 ) , .A2 ( HFSNET_697 ) , 
    .A3 ( ctmn_3687_CDR1 ) , .Y ( ctmn_64_CDR1 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO221X2_HVT ctmi_306 ( .A1 ( ctmn_3646 ) , .A2 ( ZBUF_63_233 ) , 
    .A3 ( ctmn_3629 ) , .A4 ( copt_gre_net_1351 ) , .A5 ( ctmn_65_CDR1 ) , 
    .Y ( ctmn_3702_CDR1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1_HVT ctmi_4161 ( .A1 ( ctmn_3565 ) , .A2 ( copt_gre_net_1280 ) , 
    .A3 ( copt_gre_net_730 ) , .A4 ( HFSNET_1360 ) , .A5 ( ctmn_3595_CDR1 ) , 
    .Y ( ctmn_3596_CDR1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
OR3X2_HVT ctmi_307 ( .A1 ( ctmn_3699_CDR1 ) , .A2 ( HFSNET_699 ) , 
    .A3 ( ctmn_3695_CDR1 ) , .Y ( ctmn_65_CDR1 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO221X2_HVT ctmi_308 ( .A1 ( ZBUF_241_55 ) , .A2 ( copt_gre_net_1024 ) , 
    .A3 ( copt_gre_net_456 ) , .A4 ( \USRAM/guide_buf_494 ) , 
    .A5 ( ctmn_66_CDR1 ) , .Y ( ctmn_3718_CDR1 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO221X1_HVT ctmi_4164 ( .A1 ( ZBUF_439_0 ) , .A2 ( ZBUF_2232_276 ) , 
    .A3 ( copt_gre_net_644 ) , .A4 ( ctmn_3600 ) , .A5 ( ctmn_3594_CDR1 ) , 
    .Y ( ctmn_3595_CDR1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
OR3X1_HVT ctmi_309 ( .A1 ( ctmn_3715_CDR1 ) , .A2 ( HFSNET_704 ) , 
    .A3 ( HFSNET_702 ) , .Y ( ctmn_66_CDR1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1_HVT ctmi_310 ( .A1 ( copt_gre_net_1337 ) , .A2 ( ctmn_3562 ) , 
    .A3 ( ropt_net_1519 ) , .A4 ( copt_gre_net_1028 ) , .A5 ( ctmn_67_CDR1 ) , 
    .Y ( ctmn_3661_CDR1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1_HVT ctmi_4167 ( .A1 ( HFSNET_1358 ) , .A2 ( ropt_net_1475 ) , 
    .A3 ( copt_gre_net_597 ) , .A4 ( HFSNET_1362 ) , .Y ( ctmn_3594_CDR1 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
OR3X1_HVT ctmi_311 ( .A1 ( ctmn_3658_CDR1 ) , .A2 ( HFSNET_688 ) , 
    .A3 ( ctmn_3654_CDR1 ) , .Y ( ctmn_67_CDR1 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO221X2_HVT ctmi_312 ( .A1 ( ctmn_3646 ) , .A2 ( HFSNET_1120 ) , 
    .A3 ( ctmn_3629 ) , .A4 ( copt_gre_net_1347 ) , .A5 ( ctmn_68_CDR1 ) , 
    .Y ( ctmn_3669_CDR1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
OR3X2_HVT ctmi_313 ( .A1 ( ctmn_3666_CDR1 ) , .A2 ( HFSNET_690 ) , 
    .A3 ( ctmn_3662_CDR1 ) , .Y ( ctmn_68_CDR1 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO222X1_HVT ctmi_4171 ( .A1 ( ctmn_3612 ) , .A2 ( copt_gre_net_1288 ) , 
    .A3 ( \USRAM/guide_buf_252 ) , .A4 ( ctmn_3617 ) , .A5 ( HFSNET_762 ) , 
    .A6 ( copt_gre_net_871 ) , .Y ( ctmn_3602_CDR1 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO221X2_HVT ctmi_314 ( .A1 ( ZBUF_241_55 ) , .A2 ( HFSNET_541 ) , 
    .A3 ( copt_gre_net_456 ) , .A4 ( \USRAM/guide_buf_493 ) , 
    .A5 ( ctmn_69_CDR1 ) , .Y ( ctmn_3685_CDR1 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
OR3X1_HVT ctmi_315 ( .A1 ( ctmn_3682_CDR1 ) , .A2 ( HFSNET_695 ) , 
    .A3 ( HFSNET_693 ) , .Y ( ctmn_69_CDR1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1_HVT ctmi_316 ( .A1 ( ZBUF_56_120 ) , .A2 ( ctmn_3562 ) , 
    .A3 ( ZBUF_269_15 ) , .A4 ( copt_gre_net_1311 ) , .A5 ( ctmn_70_CDR1 ) , 
    .Y ( ctmn_3580_CDR1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
OR3X1_HVT ctmi_4175 ( .A1 ( ctmn_3616_CDR1 ) , .A2 ( HFSNET_683 ) , 
    .A3 ( ctmn_3652_CDR1 ) , .Y ( ctmn_3653_CDR1 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO221X2_HVT ctmi_4176 ( .A1 ( copt_gre_net_981 ) , .A2 ( ctmn_3607 ) , 
    .A3 ( copt_gre_net_1320 ) , .A4 ( ctmn_3605 ) , .A5 ( ctmn_3615_CDR1 ) , 
    .Y ( ctmn_3616_CDR1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
OR3X1_HVT ctmi_317 ( .A1 ( ctmn_3573_CDR1 ) , .A2 ( ZBUF_2_223 ) , 
    .A3 ( ctmn_3560_CDR1 ) , .Y ( ctmn_70_CDR1 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
OA221X1_HVT ctmi_322 ( .A1 ( ctmn_3919 ) , .A2 ( ctmn_3919 ) , 
    .A3 ( BINARY_COUNTER_ADDR[12] ) , .A4 ( ctmn_3935 ) , .A5 ( HFSNET_806 ) , 
    .Y ( \UBINARY_COUNTER_16B/N4 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X2_HVT ctmi_4179 ( .A1 ( copt_gre_net_451 ) , .A2 ( HFSNET_170 ) , 
    .A3 ( copt_gre_net_882 ) , .A4 ( HFSNET_1359 ) , .A5 ( ctmn_3614_CDR1 ) , 
    .Y ( ctmn_3615_CDR1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT HFSBUF_2_344 ( .A ( MEM_ADDR[1] ) , .Y ( HFSNET_1 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT HFSBUF_2_345 ( .A ( MEM_ADDR[2] ) , .Y ( HFSNET_2 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1_HVT ctmi_4182 ( .A1 ( ctmn_3631 ) , .A2 ( copt_gre_net_849 ) , 
    .A3 ( \USRAM/guide_buf_242 ) , .A4 ( ctmn_3636 ) , .A5 ( HFSNET_682 ) , 
    .Y ( ctmn_3614_CDR1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT HFSBUF_2_346 ( .A ( MEM_ADDR[3] ) , .Y ( HFSNET_3 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT HFSBUF_2_347 ( .A ( MEM_ADDR[4] ) , .Y ( HFSNET_4 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1_HVT ctmi_4185 ( .A1 ( copt_gre_net_1244 ) , .A2 ( ZBUF_53_65 ) , 
    .A3 ( HFSNET_250 ) , .A4 ( ctmn_3623 ) , .Y ( ctmn_3613_CDR1 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT HFSBUF_2_348 ( .A ( MEM_ADDR[5] ) , .Y ( HFSNET_5 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6330 ( .A ( copt_gre_net_462 ) , 
    .Y ( copt_gre_net_461 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1_HVT ctmi_4188 ( .A1 ( ctmn_3624 ) , .A2 ( HFSNET_1226 ) , 
    .A3 ( ZBUF_2_211 ) , .A4 ( HFSNET_1372 ) , .A5 ( ctmn_3627_CDR1 ) , 
    .Y ( ctmn_3628_CDR1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT HFSBUF_2_350 ( .A ( MEM_ADDR[7] ) , .Y ( HFSNET_7 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT HFSBUF_2_351 ( .A ( MEM_ADDR[8] ) , .Y ( HFSNET_8 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1_HVT ctmi_4191 ( .A1 ( HFSNET_1376 ) , .A2 ( HFSNET_162 ) , 
    .A3 ( copt_gre_net_853 ) , .A4 ( HFSNET_1356 ) , .A5 ( ctmn_3626_CDR1 ) , 
    .Y ( ctmn_3627_CDR1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT HFSBUF_2_352 ( .A ( MEM_ADDR[9] ) , .Y ( HFSNET_9 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT gre_a_BUF_1703_inst_6323 ( .A ( ctmn_3555 ) , 
    .Y ( gre_a_BUF_1703_292 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1_HVT ctmi_4194 ( .A1 ( HFSNET_761 ) , .A2 ( \USRAM/guide_buf_152 ) , 
    .A3 ( HFSNET_187 ) , .A4 ( HFSNET_1357 ) , .A5 ( ctmn_3625_CDR1 ) , 
    .Y ( ctmn_3626_CDR1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_17_354 ( .A ( MEM_CSB[0] ) , .Y ( HFSNET_11 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX8_HVT ZBUF_65_inst_5116 ( .A ( MEM_OEB[59] ) , .Y ( ZBUF_65_1 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1_HVT ctmi_4197 ( .A1 ( ZBUF_82_47 ) , .A2 ( ctmn_3582 ) , 
    .A3 ( HFSNET_1354 ) , .A4 ( copt_gre_net_647 ) , .Y ( ctmn_3625_CDR1 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6331 ( .A ( ZBUF_91_3 ) , 
    .Y ( copt_gre_net_462 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_44_357 ( .A ( MEM_CSB[12] ) , .Y ( HFSNET_14 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6332 ( .A ( ctmn_3568 ) , 
    .Y ( copt_gre_net_463 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO222X1_HVT ctmi_4201 ( .A1 ( copt_gre_net_1457 ) , .A2 ( HFSNET_236 ) , 
    .A3 ( ZBUF_102_73 ) , .A4 ( ropt_net_1466 ) , .A5 ( ctmn_3606 ) , 
    .A6 ( HFSNET_662 ) , .Y ( ctmn_3632_CDR1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6333 ( .A ( copt_gre_net_465 ) , 
    .Y ( copt_gre_net_464 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_79_360 ( .A ( MEM_CSB[15] ) , .Y ( HFSNET_17 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6334 ( .A ( copt_gre_net_466 ) , 
    .Y ( copt_gre_net_465 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_44_1580 ( .A ( HFSNET_28 ) , .Y ( HFSNET_1234 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_21_363 ( .A ( MEM_CSB[18] ) , .Y ( HFSNET_20 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1_HVT ctmi_4207 ( .A1 ( ctmn_3637 ) , .A2 ( HFSNET_487 ) , 
    .A3 ( ctmn_3581 ) , .A4 ( copt_gre_net_1277 ) , .A5 ( ZBUF_2_6 ) , 
    .Y ( ctmn_3645_CDR1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_2_inst_5117 ( .A ( MEM_OEB[5] ) , .Y ( ZBUF_2_3 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_17_365 ( .A ( MEM_CSB[19] ) , .Y ( HFSNET_22 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X2_HVT ctmi_4210 ( .A1 ( ctmn_3574 ) , .A2 ( copt_gre_net_601 ) , 
    .A3 ( ctmn_3610 ) , .A4 ( \USRAM/guide_buf_372 ) , 
    .A5 ( ctmn_3643_CDR1 ) , .Y ( ctmn_3644_CDR1 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NBUFFX4_HVT copt_gre_mt_inst_6335 ( .A ( MEM_OEB[16] ) , 
    .Y ( copt_gre_net_466 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6336 ( .A ( copt_gre_net_468 ) , 
    .Y ( copt_gre_net_467 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1_HVT ctmi_4213 ( .A1 ( \USRAM/guide_buf_342 ) , .A2 ( ctmn_3640 ) , 
    .A3 ( HFSNET_350 ) , .A4 ( ctmn_3592 ) , .A5 ( ctmn_3642_CDR1 ) , 
    .Y ( ctmn_3643_CDR1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_2_368 ( .A ( MEM_CSB[21] ) , .Y ( HFSNET_25 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT HFSBUF_2_369 ( .A ( MEM_CSB[24] ) , .Y ( HFSNET_26 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X2_HVT ctmi_4216 ( .A1 ( ZBUF_242_12 ) , .A2 ( copt_gre_net_536 ) , 
    .A3 ( HFSNET_496 ) , .A4 ( ZBUF_292_12 ) , .Y ( ctmn_3642_CDR1 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6337 ( .A ( copt_gre_net_469 ) , 
    .Y ( copt_gre_net_468 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_2_371 ( .A ( MEM_CSB[26] ) , .Y ( HFSNET_28 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT HFSBUF_67_372 ( .A ( MEM_CSB[27] ) , .Y ( HFSNET_29 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO222X1_HVT ctmi_4220 ( .A1 ( ZBUF_2_202 ) , .A2 ( ctmn_3648 ) , 
    .A3 ( copt_gre_net_1270 ) , .A4 ( HFSNET_1366 ) , .A5 ( HFSNET_1365 ) , 
    .A6 ( copt_gre_net_662 ) , .Y ( ctmn_3650_CDR1 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6338 ( .A ( ZBUF_2_3 ) , 
    .Y ( copt_gre_net_469 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6339 ( .A ( copt_gre_net_471 ) , 
    .Y ( copt_gre_net_470 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_2_375 ( .A ( MEM_CSB[30] ) , .Y ( HFSNET_32 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_2_376 ( .A ( MEM_CSB[33] ) , .Y ( HFSNET_33 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO222X1_HVT ctmi_4226 ( .A1 ( HFSNET_1373 ) , .A2 ( copt_gre_net_885 ) , 
    .A3 ( ctmn_3559 ) , .A4 ( \USRAM/guide_buf_503 ) , .A5 ( HFSNET_1368 ) , 
    .A6 ( ZBUF_76_104 ) , .Y ( ctmn_3654_CDR1 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NBUFFX8_HVT gre_a_BUF_4_inst_6277 ( .A ( MEM_OEB[53] ) , 
    .Y ( gre_a_BUF_4_291 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1_HVT ctmi_4228 ( .A1 ( HFSNET_1402 ) , .A2 ( copt_gre_net_333 ) , 
    .A3 ( ZBUF_269_15 ) , .A4 ( copt_gre_net_904 ) , .A5 ( ropt_net_1520 ) , 
    .Y ( ctmn_3658_CDR1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X2_HVT ctmi_4229 ( .A1 ( ZBUF_2_49 ) , .A2 ( ctmn_3564 ) , 
    .A3 ( ZBUF_251_12 ) , .A4 ( ZBUF_109_39 ) , .A5 ( ctmn_3656_CDR1 ) , 
    .Y ( ctmn_3657_CDR1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1_HVT ctmi_4230 ( .A1 ( copt_gre_net_755 ) , .A2 ( copt_gre_net_463 ) , 
    .A3 ( ctmn_3641 ) , .A4 ( HFSNET_424 ) , .A5 ( ctmn_3655_CDR1 ) , 
    .Y ( ctmn_3656_CDR1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1_HVT ctmi_4231 ( .A1 ( copt_gre_net_664 ) , .A2 ( ctmn_3566 ) , 
    .A3 ( ZBUF_212_0 ) , .A4 ( copt_gre_net_1267 ) , .Y ( ctmn_3655_CDR1 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO222X2_HVT ctmi_4232 ( .A1 ( copt_gre_net_833 ) , .A2 ( ZBUF_94_7 ) , 
    .A3 ( ctmn_3585 ) , .A4 ( copt_gre_net_869 ) , 
    .A5 ( \USRAM/guide_buf_423 ) , .A6 ( copt_gre_net_1464 ) , 
    .Y ( ctmn_3659_CDR1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_2_378 ( .A ( MEM_CSB[36] ) , .Y ( HFSNET_35 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO222X1_HVT ctmi_4234 ( .A1 ( copt_gre_net_1463 ) , .A2 ( copt_gre_net_987 ) , 
    .A3 ( HFSNET_1367 ) , .A4 ( HFSNET_395 ) , .A5 ( \USRAM/guide_buf_333 ) , 
    .A6 ( copt_gre_net_1465 ) , .Y ( ctmn_3662_CDR1 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6340 ( .A ( ZBUF_4_4 ) , 
    .Y ( copt_gre_net_471 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1_HVT ctmi_4236 ( .A1 ( copt_gre_net_454 ) , 
    .A2 ( \USRAM/guide_buf_303 ) , .A3 ( HFSNET_1363 ) , 
    .A4 ( copt_gre_net_993 ) , .A5 ( HFSNET_689 ) , .Y ( ctmn_3666_CDR1 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1_HVT ctmi_4237 ( .A1 ( ctmn_3565 ) , .A2 ( ZBUF_97_201 ) , 
    .A3 ( \USRAM/guide_buf_213 ) , .A4 ( ctmn_3623 ) , 
    .A5 ( ctmn_3664_CDR1 ) , .Y ( ctmn_3665_CDR1 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO221X1_HVT ctmi_4238 ( .A1 ( copt_gre_net_1244 ) , .A2 ( HFSNET_281 ) , 
    .A3 ( ZBUF_2_57 ) , .A4 ( HFSNET_1360 ) , .A5 ( ctmn_3663_CDR1 ) , 
    .Y ( ctmn_3664_CDR1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1_HVT ctmi_4239 ( .A1 ( ZBUF_439_0 ) , .A2 ( copt_gre_net_623 ) , 
    .A3 ( copt_gre_net_674 ) , .A4 ( HFSNET_1362 ) , .Y ( ctmn_3663_CDR1 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO222X1_HVT ctmi_4240 ( .A1 ( HFSNET_762 ) , .A2 ( copt_gre_net_956 ) , 
    .A3 ( ropt_net_1490 ) , .A4 ( ZBUF_119_16 ) , .A5 ( HFSNET_1358 ) , 
    .A6 ( copt_gre_net_942 ) , .Y ( ctmn_3667_CDR1 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
OR3X1_HVT ctmi_4241 ( .A1 ( ctmn_3673_CDR1 ) , .A2 ( ctmn_3677_CDR1 ) , 
    .A3 ( ctmn_3685_CDR1 ) , .Y ( ctmn_3686_CDR1 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO221X1_HVT ctmi_4242 ( .A1 ( copt_gre_net_1011 ) , .A2 ( ctmn_3607 ) , 
    .A3 ( ZBUF_19_122 ) , .A4 ( ctmn_3605 ) , .A5 ( ctmn_3672_CDR1 ) , 
    .Y ( ctmn_3673_CDR1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X2_HVT ctmi_4243 ( .A1 ( HFSNET_1375 ) , .A2 ( copt_gre_net_1314 ) , 
    .A3 ( copt_gre_net_995 ) , .A4 ( ctmn_3621 ) , .A5 ( ctmn_3671_CDR1 ) , 
    .Y ( ctmn_3672_CDR1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1_HVT ctmi_4244 ( .A1 ( ctmn_3631 ) , .A2 ( copt_gre_net_909 ) , 
    .A3 ( \USRAM/guide_buf_243 ) , .A4 ( ctmn_3636 ) , .A5 ( HFSNET_691 ) , 
    .Y ( ctmn_3671_CDR1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1_HVT ctmi_4245 ( .A1 ( ctmn_3612 ) , .A2 ( HFSNET_599 ) , 
    .A3 ( \USRAM/guide_buf_253 ) , .A4 ( ctmn_3617 ) , .Y ( ctmn_3670_CDR1 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X2_HVT ctmi_4246 ( .A1 ( copt_gre_net_451 ) , .A2 ( HFSNET_172 ) , 
    .A3 ( copt_gre_net_999 ) , .A4 ( HFSNET_1359 ) , .A5 ( ctmn_3676_CDR1 ) , 
    .Y ( ctmn_3677_CDR1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1_HVT ctmi_4247 ( .A1 ( HFSNET_1354 ) , .A2 ( copt_gre_net_1325 ) , 
    .A3 ( ZBUF_81_120 ) , .A4 ( ZBUF_196_4 ) , .A5 ( ctmn_3675_CDR1 ) , 
    .Y ( ctmn_3676_CDR1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1_HVT ctmi_4248 ( .A1 ( HFSNET_1376 ) , .A2 ( copt_gre_net_935 ) , 
    .A3 ( copt_gre_net_921 ) , .A4 ( HFSNET_1356 ) , .A5 ( ctmn_3674_CDR1 ) , 
    .Y ( ctmn_3675_CDR1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1_HVT ctmi_4249 ( .A1 ( copt_gre_net_328 ) , .A2 ( HFSNET_1357 ) , 
    .A3 ( HFSNET_761 ) , .A4 ( \USRAM/guide_buf_153 ) , 
    .Y ( ctmn_3674_CDR1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6341 ( .A ( copt_gre_net_473 ) , 
    .Y ( copt_gre_net_472 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO222X1_HVT ctmi_4251 ( .A1 ( ctmn_3606 ) , .A2 ( copt_gre_net_744 ) , 
    .A3 ( ZBUF_104_73 ) , .A4 ( ropt_net_1466 ) , .A5 ( copt_gre_net_1457 ) , 
    .A6 ( HFSNET_238 ) , .Y ( ctmn_3678_CDR1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_2_381 ( .A ( MEM_CSB[39] ) , .Y ( HFSNET_38 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1_HVT ctmi_4253 ( .A1 ( ctmn_3637 ) , .A2 ( HFSNET_488 ) , 
    .A3 ( ctmn_3581 ) , .A4 ( HFSNET_510 ) , .A5 ( ZBUF_2_9 ) , 
    .Y ( ctmn_3682_CDR1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X2_HVT ctmi_4254 ( .A1 ( ctmn_3574 ) , .A2 ( ZBUF_2_62 ) , 
    .A3 ( ctmn_3610 ) , .A4 ( \USRAM/guide_buf_373 ) , 
    .A5 ( ctmn_3680_CDR1 ) , .Y ( ctmn_3681_CDR1 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO221X1_HVT ctmi_4255 ( .A1 ( \USRAM/guide_buf_343 ) , .A2 ( ctmn_3640 ) , 
    .A3 ( HFSNET_351 ) , .A4 ( ctmn_3592 ) , .A5 ( ctmn_3679_CDR1 ) , 
    .Y ( ctmn_3680_CDR1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X2_HVT ctmi_4256 ( .A1 ( ZBUF_242_12 ) , .A2 ( copt_gre_net_541 ) , 
    .A3 ( \USRAM/guide_buf_543 ) , .A4 ( ZBUF_292_12 ) , 
    .Y ( ctmn_3679_CDR1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO222X1_HVT ctmi_4257 ( .A1 ( copt_gre_net_700 ) , .A2 ( ctmn_3648 ) , 
    .A3 ( copt_gre_net_736 ) , .A4 ( HFSNET_1366 ) , .A5 ( HFSNET_1365 ) , 
    .A6 ( HFSNET_370 ) , .Y ( ctmn_3683_CDR1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6342 ( .A ( copt_gre_net_474 ) , 
    .Y ( copt_gre_net_473 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO222X1_HVT ctmi_4260 ( .A1 ( HFSNET_1373 ) , .A2 ( copt_gre_net_792 ) , 
    .A3 ( ctmn_3559 ) , .A4 ( \USRAM/guide_buf_504 ) , .A5 ( ctmn_3569 ) , 
    .A6 ( HFSNET_471 ) , .Y ( ctmn_3687_CDR1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1_HVT ctmi_4262 ( .A1 ( ZBUF_269_15 ) , .A2 ( ZBUF_485_279 ) , 
    .A3 ( ropt_net_1519 ) , .A4 ( copt_gre_net_847 ) , .A5 ( HFSNET_696 ) , 
    .Y ( ctmn_3691_CDR1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X2_HVT ctmi_4263 ( .A1 ( copt_gre_net_632 ) , .A2 ( ZBUF_122_255 ) , 
    .A3 ( ZBUF_251_12 ) , .A4 ( ZBUF_86_69 ) , .A5 ( ctmn_3689_CDR1 ) , 
    .Y ( ctmn_3690_CDR1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1_HVT ctmi_4264 ( .A1 ( HFSNET_462 ) , .A2 ( copt_gre_net_463 ) , 
    .A3 ( ctmn_3641 ) , .A4 ( HFSNET_425 ) , .A5 ( ctmn_3688_CDR1 ) , 
    .Y ( ctmn_3689_CDR1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1_HVT ctmi_4265 ( .A1 ( copt_gre_net_561 ) , .A2 ( ctmn_3566 ) , 
    .A3 ( ZBUF_212_0 ) , .A4 ( copt_gre_net_1260 ) , .Y ( ctmn_3688_CDR1 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO222X2_HVT ctmi_4266 ( .A1 ( copt_gre_net_743 ) , .A2 ( ctmn_3558 ) , 
    .A3 ( ctmn_3585 ) , .A4 ( copt_gre_net_709 ) , 
    .A5 ( \USRAM/guide_buf_424 ) , .A6 ( copt_gre_net_1464 ) , 
    .Y ( ctmn_3692_CDR1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO222X1_HVT ctmi_4268 ( .A1 ( copt_gre_net_1463 ) , .A2 ( copt_gre_net_989 ) , 
    .A3 ( HFSNET_1367 ) , .A4 ( HFSNET_396 ) , .A5 ( \USRAM/guide_buf_334 ) , 
    .A6 ( copt_gre_net_1465 ) , .Y ( ctmn_3695_CDR1 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NBUFFX2_HVT HFSBUF_67_385 ( .A ( MEM_CSB[42] ) , .Y ( HFSNET_42 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1_HVT ctmi_4270 ( .A1 ( copt_gre_net_454 ) , 
    .A2 ( \USRAM/guide_buf_304 ) , .A3 ( HFSNET_1363 ) , .A4 ( HFSNET_326 ) , 
    .A5 ( HFSNET_698 ) , .Y ( ctmn_3699_CDR1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1_HVT ctmi_4271 ( .A1 ( ctmn_3565 ) , .A2 ( copt_gre_net_1295 ) , 
    .A3 ( HFSNET_252 ) , .A4 ( ctmn_3623 ) , .A5 ( ctmn_3697_CDR1 ) , 
    .Y ( ctmn_3698_CDR1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1_HVT ctmi_4272 ( .A1 ( copt_gre_net_1244 ) , .A2 ( copt_gre_net_330 ) , 
    .A3 ( ropt_net_1480 ) , .A4 ( HFSNET_1360 ) , .A5 ( ctmn_3696_CDR1 ) , 
    .Y ( ctmn_3697_CDR1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1_HVT ctmi_4273 ( .A1 ( ZBUF_439_0 ) , .A2 ( copt_gre_net_676 ) , 
    .A3 ( ZBUF_637_277 ) , .A4 ( HFSNET_1362 ) , .Y ( ctmn_3696_CDR1 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO222X1_HVT ctmi_4274 ( .A1 ( HFSNET_762 ) , .A2 ( ZBUF_2_138 ) , 
    .A3 ( copt_gre_net_892 ) , .A4 ( ZBUF_119_16 ) , .A5 ( HFSNET_1358 ) , 
    .A6 ( copt_gre_net_888 ) , .Y ( ctmn_3700_CDR1 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
OR3X1_HVT ctmi_4275 ( .A1 ( ctmn_3706_CDR1 ) , .A2 ( ctmn_3710_CDR1 ) , 
    .A3 ( ctmn_3718_CDR1 ) , .Y ( ctmn_3719_CDR1 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO221X1_HVT ctmi_4276 ( .A1 ( HFSNET_317 ) , .A2 ( ctmn_3607 ) , 
    .A3 ( ZBUF_27_146 ) , .A4 ( gre_a_BUF_78_292 ) , .A5 ( ctmn_3705_CDR1 ) , 
    .Y ( ctmn_3706_CDR1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X2_HVT ctmi_4277 ( .A1 ( HFSNET_1354 ) , .A2 ( copt_gre_net_1317 ) , 
    .A3 ( ZBUF_155_144 ) , .A4 ( ZBUF_196_4 ) , .A5 ( ctmn_3704_CDR1 ) , 
    .Y ( ctmn_3705_CDR1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1_HVT ctmi_4278 ( .A1 ( ZBUF_74_17 ) , .A2 ( copt_gre_net_927 ) , 
    .A3 ( \USRAM/guide_buf_244 ) , .A4 ( ctmn_3636 ) , .A5 ( ZBUF_2_50 ) , 
    .Y ( ctmn_3704_CDR1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1_HVT ctmi_4279 ( .A1 ( ctmn_3612 ) , .A2 ( ZBUF_105_47 ) , 
    .A3 ( \USRAM/guide_buf_254 ) , .A4 ( ctmn_3617 ) , .Y ( ctmn_3703_CDR1 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X2_HVT ctmi_4280 ( .A1 ( copt_gre_net_451 ) , .A2 ( HFSNET_173 ) , 
    .A3 ( ZBUF_2_152 ) , .A4 ( ctmn_3611 ) , .A5 ( ctmn_3709_CDR1 ) , 
    .Y ( ctmn_3710_CDR1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1_HVT ctmi_4281 ( .A1 ( ctmn_3624 ) , .A2 ( copt_gre_net_967 ) , 
    .A3 ( copt_gre_net_976 ) , .A4 ( HFSNET_1372 ) , .A5 ( ctmn_3708_CDR1 ) , 
    .Y ( ctmn_3709_CDR1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1_HVT ctmi_4282 ( .A1 ( HFSNET_1376 ) , .A2 ( copt_gre_net_931 ) , 
    .A3 ( copt_gre_net_917 ) , .A4 ( HFSNET_1356 ) , .A5 ( ctmn_3707_CDR1 ) , 
    .Y ( ctmn_3708_CDR1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1_HVT ctmi_4283 ( .A1 ( copt_gre_net_861 ) , .A2 ( HFSNET_1357 ) , 
    .A3 ( HFSNET_761 ) , .A4 ( \USRAM/guide_buf_154 ) , 
    .Y ( ctmn_3707_CDR1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_91_inst_5119 ( .A ( MEM_OEB[57] ) , .Y ( ZBUF_91_3 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO222X1_HVT ctmi_4285 ( .A1 ( ctmn_3631 ) , .A2 ( copt_gre_net_821 ) , 
    .A3 ( copt_gre_net_786 ) , .A4 ( ropt_net_1466 ) , 
    .A5 ( copt_gre_net_1457 ) , .A6 ( HFSNET_240 ) , .Y ( ctmn_3711_CDR1 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT HFSBUF_2_387 ( .A ( MEM_CSB[44] ) , .Y ( HFSNET_44 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1_HVT ctmi_4287 ( .A1 ( ctmn_3637 ) , .A2 ( HFSNET_489 ) , 
    .A3 ( ctmn_3581 ) , .A4 ( ZBUF_2_221 ) , .A5 ( ZBUF_2_8 ) , 
    .Y ( ctmn_3715_CDR1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X2_HVT ctmi_4288 ( .A1 ( ctmn_3574 ) , .A2 ( ZBUF_60_71 ) , 
    .A3 ( ctmn_3610 ) , .A4 ( \USRAM/guide_buf_374 ) , 
    .A5 ( ctmn_3713_CDR1 ) , .Y ( ctmn_3714_CDR1 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO221X1_HVT ctmi_4289 ( .A1 ( \USRAM/guide_buf_344 ) , .A2 ( ctmn_3640 ) , 
    .A3 ( copt_gre_net_320 ) , .A4 ( ctmn_3592 ) , .A5 ( ctmn_3712_CDR1 ) , 
    .Y ( ctmn_3713_CDR1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X2_HVT ctmi_4290 ( .A1 ( ZBUF_242_12 ) , .A2 ( copt_gre_net_616 ) , 
    .A3 ( HFSNET_500 ) , .A4 ( ZBUF_292_12 ) , .Y ( ctmn_3712_CDR1 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO222X1_HVT ctmi_4291 ( .A1 ( copt_gre_net_783 ) , .A2 ( ctmn_3648 ) , 
    .A3 ( copt_gre_net_795 ) , .A4 ( HFSNET_1366 ) , .A5 ( HFSNET_1365 ) , 
    .A6 ( copt_gre_net_873 ) , .Y ( ctmn_3716_CDR1 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6343 ( .A ( HFSNET_1256 ) , 
    .Y ( copt_gre_net_474 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO222X1_HVT ctmi_4294 ( .A1 ( HFSNET_1373 ) , .A2 ( copt_gre_net_894 ) , 
    .A3 ( ctmn_3559 ) , .A4 ( \USRAM/guide_buf_505 ) , .A5 ( HFSNET_1368 ) , 
    .A6 ( HFSNET_472 ) , .Y ( ctmn_3720_CDR1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_94_389 ( .A ( MEM_CSB[45] ) , .Y ( HFSNET_46 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1_HVT ctmi_4296 ( .A1 ( ZBUF_269_15 ) , .A2 ( copt_gre_net_879 ) , 
    .A3 ( ropt_net_1519 ) , .A4 ( copt_gre_net_929 ) , .A5 ( ropt_net_1492 ) , 
    .Y ( ctmn_3724_CDR1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X2_HVT ctmi_4297 ( .A1 ( copt_gre_net_780 ) , .A2 ( ctmn_3564 ) , 
    .A3 ( ZBUF_251_12 ) , .A4 ( copt_gre_net_1293 ) , .A5 ( ctmn_3722_CDR1 ) , 
    .Y ( ctmn_3723_CDR1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1_HVT ctmi_4298 ( .A1 ( copt_gre_net_324 ) , .A2 ( copt_gre_net_463 ) , 
    .A3 ( ctmn_3641 ) , .A4 ( HFSNET_427 ) , .A5 ( ctmn_3721_CDR1 ) , 
    .Y ( ctmn_3722_CDR1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1_HVT ctmi_4299 ( .A1 ( copt_gre_net_666 ) , .A2 ( ctmn_3566 ) , 
    .A3 ( ZBUF_212_0 ) , .A4 ( ZBUF_79_198 ) , .Y ( ctmn_3721_CDR1 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO222X1_HVT ctmi_4300 ( .A1 ( HFSNET_416 ) , .A2 ( ZBUF_94_7 ) , 
    .A3 ( ctmn_3585 ) , .A4 ( copt_gre_net_877 ) , 
    .A5 ( \USRAM/guide_buf_425 ) , .A6 ( copt_gre_net_1464 ) , 
    .Y ( ctmn_3725_CDR1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT gre_a_BUF_78_inst_6282 ( .A ( ctmn_3605 ) , 
    .Y ( gre_a_BUF_78_292 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO222X1_HVT ctmi_4302 ( .A1 ( copt_gre_net_1463 ) , .A2 ( copt_gre_net_829 ) , 
    .A3 ( HFSNET_1367 ) , .A4 ( HFSNET_397 ) , .A5 ( \USRAM/guide_buf_335 ) , 
    .A6 ( copt_gre_net_1465 ) , .Y ( ctmn_3728_CDR1 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6344 ( .A ( copt_gre_net_476 ) , 
    .Y ( copt_gre_net_475 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1_HVT ctmi_4304 ( .A1 ( copt_gre_net_454 ) , 
    .A2 ( \USRAM/guide_buf_305 ) , .A3 ( HFSNET_1363 ) , .A4 ( ZBUF_2_228 ) , 
    .A5 ( HFSNET_707 ) , .Y ( ctmn_3732_CDR1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1_HVT ctmi_4305 ( .A1 ( ctmn_3565 ) , .A2 ( ZBUF_55_256 ) , 
    .A3 ( HFSNET_253 ) , .A4 ( ctmn_3623 ) , .A5 ( ctmn_3730_CDR1 ) , 
    .Y ( ctmn_3731_CDR1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1_HVT ctmi_4306 ( .A1 ( copt_gre_net_1244 ) , .A2 ( HFSNET_283 ) , 
    .A3 ( copt_gre_net_614 ) , .A4 ( HFSNET_1360 ) , .A5 ( ctmn_3729_CDR1 ) , 
    .Y ( ctmn_3730_CDR1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1_HVT ctmi_4307 ( .A1 ( ZBUF_439_0 ) , .A2 ( copt_gre_net_538 ) , 
    .A3 ( ZBUF_2_46 ) , .A4 ( HFSNET_1362 ) , .Y ( ctmn_3729_CDR1 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO222X1_HVT ctmi_4308 ( .A1 ( HFSNET_762 ) , .A2 ( HFSNET_206 ) , 
    .A3 ( copt_gre_net_691 ) , .A4 ( ctmn_3600 ) , .A5 ( ctmn_3593 ) , 
    .A6 ( ZBUF_1388_281 ) , .Y ( ctmn_3733_CDR1 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
OR3X1_HVT ctmi_4309 ( .A1 ( ctmn_3739_CDR1 ) , .A2 ( ctmn_3743_CDR1 ) , 
    .A3 ( ctmn_3751_CDR1 ) , .Y ( ctmn_3752_CDR1 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO221X1_HVT ctmi_4310 ( .A1 ( copt_gre_net_1018 ) , .A2 ( ctmn_3607 ) , 
    .A3 ( copt_gre_net_1345 ) , .A4 ( ctmn_3605 ) , .A5 ( ctmn_3738_CDR1 ) , 
    .Y ( ctmn_3739_CDR1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X2_HVT ctmi_4311 ( .A1 ( HFSNET_1354 ) , .A2 ( copt_gre_net_961 ) , 
    .A3 ( ZBUF_82_144 ) , .A4 ( ctmn_3582 ) , .A5 ( ctmn_3737_CDR1 ) , 
    .Y ( ctmn_3738_CDR1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1_HVT ctmi_4312 ( .A1 ( ZBUF_74_17 ) , .A2 ( HFSNET_665 ) , 
    .A3 ( ropt_net_1488 ) , .A4 ( ropt_net_1466 ) , .A5 ( HFSNET_709 ) , 
    .Y ( ctmn_3737_CDR1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1_HVT ctmi_4313 ( .A1 ( ctmn_3612 ) , .A2 ( ZBUF_63_201 ) , 
    .A3 ( \USRAM/guide_buf_255 ) , .A4 ( ctmn_3617 ) , .Y ( ctmn_3736_CDR1 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X2_HVT ctmi_4314 ( .A1 ( copt_gre_net_451 ) , .A2 ( HFSNET_174 ) , 
    .A3 ( ropt_net_1497 ) , .A4 ( ctmn_3611 ) , .A5 ( ctmn_3742_CDR1 ) , 
    .Y ( ctmn_3743_CDR1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1_HVT ctmi_4315 ( .A1 ( ctmn_3624 ) , .A2 ( ZBUF_60_226 ) , 
    .A3 ( ZBUF_61_224 ) , .A4 ( HFSNET_1372 ) , .A5 ( ctmn_3741_CDR1 ) , 
    .Y ( ctmn_3742_CDR1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1_HVT ctmi_4316 ( .A1 ( HFSNET_1376 ) , .A2 ( copt_gre_net_952 ) , 
    .A3 ( copt_gre_net_944 ) , .A4 ( HFSNET_1356 ) , .A5 ( ctmn_3740_CDR1 ) , 
    .Y ( ctmn_3741_CDR1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1_HVT ctmi_4317 ( .A1 ( HFSNET_190 ) , .A2 ( HFSNET_1357 ) , 
    .A3 ( HFSNET_761 ) , .A4 ( \USRAM/guide_buf_155 ) , 
    .Y ( ctmn_3740_CDR1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6345 ( .A ( ZBUF_106_4 ) , 
    .Y ( copt_gre_net_476 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO222X1_HVT ctmi_4319 ( .A1 ( ctmn_3631 ) , .A2 ( copt_gre_net_875 ) , 
    .A3 ( \USRAM/guide_buf_245 ) , .A4 ( ctmn_3636 ) , 
    .A5 ( copt_gre_net_1457 ) , .A6 ( HFSNET_242 ) , .Y ( ctmn_3744_CDR1 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6346 ( .A ( copt_gre_net_478 ) , 
    .Y ( copt_gre_net_477 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1_HVT ctmi_4321 ( .A1 ( ctmn_3637 ) , .A2 ( HFSNET_490 ) , 
    .A3 ( ctmn_3581 ) , .A4 ( ZBUF_66_220 ) , .A5 ( ZBUF_2_10 ) , 
    .Y ( ctmn_3748_CDR1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1_HVT ctmi_4322 ( .A1 ( ctmn_3574 ) , .A2 ( copt_gre_net_740 ) , 
    .A3 ( ctmn_3610 ) , .A4 ( \USRAM/guide_buf_375 ) , 
    .A5 ( ctmn_3746_CDR1 ) , .Y ( ctmn_3747_CDR1 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO221X1_HVT ctmi_4323 ( .A1 ( \USRAM/guide_buf_345 ) , .A2 ( ctmn_3640 ) , 
    .A3 ( copt_gre_net_318 ) , .A4 ( ctmn_3592 ) , .A5 ( ctmn_3745_CDR1 ) , 
    .Y ( ctmn_3746_CDR1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X2_HVT ctmi_4324 ( .A1 ( ZBUF_242_12 ) , .A2 ( copt_gre_net_610 ) , 
    .A3 ( HFSNET_501 ) , .A4 ( ZBUF_292_12 ) , .Y ( ctmn_3745_CDR1 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO222X1_HVT ctmi_4325 ( .A1 ( copt_gre_net_867 ) , .A2 ( ctmn_3648 ) , 
    .A3 ( copt_gre_net_816 ) , .A4 ( HFSNET_1366 ) , .A5 ( HFSNET_1365 ) , 
    .A6 ( copt_gre_net_805 ) , .Y ( ctmn_3749_CDR1 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_21_394 ( .A ( MEM_CSB[51] ) , .Y ( HFSNET_51 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO222X1_HVT ctmi_4328 ( .A1 ( ctmn_3557 ) , .A2 ( ZBUF_2_103 ) , 
    .A3 ( ctmn_3559 ) , .A4 ( \USRAM/guide_buf_506 ) , .A5 ( ctmn_3569 ) , 
    .A6 ( ZBUF_2_105 ) , .Y ( ctmn_3753_CDR1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT HFSBUF_21_395 ( .A ( MEM_CSB[52] ) , .Y ( HFSNET_52 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1_HVT ctmi_4330 ( .A1 ( HFSNET_1402 ) , .A2 ( copt_gre_net_337 ) , 
    .A3 ( ZBUF_269_15 ) , .A4 ( copt_gre_net_345 ) , .A5 ( HFSNET_714 ) , 
    .Y ( ctmn_3757_CDR1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1_HVT ctmi_4331 ( .A1 ( copt_gre_net_635 ) , .A2 ( ctmn_3564 ) , 
    .A3 ( ZBUF_251_12 ) , .A4 ( copt_gre_net_1275 ) , .A5 ( ctmn_3755_CDR1 ) , 
    .Y ( ctmn_3756_CDR1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1_HVT ctmi_4332 ( .A1 ( copt_gre_net_312 ) , .A2 ( copt_gre_net_463 ) , 
    .A3 ( ctmn_3641 ) , .A4 ( HFSNET_428 ) , .A5 ( ctmn_3754_CDR1 ) , 
    .Y ( ctmn_3755_CDR1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1_HVT ctmi_4333 ( .A1 ( copt_gre_net_546 ) , .A2 ( ctmn_3566 ) , 
    .A3 ( ZBUF_212_0 ) , .A4 ( copt_gre_net_1257 ) , .Y ( ctmn_3754_CDR1 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO222X1_HVT ctmi_4334 ( .A1 ( copt_gre_net_753 ) , .A2 ( ZBUF_94_7 ) , 
    .A3 ( ctmn_3585 ) , .A4 ( copt_gre_net_703 ) , 
    .A5 ( \USRAM/guide_buf_426 ) , .A6 ( copt_gre_net_1464 ) , 
    .Y ( ctmn_3758_CDR1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6347 ( .A ( ZBUF_54_4 ) , 
    .Y ( copt_gre_net_478 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO222X1_HVT ctmi_4336 ( .A1 ( copt_gre_net_1463 ) , .A2 ( copt_gre_net_835 ) , 
    .A3 ( HFSNET_1367 ) , .A4 ( HFSNET_398 ) , .A5 ( \USRAM/guide_buf_336 ) , 
    .A6 ( copt_gre_net_1465 ) , .Y ( ctmn_3761_CDR1 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6348 ( .A ( copt_gre_net_480 ) , 
    .Y ( copt_gre_net_479 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1_HVT ctmi_4338 ( .A1 ( copt_gre_net_454 ) , 
    .A2 ( \USRAM/guide_buf_306 ) , .A3 ( HFSNET_1363 ) , .A4 ( HFSNET_330 ) , 
    .A5 ( copt_gre_net_339 ) , .Y ( ctmn_3765_CDR1 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO221X1_HVT ctmi_4339 ( .A1 ( ctmn_3565 ) , .A2 ( HFSNET_228 ) , 
    .A3 ( \USRAM/guide_buf_216 ) , .A4 ( ctmn_3623 ) , 
    .A5 ( ctmn_3763_CDR1 ) , .Y ( ctmn_3764_CDR1 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO221X1_HVT ctmi_4340 ( .A1 ( copt_gre_net_1244 ) , .A2 ( HFSNET_284 ) , 
    .A3 ( copt_gre_net_612 ) , .A4 ( HFSNET_1360 ) , .A5 ( ctmn_3762_CDR1 ) , 
    .Y ( ctmn_3763_CDR1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1_HVT ctmi_4341 ( .A1 ( ZBUF_439_0 ) , .A2 ( ZBUF_737_275 ) , 
    .A3 ( copt_gre_net_559 ) , .A4 ( HFSNET_1362 ) , .Y ( ctmn_3762_CDR1 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO222X1_HVT ctmi_4342 ( .A1 ( HFSNET_762 ) , .A2 ( ZBUF_2_110 ) , 
    .A3 ( ZBUF_2_91 ) , .A4 ( ZBUF_119_16 ) , .A5 ( HFSNET_1358 ) , 
    .A6 ( copt_gre_net_341 ) , .Y ( ctmn_3766_CDR1 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
OR3X1_HVT ctmi_4343 ( .A1 ( ctmn_3772_CDR1 ) , .A2 ( HFSNET_719 ) , 
    .A3 ( copt_gre_net_424 ) , .Y ( ctmn_3785_CDR1 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO221X2_HVT ctmi_4344 ( .A1 ( HFSNET_319 ) , .A2 ( ctmn_3607 ) , 
    .A3 ( copt_gre_net_1323 ) , .A4 ( gre_a_BUF_78_292 ) , 
    .A5 ( ctmn_3771_CDR1 ) , .Y ( ctmn_3772_CDR1 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO221X2_HVT ctmi_4345 ( .A1 ( HFSNET_1354 ) , .A2 ( HFSNET_1236 ) , 
    .A3 ( ZBUF_2_121 ) , .A4 ( ZBUF_196_4 ) , .A5 ( ctmn_3770_CDR1 ) , 
    .Y ( ctmn_3771_CDR1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1_HVT ctmi_4346 ( .A1 ( ctmn_3631 ) , .A2 ( ZBUF_144_111 ) , 
    .A3 ( \USRAM/guide_buf_246 ) , .A4 ( ctmn_3636 ) , .A5 ( HFSNET_718 ) , 
    .Y ( ctmn_3770_CDR1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1_HVT ctmi_4347 ( .A1 ( ctmn_3612 ) , .A2 ( copt_gre_net_670 ) , 
    .A3 ( \USRAM/guide_buf_256 ) , .A4 ( ctmn_3617 ) , .Y ( ctmn_3769_CDR1 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1_HVT ctmi_4348 ( .A1 ( copt_gre_net_451 ) , .A2 ( HFSNET_175 ) , 
    .A3 ( copt_gre_net_925 ) , .A4 ( ctmn_3609 ) , .A5 ( ctmn_3775_CDR1 ) , 
    .Y ( ctmn_3776_CDR1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1_HVT ctmi_4349 ( .A1 ( HFSNET_1375 ) , .A2 ( ropt_net_1484 ) , 
    .A3 ( copt_gre_net_724 ) , .A4 ( HFSNET_1359 ) , .A5 ( ctmn_3774_CDR1 ) , 
    .Y ( ctmn_3775_CDR1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1_HVT ctmi_4350 ( .A1 ( HFSNET_761 ) , .A2 ( \USRAM/guide_buf_156 ) , 
    .A3 ( HFSNET_191 ) , .A4 ( HFSNET_1357 ) , .A5 ( ctmn_3773_CDR1 ) , 
    .Y ( ctmn_3774_CDR1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1_HVT ctmi_4351 ( .A1 ( ZBUF_2_201 ) , .A2 ( HFSNET_1372 ) , 
    .A3 ( HFSNET_1376 ) , .A4 ( ZBUF_67_63 ) , .Y ( ctmn_3773_CDR1 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_44_398 ( .A ( MEM_CSB[55] ) , .Y ( HFSNET_55 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO222X1_HVT ctmi_4353 ( .A1 ( copt_gre_net_1457 ) , .A2 ( HFSNET_244 ) , 
    .A3 ( ZBUF_97_74 ) , .A4 ( ropt_net_1466 ) , .A5 ( ctmn_3606 ) , 
    .A6 ( copt_gre_net_678 ) , .Y ( ctmn_3777_CDR1 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_79_399 ( .A ( MEM_CSB[56] ) , .Y ( HFSNET_56 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1_HVT ctmi_4355 ( .A1 ( ctmn_3637 ) , .A2 ( HFSNET_491 ) , 
    .A3 ( ctmn_3581 ) , .A4 ( ropt_net_1486 ) , .A5 ( ZBUF_2_42 ) , 
    .Y ( ctmn_3781_CDR1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1_HVT ctmi_4356 ( .A1 ( ctmn_3574 ) , .A2 ( copt_gre_net_575 ) , 
    .A3 ( ctmn_3610 ) , .A4 ( \USRAM/guide_buf_376 ) , 
    .A5 ( ctmn_3779_CDR1 ) , .Y ( ctmn_3780_CDR1 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO221X1_HVT ctmi_4357 ( .A1 ( \USRAM/guide_buf_346 ) , .A2 ( ctmn_3640 ) , 
    .A3 ( copt_gre_net_316 ) , .A4 ( ctmn_3592 ) , .A5 ( copt_gre_net_422 ) , 
    .Y ( ctmn_3779_CDR1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X2_HVT ctmi_4358 ( .A1 ( ZBUF_242_12 ) , .A2 ( copt_gre_net_516 ) , 
    .A3 ( \USRAM/guide_buf_546 ) , .A4 ( ZBUF_292_12 ) , 
    .Y ( ctmn_3778_CDR1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO222X1_HVT ctmi_4359 ( .A1 ( ZBUF_68_63 ) , .A2 ( ctmn_3648 ) , 
    .A3 ( copt_gre_net_1273 ) , .A4 ( HFSNET_1366 ) , .A5 ( HFSNET_1365 ) , 
    .A6 ( copt_gre_net_656 ) , .Y ( ctmn_3782_CDR1 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6349 ( .A ( ZBUF_120_196 ) , 
    .Y ( copt_gre_net_480 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO222X1_HVT ctmi_4362 ( .A1 ( ctmn_3557 ) , .A2 ( copt_gre_net_843 ) , 
    .A3 ( ctmn_3559 ) , .A4 ( \USRAM/guide_buf_507 ) , .A5 ( HFSNET_1368 ) , 
    .A6 ( HFSNET_474 ) , .Y ( ctmn_3786_CDR1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_59_401 ( .A ( copt_gre_net_1098 ) , .Y ( HFSNET_58 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1_HVT ctmi_4364 ( .A1 ( HFSNET_1402 ) , .A2 ( HFSNET_554 ) , 
    .A3 ( ZBUF_269_15 ) , .A4 ( copt_gre_net_1285 ) , .A5 ( HFSNET_723 ) , 
    .Y ( ctmn_3790_CDR1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1_HVT ctmi_4365 ( .A1 ( copt_gre_net_641 ) , .A2 ( ctmn_3564 ) , 
    .A3 ( ZBUF_251_12 ) , .A4 ( copt_gre_net_620 ) , .A5 ( ctmn_3788_CDR1 ) , 
    .Y ( ctmn_3789_CDR1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1_HVT ctmi_4366 ( .A1 ( HFSNET_465 ) , .A2 ( copt_gre_net_463 ) , 
    .A3 ( ctmn_3641 ) , .A4 ( HFSNET_429 ) , .A5 ( ctmn_3787_CDR1 ) , 
    .Y ( ctmn_3788_CDR1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1_HVT ctmi_4367 ( .A1 ( ropt_net_1469 ) , .A2 ( ctmn_3566 ) , 
    .A3 ( ZBUF_212_0 ) , .A4 ( copt_gre_net_565 ) , .Y ( ctmn_3787_CDR1 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO222X2_HVT ctmi_4368 ( .A1 ( copt_gre_net_752 ) , .A2 ( ctmn_3558 ) , 
    .A3 ( ctmn_3585 ) , .A4 ( copt_gre_net_718 ) , 
    .A5 ( \USRAM/guide_buf_427 ) , .A6 ( copt_gre_net_1464 ) , 
    .Y ( ctmn_3791_CDR1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6350 ( .A ( copt_gre_net_482 ) , 
    .Y ( copt_gre_net_481 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO222X1_HVT ctmi_4370 ( .A1 ( copt_gre_net_1463 ) , .A2 ( copt_gre_net_839 ) , 
    .A3 ( HFSNET_1367 ) , .A4 ( ZBUF_39_133 ) , .A5 ( \USRAM/guide_buf_337 ) , 
    .A6 ( copt_gre_net_1465 ) , .Y ( ctmn_3794_CDR1 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6351 ( .A ( copt_gre_net_483 ) , 
    .Y ( copt_gre_net_482 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1_HVT ctmi_4372 ( .A1 ( copt_gre_net_454 ) , 
    .A2 ( \USRAM/guide_buf_307 ) , .A3 ( ctmn_3622 ) , .A4 ( ZBUF_58_217 ) , 
    .A5 ( HFSNET_725 ) , .Y ( ctmn_3798_CDR1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1_HVT ctmi_4373 ( .A1 ( ctmn_3565 ) , .A2 ( ZBUF_120_201 ) , 
    .A3 ( HFSNET_255 ) , .A4 ( ZBUF_25_271 ) , .A5 ( ctmn_3796_CDR1 ) , 
    .Y ( ctmn_3797_CDR1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1_HVT ctmi_4374 ( .A1 ( copt_gre_net_1244 ) , .A2 ( HFSNET_285 ) , 
    .A3 ( HFSNET_265 ) , .A4 ( HFSNET_1360 ) , .A5 ( ctmn_3795_CDR1 ) , 
    .Y ( ctmn_3796_CDR1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1_HVT ctmi_4375 ( .A1 ( ZBUF_439_0 ) , .A2 ( copt_gre_net_554 ) , 
    .A3 ( copt_gre_net_550 ) , .A4 ( ctmn_3638 ) , .Y ( ctmn_3795_CDR1 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO222X1_HVT ctmi_4376 ( .A1 ( HFSNET_762 ) , .A2 ( copt_gre_net_335 ) , 
    .A3 ( copt_gre_net_712 ) , .A4 ( ZBUF_119_16 ) , .A5 ( HFSNET_1358 ) , 
    .A6 ( ZBUF_80_214 ) , .Y ( ctmn_3799_CDR1 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
OR3X1_HVT ctmi_4377 ( .A1 ( ctmn_3805_CDR1 ) , .A2 ( HFSNET_728 ) , 
    .A3 ( copt_gre_net_447 ) , .Y ( ctmn_3818_CDR1 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO221X2_HVT ctmi_4378 ( .A1 ( copt_gre_net_983 ) , .A2 ( ctmn_3607 ) , 
    .A3 ( HFSNET_308 ) , .A4 ( ctmn_3605 ) , .A5 ( ctmn_3804_CDR1 ) , 
    .Y ( ctmn_3805_CDR1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X2_HVT ctmi_4379 ( .A1 ( HFSNET_1354 ) , .A2 ( copt_gre_net_1309 ) , 
    .A3 ( copt_gre_net_946 ) , .A4 ( ZBUF_196_4 ) , .A5 ( ctmn_3803_CDR1 ) , 
    .Y ( ctmn_3804_CDR1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1_HVT ctmi_4380 ( .A1 ( ZBUF_74_17 ) , .A2 ( copt_gre_net_863 ) , 
    .A3 ( \USRAM/guide_buf_247 ) , .A4 ( ctmn_3636 ) , .A5 ( HFSNET_727 ) , 
    .Y ( ctmn_3803_CDR1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1_HVT ctmi_4381 ( .A1 ( ctmn_3612 ) , .A2 ( copt_gre_net_680 ) , 
    .A3 ( \USRAM/guide_buf_257 ) , .A4 ( ctmn_3617 ) , .Y ( ctmn_3802_CDR1 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1_HVT ctmi_4382 ( .A1 ( HFSNET_761 ) , .A2 ( \USRAM/guide_buf_157 ) , 
    .A3 ( copt_gre_net_451 ) , .A4 ( HFSNET_176 ) , .A5 ( ctmn_3808_CDR1 ) , 
    .Y ( ctmn_3809_CDR1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1_HVT ctmi_4383 ( .A1 ( HFSNET_1375 ) , .A2 ( copt_gre_net_1291 ) , 
    .A3 ( copt_gre_net_845 ) , .A4 ( HFSNET_1356 ) , .A5 ( ctmn_3807_CDR1 ) , 
    .Y ( ctmn_3808_CDR1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1_HVT ctmi_4384 ( .A1 ( HFSNET_1376 ) , .A2 ( copt_gre_net_759 ) , 
    .A3 ( HFSNET_192 ) , .A4 ( HFSNET_1357 ) , .A5 ( ctmn_3806_CDR1 ) , 
    .Y ( ctmn_3807_CDR1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1_HVT ctmi_4385 ( .A1 ( ropt_net_1478 ) , .A2 ( HFSNET_1359 ) , 
    .A3 ( HFSNET_649 ) , .A4 ( HFSNET_1372 ) , .Y ( ctmn_3806_CDR1 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6352 ( .A ( copt_gre_net_484 ) , 
    .Y ( copt_gre_net_483 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO222X1_HVT ctmi_4387 ( .A1 ( ctmn_3631 ) , .A2 ( copt_gre_net_689 ) , 
    .A3 ( copt_gre_net_629 ) , .A4 ( ropt_net_1466 ) , 
    .A5 ( copt_gre_net_1457 ) , .A6 ( HFSNET_245 ) , .Y ( ctmn_3810_CDR1 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6353 ( .A ( copt_gre_net_485 ) , 
    .Y ( copt_gre_net_484 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1_HVT ctmi_4389 ( .A1 ( ctmn_3637 ) , .A2 ( HFSNET_492 ) , 
    .A3 ( ctmn_3581 ) , .A4 ( ropt_net_1482 ) , .A5 ( copt_gre_net_332 ) , 
    .Y ( ctmn_3814_CDR1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1_HVT ctmi_4390 ( .A1 ( ctmn_3574 ) , .A2 ( copt_gre_net_599 ) , 
    .A3 ( ctmn_3610 ) , .A4 ( \USRAM/guide_buf_377 ) , 
    .A5 ( ctmn_3812_CDR1 ) , .Y ( ctmn_3813_CDR1 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO221X1_HVT ctmi_4391 ( .A1 ( \USRAM/guide_buf_347 ) , .A2 ( ctmn_3640 ) , 
    .A3 ( HFSNET_355 ) , .A4 ( ctmn_3592 ) , .A5 ( ctmn_3811_CDR1 ) , 
    .Y ( ctmn_3812_CDR1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X2_HVT ctmi_4392 ( .A1 ( ZBUF_242_12 ) , .A2 ( ZBUF_77_24 ) , 
    .A3 ( HFSNET_504 ) , .A4 ( ZBUF_292_12 ) , .Y ( ctmn_3811_CDR1 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO222X1_HVT ctmi_4393 ( .A1 ( copt_gre_net_1264 ) , .A2 ( ctmn_3648 ) , 
    .A3 ( copt_gre_net_638 ) , .A4 ( HFSNET_1366 ) , .A5 ( HFSNET_1365 ) , 
    .A6 ( ZBUF_42_78 ) , .Y ( ctmn_3815_CDR1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6354 ( .A ( MEM_OEB[38] ) , 
    .Y ( copt_gre_net_485 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO222X1_HVT ctmi_4396 ( .A1 ( ctmn_3557 ) , .A2 ( ZBUF_2_129 ) , 
    .A3 ( ctmn_3559 ) , .A4 ( \USRAM/guide_buf_508 ) , .A5 ( ctmn_3569 ) , 
    .A6 ( HFSNET_475 ) , .Y ( ctmn_3819_CDR1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1_HVT ctmi_4398 ( .A1 ( ZBUF_269_15 ) , .A2 ( copt_gre_net_937 ) , 
    .A3 ( ropt_net_1519 ) , .A4 ( copt_gre_net_919 ) , .A5 ( HFSNET_732 ) , 
    .Y ( ctmn_3823_CDR1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1_HVT ctmi_4399 ( .A1 ( copt_gre_net_706 ) , .A2 ( ZBUF_122_255 ) , 
    .A3 ( ZBUF_251_12 ) , .A4 ( copt_gre_net_715 ) , .A5 ( ctmn_3821_CDR1 ) , 
    .Y ( ctmn_3822_CDR1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1_HVT ctmi_4400 ( .A1 ( copt_gre_net_322 ) , .A2 ( copt_gre_net_463 ) , 
    .A3 ( ctmn_3641 ) , .A4 ( HFSNET_1138 ) , .A5 ( ctmn_3820_CDR1 ) , 
    .Y ( ctmn_3821_CDR1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1_HVT ctmi_4401 ( .A1 ( ropt_net_1473 ) , .A2 ( ctmn_3566 ) , 
    .A3 ( ZBUF_212_0 ) , .A4 ( copt_gre_net_307 ) , .Y ( ctmn_3820_CDR1 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO222X2_HVT ctmi_4402 ( .A1 ( copt_gre_net_855 ) , .A2 ( ctmn_3558 ) , 
    .A3 ( ctmn_3585 ) , .A4 ( copt_gre_net_801 ) , 
    .A5 ( \USRAM/guide_buf_428 ) , .A6 ( copt_gre_net_1464 ) , 
    .Y ( ctmn_3824_CDR1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT copt_gre_mt_inst_6356 ( .A ( HFSNET_147 ) , 
    .Y ( copt_gre_net_487 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SRAM1RW1024x8 \USRAM/genblk1[1].UMEM (
    .A ( { HFSNET_1333 , copt_gre_net_1063 , ZBUF_228_181 , ZBUF_226_49 , 
        ZBUF_251_34 , ZBUF_253_49 , HFSNET_1005 , HFSNET_1345 , 
        copt_gre_net_417 , HFSNET_817 } ) ,
    .CE ( ZCTSNET_14 ) , .CSB ( \USRAM/guide_buf_30 ) ,
    .I ( { HFSNET_953 , ZBUF_222_184 , ZBUF_227_34 , ZBUF_103_260 , 
        HFSNET_1316 , ZBUF_199_239 , ZBUF_103_245 , ZBUF_125_245 } ) ,
    .OEB ( \USRAM/guide_buf_31 ) , .WEB ( ZBUF_205_248 ) , 
    .O ( \USRAM/TMP_ODATA [15:8] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SRAM1RW1024x8 \USRAM/genblk1[2].UMEM (
    .A ( { HFSNET_1333 , copt_gre_net_1063 , ZBUF_228_181 , ZBUF_161_259 , 
        ZBUF_101_181 , ZBUF_69_266 , ZBUF_77_266 , ZBUF_153_160 , 
        ZBUF_18_238 , copt_gre_net_1148 } ) ,
    .CE ( ZCTSNET_14 ) , .CSB ( \USRAM/guide_buf_40 ) ,
    .I ( { HFSNET_953 , ZBUF_222_184 , ZBUF_227_34 , ZBUF_103_260 , 
        ZBUF_397_54 , ZBUF_199_239 , ZBUF_103_245 , ZBUF_125_245 } ) ,
    .OEB ( \USRAM/guide_buf_41 ) , .WEB ( ZBUF_205_248 ) , 
    .O ( \USRAM/TMP_ODATA [23:16] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SRAM1RW1024x8 \USRAM/genblk1[3].UMEM (
    .A ( { ZBUF_80_248 , ZBUF_76_251 , ropt_net_1511 , ZBUF_161_259 , 
        ZBUF_101_181 , HFSNET_1009 , copt_gre_net_438 , copt_gre_net_1104 , 
        ZBUF_30_182 , copt_gre_net_1149 } ) ,
    .CE ( ZCTSNET_13 ) , .CSB ( \USRAM/guide_buf_50 ) ,
    .I ( { HFSNET_954 , HFSNET_938 , HFSNET_926 , copt_gre_net_1409 , 
        ZBUF_397_54 , ZBUF_199_239 , ZBUF_61_169 , HFSNET_858 } ) ,
    .OEB ( \USRAM/guide_buf_51 ) , .WEB ( ZBUF_131_239 ) , 
    .O ( \USRAM/TMP_ODATA [31:24] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SRAM1RW1024x8 \USRAM/genblk1[4].UMEM (
    .A ( { HFSNET_1098 , HFSNET_1080 , ZBUF_76_272 , HFSNET_1331 , 
        ZBUF_120_245 , gre_mt_BUF_74_291 , HFSNET_1291 , HFSNET_963 , 
        HFSNET_1276 , ZBUF_85_49 } ) ,
    .CE ( ctosc_drc_2 ) , .CSB ( \USRAM/guide_buf_60 ) ,
    .I ( { ZBUF_187_49 , ZBUF_126_241 , ZBUF_122_270 , ZBUF_66_262 , 
        HFSNET_891 , ZBUF_66_184 , ZBUF_75_246 , ZBUF_75_247 } ) ,
    .OEB ( \USRAM/guide_buf_61 ) , .WEB ( HFSNET_980 ) , 
    .O ( \USRAM/TMP_ODATA [39:32] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SRAM1RW1024x8 \USRAM/genblk1[5].UMEM (
    .A ( { ZBUF_170_32 , HFSNET_1090 , HFSNET_1058 , ZBUF_226_49 , 
        ZBUF_251_34 , ZBUF_253_49 , HFSNET_1005 , HFSNET_1345 , 
        copt_gre_net_411 , ZBUF_76_192 } ) ,
    .CE ( ZCTSNET_23 ) , .CSB ( \USRAM/guide_buf_70 ) ,
    .I ( { ZBUF_75_253 , HFSNET_1383 , HFSNET_929 , ZBUF_214_2 , ZBUF_33_245 , 
        ZBUF_282_191 , ZBUF_76_273 , ZBUF_76_267 } ) ,
    .OEB ( \USRAM/guide_buf_71 ) , .WEB ( copt_gre_net_1229 ) , 
    .O ( \USRAM/TMP_ODATA [47:40] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SRAM1RW1024x8 \USRAM/genblk1[6].UMEM (
    .A ( { ZBUF_75_188 , HFSNET_1090 , HFSNET_1058 , ZBUF_226_49 , 
        ZBUF_251_34 , ZBUF_253_49 , HFSNET_1005 , HFSNET_1345 , 
        copt_gre_net_411 , HFSNET_817 } ) ,
    .CE ( ZCTSNET_24 ) , .CSB ( \USRAM/guide_buf_80 ) ,
    .I ( { ZBUF_124_249 , ZBUF_118_271 , HFSNET_929 , ZBUF_124_248 , 
        HFSNET_1316 , ZBUF_76_271 , HFSNET_1201 , ZBUF_76_194 } ) ,
    .OEB ( \USRAM/guide_buf_81 ) , .WEB ( copt_gre_net_1236 ) , 
    .O ( \USRAM/TMP_ODATA [55:48] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SRAM1RW1024x8 \USRAM/genblk1[7].UMEM (
    .A ( { HFSNET_1333 , copt_gre_net_1064 , ZBUF_228_181 , ZBUF_226_49 , 
        ZBUF_251_34 , ZBUF_253_49 , HFSNET_1005 , HFSNET_1345 , 
        copt_gre_net_418 , HFSNET_817 } ) ,
    .CE ( ZCTSNET_14 ) , .CSB ( \USRAM/guide_buf_90 ) ,
    .I ( { HFSNET_953 , ZBUF_222_184 , ZBUF_227_34 , ZBUF_103_260 , 
        HFSNET_1316 , ZBUF_199_239 , ZBUF_103_245 , ZBUF_125_245 } ) ,
    .OEB ( \USRAM/guide_buf_91 ) , .WEB ( ZBUF_205_248 ) , 
    .O ( \USRAM/TMP_ODATA [63:56] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SRAM1RW1024x8 \USRAM/genblk1[8].UMEM (
    .A ( { ZBUF_170_32 , HFSNET_1090 , HFSNET_1058 , ZBUF_75_261 , 
        ZBUF_150_51 , ZBUF_34_283 , ZBUF_34_287 , ZBUF_126_32 , ZBUF_957_290 , 
        ZBUF_76_192 } ) ,
    .CE ( ZCTSNET_23 ) , .CSB ( \USRAM/guide_buf_100 ) ,
    .I ( { ZBUF_75_253 , HFSNET_1383 , HFSNET_929 , ZBUF_214_2 , ZBUF_33_245 , 
        ZBUF_282_191 , ZBUF_76_273 , ZBUF_76_267 } ) ,
    .OEB ( \USRAM/guide_buf_101 ) , .WEB ( copt_gre_net_1230 ) , 
    .O ( \USRAM/TMP_ODATA [71:64] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SRAM1RW1024x8 \USRAM/genblk1[9].UMEM (
    .A ( { ZBUF_75_188 , HFSNET_1090 , HFSNET_1058 , ZBUF_226_49 , 
        ZBUF_251_34 , ZBUF_253_49 , HFSNET_1005 , HFSNET_1345 , 
        copt_gre_net_414 , HFSNET_817 } ) ,
    .CE ( ZCTSNET_24 ) , .CSB ( \USRAM/guide_buf_110 ) ,
    .I ( { ZBUF_124_249 , ZBUF_118_271 , HFSNET_929 , ZBUF_124_248 , 
        HFSNET_1316 , ZBUF_76_271 , HFSNET_1201 , ZBUF_76_194 } ) ,
    .OEB ( \USRAM/guide_buf_111 ) , .WEB ( copt_gre_net_1237 ) , 
    .O ( \USRAM/TMP_ODATA [79:72] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SRAM1RW1024x8 \USRAM/genblk1[10].UMEM (
    .A ( { copt_gre_net_1396 , copt_gre_net_1066 , ZBUF_228_181 , 
        ZBUF_226_49 , ZBUF_251_34 , ZBUF_253_49 , HFSNET_1005 , HFSNET_1345 , 
        copt_gre_net_420 , HFSNET_817 } ) ,
    .CE ( ZCTSNET_14 ) , .CSB ( \USRAM/guide_buf_120 ) ,
    .I ( { HFSNET_953 , ZBUF_222_184 , ZBUF_227_34 , HFSNET_919 , 
        copt_gre_net_1132 , ZBUF_49_254 , ZBUF_196_160 , ZBUF_223_157 } ) ,
    .OEB ( \USRAM/guide_buf_121 ) , .WEB ( ZBUF_205_248 ) , 
    .O ( \USRAM/TMP_ODATA [87:80] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SRAM1RW1024x8 \USRAM/genblk1[11].UMEM (
    .A ( { ZBUF_170_32 , HFSNET_1090 , HFSNET_1058 , ZBUF_75_261 , 
        ZBUF_150_51 , ZBUF_34_283 , ZBUF_34_287 , ZBUF_126_32 , ZBUF_957_290 , 
        ZBUF_76_192 } ) ,
    .CE ( ZCTSNET_23 ) , .CSB ( \USRAM/guide_buf_130 ) ,
    .I ( { ZBUF_75_253 , HFSNET_1383 , HFSNET_929 , ZBUF_214_2 , 
        ZBUF_586_259 , ZBUF_282_191 , ZBUF_76_273 , ZBUF_76_267 } ) ,
    .OEB ( \USRAM/guide_buf_131 ) , .WEB ( copt_gre_net_1233 ) , 
    .O ( \USRAM/TMP_ODATA [95:88] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SRAM1RW1024x8 \USRAM/genblk1[12].UMEM (
    .A ( { ZBUF_170_32 , HFSNET_1090 , HFSNET_1058 , ZBUF_75_261 , 
        ZBUF_150_51 , ZBUF_152_52 , ZBUF_2_237 , ZBUF_24_241 , 
        copt_gre_net_1427 , HFSNET_821 } ) ,
    .CE ( ZCTSNET_24 ) , .CSB ( \USRAM/guide_buf_140 ) ,
    .I ( { ZBUF_124_249 , ZBUF_118_271 , HFSNET_929 , ZBUF_124_248 , 
        copt_gre_net_405 , ZBUF_161_283 , ZBUF_120_238 , ZBUF_6_290 } ) ,
    .OEB ( \USRAM/guide_buf_141 ) , .WEB ( copt_gre_net_1238 ) , 
    .O ( \USRAM/TMP_ODATA [103:96] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SRAM1RW1024x8 \USRAM/genblk1[13].UMEM (
    .A ( { copt_gre_net_1398 , copt_gre_net_1068 , ZBUF_268_283 , 
        copt_gre_net_1413 , copt_gre_net_1452 , HFSNET_1019 , ZBUF_58_241 , 
        HFSNET_976 , ZBUF_93_267 , HFSNET_821 } ) ,
    .CE ( ZCTSNET_16 ) , .CSB ( \USRAM/guide_buf_150 ) ,
    .I ( { HFSNET_953 , copt_gre_net_1378 , ZBUF_227_34 , HFSNET_919 , 
        ZBUF_158_61 , HFSNET_881 , ZBUF_196_160 , ZBUF_223_157 } ) ,
    .OEB ( \USRAM/guide_buf_151 ) , .WEB ( copt_gre_net_1160 ) , 
    .O ( \USRAM/TMP_ODATA [111:104] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SRAM1RW1024x8 \USRAM/genblk1[14].UMEM (
    .A ( { HFSNET_1333 , copt_gre_net_1064 , ZBUF_228_181 , ZBUF_161_259 , 
        ZBUF_101_181 , ZBUF_69_266 , ZBUF_77_266 , ZBUF_220_234 , 
        ZBUF_18_238 , ZBUF_62_57 } ) ,
    .CE ( ZCTSNET_14 ) , .CSB ( \USRAM/guide_buf_160 ) ,
    .I ( { HFSNET_953 , ZBUF_222_184 , ZBUF_227_34 , ZBUF_103_260 , 
        ZBUF_397_54 , ZBUF_199_239 , ZBUF_103_245 , ZBUF_125_245 } ) ,
    .OEB ( \USRAM/guide_buf_161 ) , .WEB ( ZBUF_205_248 ) , 
    .O ( \USRAM/TMP_ODATA [119:112] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SRAM1RW1024x8 \USRAM/genblk1[15].UMEM (
    .A ( { ZBUF_80_248 , ZBUF_76_251 , ropt_net_1511 , ZBUF_161_259 , 
        ZBUF_101_181 , HFSNET_1009 , copt_gre_net_1355 , copt_gre_net_1105 , 
        ZBUF_30_182 , copt_gre_net_1150 } ) ,
    .CE ( ZCTSNET_13 ) , .CSB ( \USRAM/guide_buf_170 ) ,
    .I ( { HFSNET_954 , HFSNET_938 , HFSNET_926 , copt_gre_net_1409 , 
        ZBUF_397_54 , ZBUF_199_239 , ZBUF_61_169 , HFSNET_858 } ) ,
    .OEB ( \USRAM/guide_buf_171 ) , .WEB ( ZBUF_131_239 ) , 
    .O ( \USRAM/TMP_ODATA [127:120] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SRAM1RW1024x8 \USRAM/genblk1[16].UMEM (
    .A ( { HFSNET_1098 , HFSNET_1080 , ZBUF_76_272 , HFSNET_1331 , 
        ZBUF_120_245 , gre_mt_BUF_74_291 , HFSNET_1291 , HFSNET_963 , 
        HFSNET_1276 , ZBUF_85_49 } ) ,
    .CE ( ctosc_drc_2 ) , .CSB ( \USRAM/guide_buf_180 ) ,
    .I ( { ZBUF_187_49 , ZBUF_126_241 , ZBUF_122_270 , ZBUF_66_262 , 
        HFSNET_891 , ZBUF_66_184 , ZBUF_75_246 , ZBUF_75_247 } ) ,
    .OEB ( \USRAM/guide_buf_181 ) , .WEB ( HFSNET_980 ) , 
    .O ( \USRAM/TMP_ODATA [135:128] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SRAM1RW1024x8 \USRAM/genblk1[17].UMEM (
    .A ( { HFSNET_1098 , HFSNET_1080 , ZBUF_35_184 , ZBUF_13_249 , 
        ZBUF_120_245 , copt_gre_net_1112 , ZBUF_154_61 , ZBUF_4_251 , 
        HFSNET_1276 , ZBUF_85_49 } ) ,
    .CE ( ZCTSNET_7 ) , .CSB ( \USRAM/guide_buf_190 ) ,
    .I ( { ZBUF_187_49 , ZBUF_191_181 , copt_gre_net_401 , ZBUF_66_262 , 
        HFSNET_891 , ZBUF_66_184 , ZBUF_75_246 , ZBUF_75_247 } ) ,
    .OEB ( \USRAM/guide_buf_191 ) , .WEB ( HFSNET_980 ) , 
    .O ( \USRAM/TMP_ODATA [143:136] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SRAM1RW1024x8 \USRAM/genblk1[18].UMEM (
    .A ( { copt_gre_net_1396 , copt_gre_net_1066 , ZBUF_228_181 , 
        copt_gre_net_1144 , HFSNET_1031 , ZBUF_69_266 , ZBUF_77_266 , 
        ZBUF_220_234 , ZBUF_131_238 , ZBUF_62_57 } ) ,
    .CE ( ZCTSNET_14 ) , .CSB ( \USRAM/guide_buf_200 ) ,
    .I ( { HFSNET_953 , ZBUF_222_184 , ZBUF_227_34 , HFSNET_919 , 
        ZBUF_397_54 , ZBUF_49_254 , ZBUF_196_160 , ZBUF_223_157 } ) ,
    .OEB ( \USRAM/guide_buf_201 ) , .WEB ( ZBUF_205_248 ) , 
    .O ( \USRAM/TMP_ODATA [151:144] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SRAM1RW1024x8 \USRAM/genblk1[19].UMEM (
    .A ( { ZBUF_80_248 , ZBUF_76_251 , ropt_net_1512 , ZBUF_35_259 , 
        HFSNET_1031 , ZBUF_75_239 , copt_gre_net_1354 , ZBUF_301_156 , 
        ZBUF_79_10 , HFSNET_834 } ) ,
    .CE ( ZCTSNET_13 ) , .CSB ( \USRAM/guide_buf_210 ) ,
    .I ( { HFSNET_954 , HFSNET_938 , HFSNET_926 , HFSNET_923 , ZBUF_397_54 , 
        ZBUF_144_159 , HFSNET_863 , copt_gre_net_1037 } ) ,
    .OEB ( \USRAM/guide_buf_211 ) , .WEB ( ZBUF_131_239 ) , 
    .O ( \USRAM/TMP_ODATA [159:152] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SRAM1RW1024x8 \USRAM/genblk1[20].UMEM (
    .A ( { HFSNET_1098 , HFSNET_1080 , ZBUF_76_272 , ZBUF_162_47 , 
        HFSNET_1035 , copt_gre_net_1079 , ZBUF_6_167 , HFSNET_1392 , 
        HFSNET_1276 , ZBUF_85_49 } ) ,
    .CE ( ctosc_drc_3 ) , .CSB ( \USRAM/guide_buf_220 ) ,
    .I ( { ZBUF_187_49 , ZBUF_126_241 , ZBUF_122_270 , ZBUF_352_43 , 
        HFSNET_891 , HFSNET_1210 , HFSNET_1213 , HFSNET_860 } ) ,
    .OEB ( \USRAM/guide_buf_221 ) , .WEB ( HFSNET_980 ) , 
    .O ( \USRAM/TMP_ODATA [167:160] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SRAM1RW1024x8 \USRAM/genblk1[21].UMEM (
    .A ( { HFSNET_1098 , HFSNET_1080 , ZBUF_35_184 , ZBUF_6_169 , 
        HFSNET_1035 , copt_gre_net_1113 , ZBUF_154_61 , HFSNET_1187 , 
        ZBUF_35_188 , ZBUF_35_269 } ) ,
    .CE ( ZCTSNET_8 ) , .CSB ( \USRAM/guide_buf_230 ) ,
    .I ( { ZBUF_187_49 , ZBUF_191_181 , copt_gre_net_401 , ZBUF_352_43 , 
        HFSNET_891 , HFSNET_1210 , HFSNET_1213 , ZBUF_49_253 } ) ,
    .OEB ( \USRAM/guide_buf_231 ) , .WEB ( HFSNET_980 ) , 
    .O ( \USRAM/TMP_ODATA [175:168] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SRAM1RW1024x8 \USRAM/genblk1[22].UMEM (
    .A ( { copt_gre_net_1398 , copt_gre_net_1071 , ZBUF_268_283 , 
        ZBUF_3623_30 , ZBUF_223_30 , ZBUF_73_241 , HFSNET_989 , ZBUF_220_234 , 
        ZBUF_131_238 , ZBUF_62_57 } ) ,
    .CE ( ZCTSNET_16 ) , .CSB ( \USRAM/guide_buf_240 ) ,
    .I ( { HFSNET_953 , copt_gre_net_1378 , ZBUF_227_34 , HFSNET_919 , 
        ZBUF_397_54 , HFSNET_881 , ZBUF_196_160 , ZBUF_223_157 } ) ,
    .OEB ( \USRAM/guide_buf_241 ) , .WEB ( copt_gre_net_1160 ) , 
    .O ( \USRAM/TMP_ODATA [183:176] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SRAM1RW1024x8 \USRAM/genblk1[23].UMEM (
    .A ( { copt_gre_net_1420 , ZBUF_137_239 , ropt_net_1514 , 
        copt_gre_net_1146 , ZBUF_16_247 , ZBUF_193_156 , ZBUF_372_167 , 
        ZBUF_301_156 , ZBUF_79_10 , HFSNET_834 } ) ,
    .CE ( ZCTSNET_12 ) , .CSB ( \USRAM/guide_buf_250 ) ,
    .I ( { HFSNET_954 , HFSNET_938 , HFSNET_926 , ZBUF_329_235 , HFSNET_896 , 
        ZBUF_144_159 , ZBUF_272_236 , copt_gre_net_1038 } ) ,
    .OEB ( \USRAM/guide_buf_251 ) , .WEB ( ZBUF_131_239 ) , 
    .O ( \USRAM/TMP_ODATA [191:184] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SRAM1RW1024x8 \USRAM/genblk1[24].UMEM (
    .A ( { HFSNET_1098 , HFSNET_1080 , ZBUF_25_259 , ZBUF_162_47 , 
        ropt_net_1500 , copt_gre_net_1118 , ZBUF_154_61 , ZBUF_153_43 , 
        ZBUF_33_235 , ZBUF_185_43 } ) ,
    .CE ( ctosc_drc_3 ) , .CSB ( \USRAM/guide_buf_260 ) ,
    .I ( { ZBUF_187_49 , ZBUF_126_241 , ZBUF_122_270 , ZBUF_352_43 , 
        HFSNET_891 , HFSNET_1210 , HFSNET_1213 , HFSNET_860 } ) ,
    .OEB ( \USRAM/guide_buf_261 ) , .WEB ( HFSNET_980 ) , 
    .O ( \USRAM/TMP_ODATA [199:192] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SRAM1RW1024x8 \USRAM/genblk1[25].UMEM (
    .A ( { HFSNET_1098 , HFSNET_1080 , HFSNET_1070 , ZBUF_4351_30 , 
        HFSNET_1381 , copt_gre_net_1114 , ZBUF_154_61 , HFSNET_1187 , 
        ZBUF_35_188 , ZBUF_35_269 } ) ,
    .CE ( ctosc_drc_3 ) , .CSB ( \USRAM/guide_buf_270 ) ,
    .I ( { ZBUF_187_49 , ZBUF_191_181 , copt_gre_net_402 , ZBUF_352_43 , 
        HFSNET_891 , HFSNET_1210 , HFSNET_1213 , ZBUF_49_253 } ) ,
    .OEB ( \USRAM/guide_buf_271 ) , .WEB ( HFSNET_980 ) , 
    .O ( \USRAM/TMP_ODATA [207:200] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SRAM1RW1024x8 \USRAM/genblk1[26].UMEM (
    .A ( { ZBUF_170_32 , HFSNET_1090 , HFSNET_1058 , HFSNET_1045 , 
        ZBUF_150_51 , ZBUF_152_52 , ZBUF_736_237 , ZBUF_126_32 , 
        copt_gre_net_1425 , HFSNET_821 } ) ,
    .CE ( ZCTSNET_22 ) , .CSB ( \USRAM/guide_buf_280 ) ,
    .I ( { copt_gre_net_1454 , HFSNET_1383 , HFSNET_929 , ZBUF_214_2 , 
        HFSNET_906 , ZBUF_282_191 , HFSNET_1202 , ZBUF_100_238 } ) ,
    .OEB ( \USRAM/guide_buf_281 ) , .WEB ( copt_gre_net_1231 ) , 
    .O ( \USRAM/TMP_ODATA [215:208] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SRAM1RW1024x8 \USRAM/genblk1[27].UMEM (
    .A ( { ZBUF_143_34 , ZBUF_252_49 , HFSNET_1060 , ZBUF_4_158 , 
        ZBUF_150_51 , ZBUF_152_52 , ZBUF_736_237 , ZBUF_126_32 , ZBUF_264_1 , 
        HFSNET_821 } ) ,
    .CE ( ZCTSNET_28 ) , .CSB ( \USRAM/guide_buf_290 ) ,
    .I ( { copt_gre_net_1100 , HFSNET_941 , HFSNET_929 , ZBUF_208_167 , 
        ZINV_270_61 , ZBUF_161_283 , ZBUF_120_238 , HFSNET_853 } ) ,
    .OEB ( \USRAM/guide_buf_291 ) , .WEB ( copt_gre_net_1213 ) , 
    .O ( \USRAM/TMP_ODATA [223:216] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SRAM1RW1024x8 \USRAM/genblk1[28].UMEM (
    .A ( { HFSNET_1097 , copt_gre_net_1073 , ZBUF_136_237 , HFSNET_1047 , 
        ZBUF_78_258 , ZBUF_105_157 , ZBUF_736_237 , HFSNET_976 , ZBUF_93_267 , 
        HFSNET_821 } ) ,
    .CE ( ZCTSNET_16 ) , .CSB ( \USRAM/guide_buf_300 ) ,
    .I ( { copt_gre_net_1060 , copt_gre_net_1379 , HFSNET_927 , ZBUF_32_258 , 
        ZINV_325_61 , ZBUF_29_159 , HFSNET_868 , HFSNET_853 } ) ,
    .OEB ( \USRAM/guide_buf_301 ) , .WEB ( copt_gre_net_1391 ) , 
    .O ( \USRAM/TMP_ODATA [231:224] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SRAM1RW1024x8 \USRAM/genblk1[29].UMEM (
    .A ( { ZBUF_170_32 , HFSNET_1090 , HFSNET_1058 , HFSNET_1045 , 
        ZBUF_150_51 , ZBUF_152_52 , ZBUF_736_237 , ZBUF_1280_12 , 
        ZBUF_71_240 , HFSNET_1296 } ) ,
    .CE ( ZCTSNET_22 ) , .CSB ( \USRAM/guide_buf_310 ) ,
    .I ( { ZBUF_128_191 , HFSNET_1330 , HFSNET_1329 , ZBUF_129_191 , 
        HFSNET_906 , ZBUF_129_269 , ZBUF_129_192 , ZBUF_132_190 } ) ,
    .OEB ( \USRAM/guide_buf_311 ) , .WEB ( copt_gre_net_1231 ) , 
    .O ( \USRAM/TMP_ODATA [239:232] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SRAM1RW1024x8 \USRAM/genblk1[30].UMEM (
    .A ( { ZBUF_143_34 , ZBUF_252_49 , HFSNET_1060 , ZBUF_25_234 , 
        HFSNET_1399 , ZBUF_152_52 , ZBUF_736_237 , ZBUF_30_159 , HFSNET_836 , 
        HFSNET_821 } ) ,
    .CE ( ZCTSNET_28 ) , .CSB ( \USRAM/guide_buf_320 ) ,
    .I ( { HFSNET_1125 , HFSNET_941 , HFSNET_929 , ZBUF_208_167 , 
        ZINV_270_61 , ZBUF_161_283 , ZBUF_120_238 , HFSNET_853 } ) ,
    .OEB ( \USRAM/guide_buf_321 ) , .WEB ( copt_gre_net_1213 ) , 
    .O ( \USRAM/TMP_ODATA [247:240] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SRAM1RW1024x8 \USRAM/genblk1[31].UMEM (
    .A ( { HFSNET_1097 , copt_gre_net_1073 , ZBUF_136_237 , ZBUF_25_234 , 
        HFSNET_1186 , ZBUF_105_157 , HFSNET_1007 , HFSNET_976 , ZBUF_93_267 , 
        HFSNET_821 } ) ,
    .CE ( ZCTSNET_16 ) , .CSB ( \USRAM/guide_buf_330 ) ,
    .I ( { copt_gre_net_1060 , HFSNET_1330 , HFSNET_1329 , ZBUF_182_237 , 
        ZINV_270_61 , HFSNET_883 , HFSNET_870 , ZBUF_274_166 } ) ,
    .OEB ( \USRAM/guide_buf_331 ) , .WEB ( copt_gre_net_1391 ) , 
    .O ( \USRAM/TMP_ODATA [255:248] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SRAM1RW1024x8 \USRAM/genblk1[32].UMEM (
    .A ( { HFSNET_1298 , ZBUF_137_239 , ropt_net_1514 , ZBUF_4351_30 , 
        ZBUF_120_30 , ZBUF_45_241 , HFSNET_989 , ZBUF_301_156 , ZBUF_118_289 , 
        HFSNET_834 } ) ,
    .CE ( ZCTSNET_16 ) , .CSB ( \USRAM/guide_buf_340 ) ,
    .I ( { copt_gre_net_1460 , copt_gre_net_1228 , copt_gre_net_390 , 
        ZBUF_329_235 , HFSNET_896 , ZBUF_144_159 , ZBUF_272_236 , 
        copt_gre_net_1040 } ) ,
    .OEB ( \USRAM/guide_buf_341 ) , .WEB ( copt_gre_net_1390 ) , 
    .O ( \USRAM/TMP_ODATA [263:256] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SRAM1RW1024x8 \USRAM/genblk1[33].UMEM (
    .A ( { ZBUF_97_238 , ZBUF_76_32 , HFSNET_1069 , ZBUF_4351_30 , 
        ropt_net_1502 , copt_gre_net_1119 , copt_gre_net_1078 , ZBUF_153_43 , 
        ZBUF_33_235 , ZBUF_185_43 } ) ,
    .CE ( ZCTSNET_4 ) , .CSB ( \USRAM/guide_buf_350 ) ,
    .I ( { ZBUF_103_4 , ZBUF_95_4 , copt_gre_net_1122 , ZBUF_352_43 , 
        HFSNET_896 , HFSNET_1210 , HFSNET_1213 , copt_gre_net_1034 } ) ,
    .OEB ( \USRAM/guide_buf_351 ) , .WEB ( HFSNET_979 ) , 
    .O ( \USRAM/TMP_ODATA [271:264] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SRAM1RW1024x8 \USRAM/genblk1[34].UMEM (
    .A ( { ZBUF_131_181 , ZBUF_163_166 , ZBUF_130_34 , ZBUF_4351_30 , 
        HFSNET_1381 , copt_gre_net_1115 , HFSNET_1326 , HFSNET_1187 , 
        HFSNET_841 , ZBUF_52_54 } ) ,
    .CE ( ZCTSNET_4 ) , .CSB ( \USRAM/guide_buf_360 ) ,
    .I ( { ZBUF_33_262 , ZBUF_235_4 , ZBUF_157_262 , ZBUF_352_43 , ZBUF_4_60 , 
        HFSNET_1210 , HFSNET_1213 , copt_gre_net_1030 } ) ,
    .OEB ( \USRAM/guide_buf_361 ) , .WEB ( ZBUF_148_262 ) , 
    .O ( \USRAM/TMP_ODATA [279:272] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SRAM1RW1024x8 \USRAM/genblk1[35].UMEM (
    .A ( { ZBUF_18_177 , ZBUF_137_239 , ropt_net_1514 , ZBUF_4351_30 , 
        ZBUF_120_30 , ZBUF_45_241 , HFSNET_989 , ZBUF_570_60 , HFSNET_849 , 
        HFSNET_834 } ) ,
    .CE ( ZCTSNET_16 ) , .CSB ( \USRAM/guide_buf_370 ) ,
    .I ( { copt_gre_net_1460 , copt_gre_net_1228 , copt_gre_net_390 , 
        ZBUF_329_235 , HFSNET_896 , ZBUF_144_159 , ZBUF_272_236 , 
        copt_gre_net_1041 } ) ,
    .OEB ( \USRAM/guide_buf_371 ) , .WEB ( copt_gre_net_1390 ) , 
    .O ( \USRAM/TMP_ODATA [287:280] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SRAM1RW1024x8 \USRAM/genblk1[36].UMEM (
    .A ( { ZBUF_97_238 , ZBUF_34_236 , HFSNET_1069 , ZBUF_4351_30 , 
        HFSNET_1381 , copt_gre_net_1119 , copt_gre_net_1078 , ZBUF_159_60 , 
        HFSNET_1275 , ZBUF_185_43 } ) ,
    .CE ( ZCTSNET_4 ) , .CSB ( \USRAM/guide_buf_380 ) ,
    .I ( { ZBUF_103_4 , ZBUF_95_4 , copt_gre_net_1122 , ZBUF_352_43 , 
        HFSNET_896 , HFSNET_1210 , HFSNET_1213 , copt_gre_net_1034 } ) ,
    .OEB ( \USRAM/guide_buf_381 ) , .WEB ( HFSNET_979 ) , 
    .O ( \USRAM/TMP_ODATA [295:288] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SRAM1RW1024x8 \USRAM/genblk1[37].UMEM (
    .A ( { ZBUF_131_181 , ZBUF_163_166 , ZBUF_130_34 , ZBUF_4351_30 , 
        HFSNET_1381 , copt_gre_net_1115 , HFSNET_1326 , copt_gre_net_1415 , 
        copt_gre_net_1387 , ZBUF_185_43 } ) ,
    .CE ( ZCTSNET_4 ) , .CSB ( \USRAM/guide_buf_390 ) ,
    .I ( { ZBUF_33_262 , ZBUF_235_4 , ZBUF_157_262 , ZBUF_352_43 , 
        ZBUF_36_54 , HFSNET_1210 , HFSNET_1213 , copt_gre_net_1030 } ) ,
    .OEB ( \USRAM/guide_buf_391 ) , .WEB ( ZBUF_148_262 ) , 
    .O ( \USRAM/TMP_ODATA [303:296] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SRAM1RW1024x8 \USRAM/genblk1[38].UMEM (
    .A ( { ZBUF_143_34 , ZBUF_252_49 , HFSNET_1060 , HFSNET_1045 , 
        ZBUF_150_51 , ZBUF_37_49 , ZBUF_23_54 , ZBUF_1280_12 , ZBUF_71_240 , 
        HFSNET_1296 } ) ,
    .CE ( ZCTSNET_28 ) , .CSB ( \USRAM/guide_buf_400 ) ,
    .I ( { ZBUF_128_191 , HFSNET_1330 , HFSNET_1329 , ZBUF_129_191 , 
        copt_gre_net_1128 , ZBUF_129_269 , ZBUF_129_192 , ZBUF_132_190 } ) ,
    .OEB ( \USRAM/guide_buf_401 ) , .WEB ( ZBUF_125_166 ) , 
    .O ( \USRAM/TMP_ODATA [311:304] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SRAM1RW1024x8 \USRAM/genblk1[39].UMEM (
    .A ( { ZBUF_143_34 , ZBUF_252_49 , HFSNET_1060 , HFSNET_1300 , 
        HFSNET_1302 , copt_gre_net_1369 , copt_gre_net_1358 , ZBUF_365_61 , 
        copt_gre_net_1385 , HFSNET_821 } ) ,
    .CE ( ZCTSNET_27 ) , .CSB ( \USRAM/guide_buf_410 ) ,
    .I ( { ZBUF_126_263 , HFSNET_1330 , HFSNET_1329 , ZBUF_122_263 , 
        copt_gre_net_1130 , ZBUF_180_247 , ZBUF_183_247 , ZBUF_122_262 } ) ,
    .OEB ( \USRAM/guide_buf_411 ) , .WEB ( copt_gre_net_1214 ) , 
    .O ( \USRAM/TMP_ODATA [319:312] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SRAM1RW1024x8 \USRAM/genblk1[40].UMEM (
    .A ( { copt_gre_net_1092 , copt_gre_net_1381 , ZBUF_68_169 , HFSNET_1300 , 
        HFSNET_1302 , copt_gre_net_1054 , copt_gre_net_1046 , ZBUF_365_61 , 
        HFSNET_837 , HFSNET_821 } ) ,
    .CE ( ZCTSNET_20 ) , .CSB ( \USRAM/guide_buf_420 ) ,
    .I ( { copt_gre_net_1447 , HFSNET_1330 , HFSNET_1329 , ZBUF_182_237 , 
        ZINV_270_61 , copt_gre_net_1443 , HFSNET_870 , ZBUF_274_166 } ) ,
    .OEB ( \USRAM/guide_buf_421 ) , .WEB ( ZBUF_1922_25 ) , 
    .O ( \USRAM/TMP_ODATA [327:320] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SRAM1RW1024x8 \USRAM/genblk1[41].UMEM (
    .A ( { ZBUF_143_34 , ZBUF_252_49 , HFSNET_1060 , copt_gre_net_386 , 
        HFSNET_1302 , HFSNET_1181 , HFSNET_1173 , ZBUF_30_181 , ZBUF_34_245 , 
        HFSNET_1296 } ) ,
    .CE ( ZCTSNET_28 ) , .CSB ( \USRAM/guide_buf_430 ) ,
    .I ( { ZBUF_128_191 , HFSNET_1330 , HFSNET_1329 , ZBUF_129_191 , 
        copt_gre_net_1127 , ZBUF_129_269 , ZBUF_129_192 , ZBUF_132_190 } ) ,
    .OEB ( \USRAM/guide_buf_431 ) , .WEB ( ZBUF_125_166 ) , 
    .O ( \USRAM/TMP_ODATA [335:328] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SRAM1RW1024x8 \USRAM/genblk1[42].UMEM (
    .A ( { ZBUF_445_181 , ZBUF_252_49 , HFSNET_1060 , copt_gre_net_386 , 
        HFSNET_1302 , HFSNET_1181 , HFSNET_1173 , ZBUF_365_61 , HFSNET_1351 , 
        ZBUF_278_34 } ) ,
    .CE ( ZCTSNET_27 ) , .CSB ( \USRAM/guide_buf_440 ) ,
    .I ( { ZBUF_126_263 , HFSNET_1330 , HFSNET_1329 , ZBUF_122_263 , 
        copt_gre_net_1127 , ZBUF_180_247 , ZBUF_183_247 , ZBUF_122_262 } ) ,
    .OEB ( \USRAM/guide_buf_441 ) , .WEB ( ZBUF_163_7 ) , 
    .O ( \USRAM/TMP_ODATA [343:336] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SRAM1RW1024x8 \USRAM/genblk1[43].UMEM (
    .A ( { ZBUF_302_237 , copt_gre_net_1449 , copt_gre_net_1089 , 
        ZBUF_75_248 , ZBUF_73_248 , ZBUF_75_263 , ZBUF_75_264 , ZBUF_365_61 , 
        HFSNET_837 , ZBUF_278_34 } ) ,
    .CE ( ZCTSNET_20 ) , .CSB ( \USRAM/guide_buf_450 ) ,
    .I ( { copt_gre_net_1447 , ZBUF_218_262 , ZBUF_218_261 , ZBUF_216_270 , 
        ZBUF_166_55 , copt_gre_net_1440 , ZBUF_229_240 , ZBUF_255_251 } ) ,
    .OEB ( \USRAM/guide_buf_451 ) , .WEB ( copt_gre_net_1364 ) , 
    .O ( \USRAM/TMP_ODATA [351:344] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SRAM1RW1024x8 \USRAM/genblk1[44].UMEM (
    .A ( { ZBUF_143_34 , ZBUF_252_49 , HFSNET_1060 , ZBUF_120_181 , 
        ZBUF_184_181 , ZBUF_196_245 , ZBUF_116_182 , ZBUF_30_181 , 
        ZBUF_34_245 , ZBUF_278_34 } ) ,
    .CE ( ZCTSNET_28 ) , .CSB ( \USRAM/guide_buf_460 ) ,
    .I ( { ZBUF_128_191 , HFSNET_1330 , HFSNET_1329 , ZBUF_129_191 , 
        ZBUF_76_61 , ZBUF_129_269 , ZBUF_129_192 , ZBUF_132_190 } ) ,
    .OEB ( \USRAM/guide_buf_461 ) , .WEB ( ZBUF_125_166 ) , 
    .O ( \USRAM/TMP_ODATA [359:352] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SRAM1RW1024x8 \USRAM/genblk1[45].UMEM (
    .A ( { ZBUF_445_181 , ZBUF_252_49 , HFSNET_1060 , ZBUF_120_181 , 
        ZBUF_184_181 , ZBUF_196_245 , ZBUF_116_182 , ZBUF_365_61 , 
        copt_gre_net_1185 , ZBUF_278_34 } ) ,
    .CE ( ZCTSNET_27 ) , .CSB ( \USRAM/guide_buf_470 ) ,
    .I ( { ZBUF_126_263 , HFSNET_1330 , HFSNET_1329 , ZBUF_122_263 , 
        ZBUF_76_61 , ZBUF_180_247 , ZBUF_183_247 , ZBUF_122_262 } ) ,
    .OEB ( \USRAM/guide_buf_471 ) , .WEB ( ZBUF_163_7 ) , 
    .O ( \USRAM/TMP_ODATA [367:360] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SRAM1RW1024x8 \USRAM/genblk1[46].UMEM (
    .A ( { ZBUF_302_237 , ZBUF_118_272 , copt_gre_net_1086 , ZBUF_75_248 , 
        ZBUF_73_248 , ZBUF_75_263 , ZBUF_75_264 , ZBUF_365_61 , ZBUF_125_262 , 
        ZBUF_278_34 } ) ,
    .CE ( ZCTSNET_20 ) , .CSB ( \USRAM/guide_buf_480 ) ,
    .I ( { copt_gre_net_1445 , ZBUF_218_262 , ZBUF_218_261 , ZBUF_216_270 , 
        ZBUF_166_55 , copt_gre_net_1439 , ZBUF_229_240 , ZBUF_255_251 } ) ,
    .OEB ( \USRAM/guide_buf_481 ) , .WEB ( ZBUF_229_235 ) , 
    .O ( \USRAM/TMP_ODATA [375:368] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SRAM1RW1024x8 \USRAM/genblk1[47].UMEM (
    .A ( { copt_gre_net_1094 , ZBUF_179_160 , ZBUF_136_237 , HFSNET_1055 , 
        ZBUF_120_30 , HFSNET_1016 , HFSNET_989 , copt_gre_net_1207 , 
        copt_gre_net_1456 , HFSNET_834 } ) ,
    .CE ( ZCTSNET_17 ) , .CSB ( \USRAM/guide_buf_490 ) ,
    .I ( { copt_gre_net_1447 , HFSNET_1330 , HFSNET_1329 , ZBUF_182_237 , 
        HFSNET_914 , copt_gre_net_1443 , HFSNET_870 , ZBUF_274_166 } ) ,
    .OEB ( \USRAM/guide_buf_491 ) , .WEB ( copt_gre_net_1365 ) , 
    .O ( \USRAM/TMP_ODATA [383:376] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SRAM1RW1024x8 \USRAM/genblk1[48].UMEM (
    .A ( { ZBUF_269_158 , HFSNET_1086 , ZBUF_22_237 , ZBUF_4_156 , 
        ZBUF_120_30 , ZBUF_45_241 , HFSNET_989 , ZBUF_188_290 , ZBUF_136_236 , 
        HFSNET_834 } ) ,
    .CE ( ZCTSNET_3 ) , .CSB ( \USRAM/guide_buf_500 ) ,
    .I ( { ZBUF_31_163 , copt_gre_net_1058 , copt_gre_net_1125 , 
        ZBUF_182_237 , HFSNET_896 , ZBUF_310_5 , ZBUF_301_7 , ZBUF_274_166 } ) ,
    .OEB ( \USRAM/guide_buf_501 ) , .WEB ( copt_gre_net_365 ) , 
    .O ( \USRAM/TMP_ODATA [391:384] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SRAM1RW1024x8 \USRAM/genblk1[49].UMEM (
    .A ( { copt_gre_net_1083 , copt_gre_net_1155 , copt_gre_net_1437 , 
        ZBUF_4351_30 , HFSNET_1381 , HFSNET_1013 , ZBUF_126_46 , ZBUF_159_60 , 
        HFSNET_1275 , ZBUF_185_43 } ) ,
    .CE ( ZCTSNET_3 ) , .CSB ( \USRAM/guide_buf_510 ) ,
    .I ( { HFSNET_950 , HFSNET_946 , copt_gre_net_1122 , HFSNET_920 , 
        HFSNET_1315 , ZBUF_183_49 , ZINV_185_7 , ZINV_187_6 } ) ,
    .OEB ( \USRAM/guide_buf_511 ) , .WEB ( HFSNET_979 ) , 
    .O ( \USRAM/TMP_ODATA [399:392] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SRAM1RW1024x8 \USRAM/genblk1[50].UMEM (
    .A ( { ZBUF_131_181 , ZBUF_163_166 , ZBUF_71_181 , ZBUF_4351_30 , 
        HFSNET_1381 , HFSNET_1013 , ZBUF_126_46 , copt_gre_net_1414 , 
        copt_gre_net_1386 , HFSNET_829 } ) ,
    .CE ( ZCTSNET_3 ) , .CSB ( \USRAM/guide_buf_520 ) ,
    .I ( { ZBUF_243_4 , ZBUF_235_4 , ZBUF_157_262 , HFSNET_920 , ZBUF_36_54 , 
        ZBUF_183_49 , ZINV_185_7 , ZINV_187_6 } ) ,
    .OEB ( \USRAM/guide_buf_521 ) , .WEB ( ZBUF_148_262 ) , 
    .O ( \USRAM/TMP_ODATA [407:400] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SRAM1RW1024x8 \USRAM/genblk1[51].UMEM (
    .A ( { ZBUF_302_237 , copt_gre_net_1383 , copt_gre_net_1089 , 
        HFSNET_1055 , copt_gre_net_1163 , ZBUF_88_160 , ZBUF_200_160 , 
        ZBUF_75_187 , ZBUF_75_252 , HFSNET_822 } ) ,
    .CE ( ZCTSNET_20 ) , .CSB ( \USRAM/guide_buf_530 ) ,
    .I ( { copt_gre_net_1447 , ZBUF_218_262 , ZBUF_218_261 , ZBUF_216_270 , 
        ZBUF_166_55 , copt_gre_net_1440 , ZBUF_229_240 , ZBUF_255_251 } ) ,
    .OEB ( \USRAM/guide_buf_531 ) , .WEB ( copt_gre_net_1363 ) , 
    .O ( \USRAM/TMP_ODATA [415:408] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SRAM1RW1024x8 \USRAM/genblk1[52].UMEM (
    .A ( { ZBUF_75_185 , ZBUF_73_266 , copt_gre_net_1088 , ZBUF_21_156 , 
        copt_gre_net_1162 , ZBUF_286_44 , HFSNET_1335 , ZBUF_75_251 , 
        ZBUF_59_236 , ZBUF_69_239 } ) ,
    .CE ( ZCTSNET_18 ) , .CSB ( \USRAM/guide_buf_540 ) ,
    .I ( { ZBUF_121_253 , ZBUF_244_286 , ZBUF_167_245 , ZBUF_75_189 , 
        ZBUF_85_60 , ZBUF_75_190 , ZBUF_75_191 , ZBUF_76_268 } ) ,
    .OEB ( \USRAM/guide_buf_541 ) , .WEB ( ZBUF_94_235 ) , 
    .O ( \USRAM/TMP_ODATA [423:416] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SRAM1RW1024x8 \USRAM/genblk1[53].UMEM (
    .A ( { ZBUF_75_186 , ZBUF_75_250 , copt_gre_net_1435 , ZBUF_4351_30 , 
        HFSNET_1381 , ZBUF_286_44 , ZBUF_4_45 , ZBUF_205_258 , 
        copt_gre_net_1393 , ZBUF_104_165 } ) ,
    .CE ( ZCTSNET_1 ) , .CSB ( \USRAM/guide_buf_550 ) ,
    .I ( { HFSNET_950 , HFSNET_946 , ZBUF_52_3 , HFSNET_920 , HFSNET_1315 , 
        ZBUF_183_49 , ZINV_185_7 , ZINV_187_6 } ) ,
    .OEB ( \USRAM/guide_buf_551 ) , .WEB ( ZBUF_139_241 ) , 
    .O ( \USRAM/TMP_ODATA [431:424] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SRAM1RW1024x8 \USRAM/genblk1[54].UMEM (
    .A ( { ropt_net_1507 , ZBUF_163_166 , ZBUF_71_181 , ropt_net_1518 , 
        HFSNET_1381 , HFSNET_1013 , ZBUF_126_46 , copt_gre_net_382 , 
        ZBUF_63_181 , ZBUF_35_192 } ) ,
    .CE ( ZCTSNET_1 ) , .CSB ( \USRAM/guide_buf_560 ) ,
    .I ( { copt_gre_net_1428 , copt_gre_net_395 , ZBUF_157_262 , HFSNET_920 , 
        HFSNET_1315 , ZBUF_183_49 , ZINV_185_7 , ZINV_187_6 } ) ,
    .OEB ( \USRAM/guide_buf_561 ) , .WEB ( ZBUF_148_262 ) , 
    .O ( \USRAM/TMP_ODATA [439:432] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SRAM1RW1024x8 \USRAM/genblk1[55].UMEM (
    .A ( { ZBUF_302_237 , ZBUF_118_272 , copt_gre_net_1086 , ZBUF_189_34 , 
        ZBUF_182_55 , ZBUF_88_160 , ZBUF_243_250 , ZBUF_75_187 , ZBUF_75_252 , 
        HFSNET_822 } ) ,
    .CE ( ZCTSNET_20 ) , .CSB ( \USRAM/guide_buf_570 ) ,
    .I ( { copt_gre_net_1445 , ZBUF_218_262 , ZBUF_218_261 , ZBUF_216_270 , 
        ZBUF_166_55 , copt_gre_net_1439 , ZBUF_229_240 , ZBUF_255_251 } ) ,
    .OEB ( \USRAM/guide_buf_571 ) , .WEB ( ZBUF_229_235 ) , 
    .O ( \USRAM/TMP_ODATA [447:440] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SRAM1RW1024x8 \USRAM/genblk1[56].UMEM (
    .A ( { ZBUF_75_185 , ZBUF_73_266 , ZBUF_387_250 , ZBUF_189_34 , 
        ZBUF_182_55 , ZBUF_88_44 , copt_gre_net_1371 , ZBUF_75_251 , 
        ZBUF_59_236 , ZBUF_69_239 } ) ,
    .CE ( ZCTSNET_18 ) , .CSB ( \USRAM/guide_buf_580 ) ,
    .I ( { ZBUF_121_253 , ZBUF_244_286 , ZBUF_167_245 , ZBUF_75_189 , 
        copt_gre_net_408 , ZBUF_75_190 , ZBUF_75_191 , ZBUF_76_268 } ) ,
    .OEB ( \USRAM/guide_buf_581 ) , .WEB ( ZBUF_94_235 ) , 
    .O ( \USRAM/TMP_ODATA [455:448] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SRAM1RW1024x8 \USRAM/genblk1[57].UMEM (
    .A ( { ZBUF_75_186 , ZBUF_75_250 , copt_gre_net_1434 , ZBUF_189_34 , 
        ZBUF_182_55 , ZBUF_43_44 , HFSNET_1334 , ZBUF_9_54 , ZBUF_71_192 , 
        ZBUF_104_165 } ) ,
    .CE ( ZCTSNET_0 ) , .CSB ( \USRAM/guide_buf_590 ) ,
    .I ( { HFSNET_950 , HFSNET_946 , ZBUF_52_3 , HFSNET_920 , HFSNET_1315 , 
        ZBUF_183_49 , ZINV_185_7 , ZINV_187_6 } ) ,
    .OEB ( \USRAM/guide_buf_591 ) , .WEB ( ZBUF_139_241 ) , 
    .O ( \USRAM/TMP_ODATA [463:456] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SRAM1RW1024x8 \USRAM/genblk1[58].UMEM (
    .A ( { ropt_net_1507 , ZBUF_163_166 , ZBUF_71_181 , ropt_net_1517 , 
        HFSNET_1381 , HFSNET_1013 , ZBUF_126_46 , copt_gre_net_381 , 
        ZBUF_63_181 , ZBUF_35_192 } ) ,
    .CE ( ZCTSNET_0 ) , .CSB ( \USRAM/guide_buf_600 ) ,
    .I ( { copt_gre_net_1428 , copt_gre_net_395 , ZBUF_157_262 , HFSNET_920 , 
        HFSNET_1315 , ZBUF_183_49 , ZINV_185_7 , ZINV_187_6 } ) ,
    .OEB ( \USRAM/guide_buf_601 ) , .WEB ( ZBUF_148_262 ) , 
    .O ( \USRAM/TMP_ODATA [471:464] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SRAM1RW1024x8 \USRAM/genblk1[59].UMEM (
    .A ( { ZBUF_445_181 , ZBUF_252_49 , HFSNET_1060 , ZBUF_120_181 , 
        ZBUF_184_181 , ZBUF_196_245 , ZBUF_116_182 , ZBUF_365_61 , 
        copt_gre_net_1184 , ZBUF_278_34 } ) ,
    .CE ( ZCTSNET_27 ) , .CSB ( \USRAM/guide_buf_610 ) ,
    .I ( { ZBUF_126_263 , HFSNET_1330 , HFSNET_1329 , ZBUF_122_263 , 
        ZBUF_76_61 , ZBUF_180_247 , ZBUF_183_247 , ZBUF_122_262 } ) ,
    .OEB ( \USRAM/guide_buf_611 ) , .WEB ( ZBUF_163_7 ) , 
    .O ( \USRAM/TMP_ODATA [479:472] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SRAM1RW1024x8 \USRAM/genblk1[60].UMEM (
    .A ( { ZBUF_302_237 , ZBUF_118_272 , copt_gre_net_1085 , ZBUF_75_248 , 
        ZBUF_73_248 , ZBUF_75_263 , ZBUF_75_264 , ZBUF_365_61 , ZBUF_125_262 , 
        ZBUF_278_34 } ) ,
    .CE ( ZCTSNET_20 ) , .CSB ( \USRAM/guide_buf_620 ) ,
    .I ( { copt_gre_net_1444 , ZBUF_218_262 , ZBUF_218_261 , ZBUF_216_270 , 
        ZBUF_166_55 , copt_gre_net_1438 , ZBUF_229_240 , ZBUF_255_251 } ) ,
    .OEB ( \USRAM/guide_buf_621 ) , .WEB ( ZBUF_229_235 ) , 
    .O ( \USRAM/TMP_ODATA [487:480] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SRAM1RW1024x8 \USRAM/genblk1[61].UMEM (
    .A ( { ZBUF_302_237 , ZBUF_118_272 , copt_gre_net_1085 , ZBUF_189_34 , 
        ZBUF_182_55 , ZBUF_88_160 , ZBUF_243_250 , ZBUF_75_187 , ZBUF_75_252 , 
        HFSNET_822 } ) ,
    .CE ( ZCTSNET_20 ) , .CSB ( \USRAM/guide_buf_630 ) ,
    .I ( { copt_gre_net_1444 , ZBUF_218_262 , ZBUF_218_261 , ZBUF_216_270 , 
        ZBUF_166_55 , copt_gre_net_1438 , ZBUF_229_240 , ZBUF_255_251 } ) ,
    .OEB ( \USRAM/guide_buf_631 ) , .WEB ( ZBUF_229_235 ) , 
    .O ( \USRAM/TMP_ODATA [495:488] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SRAM1RW1024x8 \USRAM/genblk1[62].UMEM (
    .A ( { ZBUF_75_185 , ZBUF_73_266 , ZBUF_387_250 , ZBUF_189_34 , 
        ZBUF_182_55 , ZBUF_88_44 , copt_gre_net_441 , ZBUF_75_251 , 
        ZBUF_59_236 , ZBUF_69_239 } ) ,
    .CE ( ZCTSNET_18 ) , .CSB ( \USRAM/guide_buf_640 ) ,
    .I ( { ZBUF_121_253 , ZBUF_244_286 , ZBUF_167_245 , ZBUF_75_189 , 
        ZBUF_95_181 , ZBUF_75_190 , ZBUF_75_191 , ZBUF_76_268 } ) ,
    .OEB ( \USRAM/guide_buf_641 ) , .WEB ( ZBUF_94_235 ) , 
    .O ( \USRAM/TMP_ODATA [503:496] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
SRAM1RW1024x8 \USRAM/genblk1[63].UMEM (
    .A ( { ZBUF_75_186 , ZBUF_75_250 , copt_gre_net_1433 , ZBUF_189_34 , 
        ZBUF_182_55 , copt_gre_net_1240 , HFSNET_1334 , ZBUF_9_54 , 
        ZBUF_71_192 , ZBUF_104_165 } ) ,
    .CE ( ZCTSNET_0 ) , .CSB ( \USRAM/guide_buf_650 ) ,
    .I ( { HFSNET_950 , HFSNET_946 , ZBUF_52_3 , HFSNET_920 , ZBUF_95_181 , 
        ZBUF_183_49 , ZINV_185_7 , ZINV_187_6 } ) ,
    .OEB ( \USRAM/guide_buf_651 ) , .WEB ( ZBUF_139_241 ) , 
    .O ( \USRAM/TMP_ODATA [511:504] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO222X1_HVT ctmi_4404 ( .A1 ( HFSNET_1367 ) , .A2 ( HFSNET_400 ) , 
    .A3 ( copt_gre_net_1463 ) , .A4 ( HFSNET_345 ) , 
    .A5 ( \USRAM/guide_buf_338 ) , .A6 ( copt_gre_net_1465 ) , 
    .Y ( ctmn_3827_CDR1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6357 ( .A ( copt_gre_net_489 ) , 
    .Y ( copt_gre_net_488 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1_HVT ctmi_4406 ( .A1 ( copt_gre_net_454 ) , 
    .A2 ( \USRAM/guide_buf_308 ) , .A3 ( HFSNET_1363 ) , .A4 ( HFSNET_334 ) , 
    .A5 ( HFSNET_734 ) , .Y ( ctmn_3831_CDR1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1_HVT ctmi_4407 ( .A1 ( ctmn_3565 ) , .A2 ( copt_gre_net_837 ) , 
    .A3 ( HFSNET_256 ) , .A4 ( ZBUF_25_271 ) , .A5 ( ctmn_3829_CDR1 ) , 
    .Y ( ctmn_3830_CDR1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1_HVT ctmi_4408 ( .A1 ( ZBUF_439_0 ) , .A2 ( copt_gre_net_761 ) , 
    .A3 ( ZBUF_2_78 ) , .A4 ( ctmn_3590 ) , .A5 ( ctmn_3828_CDR1 ) , 
    .Y ( ctmn_3829_CDR1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1_HVT ctmi_4409 ( .A1 ( copt_gre_net_1244 ) , .A2 ( copt_gre_net_326 ) , 
    .A3 ( copt_gre_net_685 ) , .A4 ( HFSNET_1362 ) , .Y ( ctmn_3828_CDR1 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO222X1_HVT ctmi_4410 ( .A1 ( HFSNET_762 ) , .A2 ( HFSNET_209 ) , 
    .A3 ( ZBUF_2_124 ) , .A4 ( ctmn_3600 ) , .A5 ( HFSNET_1358 ) , 
    .A6 ( ZBUF_159_118 ) , .Y ( ctmn_3832_CDR1 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
OR3X1_HVT ctmi_4411 ( .A1 ( ctmn_3838_CDR1 ) , .A2 ( ctmn_3842_CDR1 ) , 
    .A3 ( ctmn_3850_CDR1 ) , .Y ( ctmn_3851_CDR1 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO221X1_HVT ctmi_4412 ( .A1 ( copt_gre_net_1013 ) , .A2 ( ctmn_3607 ) , 
    .A3 ( copt_gre_net_1343 ) , .A4 ( ctmn_3605 ) , .A5 ( ctmn_3837_CDR1 ) , 
    .Y ( ctmn_3838_CDR1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X2_HVT ctmi_4413 ( .A1 ( HFSNET_1354 ) , .A2 ( copt_gre_net_965 ) , 
    .A3 ( ropt_net_1495 ) , .A4 ( ZBUF_196_4 ) , .A5 ( ctmn_3836_CDR1 ) , 
    .Y ( ctmn_3837_CDR1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1_HVT ctmi_4414 ( .A1 ( ZBUF_74_17 ) , .A2 ( copt_gre_net_933 ) , 
    .A3 ( \USRAM/guide_buf_248 ) , .A4 ( ctmn_3636 ) , .A5 ( HFSNET_736 ) , 
    .Y ( ctmn_3836_CDR1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1_HVT ctmi_4415 ( .A1 ( ctmn_3612 ) , .A2 ( copt_gre_net_758 ) , 
    .A3 ( \USRAM/guide_buf_258 ) , .A4 ( ctmn_3617 ) , .Y ( ctmn_3835_CDR1 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X2_HVT ctmi_4416 ( .A1 ( copt_gre_net_451 ) , .A2 ( HFSNET_1133 ) , 
    .A3 ( copt_gre_net_1008 ) , .A4 ( HFSNET_1359 ) , .A5 ( ctmn_3841_CDR1 ) , 
    .Y ( ctmn_3842_CDR1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1_HVT ctmi_4417 ( .A1 ( HFSNET_1375 ) , .A2 ( copt_gre_net_1336 ) , 
    .A3 ( HFSNET_1130 ) , .A4 ( ctmn_3621 ) , .A5 ( ctmn_3840_CDR1 ) , 
    .Y ( ctmn_3841_CDR1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1_HVT ctmi_4418 ( .A1 ( ctmn_3618 ) , .A2 ( \USRAM/guide_buf_158 ) , 
    .A3 ( copt_gre_net_1430 ) , .A4 ( ropt_net_1493 ) , 
    .A5 ( ctmn_3839_CDR1 ) , .Y ( ctmn_3840_CDR1 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO22X1_HVT ctmi_4419 ( .A1 ( HFSNET_193 ) , .A2 ( HFSNET_1357 ) , 
    .A3 ( copt_gre_net_859 ) , .A4 ( HFSNET_1356 ) , .Y ( ctmn_3839_CDR1 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_21_410 ( .A ( ZBUF_114_160 ) , .Y ( HFSNET_67 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO222X1_HVT ctmi_4421 ( .A1 ( ctmn_3631 ) , .A2 ( copt_gre_net_824 ) , 
    .A3 ( copt_gre_net_771 ) , .A4 ( ropt_net_1466 ) , 
    .A5 ( copt_gre_net_1457 ) , .A6 ( HFSNET_247 ) , .Y ( ctmn_3843_CDR1 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6358 ( .A ( copt_gre_net_490 ) , 
    .Y ( copt_gre_net_489 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1_HVT ctmi_4423 ( .A1 ( ctmn_3637 ) , .A2 ( HFSNET_493 ) , 
    .A3 ( ctmn_3581 ) , .A4 ( copt_gre_net_1297 ) , .A5 ( HFSNET_739 ) , 
    .Y ( ctmn_3847_CDR1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1_HVT ctmi_4424 ( .A1 ( ctmn_3574 ) , .A2 ( ZBUF_26_278 ) , 
    .A3 ( ctmn_3610 ) , .A4 ( \USRAM/guide_buf_378 ) , 
    .A5 ( ctmn_3845_CDR1 ) , .Y ( ctmn_3846_CDR1 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO221X1_HVT ctmi_4425 ( .A1 ( \USRAM/guide_buf_348 ) , .A2 ( ctmn_3640 ) , 
    .A3 ( HFSNET_356 ) , .A4 ( ctmn_3592 ) , .A5 ( copt_gre_net_446 ) , 
    .Y ( ctmn_3845_CDR1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1_HVT ctmi_4426 ( .A1 ( ZBUF_242_12 ) , .A2 ( copt_gre_net_571 ) , 
    .A3 ( \USRAM/guide_buf_548 ) , .A4 ( ZBUF_292_12 ) , 
    .Y ( ctmn_3844_CDR1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO222X1_HVT ctmi_4427 ( .A1 ( copt_gre_net_777 ) , .A2 ( ctmn_3648 ) , 
    .A3 ( copt_gre_net_807 ) , .A4 ( HFSNET_1366 ) , .A5 ( HFSNET_1365 ) , 
    .A6 ( copt_gre_net_826 ) , .Y ( ctmn_3848_CDR1 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6359 ( .A ( copt_gre_net_491 ) , 
    .Y ( copt_gre_net_490 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO222X1_HVT ctmi_4430 ( .A1 ( HFSNET_1373 ) , .A2 ( copt_gre_net_813 ) , 
    .A3 ( ctmn_3559 ) , .A4 ( \USRAM/guide_buf_509 ) , .A5 ( HFSNET_1368 ) , 
    .A6 ( HFSNET_476 ) , .Y ( ctmn_3852_CDR1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6360 ( .A ( copt_gre_net_492 ) , 
    .Y ( copt_gre_net_491 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1_HVT ctmi_4432 ( .A1 ( HFSNET_634 ) , .A2 ( ctmn_3562 ) , 
    .A3 ( ropt_net_1519 ) , .A4 ( copt_gre_net_851 ) , .A5 ( HFSNET_741 ) , 
    .Y ( ctmn_3856_CDR1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1_HVT ctmi_4433 ( .A1 ( copt_gre_net_650 ) , .A2 ( ctmn_3564 ) , 
    .A3 ( ZBUF_251_12 ) , .A4 ( ZBUF_244_40 ) , .A5 ( ctmn_3854_CDR1 ) , 
    .Y ( ctmn_3855_CDR1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1_HVT ctmi_4434 ( .A1 ( copt_gre_net_315 ) , .A2 ( copt_gre_net_463 ) , 
    .A3 ( ZBUF_212_0 ) , .A4 ( copt_gre_net_586 ) , .A5 ( ctmn_3853_CDR1 ) , 
    .Y ( ctmn_3854_CDR1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1_HVT ctmi_4435 ( .A1 ( copt_gre_net_548 ) , .A2 ( ctmn_3566 ) , 
    .A3 ( ctmn_3641 ) , .A4 ( HFSNET_431 ) , .Y ( ctmn_3853_CDR1 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO222X1_HVT ctmi_4436 ( .A1 ( HFSNET_420 ) , .A2 ( ctmn_3558 ) , 
    .A3 ( ctmn_3585 ) , .A4 ( copt_gre_net_697 ) , 
    .A5 ( \USRAM/guide_buf_429 ) , .A6 ( copt_gre_net_1464 ) , 
    .Y ( ctmn_3857_CDR1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_79_414 ( .A ( MEM_CSB[7] ) , .Y ( HFSNET_71 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO222X1_HVT ctmi_4438 ( .A1 ( copt_gre_net_1463 ) , .A2 ( copt_gre_net_923 ) , 
    .A3 ( HFSNET_1367 ) , .A4 ( HFSNET_401 ) , .A5 ( \USRAM/guide_buf_339 ) , 
    .A6 ( copt_gre_net_1465 ) , .Y ( ctmn_3860_CDR1 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO221X1_HVT ctmi_4440 ( .A1 ( copt_gre_net_454 ) , 
    .A2 ( \USRAM/guide_buf_309 ) , .A3 ( HFSNET_1363 ) , 
    .A4 ( copt_gre_net_1303 ) , .A5 ( HFSNET_743 ) , .Y ( ctmn_3864_CDR1 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1_HVT ctmi_4441 ( .A1 ( ctmn_3565 ) , .A2 ( copt_gre_net_1283 ) , 
    .A3 ( HFSNET_258 ) , .A4 ( ctmn_3623 ) , .A5 ( ctmn_3862_CDR1 ) , 
    .Y ( ctmn_3863_CDR1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1_HVT ctmi_4442 ( .A1 ( HFSNET_1358 ) , .A2 ( ZBUF_2_56 ) , 
    .A3 ( HFSNET_267 ) , .A4 ( HFSNET_1360 ) , .A5 ( ctmn_3861_CDR1 ) , 
    .Y ( ctmn_3862_CDR1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1_HVT ctmi_4443 ( .A1 ( ZBUF_439_0 ) , .A2 ( copt_gre_net_603 ) , 
    .A3 ( copt_gre_net_595 ) , .A4 ( HFSNET_1362 ) , .Y ( ctmn_3861_CDR1 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO222X1_HVT ctmi_4444 ( .A1 ( ctmn_3612 ) , .A2 ( HFSNET_641 ) , 
    .A3 ( ZBUF_103_94 ) , .A4 ( ctmn_3600 ) , .A5 ( copt_gre_net_1244 ) , 
    .A6 ( HFSNET_287 ) , .Y ( ctmn_3865_CDR1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
OR3X1_HVT ctmi_4445 ( .A1 ( ctmn_3871_CDR1 ) , .A2 ( ctmn_3875_CDR1 ) , 
    .A3 ( ctmn_3883_CDR1 ) , .Y ( ctmn_3884_CDR1 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO221X1_HVT ctmi_4446 ( .A1 ( copt_gre_net_985 ) , .A2 ( ctmn_3607 ) , 
    .A3 ( HFSNET_312 ) , .A4 ( ctmn_3605 ) , .A5 ( ctmn_3870_CDR1 ) , 
    .Y ( ctmn_3871_CDR1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X2_HVT ctmi_4447 ( .A1 ( ctmn_3649 ) , .A2 ( copt_gre_net_913 ) , 
    .A3 ( copt_gre_net_954 ) , .A4 ( ctmn_3582 ) , .A5 ( ctmn_3869_CDR1 ) , 
    .Y ( ctmn_3870_CDR1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1_HVT ctmi_4448 ( .A1 ( ZBUF_74_17 ) , .A2 ( HFSNET_669 ) , 
    .A3 ( \USRAM/guide_buf_249 ) , .A4 ( ctmn_3636 ) , .A5 ( HFSNET_745 ) , 
    .Y ( ctmn_3869_CDR1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1_HVT ctmi_4449 ( .A1 ( ctmn_3601 ) , .A2 ( copt_gre_net_687 ) , 
    .A3 ( \USRAM/guide_buf_259 ) , .A4 ( ctmn_3617 ) , .Y ( ctmn_3868_CDR1 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X2_HVT ctmi_4450 ( .A1 ( ctmn_3618 ) , .A2 ( \USRAM/guide_buf_159 ) , 
    .A3 ( copt_gre_net_451 ) , .A4 ( HFSNET_178 ) , .A5 ( ctmn_3874_CDR1 ) , 
    .Y ( ctmn_3875_CDR1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1_HVT ctmi_4451 ( .A1 ( copt_gre_net_1430 ) , .A2 ( HFSNET_169 ) , 
    .A3 ( copt_gre_net_348 ) , .A4 ( ctmn_3619 ) , .A5 ( ctmn_3873_CDR1 ) , 
    .Y ( ctmn_3874_CDR1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1_HVT ctmi_4452 ( .A1 ( HFSNET_1375 ) , .A2 ( copt_gre_net_841 ) , 
    .A3 ( copt_gre_net_857 ) , .A4 ( HFSNET_1359 ) , .A5 ( ctmn_3872_CDR1 ) , 
    .Y ( ctmn_3873_CDR1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1_HVT ctmi_4453 ( .A1 ( copt_gre_net_766 ) , .A2 ( HFSNET_1356 ) , 
    .A3 ( ZBUF_74_204 ) , .A4 ( HFSNET_1372 ) , .Y ( ctmn_3872_CDR1 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_105_416 ( .A ( MEM_CSB[8] ) , .Y ( HFSNET_73 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO222X1_HVT ctmi_4455 ( .A1 ( ctmn_3631 ) , .A2 ( copt_gre_net_733 ) , 
    .A3 ( ZBUF_95_73 ) , .A4 ( ropt_net_1466 ) , .A5 ( copt_gre_net_1457 ) , 
    .A6 ( HFSNET_249 ) , .Y ( ctmn_3876_CDR1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X1_HVT ctmi_4457 ( .A1 ( ctmn_3637 ) , .A2 ( HFSNET_494 ) , 
    .A3 ( ctmn_3581 ) , .A4 ( ZBUF_2_212 ) , .A5 ( HFSNET_748 ) , 
    .Y ( ctmn_3880_CDR1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO221X2_HVT ctmi_4458 ( .A1 ( ctmn_3610 ) , .A2 ( \USRAM/guide_buf_379 ) , 
    .A3 ( \USRAM/guide_buf_349 ) , .A4 ( ZBUF_28_274 ) , 
    .A5 ( ctmn_3878_CDR1 ) , .Y ( ctmn_3879_CDR1 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
AO221X1_HVT ctmi_4459 ( .A1 ( ctmn_3574 ) , .A2 ( ZBUF_2_37 ) , 
    .A3 ( HFSNET_357 ) , .A4 ( ctmn_3592 ) , .A5 ( ctmn_3877_CDR1 ) , 
    .Y ( ctmn_3878_CDR1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X2_HVT ctmi_4460 ( .A1 ( ZBUF_242_12 ) , .A2 ( copt_gre_net_563 ) , 
    .A3 ( HFSNET_506 ) , .A4 ( ZBUF_292_12 ) , .Y ( ctmn_3877_CDR1 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO222X1_HVT ctmi_4461 ( .A1 ( ZBUF_2_203 ) , .A2 ( ctmn_3648 ) , 
    .A3 ( copt_gre_net_746 ) , .A4 ( ctmn_3634 ) , .A5 ( ctmn_3647 ) , 
    .A6 ( copt_gre_net_722 ) , .Y ( ctmn_3881_CDR1 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_4_418 ( .A ( MEM_OEB[0] ) , .Y ( HFSNET_75 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_23_419 ( .A ( MEM_OEB[10] ) , .Y ( HFSNET_76 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
CGLPPRX2_HVT \clock_gate_UGRAY_COUNTER_16B/binary_reg ( 
    .SE ( optlc_net_260 ) , .EN ( clkgt_enable_net_331 ) , .CLK ( CE ) , 
    .GCLK ( \CE_clock_gate_UGRAY_COUNTER_16B/binary_reg ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
SDFFARX1_HVT \UTOGGLE_DATA_8B/data_reg[7] ( .D ( N135 ) , 
    .SI ( optlc_net_259 ) , .SE ( optlc_net_259 ) , .CLK ( HFSNET_790 ) , 
    .RSTB ( RSTN ) , .QN ( TOGGLED_DATA[7] ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6361 ( .A ( MEM_OEB[37] ) , 
    .Y ( copt_gre_net_492 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6362 ( .A ( copt_gre_net_494 ) , 
    .Y ( copt_gre_net_493 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT HFSBUF_4_422 ( .A ( MEM_OEB[13] ) , .Y ( HFSNET_79 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6363 ( .A ( ZBUF_63_11 ) , 
    .Y ( copt_gre_net_494 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT copt_gre_mt_inst_6364 ( .A ( copt_gre_net_496 ) , 
    .Y ( copt_gre_net_495 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_439_inst_2049 ( .A ( ctmn_3591 ) , .Y ( ZBUF_439_0 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6365 ( .A ( ZBUF_76_17 ) , 
    .Y ( copt_gre_net_496 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_9_inst_2050 ( .A ( \USRAM/guide_buf_13 ) , .Y ( ZBUF_9_0 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_19_429 ( .A ( MEM_OEB[18] ) , .Y ( HFSNET_86 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT HFSBUF_4_430 ( .A ( MEM_OEB[19] ) , .Y ( HFSNET_87 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_23_432 ( .A ( MEM_OEB[20] ) , .Y ( HFSNET_89 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6367 ( .A ( copt_gre_net_499 ) , 
    .Y ( copt_gre_net_498 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6368 ( .A ( copt_gre_net_500 ) , 
    .Y ( copt_gre_net_499 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT HFSBUF_4_435 ( .A ( MEM_OEB[22] ) , .Y ( HFSNET_92 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6369 ( .A ( ZBUF_291_6 ) , 
    .Y ( copt_gre_net_500 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT copt_gre_mt_inst_6370 ( .A ( copt_gre_net_502 ) , 
    .Y ( copt_gre_net_501 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_23_439 ( .A ( HFSNET_97 ) , .Y ( HFSNET_96 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_49_440 ( .A ( MEM_OEB[26] ) , .Y ( HFSNET_97 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_23_441 ( .A ( MEM_OEB[27] ) , .Y ( HFSNET_98 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT copt_gre_mt_inst_6371 ( .A ( copt_gre_net_503 ) , 
    .Y ( copt_gre_net_502 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6372 ( .A ( ZBUF_279_16 ) , 
    .Y ( copt_gre_net_503 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6373 ( .A ( copt_gre_net_505 ) , 
    .Y ( copt_gre_net_504 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6374 ( .A ( copt_gre_net_506 ) , 
    .Y ( copt_gre_net_505 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6375 ( .A ( HFSNET_133 ) , 
    .Y ( copt_gre_net_506 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6376 ( .A ( copt_gre_net_508 ) , 
    .Y ( copt_gre_net_507 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6377 ( .A ( copt_gre_net_509 ) , 
    .Y ( copt_gre_net_508 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6378 ( .A ( ZBUF_162_11 ) , 
    .Y ( copt_gre_net_509 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6379 ( .A ( copt_gre_net_511 ) , 
    .Y ( copt_gre_net_510 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_53_451 ( .A ( MEM_OEB[39] ) , .Y ( HFSNET_108 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6380 ( .A ( ZBUF_251_17 ) , 
    .Y ( copt_gre_net_511 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6381 ( .A ( copt_gre_net_513 ) , 
    .Y ( copt_gre_net_512 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6382 ( .A ( HFSNET_144 ) , 
    .Y ( copt_gre_net_513 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6383 ( .A ( copt_gre_net_515 ) , 
    .Y ( copt_gre_net_514 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6384 ( .A ( ZBUF_180_17 ) , 
    .Y ( copt_gre_net_515 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_46_457 ( .A ( MEM_OEB[43] ) , .Y ( HFSNET_114 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6385 ( .A ( copt_gre_net_517 ) , 
    .Y ( copt_gre_net_516 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT HFSBUF_49_459 ( .A ( MEM_OEB[44] ) , .Y ( HFSNET_116 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_135_460 ( .A ( MEM_OEB[45] ) , .Y ( HFSNET_117 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6386 ( .A ( ZBUF_2_26 ) , 
    .Y ( copt_gre_net_517 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6387 ( .A ( copt_gre_net_519 ) , 
    .Y ( copt_gre_net_518 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX8_HVT ZBUF_54_inst_5120 ( .A ( MEM_OEB[21] ) , .Y ( ZBUF_54_3 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_19_464 ( .A ( MEM_OEB[49] ) , .Y ( HFSNET_121 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_105_465 ( .A ( MEM_OEB[4] ) , .Y ( HFSNET_122 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX8_HVT ZBUF_25_inst_5121 ( .A ( MEM_OEB[34] ) , .Y ( ZBUF_25_3 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_23_467 ( .A ( MEM_OEB[51] ) , .Y ( HFSNET_124 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT HFSBUF_23_468 ( .A ( MEM_OEB[52] ) , .Y ( HFSNET_125 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT copt_gre_mt_inst_6388 ( .A ( MEM_OEB[1] ) , 
    .Y ( copt_gre_net_519 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6389 ( .A ( copt_gre_net_521 ) , 
    .Y ( copt_gre_net_520 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6390 ( .A ( copt_gre_net_522 ) , 
    .Y ( copt_gre_net_521 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6391 ( .A ( ZBUF_4_16 ) , 
    .Y ( copt_gre_net_522 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT HFSBUF_72_473 ( .A ( MEM_OEB[55] ) , .Y ( HFSNET_130 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_58_474 ( .A ( MEM_OEB[56] ) , .Y ( HFSNET_131 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_223_inst_2354 ( .A ( \USRAM/guide_buf_5 ) , 
    .Y ( ZBUF_223_30 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT HFSBUF_96_476 ( .A ( HFSNET_134 ) , .Y ( HFSNET_133 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_172_477 ( .A ( MEM_OEB[58] ) , .Y ( HFSNET_134 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6392 ( .A ( copt_gre_net_524 ) , 
    .Y ( copt_gre_net_523 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6393 ( .A ( copt_gre_net_525 ) , 
    .Y ( copt_gre_net_524 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6394 ( .A ( HFSNET_142 ) , 
    .Y ( copt_gre_net_525 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6395 ( .A ( copt_gre_net_527 ) , 
    .Y ( copt_gre_net_526 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6396 ( .A ( copt_gre_net_528 ) , 
    .Y ( copt_gre_net_527 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6397 ( .A ( ZBUF_68_197 ) , 
    .Y ( copt_gre_net_528 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT HFSBUF_53_485 ( .A ( HFSNET_143 ) , .Y ( HFSNET_142 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_214_486 ( .A ( MEM_OEB[63] ) , .Y ( HFSNET_143 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_4_487 ( .A ( MEM_OEB[6] ) , .Y ( HFSNET_144 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT copt_gre_mt_inst_6399 ( .A ( ZBUF_279_17 ) , 
    .Y ( copt_gre_net_530 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_23_489 ( .A ( copt_gre_net_487 ) , .Y ( HFSNET_146 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT HFSBUF_176_490 ( .A ( MEM_OEB[8] ) , .Y ( HFSNET_147 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_23_491 ( .A ( MEM_OEB[9] ) , .Y ( HFSNET_148 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6400 ( .A ( copt_gre_net_532 ) , 
    .Y ( copt_gre_net_531 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_123_493 ( .A ( \USRAM/guide_buf_102 ) , .Y ( HFSNET_150 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_123_494 ( .A ( \USRAM/guide_buf_103 ) , .Y ( HFSNET_151 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_21_495 ( .A ( \USRAM/guide_buf_104 ) , .Y ( HFSNET_152 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6401 ( .A ( copt_gre_net_533 ) , 
    .Y ( copt_gre_net_532 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6402 ( .A ( copt_gre_net_534 ) , 
    .Y ( copt_gre_net_533 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_174_499 ( .A ( \USRAM/guide_buf_106 ) , .Y ( HFSNET_156 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6403 ( .A ( copt_gre_net_535 ) , 
    .Y ( copt_gre_net_534 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_174_501 ( .A ( \USRAM/guide_buf_107 ) , .Y ( HFSNET_158 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6404 ( .A ( MEM_OEB[11] ) , 
    .Y ( copt_gre_net_535 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6405 ( .A ( copt_gre_net_537 ) , 
    .Y ( copt_gre_net_536 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_47_504 ( .A ( \USRAM/guide_buf_109 ) , .Y ( HFSNET_161 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_21_505 ( .A ( \USRAM/guide_buf_112 ) , .Y ( HFSNET_162 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6406 ( .A ( ZBUF_2_24 ) , 
    .Y ( copt_gre_net_537 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6407 ( .A ( copt_gre_net_539 ) , 
    .Y ( copt_gre_net_538 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6408 ( .A ( copt_gre_net_540 ) , 
    .Y ( copt_gre_net_539 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6409 ( .A ( ZBUF_742_276 ) , 
    .Y ( copt_gre_net_540 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6410 ( .A ( copt_gre_net_542 ) , 
    .Y ( copt_gre_net_541 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_44_512 ( .A ( \USRAM/guide_buf_119 ) , .Y ( HFSNET_169 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_21_513 ( .A ( \USRAM/guide_buf_122 ) , .Y ( HFSNET_170 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_17_515 ( .A ( \USRAM/guide_buf_123 ) , .Y ( HFSNET_172 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT HFSBUF_21_516 ( .A ( \USRAM/guide_buf_124 ) , .Y ( HFSNET_173 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_21_517 ( .A ( \USRAM/guide_buf_125 ) , .Y ( HFSNET_174 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT HFSBUF_21_518 ( .A ( \USRAM/guide_buf_126 ) , .Y ( HFSNET_175 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT HFSBUF_21_519 ( .A ( \USRAM/guide_buf_127 ) , .Y ( HFSNET_176 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX8_HVT ZBUF_120_inst_2355 ( .A ( \USRAM/guide_buf_5 ) , 
    .Y ( ZBUF_120_30 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_2_521 ( .A ( \USRAM/guide_buf_129 ) , .Y ( HFSNET_178 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6411 ( .A ( copt_gre_net_543 ) , 
    .Y ( copt_gre_net_542 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6412 ( .A ( ZBUF_80_24 ) , 
    .Y ( copt_gre_net_543 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6413 ( .A ( copt_gre_net_545 ) , 
    .Y ( copt_gre_net_544 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6414 ( .A ( ZBUF_28_37 ) , 
    .Y ( copt_gre_net_545 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6415 ( .A ( copt_gre_net_547 ) , 
    .Y ( copt_gre_net_546 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6416 ( .A ( ZBUF_62_18 ) , 
    .Y ( copt_gre_net_547 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6417 ( .A ( copt_gre_net_549 ) , 
    .Y ( copt_gre_net_548 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6418 ( .A ( ZBUF_57_26 ) , 
    .Y ( copt_gre_net_549 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_2_530 ( .A ( \USRAM/guide_buf_142 ) , .Y ( HFSNET_187 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6419 ( .A ( copt_gre_net_551 ) , 
    .Y ( copt_gre_net_550 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6420 ( .A ( ZBUF_2_32 ) , 
    .Y ( copt_gre_net_551 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_2_533 ( .A ( \USRAM/guide_buf_145 ) , .Y ( HFSNET_190 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_2_534 ( .A ( \USRAM/guide_buf_146 ) , .Y ( HFSNET_191 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_21_535 ( .A ( \USRAM/guide_buf_147 ) , .Y ( HFSNET_192 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_51_536 ( .A ( \USRAM/guide_buf_148 ) , .Y ( HFSNET_193 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT copt_gre_mt_inst_6422 ( .A ( ZBUF_101_18 ) , 
    .Y ( copt_gre_net_553 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6423 ( .A ( copt_gre_net_555 ) , 
    .Y ( copt_gre_net_554 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6424 ( .A ( copt_gre_net_556 ) , 
    .Y ( copt_gre_net_555 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6425 ( .A ( copt_gre_net_557 ) , 
    .Y ( copt_gre_net_556 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6426 ( .A ( copt_gre_net_558 ) , 
    .Y ( copt_gre_net_557 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6427 ( .A ( \USRAM/guide_buf_237 ) , 
    .Y ( copt_gre_net_558 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6428 ( .A ( copt_gre_net_560 ) , 
    .Y ( copt_gre_net_559 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6429 ( .A ( ZBUF_2_36 ) , 
    .Y ( copt_gre_net_560 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6430 ( .A ( copt_gre_net_562 ) , 
    .Y ( copt_gre_net_561 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6431 ( .A ( ZBUF_737_276 ) , 
    .Y ( copt_gre_net_562 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6432 ( .A ( copt_gre_net_564 ) , 
    .Y ( copt_gre_net_563 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_59_549 ( .A ( \USRAM/guide_buf_175 ) , .Y ( HFSNET_206 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6433 ( .A ( ZBUF_125_24 ) , 
    .Y ( copt_gre_net_564 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6434 ( .A ( copt_gre_net_566 ) , 
    .Y ( copt_gre_net_565 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_59_552 ( .A ( \USRAM/guide_buf_178 ) , .Y ( HFSNET_209 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6435 ( .A ( copt_gre_net_567 ) , 
    .Y ( copt_gre_net_566 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6436 ( .A ( copt_gre_net_568 ) , 
    .Y ( copt_gre_net_567 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6437 ( .A ( ZBUF_105_275 ) , 
    .Y ( copt_gre_net_568 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_54_inst_5122 ( .A ( MEM_OEB[41] ) , .Y ( ZBUF_54_4 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6438 ( .A ( copt_gre_net_570 ) , 
    .Y ( copt_gre_net_569 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT HFSBUF_21_558 ( .A ( \USRAM/guide_buf_186 ) , .Y ( HFSNET_215 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6439 ( .A ( HFSNET_1389 ) , 
    .Y ( copt_gre_net_570 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_17_560 ( .A ( \USRAM/guide_buf_187 ) , .Y ( HFSNET_217 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6440 ( .A ( copt_gre_net_572 ) , 
    .Y ( copt_gre_net_571 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6441 ( .A ( ZBUF_50_24 ) , 
    .Y ( copt_gre_net_572 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6442 ( .A ( copt_gre_net_574 ) , 
    .Y ( copt_gre_net_573 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_201_564 ( .A ( \USRAM/guide_buf_192 ) , .Y ( HFSNET_221 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_171_566 ( .A ( \USRAM/guide_buf_193 ) , .Y ( HFSNET_223 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6443 ( .A ( \USRAM/guide_buf_76 ) , 
    .Y ( copt_gre_net_574 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6444 ( .A ( copt_gre_net_576 ) , 
    .Y ( copt_gre_net_575 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT HFSBUF_21_569 ( .A ( HFSNET_227 ) , .Y ( HFSNET_226 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_174_570 ( .A ( \USRAM/guide_buf_195 ) , .Y ( HFSNET_227 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_21_571 ( .A ( copt_gre_net_593 ) , .Y ( HFSNET_228 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6445 ( .A ( copt_gre_net_577 ) , 
    .Y ( copt_gre_net_576 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_47_574 ( .A ( \USRAM/guide_buf_197 ) , .Y ( HFSNET_231 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT HFSBUF_21_575 ( .A ( HFSNET_1110 ) , .Y ( HFSNET_232 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6446 ( .A ( ZBUF_121_47 ) , 
    .Y ( copt_gre_net_577 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6447 ( .A ( copt_gre_net_579 ) , 
    .Y ( copt_gre_net_578 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_264_inst_2055 ( .A ( HFSNET_836 ) , .Y ( ZBUF_264_1 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_21_579 ( .A ( \USRAM/guide_buf_202 ) , .Y ( HFSNET_236 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6448 ( .A ( copt_gre_net_580 ) , 
    .Y ( copt_gre_net_579 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT HFSBUF_51_581 ( .A ( \USRAM/guide_buf_203 ) , .Y ( HFSNET_238 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6449 ( .A ( \USRAM/guide_buf_392 ) , 
    .Y ( copt_gre_net_580 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT HFSBUF_51_583 ( .A ( \USRAM/guide_buf_204 ) , .Y ( HFSNET_240 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_196_inst_5123 ( .A ( ctmn_3582 ) , .Y ( ZBUF_196_4 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_17_585 ( .A ( \USRAM/guide_buf_205 ) , .Y ( HFSNET_242 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_106_inst_5124 ( .A ( MEM_OEB[25] ) , .Y ( ZBUF_106_4 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT HFSBUF_40_587 ( .A ( \USRAM/guide_buf_206 ) , .Y ( HFSNET_244 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_2_588 ( .A ( \USRAM/guide_buf_207 ) , .Y ( HFSNET_245 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6450 ( .A ( copt_gre_net_582 ) , 
    .Y ( copt_gre_net_581 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_17_590 ( .A ( \USRAM/guide_buf_208 ) , .Y ( HFSNET_247 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6451 ( .A ( ZBUF_55_62 ) , 
    .Y ( copt_gre_net_582 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_17_592 ( .A ( \USRAM/guide_buf_209 ) , .Y ( HFSNET_249 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT HFSBUF_21_593 ( .A ( \USRAM/guide_buf_212 ) , .Y ( HFSNET_250 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT HFSBUF_21_595 ( .A ( \USRAM/guide_buf_214 ) , .Y ( HFSNET_252 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT HFSBUF_2_596 ( .A ( \USRAM/guide_buf_215 ) , .Y ( HFSNET_253 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT HFSBUF_2_598 ( .A ( \USRAM/guide_buf_217 ) , .Y ( HFSNET_255 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT HFSBUF_21_599 ( .A ( \USRAM/guide_buf_218 ) , .Y ( HFSNET_256 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_17_601 ( .A ( \USRAM/guide_buf_219 ) , .Y ( HFSNET_258 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6453 ( .A ( copt_gre_net_585 ) , 
    .Y ( copt_gre_net_584 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6454 ( .A ( ZBUF_63_65 ) , 
    .Y ( copt_gre_net_585 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6455 ( .A ( copt_gre_net_587 ) , 
    .Y ( copt_gre_net_586 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6456 ( .A ( copt_gre_net_588 ) , 
    .Y ( copt_gre_net_587 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6457 ( .A ( copt_gre_net_589 ) , 
    .Y ( copt_gre_net_588 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_2_608 ( .A ( \USRAM/guide_buf_227 ) , .Y ( HFSNET_265 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6458 ( .A ( ZBUF_106_28 ) , 
    .Y ( copt_gre_net_589 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_2_610 ( .A ( \USRAM/guide_buf_229 ) , .Y ( HFSNET_267 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_2_611 ( .A ( \USRAM/guide_buf_23 ) , .Y ( HFSNET_268 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6460 ( .A ( copt_gre_net_592 ) , 
    .Y ( copt_gre_net_591 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6461 ( .A ( ZBUF_60_63 ) , 
    .Y ( copt_gre_net_592 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6462 ( .A ( copt_gre_net_594 ) , 
    .Y ( copt_gre_net_593 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6463 ( .A ( ZBUF_53_59 ) , 
    .Y ( copt_gre_net_594 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6464 ( .A ( copt_gre_net_596 ) , 
    .Y ( copt_gre_net_595 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6465 ( .A ( \USRAM/guide_buf_279 ) , 
    .Y ( copt_gre_net_596 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6466 ( .A ( copt_gre_net_598 ) , 
    .Y ( copt_gre_net_597 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6467 ( .A ( ZBUF_637_276 ) , 
    .Y ( copt_gre_net_598 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6468 ( .A ( copt_gre_net_600 ) , 
    .Y ( copt_gre_net_599 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6469 ( .A ( ZBUF_607_277 ) , 
    .Y ( copt_gre_net_600 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6470 ( .A ( copt_gre_net_602 ) , 
    .Y ( copt_gre_net_601 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_21_624 ( .A ( \USRAM/guide_buf_263 ) , .Y ( HFSNET_281 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6471 ( .A ( \USRAM/guide_buf_362 ) , 
    .Y ( copt_gre_net_602 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_21_626 ( .A ( \USRAM/guide_buf_265 ) , .Y ( HFSNET_283 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_21_627 ( .A ( \USRAM/guide_buf_266 ) , .Y ( HFSNET_284 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_2_628 ( .A ( \USRAM/guide_buf_267 ) , .Y ( HFSNET_285 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6472 ( .A ( copt_gre_net_604 ) , 
    .Y ( copt_gre_net_603 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_2_630 ( .A ( \USRAM/guide_buf_269 ) , .Y ( HFSNET_287 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6473 ( .A ( copt_gre_net_605 ) , 
    .Y ( copt_gre_net_604 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6474 ( .A ( copt_gre_net_606 ) , 
    .Y ( copt_gre_net_605 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6475 ( .A ( ZBUF_1508_275 ) , 
    .Y ( copt_gre_net_606 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6477 ( .A ( copt_gre_net_609 ) , 
    .Y ( copt_gre_net_608 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6478 ( .A ( \USRAM/guide_buf_482 ) , 
    .Y ( copt_gre_net_609 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6479 ( .A ( copt_gre_net_611 ) , 
    .Y ( copt_gre_net_610 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6480 ( .A ( ZBUF_2_34 ) , 
    .Y ( copt_gre_net_611 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6481 ( .A ( copt_gre_net_613 ) , 
    .Y ( copt_gre_net_612 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6482 ( .A ( \USRAM/guide_buf_226 ) , 
    .Y ( copt_gre_net_613 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6483 ( .A ( copt_gre_net_615 ) , 
    .Y ( copt_gre_net_614 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6484 ( .A ( \USRAM/guide_buf_225 ) , 
    .Y ( copt_gre_net_615 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6485 ( .A ( copt_gre_net_617 ) , 
    .Y ( copt_gre_net_616 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6486 ( .A ( \USRAM/guide_buf_594 ) , 
    .Y ( copt_gre_net_617 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6487 ( .A ( copt_gre_net_619 ) , 
    .Y ( copt_gre_net_618 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6488 ( .A ( HFSNET_117 ) , 
    .Y ( copt_gre_net_619 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6489 ( .A ( copt_gre_net_621 ) , 
    .Y ( copt_gre_net_620 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_47_648 ( .A ( \USRAM/guide_buf_285 ) , .Y ( HFSNET_305 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6490 ( .A ( copt_gre_net_622 ) , 
    .Y ( copt_gre_net_621 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6491 ( .A ( ZBUF_233_41 ) , 
    .Y ( copt_gre_net_622 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_21_651 ( .A ( copt_gre_net_915 ) , .Y ( HFSNET_308 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6492 ( .A ( copt_gre_net_624 ) , 
    .Y ( copt_gre_net_623 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6493 ( .A ( copt_gre_net_625 ) , 
    .Y ( copt_gre_net_624 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6494 ( .A ( ZBUF_92_26 ) , 
    .Y ( copt_gre_net_625 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_21_655 ( .A ( HFSNET_313 ) , .Y ( HFSNET_312 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_47_656 ( .A ( \USRAM/guide_buf_289 ) , .Y ( HFSNET_313 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6495 ( .A ( copt_gre_net_627 ) , 
    .Y ( copt_gre_net_626 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6496 ( .A ( copt_gre_net_628 ) , 
    .Y ( copt_gre_net_627 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6497 ( .A ( ZBUF_97_34 ) , 
    .Y ( copt_gre_net_628 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_21_660 ( .A ( \USRAM/guide_buf_294 ) , .Y ( HFSNET_317 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6498 ( .A ( copt_gre_net_630 ) , 
    .Y ( copt_gre_net_629 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_21_662 ( .A ( \USRAM/guide_buf_296 ) , .Y ( HFSNET_319 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6499 ( .A ( copt_gre_net_631 ) , 
    .Y ( copt_gre_net_630 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6500 ( .A ( ZBUF_99_73 ) , 
    .Y ( copt_gre_net_631 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6501 ( .A ( copt_gre_net_633 ) , 
    .Y ( copt_gre_net_632 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6502 ( .A ( copt_gre_net_634 ) , 
    .Y ( copt_gre_net_633 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_47_667 ( .A ( \USRAM/guide_buf_312 ) , .Y ( HFSNET_324 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6503 ( .A ( \USRAM/guide_buf_624 ) , 
    .Y ( copt_gre_net_634 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_21_669 ( .A ( HFSNET_327 ) , .Y ( HFSNET_326 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_104_670 ( .A ( \USRAM/guide_buf_314 ) , .Y ( HFSNET_327 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_47_672 ( .A ( \USRAM/guide_buf_315 ) , .Y ( HFSNET_329 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_21_673 ( .A ( HFSNET_331 ) , .Y ( HFSNET_330 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_104_674 ( .A ( \USRAM/guide_buf_316 ) , .Y ( HFSNET_331 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6504 ( .A ( copt_gre_net_636 ) , 
    .Y ( copt_gre_net_635 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_47_676 ( .A ( \USRAM/guide_buf_317 ) , .Y ( HFSNET_333 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_21_677 ( .A ( HFSNET_335 ) , .Y ( HFSNET_334 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT HFSBUF_47_678 ( .A ( \USRAM/guide_buf_318 ) , .Y ( HFSNET_335 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6505 ( .A ( copt_gre_net_637 ) , 
    .Y ( copt_gre_net_636 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_47_680 ( .A ( \USRAM/guide_buf_319 ) , .Y ( HFSNET_337 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6506 ( .A ( \USRAM/guide_buf_626 ) , 
    .Y ( copt_gre_net_637 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_21_682 ( .A ( \USRAM/guide_buf_322 ) , .Y ( HFSNET_339 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6507 ( .A ( copt_gre_net_640 ) , 
    .Y ( copt_gre_net_638 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT copt_gre_mt_inst_6509 ( .A ( \USRAM/guide_buf_397 ) , 
    .Y ( copt_gre_net_640 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6510 ( .A ( copt_gre_net_642 ) , 
    .Y ( copt_gre_net_641 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6511 ( .A ( copt_gre_net_643 ) , 
    .Y ( copt_gre_net_642 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_21_688 ( .A ( \USRAM/guide_buf_328 ) , .Y ( HFSNET_345 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6512 ( .A ( \USRAM/guide_buf_627 ) , 
    .Y ( copt_gre_net_643 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6513 ( .A ( copt_gre_net_645 ) , 
    .Y ( copt_gre_net_644 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6514 ( .A ( copt_gre_net_646 ) , 
    .Y ( copt_gre_net_645 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6515 ( .A ( \USRAM/guide_buf_52 ) , 
    .Y ( copt_gre_net_646 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_51_693 ( .A ( \USRAM/guide_buf_352 ) , .Y ( HFSNET_350 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_51_694 ( .A ( \USRAM/guide_buf_353 ) , .Y ( HFSNET_351 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6516 ( .A ( ropt_net_1477 ) , 
    .Y ( copt_gre_net_647 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6517 ( .A ( copt_gre_net_649 ) , 
    .Y ( copt_gre_net_648 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6518 ( .A ( \USRAM/guide_buf_22 ) , 
    .Y ( copt_gre_net_649 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_21_698 ( .A ( \USRAM/guide_buf_357 ) , .Y ( HFSNET_355 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_51_699 ( .A ( \USRAM/guide_buf_358 ) , .Y ( HFSNET_356 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_21_700 ( .A ( \USRAM/guide_buf_359 ) , .Y ( HFSNET_357 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6519 ( .A ( copt_gre_net_651 ) , 
    .Y ( copt_gre_net_650 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6520 ( .A ( copt_gre_net_652 ) , 
    .Y ( copt_gre_net_651 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6521 ( .A ( \USRAM/guide_buf_629 ) , 
    .Y ( copt_gre_net_652 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6522 ( .A ( copt_gre_net_654 ) , 
    .Y ( copt_gre_net_653 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6523 ( .A ( copt_gre_net_655 ) , 
    .Y ( copt_gre_net_654 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6524 ( .A ( \USRAM/guide_buf_199 ) , 
    .Y ( copt_gre_net_655 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6525 ( .A ( copt_gre_net_657 ) , 
    .Y ( copt_gre_net_656 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_51_708 ( .A ( \USRAM/guide_buf_368 ) , .Y ( HFSNET_365 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6526 ( .A ( copt_gre_net_658 ) , 
    .Y ( copt_gre_net_657 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6527 ( .A ( \USRAM/guide_buf_386 ) , 
    .Y ( copt_gre_net_658 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6528 ( .A ( copt_gre_net_660 ) , 
    .Y ( copt_gre_net_659 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6529 ( .A ( ZBUF_122_70 ) , 
    .Y ( copt_gre_net_660 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_21_713 ( .A ( \USRAM/guide_buf_383 ) , .Y ( HFSNET_370 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT copt_gre_mt_inst_6531 ( .A ( \USRAM/guide_buf_382 ) , 
    .Y ( copt_gre_net_662 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6533 ( .A ( copt_gre_net_665 ) , 
    .Y ( copt_gre_net_664 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6534 ( .A ( ZBUF_100_18 ) , 
    .Y ( copt_gre_net_665 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6535 ( .A ( copt_gre_net_667 ) , 
    .Y ( copt_gre_net_666 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6536 ( .A ( ZBUF_647_275 ) , 
    .Y ( copt_gre_net_667 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6537 ( .A ( copt_gre_net_669 ) , 
    .Y ( copt_gre_net_668 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6538 ( .A ( ZBUF_2_60 ) , 
    .Y ( copt_gre_net_669 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_3623_inst_2359 ( .A ( copt_gre_net_427 ) , 
    .Y ( ZBUF_3623_30 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX32_HVT ZBUF_4351_inst_2360 ( .A ( HFSNET_1380 ) , .Y ( ZBUF_4351_30 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6539 ( .A ( copt_gre_net_671 ) , 
    .Y ( copt_gre_net_670 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT ZBUF_61_inst_5126 ( .A ( HFSNET_122 ) , .Y ( ZBUF_61_4 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6540 ( .A ( ZBUF_2_47 ) , 
    .Y ( copt_gre_net_671 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6541 ( .A ( copt_gre_net_673 ) , 
    .Y ( copt_gre_net_672 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6542 ( .A ( ZBUF_59_63 ) , 
    .Y ( copt_gre_net_673 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6543 ( .A ( copt_gre_net_675 ) , 
    .Y ( copt_gre_net_674 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6544 ( .A ( ZBUF_97_30 ) , 
    .Y ( copt_gre_net_675 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6545 ( .A ( copt_gre_net_677 ) , 
    .Y ( copt_gre_net_676 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6546 ( .A ( ZBUF_747_276 ) , 
    .Y ( copt_gre_net_677 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6547 ( .A ( copt_gre_net_679 ) , 
    .Y ( copt_gre_net_678 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6548 ( .A ( ZBUF_2_83 ) , 
    .Y ( copt_gre_net_679 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_21_737 ( .A ( \USRAM/guide_buf_412 ) , .Y ( HFSNET_394 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_51_738 ( .A ( \USRAM/guide_buf_413 ) , .Y ( HFSNET_395 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_21_739 ( .A ( \USRAM/guide_buf_414 ) , .Y ( HFSNET_396 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_21_740 ( .A ( \USRAM/guide_buf_415 ) , .Y ( HFSNET_397 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_44_741 ( .A ( \USRAM/guide_buf_416 ) , .Y ( HFSNET_398 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6549 ( .A ( copt_gre_net_681 ) , 
    .Y ( copt_gre_net_680 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_21_743 ( .A ( \USRAM/guide_buf_418 ) , .Y ( HFSNET_400 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_51_744 ( .A ( \USRAM/guide_buf_419 ) , .Y ( HFSNET_401 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6550 ( .A ( copt_gre_net_682 ) , 
    .Y ( copt_gre_net_681 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6551 ( .A ( copt_gre_net_683 ) , 
    .Y ( copt_gre_net_682 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6552 ( .A ( ZBUF_98_43 ) , 
    .Y ( copt_gre_net_683 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6554 ( .A ( copt_gre_net_686 ) , 
    .Y ( copt_gre_net_685 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_4_inst_5127 ( .A ( MEM_OEB[46] ) , .Y ( ZBUF_4_4 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_21_751 ( .A ( \USRAM/guide_buf_436 ) , .Y ( HFSNET_408 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6555 ( .A ( \USRAM/guide_buf_278 ) , 
    .Y ( copt_gre_net_686 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6556 ( .A ( copt_gre_net_688 ) , 
    .Y ( copt_gre_net_687 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6557 ( .A ( ZBUF_2_68 ) , 
    .Y ( copt_gre_net_688 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6558 ( .A ( copt_gre_net_690 ) , 
    .Y ( copt_gre_net_689 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6559 ( .A ( ZBUF_58_82 ) , 
    .Y ( copt_gre_net_690 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6560 ( .A ( copt_gre_net_692 ) , 
    .Y ( copt_gre_net_691 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6561 ( .A ( copt_gre_net_693 ) , 
    .Y ( copt_gre_net_692 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_2_759 ( .A ( \USRAM/guide_buf_445 ) , .Y ( HFSNET_416 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6562 ( .A ( ZBUF_2_122 ) , 
    .Y ( copt_gre_net_693 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6563 ( .A ( copt_gre_net_695 ) , 
    .Y ( copt_gre_net_694 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6564 ( .A ( copt_gre_net_696 ) , 
    .Y ( copt_gre_net_695 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_64_763 ( .A ( \USRAM/guide_buf_449 ) , .Y ( HFSNET_420 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_17_766 ( .A ( \USRAM/guide_buf_452 ) , .Y ( HFSNET_423 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_2_767 ( .A ( \USRAM/guide_buf_453 ) , .Y ( HFSNET_424 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_2_768 ( .A ( \USRAM/guide_buf_454 ) , .Y ( HFSNET_425 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6565 ( .A ( \USRAM/guide_buf_632 ) , 
    .Y ( copt_gre_net_696 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT HFSBUF_17_770 ( .A ( \USRAM/guide_buf_455 ) , .Y ( HFSNET_427 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_2_771 ( .A ( \USRAM/guide_buf_456 ) , .Y ( HFSNET_428 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_21_772 ( .A ( \USRAM/guide_buf_457 ) , .Y ( HFSNET_429 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT ZBUF_76_inst_2364 ( .A ( HFSNET_1086 ) , .Y ( ZBUF_76_32 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_2_774 ( .A ( \USRAM/guide_buf_459 ) , .Y ( HFSNET_431 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6566 ( .A ( copt_gre_net_698 ) , 
    .Y ( copt_gre_net_697 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6567 ( .A ( copt_gre_net_699 ) , 
    .Y ( copt_gre_net_698 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6568 ( .A ( \USRAM/guide_buf_639 ) , 
    .Y ( copt_gre_net_699 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6569 ( .A ( copt_gre_net_701 ) , 
    .Y ( copt_gre_net_700 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT ZBUF_21_inst_2365 ( .A ( ZBUF_272_236 ) , .Y ( ZBUF_21_32 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6570 ( .A ( copt_gre_net_702 ) , 
    .Y ( copt_gre_net_701 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6571 ( .A ( HFSNET_526 ) , 
    .Y ( copt_gre_net_702 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT ZBUF_2_inst_5128 ( .A ( MEM_OEB[17] ) , .Y ( ZBUF_2_4 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6572 ( .A ( copt_gre_net_704 ) , 
    .Y ( copt_gre_net_703 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX8_HVT ZBUF_126_inst_2367 ( .A ( ZBUF_30_159 ) , .Y ( ZBUF_126_32 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_17_785 ( .A ( HFSNET_1258 ) , .Y ( HFSNET_442 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6573 ( .A ( copt_gre_net_705 ) , 
    .Y ( copt_gre_net_704 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6574 ( .A ( \USRAM/guide_buf_636 ) , 
    .Y ( copt_gre_net_705 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6575 ( .A ( copt_gre_net_707 ) , 
    .Y ( copt_gre_net_706 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6576 ( .A ( copt_gre_net_708 ) , 
    .Y ( copt_gre_net_707 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_90_790 ( .A ( \USRAM/guide_buf_472 ) , .Y ( HFSNET_447 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6577 ( .A ( \USRAM/guide_buf_628 ) , 
    .Y ( copt_gre_net_708 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_90_792 ( .A ( \USRAM/guide_buf_473 ) , .Y ( HFSNET_449 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6578 ( .A ( copt_gre_net_710 ) , 
    .Y ( copt_gre_net_709 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_166_794 ( .A ( \USRAM/guide_buf_474 ) , .Y ( HFSNET_451 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_51_795 ( .A ( HFSNET_1140 ) , .Y ( HFSNET_452 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6579 ( .A ( copt_gre_net_711 ) , 
    .Y ( copt_gre_net_710 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_166_797 ( .A ( \USRAM/guide_buf_476 ) , .Y ( HFSNET_454 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6580 ( .A ( \USRAM/guide_buf_634 ) , 
    .Y ( copt_gre_net_711 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6581 ( .A ( copt_gre_net_713 ) , 
    .Y ( copt_gre_net_712 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_156_800 ( .A ( \USRAM/guide_buf_478 ) , .Y ( HFSNET_457 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6582 ( .A ( copt_gre_net_714 ) , 
    .Y ( copt_gre_net_713 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6583 ( .A ( \USRAM/guide_buf_57 ) , 
    .Y ( copt_gre_net_714 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6584 ( .A ( copt_gre_net_716 ) , 
    .Y ( copt_gre_net_715 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6585 ( .A ( copt_gre_net_717 ) , 
    .Y ( copt_gre_net_716 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_44_805 ( .A ( \USRAM/guide_buf_484 ) , .Y ( HFSNET_462 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT HFSBUF_44_807 ( .A ( \USRAM/guide_buf_486 ) , .Y ( HFSNET_464 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_21_808 ( .A ( \USRAM/guide_buf_487 ) , .Y ( HFSNET_465 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6586 ( .A ( \USRAM/guide_buf_438 ) , 
    .Y ( copt_gre_net_717 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6587 ( .A ( copt_gre_net_719 ) , 
    .Y ( copt_gre_net_718 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6588 ( .A ( copt_gre_net_720 ) , 
    .Y ( copt_gre_net_719 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_2_814 ( .A ( \USRAM/guide_buf_514 ) , .Y ( HFSNET_471 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_21_815 ( .A ( \USRAM/guide_buf_515 ) , .Y ( HFSNET_472 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6589 ( .A ( \USRAM/guide_buf_637 ) , 
    .Y ( copt_gre_net_720 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_21_817 ( .A ( \USRAM/guide_buf_517 ) , .Y ( HFSNET_474 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_21_818 ( .A ( \USRAM/guide_buf_518 ) , .Y ( HFSNET_475 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_2_819 ( .A ( \USRAM/guide_buf_519 ) , .Y ( HFSNET_476 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT copt_gre_mt_inst_6591 ( .A ( copt_gre_net_723 ) , 
    .Y ( copt_gre_net_722 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6592 ( .A ( \USRAM/guide_buf_389 ) , 
    .Y ( copt_gre_net_723 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6593 ( .A ( copt_gre_net_725 ) , 
    .Y ( copt_gre_net_724 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6594 ( .A ( ZBUF_2_99 ) , 
    .Y ( copt_gre_net_725 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6595 ( .A ( ZBUF_32_93 ) , 
    .Y ( copt_gre_net_726 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6597 ( .A ( copt_gre_net_729 ) , 
    .Y ( copt_gre_net_728 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6598 ( .A ( ZBUF_2_80 ) , 
    .Y ( copt_gre_net_729 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6599 ( .A ( copt_gre_net_731 ) , 
    .Y ( copt_gre_net_730 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_21_830 ( .A ( \USRAM/guide_buf_532 ) , .Y ( HFSNET_487 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_21_831 ( .A ( \USRAM/guide_buf_533 ) , .Y ( HFSNET_488 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_21_832 ( .A ( \USRAM/guide_buf_534 ) , .Y ( HFSNET_489 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_21_833 ( .A ( \USRAM/guide_buf_535 ) , .Y ( HFSNET_490 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_21_834 ( .A ( \USRAM/guide_buf_536 ) , .Y ( HFSNET_491 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_21_835 ( .A ( \USRAM/guide_buf_537 ) , .Y ( HFSNET_492 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_55_836 ( .A ( \USRAM/guide_buf_538 ) , .Y ( HFSNET_493 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_21_837 ( .A ( \USRAM/guide_buf_539 ) , .Y ( HFSNET_494 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6600 ( .A ( copt_gre_net_732 ) , 
    .Y ( copt_gre_net_731 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT HFSBUF_2_839 ( .A ( \USRAM/guide_buf_542 ) , .Y ( HFSNET_496 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6601 ( .A ( \USRAM/guide_buf_222 ) , 
    .Y ( copt_gre_net_732 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6602 ( .A ( copt_gre_net_734 ) , 
    .Y ( copt_gre_net_733 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_17_843 ( .A ( \USRAM/guide_buf_544 ) , .Y ( HFSNET_500 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT HFSBUF_2_844 ( .A ( \USRAM/guide_buf_545 ) , .Y ( HFSNET_501 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6603 ( .A ( \USRAM/guide_buf_169 ) , 
    .Y ( copt_gre_net_734 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX8_HVT ZBUF_214_inst_2069 ( .A ( ZBUF_208_167 ) , .Y ( ZBUF_214_2 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT HFSBUF_17_847 ( .A ( \USRAM/guide_buf_547 ) , .Y ( HFSNET_504 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT HFSBUF_2_849 ( .A ( \USRAM/guide_buf_549 ) , .Y ( HFSNET_506 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT copt_gre_mt_inst_6605 ( .A ( copt_gre_net_737 ) , 
    .Y ( copt_gre_net_736 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6606 ( .A ( copt_gre_net_738 ) , 
    .Y ( copt_gre_net_737 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_82_852 ( .A ( \USRAM/guide_buf_552 ) , .Y ( HFSNET_509 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_21_853 ( .A ( HFSNET_511 ) , .Y ( HFSNET_510 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_82_854 ( .A ( \USRAM/guide_buf_553 ) , .Y ( HFSNET_511 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6607 ( .A ( ZBUF_73_69 ) , 
    .Y ( copt_gre_net_738 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_82_856 ( .A ( \USRAM/guide_buf_554 ) , .Y ( HFSNET_513 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_82_858 ( .A ( \USRAM/guide_buf_555 ) , .Y ( HFSNET_515 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_82_860 ( .A ( \USRAM/guide_buf_556 ) , .Y ( HFSNET_517 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6609 ( .A ( copt_gre_net_741 ) , 
    .Y ( copt_gre_net_740 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6610 ( .A ( ZBUF_2_71 ) , 
    .Y ( copt_gre_net_741 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_82_863 ( .A ( \USRAM/guide_buf_558 ) , .Y ( HFSNET_520 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_82_865 ( .A ( \USRAM/guide_buf_559 ) , .Y ( HFSNET_522 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6612 ( .A ( ZBUF_147_98 ) , 
    .Y ( copt_gre_net_743 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6613 ( .A ( copt_gre_net_745 ) , 
    .Y ( copt_gre_net_744 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6614 ( .A ( ZBUF_2_81 ) , 
    .Y ( copt_gre_net_745 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT HFSBUF_21_869 ( .A ( HFSNET_527 ) , .Y ( HFSNET_526 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_129_870 ( .A ( \USRAM/guide_buf_563 ) , .Y ( HFSNET_527 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT HFSBUF_21_871 ( .A ( HFSNET_529 ) , .Y ( HFSNET_528 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_170_872 ( .A ( \USRAM/guide_buf_564 ) , .Y ( HFSNET_529 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6615 ( .A ( copt_gre_net_747 ) , 
    .Y ( copt_gre_net_746 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6616 ( .A ( copt_gre_net_748 ) , 
    .Y ( copt_gre_net_747 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6617 ( .A ( copt_gre_net_749 ) , 
    .Y ( copt_gre_net_748 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6618 ( .A ( copt_gre_net_750 ) , 
    .Y ( copt_gre_net_749 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6619 ( .A ( \USRAM/guide_buf_399 ) , 
    .Y ( copt_gre_net_750 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_129_879 ( .A ( \USRAM/guide_buf_568 ) , .Y ( HFSNET_536 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT copt_gre_mt_inst_6621 ( .A ( ZBUF_147_79 ) , 
    .Y ( copt_gre_net_752 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6622 ( .A ( copt_gre_net_754 ) , 
    .Y ( copt_gre_net_753 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_67_883 ( .A ( \USRAM/guide_buf_572 ) , .Y ( HFSNET_540 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_56_884 ( .A ( \USRAM/guide_buf_573 ) , .Y ( HFSNET_541 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6623 ( .A ( ZBUF_31_79 ) , 
    .Y ( copt_gre_net_754 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_56_886 ( .A ( \USRAM/guide_buf_575 ) , .Y ( HFSNET_543 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_2_887 ( .A ( \USRAM/guide_buf_576 ) , .Y ( HFSNET_544 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_2_888 ( .A ( \USRAM/guide_buf_577 ) , .Y ( HFSNET_545 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6624 ( .A ( copt_gre_net_756 ) , 
    .Y ( copt_gre_net_755 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_56_890 ( .A ( \USRAM/guide_buf_579 ) , .Y ( HFSNET_547 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6625 ( .A ( \USRAM/guide_buf_483 ) , 
    .Y ( copt_gre_net_756 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT copt_gre_mt_inst_6627 ( .A ( HFSNET_1271 ) , 
    .Y ( copt_gre_net_758 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_2_897 ( .A ( \USRAM/guide_buf_587 ) , .Y ( HFSNET_554 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_2_898 ( .A ( \USRAM/guide_buf_588 ) , .Y ( HFSNET_555 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_2_899 ( .A ( \USRAM/guide_buf_589 ) , .Y ( HFSNET_556 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6628 ( .A ( copt_gre_net_760 ) , 
    .Y ( copt_gre_net_759 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6629 ( .A ( ZBUF_2_79 ) , 
    .Y ( copt_gre_net_760 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6630 ( .A ( copt_gre_net_762 ) , 
    .Y ( copt_gre_net_761 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6631 ( .A ( copt_gre_net_763 ) , 
    .Y ( copt_gre_net_762 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6632 ( .A ( copt_gre_net_764 ) , 
    .Y ( copt_gre_net_763 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6633 ( .A ( ZBUF_2186_277 ) , 
    .Y ( copt_gre_net_764 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6635 ( .A ( copt_gre_net_767 ) , 
    .Y ( copt_gre_net_766 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6636 ( .A ( copt_gre_net_768 ) , 
    .Y ( copt_gre_net_767 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6637 ( .A ( copt_gre_net_769 ) , 
    .Y ( copt_gre_net_768 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX16_HVT ZBUF_170_inst_2370 ( .A ( copt_gre_net_393 ) , 
    .Y ( ZBUF_170_32 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6638 ( .A ( ZBUF_617_278 ) , 
    .Y ( copt_gre_net_769 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_30_inst_2372 ( .A ( copt_gre_net_1355 ) , .Y ( ZBUF_30_32 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT HFSBUF_108_914 ( .A ( \USRAM/guide_buf_605 ) , .Y ( HFSNET_571 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6640 ( .A ( copt_gre_net_772 ) , 
    .Y ( copt_gre_net_771 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_2_916 ( .A ( \USRAM/guide_buf_607 ) , .Y ( HFSNET_573 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6641 ( .A ( copt_gre_net_773 ) , 
    .Y ( copt_gre_net_772 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_2_920 ( .A ( \USRAM/guide_buf_612 ) , .Y ( HFSNET_577 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6642 ( .A ( ZBUF_97_89 ) , 
    .Y ( copt_gre_net_773 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6643 ( .A ( copt_gre_net_775 ) , 
    .Y ( copt_gre_net_774 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6644 ( .A ( copt_gre_net_776 ) , 
    .Y ( copt_gre_net_775 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_215_924 ( .A ( \USRAM/guide_buf_614 ) , .Y ( HFSNET_581 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6645 ( .A ( ZBUF_54_89 ) , 
    .Y ( copt_gre_net_776 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6646 ( .A ( copt_gre_net_778 ) , 
    .Y ( copt_gre_net_777 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6647 ( .A ( copt_gre_net_779 ) , 
    .Y ( copt_gre_net_778 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_219_928 ( .A ( \USRAM/guide_buf_616 ) , .Y ( HFSNET_585 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6648 ( .A ( ZBUF_2_206 ) , 
    .Y ( copt_gre_net_779 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6649 ( .A ( copt_gre_net_781 ) , 
    .Y ( copt_gre_net_780 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6650 ( .A ( copt_gre_net_782 ) , 
    .Y ( copt_gre_net_781 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6651 ( .A ( \USRAM/guide_buf_625 ) , 
    .Y ( copt_gre_net_782 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6652 ( .A ( copt_gre_net_784 ) , 
    .Y ( copt_gre_net_783 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6653 ( .A ( copt_gre_net_785 ) , 
    .Y ( copt_gre_net_784 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6654 ( .A ( ZBUF_2_207 ) , 
    .Y ( copt_gre_net_785 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6655 ( .A ( copt_gre_net_787 ) , 
    .Y ( copt_gre_net_786 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6656 ( .A ( copt_gre_net_788 ) , 
    .Y ( copt_gre_net_787 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6657 ( .A ( \USRAM/guide_buf_44 ) , 
    .Y ( copt_gre_net_788 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6658 ( .A ( copt_gre_net_790 ) , 
    .Y ( copt_gre_net_789 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6659 ( .A ( copt_gre_net_791 ) , 
    .Y ( copt_gre_net_790 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6660 ( .A ( \USRAM/guide_buf_642 ) , 
    .Y ( copt_gre_net_791 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_21_942 ( .A ( copt_gre_net_626 ) , .Y ( HFSNET_599 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6661 ( .A ( copt_gre_net_793 ) , 
    .Y ( copt_gre_net_792 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6662 ( .A ( copt_gre_net_794 ) , 
    .Y ( copt_gre_net_793 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6663 ( .A ( \USRAM/guide_buf_644 ) , 
    .Y ( copt_gre_net_794 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6664 ( .A ( copt_gre_net_796 ) , 
    .Y ( copt_gre_net_795 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6665 ( .A ( copt_gre_net_797 ) , 
    .Y ( copt_gre_net_796 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6666 ( .A ( copt_gre_net_798 ) , 
    .Y ( copt_gre_net_797 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6667 ( .A ( copt_gre_net_799 ) , 
    .Y ( copt_gre_net_798 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6668 ( .A ( copt_gre_net_800 ) , 
    .Y ( copt_gre_net_799 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6669 ( .A ( \USRAM/guide_buf_394 ) , 
    .Y ( copt_gre_net_800 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6670 ( .A ( copt_gre_net_802 ) , 
    .Y ( copt_gre_net_801 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6671 ( .A ( copt_gre_net_803 ) , 
    .Y ( copt_gre_net_802 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6672 ( .A ( \USRAM/guide_buf_638 ) , 
    .Y ( copt_gre_net_803 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT copt_gre_mt_inst_6674 ( .A ( copt_gre_net_806 ) , 
    .Y ( copt_gre_net_805 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6675 ( .A ( \USRAM/guide_buf_385 ) , 
    .Y ( copt_gre_net_806 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6676 ( .A ( copt_gre_net_808 ) , 
    .Y ( copt_gre_net_807 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6677 ( .A ( copt_gre_net_809 ) , 
    .Y ( copt_gre_net_808 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6678 ( .A ( copt_gre_net_810 ) , 
    .Y ( copt_gre_net_809 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6679 ( .A ( copt_gre_net_811 ) , 
    .Y ( copt_gre_net_810 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6680 ( .A ( copt_gre_net_812 ) , 
    .Y ( copt_gre_net_811 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6681 ( .A ( \USRAM/guide_buf_398 ) , 
    .Y ( copt_gre_net_812 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6682 ( .A ( copt_gre_net_814 ) , 
    .Y ( copt_gre_net_813 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT ZBUF_52_inst_2074 ( .A ( copt_gre_net_1122 ) , .Y ( ZBUF_52_3 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6683 ( .A ( copt_gre_net_815 ) , 
    .Y ( copt_gre_net_814 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT ZBUF_235_inst_2075 ( .A ( HFSNET_946 ) , .Y ( ZBUF_235_4 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6684 ( .A ( \USRAM/guide_buf_649 ) , 
    .Y ( copt_gre_net_815 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6685 ( .A ( copt_gre_net_817 ) , 
    .Y ( copt_gre_net_816 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6686 ( .A ( copt_gre_net_818 ) , 
    .Y ( copt_gre_net_817 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_79_972 ( .A ( \USRAM/guide_buf_656 ) , .Y ( HFSNET_629 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_95_inst_2076 ( .A ( HFSNET_946 ) , .Y ( ZBUF_95_4 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6687 ( .A ( copt_gre_net_819 ) , 
    .Y ( copt_gre_net_818 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6688 ( .A ( copt_gre_net_820 ) , 
    .Y ( copt_gre_net_819 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6689 ( .A ( \USRAM/guide_buf_395 ) , 
    .Y ( copt_gre_net_820 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_21_977 ( .A ( ZBUF_104_72 ) , .Y ( HFSNET_634 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6690 ( .A ( copt_gre_net_822 ) , 
    .Y ( copt_gre_net_821 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6691 ( .A ( copt_gre_net_823 ) , 
    .Y ( copt_gre_net_822 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6692 ( .A ( \USRAM/guide_buf_164 ) , 
    .Y ( copt_gre_net_823 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6693 ( .A ( copt_gre_net_825 ) , 
    .Y ( copt_gre_net_824 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT ZBUF_103_inst_2078 ( .A ( HFSNET_950 ) , .Y ( ZBUF_103_4 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6694 ( .A ( ZBUF_55_107 ) , 
    .Y ( copt_gre_net_825 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_44_984 ( .A ( ZBUF_51_72 ) , .Y ( HFSNET_641 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6695 ( .A ( copt_gre_net_827 ) , 
    .Y ( copt_gre_net_826 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6696 ( .A ( copt_gre_net_828 ) , 
    .Y ( copt_gre_net_827 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_162_987 ( .A ( \USRAM/guide_buf_72 ) , .Y ( HFSNET_644 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_70_988 ( .A ( \USRAM/guide_buf_73 ) , .Y ( HFSNET_645 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6112 ( .A ( copt_gre_net_308 ) , 
    .Y ( copt_gre_net_307 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6113 ( .A ( copt_gre_net_309 ) , 
    .Y ( copt_gre_net_308 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_21_992 ( .A ( HFSNET_650 ) , .Y ( HFSNET_649 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_109_993 ( .A ( HFSNET_1145 ) , .Y ( HFSNET_650 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6697 ( .A ( \USRAM/guide_buf_388 ) , 
    .Y ( copt_gre_net_828 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_243_inst_2079 ( .A ( HFSNET_950 ) , .Y ( ZBUF_243_4 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6114 ( .A ( copt_gre_net_310 ) , 
    .Y ( copt_gre_net_309 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6698 ( .A ( copt_gre_net_830 ) , 
    .Y ( copt_gre_net_829 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6699 ( .A ( \USRAM/guide_buf_325 ) , 
    .Y ( copt_gre_net_830 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT copt_gre_mt_inst_6701 ( .A ( ZBUF_742_278 ) , 
    .Y ( copt_gre_net_832 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6702 ( .A ( copt_gre_net_834 ) , 
    .Y ( copt_gre_net_833 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6703 ( .A ( ZBUF_76_79 ) , 
    .Y ( copt_gre_net_834 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6704 ( .A ( copt_gre_net_836 ) , 
    .Y ( copt_gre_net_835 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6705 ( .A ( ZBUF_27_129 ) , 
    .Y ( copt_gre_net_836 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_56_1005 ( .A ( \USRAM/guide_buf_92 ) , .Y ( HFSNET_662 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6706 ( .A ( copt_gre_net_838 ) , 
    .Y ( copt_gre_net_837 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6707 ( .A ( ZBUF_120_205 ) , 
    .Y ( copt_gre_net_838 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_59_1008 ( .A ( \USRAM/guide_buf_95 ) , .Y ( HFSNET_665 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6708 ( .A ( copt_gre_net_840 ) , 
    .Y ( copt_gre_net_839 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6709 ( .A ( \USRAM/guide_buf_327 ) , 
    .Y ( copt_gre_net_840 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_2_1012 ( .A ( \USRAM/guide_buf_99 ) , .Y ( HFSNET_669 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_2_1013 ( .A ( ctmn_3859_CDR1 ) , .Y ( HFSNET_670 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_2_1014 ( .A ( ctmn_3826_CDR1 ) , .Y ( HFSNET_671 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_2_1015 ( .A ( ctmn_3793_CDR1 ) , .Y ( HFSNET_672 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_2_1016 ( .A ( ctmn_3760_CDR1 ) , .Y ( HFSNET_673 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_2_1017 ( .A ( ctmn_3727_CDR1 ) , .Y ( HFSNET_674 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_2_1018 ( .A ( ctmn_3694_CDR1 ) , .Y ( HFSNET_675 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_291_inst_5134 ( .A ( MEM_OEB[60] ) , .Y ( ZBUF_291_6 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT HFSBUF_2_1020 ( .A ( ctmn_3580_CDR1 ) , .Y ( HFSNET_677 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT HFSBUF_2_1021 ( .A ( ctmn_3572_CDR1 ) , .Y ( HFSNET_678 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_2_1023 ( .A ( ctmn_3596_CDR1 ) , .Y ( HFSNET_680 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_2_1024 ( .A ( ctmn_3602_CDR1 ) , .Y ( HFSNET_681 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT HFSBUF_2_1025 ( .A ( ctmn_3613_CDR1 ) , .Y ( HFSNET_682 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT HFSBUF_2_1026 ( .A ( ctmn_3628_CDR1 ) , .Y ( HFSNET_683 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_2_1027 ( .A ( ctmn_3632_CDR1 ) , .Y ( HFSNET_684 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6710 ( .A ( copt_gre_net_842 ) , 
    .Y ( copt_gre_net_841 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT HFSBUF_2_1029 ( .A ( ctmn_3650_CDR1 ) , .Y ( HFSNET_686 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6711 ( .A ( ZBUF_2_209 ) , 
    .Y ( copt_gre_net_842 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT HFSBUF_2_1031 ( .A ( ctmn_3659_CDR1 ) , .Y ( HFSNET_688 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_2_1032 ( .A ( ctmn_3665_CDR1 ) , .Y ( HFSNET_689 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_2_1033 ( .A ( ctmn_3667_CDR1 ) , .Y ( HFSNET_690 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT HFSBUF_2_1034 ( .A ( ctmn_3670_CDR1 ) , .Y ( HFSNET_691 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6712 ( .A ( copt_gre_net_844 ) , 
    .Y ( copt_gre_net_843 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT HFSBUF_2_1036 ( .A ( ctmn_3678_CDR1 ) , .Y ( HFSNET_693 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT HFSBUF_2_1038 ( .A ( ctmn_3683_CDR1 ) , .Y ( HFSNET_695 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT HFSBUF_2_1039 ( .A ( ctmn_3690_CDR1 ) , .Y ( HFSNET_696 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT HFSBUF_2_1040 ( .A ( ctmn_3692_CDR1 ) , .Y ( HFSNET_697 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_2_1041 ( .A ( ctmn_3698_CDR1 ) , .Y ( HFSNET_698 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_2_1042 ( .A ( ctmn_3700_CDR1 ) , .Y ( HFSNET_699 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX8_HVT ZBUF_288_inst_5136 ( .A ( MEM_OEB[3] ) , .Y ( ZBUF_288_6 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_2_1045 ( .A ( ctmn_3711_CDR1 ) , .Y ( HFSNET_702 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6713 ( .A ( ZBUF_2_95 ) , 
    .Y ( copt_gre_net_844 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT HFSBUF_2_1047 ( .A ( ctmn_3716_CDR1 ) , .Y ( HFSNET_704 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6714 ( .A ( copt_gre_net_846 ) , 
    .Y ( copt_gre_net_845 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT HFSBUF_2_1049 ( .A ( ctmn_3725_CDR1 ) , .Y ( HFSNET_706 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_2_1050 ( .A ( ctmn_3731_CDR1 ) , .Y ( HFSNET_707 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_2_1051 ( .A ( ctmn_3733_CDR1 ) , .Y ( HFSNET_708 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT HFSBUF_2_1052 ( .A ( ctmn_3736_CDR1 ) , .Y ( HFSNET_709 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6715 ( .A ( ZBUF_2_92 ) , 
    .Y ( copt_gre_net_846 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT HFSBUF_2_1054 ( .A ( ctmn_3744_CDR1 ) , .Y ( HFSNET_711 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT copt_gre_mt_inst_6716 ( .A ( copt_gre_net_848 ) , 
    .Y ( copt_gre_net_847 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT HFSBUF_2_1056 ( .A ( ctmn_3749_CDR1 ) , .Y ( HFSNET_713 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT HFSBUF_2_1057 ( .A ( ctmn_3756_CDR1 ) , .Y ( HFSNET_714 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT HFSBUF_2_1058 ( .A ( ctmn_3758_CDR1 ) , .Y ( HFSNET_715 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6717 ( .A ( ZBUF_662_281 ) , 
    .Y ( copt_gre_net_848 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_2_1060 ( .A ( ctmn_3766_CDR1 ) , .Y ( HFSNET_717 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT HFSBUF_2_1061 ( .A ( ctmn_3769_CDR1 ) , .Y ( HFSNET_718 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT HFSBUF_2_1062 ( .A ( ctmn_3776_CDR1 ) , .Y ( HFSNET_719 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT HFSBUF_2_1063 ( .A ( ctmn_3777_CDR1 ) , .Y ( HFSNET_720 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6718 ( .A ( copt_gre_net_850 ) , 
    .Y ( copt_gre_net_849 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT HFSBUF_2_1065 ( .A ( ctmn_3782_CDR1 ) , .Y ( HFSNET_722 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT HFSBUF_2_1066 ( .A ( ctmn_3789_CDR1 ) , .Y ( HFSNET_723 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT HFSBUF_2_1067 ( .A ( ctmn_3791_CDR1 ) , .Y ( HFSNET_724 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_2_1068 ( .A ( ctmn_3797_CDR1 ) , .Y ( HFSNET_725 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_2_1069 ( .A ( ctmn_3799_CDR1 ) , .Y ( HFSNET_726 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT HFSBUF_2_1070 ( .A ( ctmn_3802_CDR1 ) , .Y ( HFSNET_727 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT HFSBUF_2_1071 ( .A ( ctmn_3809_CDR1 ) , .Y ( HFSNET_728 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT HFSBUF_2_1072 ( .A ( ctmn_3810_CDR1 ) , .Y ( HFSNET_729 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6719 ( .A ( ZBUF_60_103 ) , 
    .Y ( copt_gre_net_850 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT HFSBUF_2_1074 ( .A ( ctmn_3815_CDR1 ) , .Y ( HFSNET_731 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT HFSBUF_2_1075 ( .A ( ctmn_3822_CDR1 ) , .Y ( HFSNET_732 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT HFSBUF_2_1076 ( .A ( ctmn_3824_CDR1 ) , .Y ( HFSNET_733 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_2_1077 ( .A ( ctmn_3830_CDR1 ) , .Y ( HFSNET_734 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_2_1078 ( .A ( ctmn_3832_CDR1 ) , .Y ( HFSNET_735 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT HFSBUF_2_1079 ( .A ( ctmn_3835_CDR1 ) , .Y ( HFSNET_736 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_2_1081 ( .A ( ctmn_3843_CDR1 ) , .Y ( HFSNET_738 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_2_1082 ( .A ( ctmn_3846_CDR1 ) , .Y ( HFSNET_739 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT HFSBUF_2_1083 ( .A ( ctmn_3848_CDR1 ) , .Y ( HFSNET_740 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT HFSBUF_2_1084 ( .A ( ctmn_3855_CDR1 ) , .Y ( HFSNET_741 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT copt_gre_mt_inst_6720 ( .A ( copt_gre_net_852 ) , 
    .Y ( copt_gre_net_851 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_2_1086 ( .A ( ctmn_3863_CDR1 ) , .Y ( HFSNET_743 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_2_1087 ( .A ( ctmn_3865_CDR1 ) , .Y ( HFSNET_744 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT HFSBUF_2_1088 ( .A ( ctmn_3868_CDR1 ) , .Y ( HFSNET_745 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_158_inst_2386 ( .A ( ctmn_3551 ) , .Y ( ZBUF_158_33 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_2_1090 ( .A ( ctmn_3876_CDR1 ) , .Y ( HFSNET_747 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT HFSBUF_2_1091 ( .A ( ctmn_3879_CDR1 ) , .Y ( HFSNET_748 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT HFSBUF_2_1092 ( .A ( ctmn_3881_CDR1 ) , .Y ( HFSNET_749 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT HFSBUF_191_1093 ( .A ( aps_rename_231_ ) , .Y ( aps_rename_6_ ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT HFSBUF_34_1094 ( .A ( HFSNET_1274 ) , .Y ( HFSNET_751 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_4_1095 ( .A ( aps_rename_230_ ) , .Y ( HFSNET_752 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_4_1096 ( .A ( aps_rename_229_ ) , .Y ( HFSNET_753 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_17_1097 ( .A ( HFSNET_1231 ) , .Y ( HFSNET_754 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_310_inst_2084 ( .A ( copt_gre_net_1442 ) , 
    .Y ( ZBUF_310_5 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_172_1099 ( .A ( HFSNET_1221 ) , .Y ( HFSNET_756 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_63_inst_5139 ( .A ( MEM_OEB[24] ) , .Y ( ZBUF_63_11 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_183_1101 ( .A ( HFSNET_1222 ) , .Y ( HFSNET_758 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_162_inst_5140 ( .A ( MEM_OEB[15] ) , .Y ( ZBUF_162_11 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT HFSBUF_34_1103 ( .A ( HFSNET_1225 ) , .Y ( HFSNET_760 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT HFSBUF_145_1104 ( .A ( ctmn_3618 ) , .Y ( HFSNET_761 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT HFSBUF_222_1105 ( .A ( ctmn_3601 ) , .Y ( HFSNET_762 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6721 ( .A ( ZBUF_2_279 ) , 
    .Y ( copt_gre_net_852 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6722 ( .A ( copt_gre_net_854 ) , 
    .Y ( copt_gre_net_853 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_279_inst_5143 ( .A ( MEM_OEB[2] ) , .Y ( ZBUF_279_16 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6723 ( .A ( ZBUF_612_279 ) , 
    .Y ( copt_gre_net_854 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_4_inst_5144 ( .A ( MEM_OEB[42] ) , .Y ( ZBUF_4_16 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6724 ( .A ( copt_gre_net_856 ) , 
    .Y ( copt_gre_net_855 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_232_1114 ( .A ( ctmn_3521 ) , .Y ( HFSNET_771 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6725 ( .A ( ZBUF_75_99 ) , 
    .Y ( copt_gre_net_856 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_89_1116 ( .A ( ctmn_3533 ) , .Y ( HFSNET_773 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT HFSBUF_117_1117 ( .A ( ctmn_3536 ) , .Y ( HFSNET_774 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_227_1118 ( .A ( ctmn_3537 ) , .Y ( HFSNET_775 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_243_1119 ( .A ( ctmn_3538 ) , .Y ( HFSNET_776 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_279_inst_5145 ( .A ( MEM_OEB[61] ) , .Y ( ZBUF_279_17 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_251_inst_5146 ( .A ( MEM_OEB[7] ) , .Y ( ZBUF_251_17 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6726 ( .A ( copt_gre_net_858 ) , 
    .Y ( copt_gre_net_857 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_180_inst_5147 ( .A ( MEM_OEB[14] ) , .Y ( ZBUF_180_17 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6727 ( .A ( \USRAM/guide_buf_39 ) , 
    .Y ( copt_gre_net_858 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_143_1125 ( .A ( ctmn_3547 ) , .Y ( HFSNET_782 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_74_1126 ( .A ( ctmn_3548 ) , .Y ( HFSNET_783 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6728 ( .A ( copt_gre_net_860 ) , 
    .Y ( copt_gre_net_859 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6729 ( .A ( ZBUF_2_96 ) , 
    .Y ( copt_gre_net_860 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6730 ( .A ( copt_gre_net_862 ) , 
    .Y ( copt_gre_net_861 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0_HVT HFSINV_205_1131 ( .A ( ctmn_3523 ) , .Y ( HFSNET_788 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT HFSBUF_88_1132 ( .A ( ctmn_3523 ) , .Y ( HFSNET_789 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT HFSBUF_444_1133 ( .A ( PREV_CE ) , .Y ( HFSNET_790 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT HFSBUF_221_1134 ( 
    .A ( \CE_clock_gate_UBINARY_COUNTER_16B/binary_reg ) , .Y ( HFSNET_791 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX32_HVT ZINV_187_inst_2091 ( .A ( ZINV_234_6 ) , .Y ( ZINV_187_6 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT HFSBUF_468_1136 ( 
    .A ( \CE_clock_gate_UGRAY_COUNTER_16B/binary_reg ) , .Y ( HFSNET_793 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT HFSBUF_133_1137 ( .A ( ctmn_3528 ) , .Y ( HFSNET_794 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6731 ( .A ( \USRAM/guide_buf_144 ) , 
    .Y ( copt_gre_net_862 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6732 ( .A ( copt_gre_net_864 ) , 
    .Y ( copt_gre_net_863 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6733 ( .A ( \USRAM/guide_buf_97 ) , 
    .Y ( copt_gre_net_864 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT HFSBUF_24_1141 ( .A ( ctmn_3890 ) , .Y ( HFSNET_798 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_379_1142 ( .A ( ctmn_3891 ) , .Y ( HFSNET_799 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6734 ( .A ( ZBUF_2_111 ) , 
    .Y ( copt_gre_net_865 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX8_HVT ZINV_234_inst_2092 ( .A ( copt_gre_net_1041 ) , .Y ( ZINV_234_6 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_491_1147 ( .A ( BIST_MODE[0] ) , .Y ( HFSNET_804 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT HFSBUF_532_1149 ( .A ( BIST_MODE[2] ) , .Y ( HFSNET_806 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT HFSBUF_252_1150 ( .A ( BIST_MODE[2] ) , .Y ( HFSNET_807 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT HFSBUF_503_1151 ( .A ( CE ) , .Y ( HFSNET_808 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NBUFFX2_HVT HFSBUF_138_1152 ( .A ( CE ) , .Y ( HFSNET_809 ) , .VDD ( VDD ) , 
    .VSS ( VSS ) ) ;
NBUFFX16_HVT ZBUF_143_inst_2390 ( .A ( copt_gre_net_1090 ) , 
    .Y ( ZBUF_143_34 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT HFSBUF_591_1156 ( .A ( BIST_MODE[1] ) , .Y ( HFSNET_813 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX2_HVT HFSINV_512_1158 ( .A ( BIST_EN ) , .Y ( HFSNET_815 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX0_HVT HFSINV_1159_1159 ( .A ( BIST_EN ) , .Y ( HFSNET_816 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX32_HVT HFSBUF_6915_1160 ( .A ( HFSNET_821 ) , .Y ( HFSNET_817 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT copt_gre_mt_inst_6736 ( .A ( copt_gre_net_868 ) , 
    .Y ( copt_gre_net_867 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT copt_gre_mt_inst_6737 ( .A ( HFSNET_1260 ) , 
    .Y ( copt_gre_net_868 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX32_HVT HFSBUF_8864_1164 ( .A ( ZINV_4_61 ) , .Y ( HFSNET_821 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_3115_1165 ( .A ( HFSNET_834 ) , .Y ( HFSNET_822 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT ZBUF_76_inst_5149 ( .A ( MEM_OEB[29] ) , .Y ( ZBUF_76_17 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6738 ( .A ( copt_gre_net_870 ) , 
    .Y ( copt_gre_net_869 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_247_inst_2391 ( .A ( copt_gre_net_1090 ) , 
    .Y ( ZBUF_247_34 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6739 ( .A ( \USRAM/guide_buf_633 ) , 
    .Y ( copt_gre_net_870 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX32_HVT ZBUF_278_inst_2392 ( .A ( HFSNET_821 ) , .Y ( ZBUF_278_34 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6740 ( .A ( copt_gre_net_872 ) , 
    .Y ( copt_gre_net_871 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_1211_1172 ( .A ( HFSNET_1151 ) , .Y ( HFSNET_829 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6741 ( .A ( ZBUF_60_111 ) , 
    .Y ( copt_gre_net_872 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6742 ( .A ( copt_gre_net_874 ) , 
    .Y ( copt_gre_net_873 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6743 ( .A ( \USRAM/guide_buf_384 ) , 
    .Y ( copt_gre_net_874 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX32_HVT ZBUF_251_inst_2393 ( .A ( copt_gre_net_1451 ) , 
    .Y ( ZBUF_251_34 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX32_HVT HFSBUF_5249_1177 ( .A ( ZINV_11_61 ) , .Y ( HFSNET_834 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_676_1178 ( .A ( HFSNET_840 ) , .Y ( HFSNET_835 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_331_1179 ( .A ( HFSNET_840 ) , .Y ( HFSNET_836 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_976_1180 ( .A ( HFSNET_1394 ) , .Y ( HFSNET_837 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6744 ( .A ( copt_gre_net_876 ) , 
    .Y ( copt_gre_net_875 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT copt_gre_mt_inst_6745 ( .A ( \USRAM/guide_buf_165 ) , 
    .Y ( copt_gre_net_876 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_2928_1183 ( .A ( \USRAM/guide_buf_1 ) , .Y ( HFSNET_840 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_4740_1184 ( .A ( copt_gre_net_1387 ) , .Y ( HFSNET_841 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT HFSBUF_4785_1185 ( .A ( HFSNET_1275 ) , .Y ( HFSNET_842 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6746 ( .A ( copt_gre_net_878 ) , 
    .Y ( copt_gre_net_877 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX32_HVT ZBUF_189_inst_2394 ( .A ( HFSNET_1055 ) , .Y ( ZBUF_189_34 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_101_inst_5154 ( .A ( \USRAM/guide_buf_402 ) , 
    .Y ( ZBUF_101_18 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6747 ( .A ( \USRAM/guide_buf_635 ) , 
    .Y ( copt_gre_net_878 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6748 ( .A ( copt_gre_net_880 ) , 
    .Y ( copt_gre_net_879 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX8_HVT HFSBUF_7915_1192 ( .A ( \USRAM/guide_buf_1 ) , .Y ( HFSNET_849 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6749 ( .A ( copt_gre_net_881 ) , 
    .Y ( copt_gre_net_880 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_100_inst_5155 ( .A ( \USRAM/guide_buf_403 ) , 
    .Y ( ZBUF_100_18 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_62_inst_5156 ( .A ( \USRAM/guide_buf_406 ) , 
    .Y ( ZBUF_62_18 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX8_HVT HFSBUF_1360_1196 ( .A ( ZBUF_297_157 ) , .Y ( HFSNET_853 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT ZBUF_130_inst_2396 ( .A ( copt_gre_net_1437 ) , 
    .Y ( ZBUF_130_34 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6750 ( .A ( ZBUF_2_281 ) , 
    .Y ( copt_gre_net_881 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6751 ( .A ( copt_gre_net_883 ) , 
    .Y ( copt_gre_net_882 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_3753_1201 ( .A ( copt_gre_net_1037 ) , .Y ( HFSNET_858 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6752 ( .A ( copt_gre_net_884 ) , 
    .Y ( copt_gre_net_883 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_3138_1203 ( .A ( copt_gre_net_1035 ) , .Y ( HFSNET_860 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT HFSBUF_5167_1204 ( .A ( \USRAM/guide_buf_12 ) , 
    .Y ( HFSNET_861 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_2_inst_5157 ( .A ( \USRAM/guide_buf_592 ) , 
    .Y ( ZBUF_2_24 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_3680_1206 ( .A ( ZBUF_272_236 ) , .Y ( HFSNET_863 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6753 ( .A ( ZBUF_291_121 ) , 
    .Y ( copt_gre_net_884 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6754 ( .A ( copt_gre_net_886 ) , 
    .Y ( copt_gre_net_885 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT HFSBUF_4856_1209 ( .A ( \USRAM/guide_buf_13 ) , 
    .Y ( HFSNET_866 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_80_inst_5158 ( .A ( \USRAM/guide_buf_593 ) , 
    .Y ( ZBUF_80_24 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_1355_1211 ( .A ( HFSNET_869 ) , .Y ( HFSNET_868 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT HFSBUF_1720_1212 ( .A ( \USRAM/guide_buf_13 ) , 
    .Y ( HFSNET_869 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX8_HVT HFSBUF_420_1213 ( .A ( ZBUF_9_0 ) , .Y ( HFSNET_870 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_125_inst_5159 ( .A ( \USRAM/guide_buf_599 ) , 
    .Y ( ZBUF_125_24 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT HFSBUF_2753_1215 ( .A ( copt_gre_net_351 ) , .Y ( HFSNET_872 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6755 ( .A ( copt_gre_net_887 ) , 
    .Y ( copt_gre_net_886 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX8_HVT ZBUF_77_inst_5160 ( .A ( \USRAM/guide_buf_597 ) , 
    .Y ( ZBUF_77_24 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_3428_1218 ( .A ( ZBUF_144_159 ) , .Y ( HFSNET_875 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6756 ( .A ( \USRAM/guide_buf_643 ) , 
    .Y ( copt_gre_net_887 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6757 ( .A ( copt_gre_net_889 ) , 
    .Y ( copt_gre_net_888 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6758 ( .A ( copt_gre_net_890 ) , 
    .Y ( copt_gre_net_889 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6759 ( .A ( \USRAM/guide_buf_184 ) , 
    .Y ( copt_gre_net_890 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_1556_1224 ( .A ( copt_gre_net_351 ) , .Y ( HFSNET_881 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT copt_gre_mt_inst_6761 ( .A ( copt_gre_net_893 ) , 
    .Y ( copt_gre_net_892 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT HFSBUF_757_1226 ( .A ( copt_gre_net_351 ) , .Y ( HFSNET_883 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_50_inst_5161 ( .A ( \USRAM/guide_buf_598 ) , 
    .Y ( ZBUF_50_24 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_2_inst_5162 ( .A ( \USRAM/guide_buf_596 ) , 
    .Y ( ZBUF_2_26 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6762 ( .A ( \USRAM/guide_buf_54 ) , 
    .Y ( copt_gre_net_893 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX8_HVT ZBUF_285_inst_5163 ( .A ( MEM_OEB[62] ) , .Y ( ZBUF_285_26 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6763 ( .A ( copt_gre_net_895 ) , 
    .Y ( copt_gre_net_894 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6764 ( .A ( copt_gre_net_896 ) , 
    .Y ( copt_gre_net_895 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX8_HVT ZBUF_227_inst_2402 ( .A ( HFSNET_927 ) , .Y ( ZBUF_227_34 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX32_HVT HFSBUF_10471_1234 ( .A ( HFSNET_1315 ) , .Y ( HFSNET_891 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6765 ( .A ( \USRAM/guide_buf_645 ) , 
    .Y ( copt_gre_net_896 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_57_inst_5165 ( .A ( \USRAM/guide_buf_409 ) , 
    .Y ( ZBUF_57_26 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX16_HVT HFSBUF_8773_1239 ( .A ( copt_gre_net_1055 ) , .Y ( HFSNET_896 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6766 ( .A ( copt_gre_net_898 ) , 
    .Y ( copt_gre_net_897 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6767 ( .A ( copt_gre_net_899 ) , 
    .Y ( copt_gre_net_898 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6768 ( .A ( \USRAM/guide_buf_602 ) , 
    .Y ( copt_gre_net_899 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6769 ( .A ( copt_gre_net_901 ) , 
    .Y ( copt_gre_net_900 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6770 ( .A ( \USRAM/guide_buf_282 ) , 
    .Y ( copt_gre_net_901 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6771 ( .A ( copt_gre_net_903 ) , 
    .Y ( copt_gre_net_902 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_92_inst_5169 ( .A ( \USRAM/guide_buf_233 ) , 
    .Y ( ZBUF_92_26 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6772 ( .A ( \USRAM/guide_buf_286 ) , 
    .Y ( copt_gre_net_903 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_1066_1249 ( .A ( ZBUF_586_259 ) , .Y ( HFSNET_906 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6773 ( .A ( copt_gre_net_906 ) , 
    .Y ( copt_gre_net_904 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_106_inst_5173 ( .A ( \USRAM/guide_buf_619 ) , 
    .Y ( ZBUF_106_28 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT ZBUF_163_inst_2104 ( .A ( copt_gre_net_1214 ) , 
    .Y ( ZBUF_163_7 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6775 ( .A ( copt_gre_net_907 ) , 
    .Y ( copt_gre_net_906 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6776 ( .A ( copt_gre_net_908 ) , 
    .Y ( copt_gre_net_907 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6777 ( .A ( ZBUF_155_85 ) , 
    .Y ( copt_gre_net_908 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_7671_1257 ( .A ( \USRAM/guide_buf_15 ) , 
    .Y ( HFSNET_914 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6778 ( .A ( copt_gre_net_910 ) , 
    .Y ( copt_gre_net_909 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6779 ( .A ( \USRAM/guide_buf_163 ) , 
    .Y ( copt_gre_net_910 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6780 ( .A ( copt_gre_net_912 ) , 
    .Y ( copt_gre_net_911 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6781 ( .A ( ZBUF_71_124 ) , 
    .Y ( copt_gre_net_912 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX8_HVT HFSBUF_2240_1262 ( .A ( \USRAM/guide_buf_16 ) , 
    .Y ( HFSNET_919 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX32_HVT HFSBUF_2979_1263 ( .A ( ZBUF_329_235 ) , .Y ( HFSNET_920 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
IBUFFX32_HVT ZINV_185_inst_2106 ( .A ( ZINV_232_7 ) , .Y ( ZINV_185_7 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_97_inst_5177 ( .A ( \USRAM/guide_buf_273 ) , 
    .Y ( ZBUF_97_30 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_3283_1266 ( .A ( ZBUF_329_235 ) , .Y ( HFSNET_923 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT copt_gre_mt_inst_6782 ( .A ( copt_gre_net_914 ) , 
    .Y ( copt_gre_net_913 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6783 ( .A ( ZBUF_263_114 ) , 
    .Y ( copt_gre_net_914 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX8_HVT HFSBUF_1392_1269 ( .A ( copt_gre_net_390 ) , .Y ( HFSNET_926 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_1459_1270 ( .A ( \USRAM/guide_buf_17 ) , 
    .Y ( HFSNET_927 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6784 ( .A ( copt_gre_net_916 ) , 
    .Y ( copt_gre_net_915 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX32_HVT HFSBUF_270_1272 ( .A ( ropt_net_1503 ) , .Y ( HFSNET_929 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT HFSBUF_929_1273 ( .A ( \USRAM/guide_buf_17 ) , .Y ( HFSNET_930 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6785 ( .A ( \USRAM/guide_buf_287 ) , 
    .Y ( copt_gre_net_916 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6786 ( .A ( copt_gre_net_918 ) , 
    .Y ( copt_gre_net_917 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_2_inst_5179 ( .A ( \USRAM/guide_buf_277 ) , 
    .Y ( ZBUF_2_32 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6787 ( .A ( ZBUF_2_127 ) , 
    .Y ( copt_gre_net_918 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX4_HVT ZINV_232_inst_2107 ( .A ( ZBUF_21_32 ) , .Y ( ZINV_232_7 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6788 ( .A ( copt_gre_net_920 ) , 
    .Y ( copt_gre_net_919 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX8_HVT HFSBUF_1356_1281 ( .A ( copt_gre_net_1228 ) , .Y ( HFSNET_938 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT HFSBUF_1423_1282 ( .A ( ZBUF_17_12 ) , .Y ( HFSNET_939 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6789 ( .A ( ZBUF_737_281 ) , 
    .Y ( copt_gre_net_920 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_270_1284 ( .A ( copt_gre_net_1042 ) , .Y ( HFSNET_941 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6790 ( .A ( copt_gre_net_922 ) , 
    .Y ( copt_gre_net_921 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6791 ( .A ( ZBUF_2_93 ) , 
    .Y ( copt_gre_net_922 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6792 ( .A ( ZBUF_24_130 ) , 
    .Y ( copt_gre_net_923 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX8_HVT HFSBUF_2102_1289 ( .A ( copt_gre_net_1057 ) , .Y ( HFSNET_946 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6794 ( .A ( copt_gre_net_926 ) , 
    .Y ( copt_gre_net_925 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_301_inst_2108 ( .A ( HFSNET_870 ) , .Y ( ZBUF_301_7 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_912_1292 ( .A ( copt_gre_net_359 ) , .Y ( HFSNET_949 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX8_HVT HFSBUF_330_1293 ( .A ( ZBUF_31_163 ) , .Y ( HFSNET_950 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT HFSBUF_442_1294 ( .A ( copt_gre_net_359 ) , .Y ( HFSNET_951 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_2_inst_5182 ( .A ( \USRAM/guide_buf_595 ) , 
    .Y ( ZBUF_2_34 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX8_HVT HFSBUF_2480_1296 ( .A ( copt_gre_net_1060 ) , .Y ( HFSNET_953 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX8_HVT HFSBUF_2162_1297 ( .A ( copt_gre_net_1460 ) , .Y ( HFSNET_954 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6795 ( .A ( ZBUF_2_119 ) , 
    .Y ( copt_gre_net_926 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6796 ( .A ( copt_gre_net_928 ) , 
    .Y ( copt_gre_net_927 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6797 ( .A ( ZBUF_59_134 ) , 
    .Y ( copt_gre_net_928 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6798 ( .A ( copt_gre_net_930 ) , 
    .Y ( copt_gre_net_929 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_97_inst_5183 ( .A ( \USRAM/guide_buf_63 ) , 
    .Y ( ZBUF_97_34 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_59_1306 ( .A ( copt_gre_net_1103 ) , .Y ( HFSNET_963 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6799 ( .A ( ZBUF_657_281 ) , 
    .Y ( copt_gre_net_930 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6800 ( .A ( copt_gre_net_932 ) , 
    .Y ( copt_gre_net_931 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6801 ( .A ( ZBUF_2_128 ) , 
    .Y ( copt_gre_net_932 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6802 ( .A ( copt_gre_net_934 ) , 
    .Y ( copt_gre_net_933 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6803 ( .A ( ZBUF_2_141 ) , 
    .Y ( copt_gre_net_934 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_6098_1314 ( .A ( HFSNET_976 ) , .Y ( HFSNET_971 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6804 ( .A ( copt_gre_net_936 ) , 
    .Y ( copt_gre_net_935 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6805 ( .A ( ZBUF_2_94 ) , 
    .Y ( copt_gre_net_936 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6806 ( .A ( copt_gre_net_938 ) , 
    .Y ( copt_gre_net_937 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6807 ( .A ( copt_gre_net_939 ) , 
    .Y ( copt_gre_net_938 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX8_HVT HFSBUF_8457_1319 ( .A ( \USRAM/guide_buf_2 ) , .Y ( HFSNET_976 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6808 ( .A ( copt_gre_net_940 ) , 
    .Y ( copt_gre_net_939 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6809 ( .A ( copt_gre_net_941 ) , 
    .Y ( copt_gre_net_940 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX8_HVT HFSBUF_273_1322 ( .A ( copt_gre_net_365 ) , .Y ( HFSNET_979 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX32_HVT HFSBUF_733_1323 ( .A ( copt_gre_net_1062 ) , .Y ( HFSNET_980 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6810 ( .A ( ZBUF_2_280 ) , 
    .Y ( copt_gre_net_941 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT HFSBUF_3809_1327 ( .A ( \USRAM/guide_buf_21 ) , 
    .Y ( HFSNET_984 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT copt_gre_mt_inst_6811 ( .A ( copt_gre_net_943 ) , 
    .Y ( copt_gre_net_942 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_2_inst_5190 ( .A ( \USRAM/guide_buf_276 ) , 
    .Y ( ZBUF_2_36 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX8_HVT ZBUF_2_inst_5191 ( .A ( \USRAM/guide_buf_369 ) , 
    .Y ( ZBUF_2_37 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX8_HVT HFSBUF_5108_1332 ( .A ( HFSNET_1305 ) , .Y ( HFSNET_989 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6812 ( .A ( ZBUF_1382_279 ) , 
    .Y ( copt_gre_net_943 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT HFSBUF_2584_1334 ( .A ( HFSNET_1305 ) , .Y ( HFSNET_991 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_28_inst_5192 ( .A ( MEM_OEB[30] ) , .Y ( ZBUF_28_37 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_519_1337 ( .A ( HFSNET_1305 ) , .Y ( HFSNET_994 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6813 ( .A ( copt_gre_net_945 ) , 
    .Y ( copt_gre_net_944 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6814 ( .A ( ZBUF_468_281 ) , 
    .Y ( copt_gre_net_945 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT HFSBUF_884_1341 ( .A ( HFSNET_1305 ) , .Y ( HFSNET_998 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT copt_gre_mt_inst_6815 ( .A ( copt_gre_net_947 ) , 
    .Y ( copt_gre_net_946 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6816 ( .A ( ZBUF_240_121 ) , 
    .Y ( copt_gre_net_947 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX8_HVT ZBUF_100_inst_5196 ( .A ( \USRAM/guide_buf_432 ) , 
    .Y ( ZBUF_100_39 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT ZBUF_2_inst_2427 ( .A ( ctmn_3780_CDR1 ) , .Y ( ZBUF_2_42 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX8_HVT ZBUF_109_inst_5197 ( .A ( \USRAM/guide_buf_433 ) , 
    .Y ( ZBUF_109_39 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6817 ( .A ( copt_gre_net_949 ) , 
    .Y ( copt_gre_net_948 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX32_HVT HFSBUF_6930_1348 ( .A ( ZBUF_58_241 ) , .Y ( HFSNET_1005 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6818 ( .A ( ZBUF_68_133 ) , 
    .Y ( copt_gre_net_949 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_9813_1350 ( .A ( \USRAM/guide_buf_3 ) , 
    .Y ( HFSNET_1007 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6819 ( .A ( copt_gre_net_951 ) , 
    .Y ( copt_gre_net_950 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_400_1352 ( .A ( copt_gre_net_1080 ) , .Y ( HFSNET_1009 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6820 ( .A ( ZBUF_2_136 ) , 
    .Y ( copt_gre_net_951 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6821 ( .A ( copt_gre_net_953 ) , 
    .Y ( copt_gre_net_952 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6822 ( .A ( ZBUF_2_125 ) , 
    .Y ( copt_gre_net_953 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX8_HVT HFSBUF_2362_1356 ( .A ( copt_gre_net_1117 ) , .Y ( HFSNET_1013 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT copt_gre_mt_inst_6823 ( .A ( copt_gre_net_955 ) , 
    .Y ( copt_gre_net_954 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_6807_1359 ( .A ( \USRAM/guide_buf_4 ) , 
    .Y ( HFSNET_1016 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6824 ( .A ( \USRAM/guide_buf_89 ) , 
    .Y ( copt_gre_net_955 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_8476_1362 ( .A ( ZBUF_105_157 ) , .Y ( HFSNET_1019 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6825 ( .A ( copt_gre_net_957 ) , 
    .Y ( copt_gre_net_956 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6826 ( .A ( \USRAM/guide_buf_173 ) , 
    .Y ( copt_gre_net_957 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6827 ( .A ( copt_gre_net_959 ) , 
    .Y ( copt_gre_net_958 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX8_HVT ZBUF_244_inst_5199 ( .A ( \USRAM/guide_buf_439 ) , 
    .Y ( ZBUF_244_40 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT HFSBUF_10109_1367 ( .A ( \USRAM/guide_buf_4 ) , 
    .Y ( HFSNET_1024 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6828 ( .A ( copt_gre_net_960 ) , 
    .Y ( copt_gre_net_959 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6829 ( .A ( ZBUF_225_147 ) , 
    .Y ( copt_gre_net_960 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6830 ( .A ( copt_gre_net_963 ) , 
    .Y ( copt_gre_net_961 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT HFSBUF_11139_1373 ( .A ( \USRAM/guide_buf_5 ) , 
    .Y ( HFSNET_1030 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX8_HVT HFSBUF_352_1374 ( .A ( ZBUF_159_157 ) , .Y ( HFSNET_1031 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT copt_gre_mt_inst_6832 ( .A ( ZBUF_2_143 ) , 
    .Y ( copt_gre_net_963 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_233_inst_5201 ( .A ( \USRAM/guide_buf_437 ) , 
    .Y ( ZBUF_233_41 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_504_1378 ( .A ( ropt_net_1499 ) , .Y ( HFSNET_1035 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_94_inst_2112 ( .A ( ctmn_3558 ) , .Y ( ZBUF_94_7 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT copt_gre_mt_inst_6834 ( .A ( copt_gre_net_966 ) , 
    .Y ( copt_gre_net_965 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT HFSBUF_4335_1382 ( .A ( \USRAM/guide_buf_5 ) , 
    .Y ( HFSNET_1039 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX8_HVT ZBUF_185_inst_2432 ( .A ( HFSNET_834 ) , .Y ( ZBUF_185_43 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT HFSBUF_7445_1384 ( .A ( copt_gre_net_386 ) , .Y ( HFSNET_1041 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6835 ( .A ( \USRAM/guide_buf_28 ) , 
    .Y ( copt_gre_net_966 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6836 ( .A ( copt_gre_net_969 ) , 
    .Y ( copt_gre_net_967 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX8_HVT HFSBUF_9779_1388 ( .A ( ZBUF_4_158 ) , .Y ( HFSNET_1045 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6838 ( .A ( ZBUF_114_223 ) , 
    .Y ( copt_gre_net_969 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_11712_1390 ( .A ( \USRAM/guide_buf_6 ) , 
    .Y ( HFSNET_1047 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_98_inst_5203 ( .A ( \USRAM/guide_buf_67 ) , 
    .Y ( ZBUF_98_43 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX32_HVT ZBUF_352_inst_2433 ( .A ( ZBUF_329_235 ) , .Y ( ZBUF_352_43 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6839 ( .A ( copt_gre_net_971 ) , 
    .Y ( copt_gre_net_970 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6840 ( .A ( copt_gre_net_972 ) , 
    .Y ( copt_gre_net_971 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6841 ( .A ( ZBUF_142_151 ) , 
    .Y ( copt_gre_net_972 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX8_HVT HFSBUF_7047_1398 ( .A ( \USRAM/guide_buf_6 ) , 
    .Y ( HFSNET_1055 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6842 ( .A ( copt_gre_net_974 ) , 
    .Y ( copt_gre_net_973 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6843 ( .A ( copt_gre_net_975 ) , 
    .Y ( copt_gre_net_974 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX32_HVT HFSBUF_5916_1401 ( .A ( ZBUF_268_283 ) , .Y ( HFSNET_1058 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX8_HVT ZBUF_2_inst_5206 ( .A ( \USRAM/guide_buf_275 ) , 
    .Y ( ZBUF_2_46 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX32_HVT HFSBUF_2010_1403 ( .A ( ZBUF_68_169 ) , .Y ( HFSNET_1060 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6844 ( .A ( HFSNET_629 ) , 
    .Y ( copt_gre_net_975 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_121_inst_5207 ( .A ( \USRAM/guide_buf_366 ) , 
    .Y ( ZBUF_121_47 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT copt_gre_mt_inst_6845 ( .A ( copt_gre_net_977 ) , 
    .Y ( copt_gre_net_976 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT HFSBUF_2725_1408 ( .A ( copt_gre_net_360 ) , .Y ( HFSNET_1065 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6846 ( .A ( copt_gre_net_978 ) , 
    .Y ( copt_gre_net_977 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_2_inst_5208 ( .A ( HFSNET_1270 ) , .Y ( ZBUF_2_47 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_664_1412 ( .A ( copt_gre_net_1049 ) , .Y ( HFSNET_1069 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_825_1413 ( .A ( copt_gre_net_1392 ) , .Y ( HFSNET_1070 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6847 ( .A ( copt_gre_net_979 ) , 
    .Y ( copt_gre_net_978 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6848 ( .A ( copt_gre_net_980 ) , 
    .Y ( copt_gre_net_979 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6849 ( .A ( \USRAM/guide_buf_74 ) , 
    .Y ( copt_gre_net_980 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6850 ( .A ( copt_gre_net_982 ) , 
    .Y ( copt_gre_net_981 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6851 ( .A ( ZBUF_35_145 ) , 
    .Y ( copt_gre_net_982 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6852 ( .A ( copt_gre_net_984 ) , 
    .Y ( copt_gre_net_983 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX8_HVT ZBUF_82_inst_5209 ( .A ( \USRAM/guide_buf_82 ) , 
    .Y ( ZBUF_82_47 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX8_HVT ZBUF_105_inst_5210 ( .A ( \USRAM/guide_buf_64 ) , 
    .Y ( ZBUF_105_47 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX32_HVT HFSBUF_1231_1423 ( .A ( copt_gre_net_1458 ) , 
    .Y ( HFSNET_1080 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6853 ( .A ( \USRAM/guide_buf_297 ) , 
    .Y ( copt_gre_net_984 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6854 ( .A ( copt_gre_net_986 ) , 
    .Y ( copt_gre_net_985 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT ZBUF_2_inst_5211 ( .A ( \USRAM/guide_buf_622 ) , 
    .Y ( ZBUF_2_48 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT ZBUF_2_inst_5212 ( .A ( \USRAM/guide_buf_623 ) , 
    .Y ( ZBUF_2_49 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT ZBUF_153_inst_2437 ( .A ( ZBUF_159_60 ) , .Y ( ZBUF_153_43 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_1773_1429 ( .A ( \USRAM/guide_buf_8 ) , 
    .Y ( HFSNET_1086 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6855 ( .A ( \USRAM/guide_buf_299 ) , 
    .Y ( copt_gre_net_986 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6856 ( .A ( copt_gre_net_988 ) , 
    .Y ( copt_gre_net_987 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX32_HVT HFSBUF_7235_1433 ( .A ( copt_gre_net_1069 ) , 
    .Y ( HFSNET_1090 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6857 ( .A ( \USRAM/guide_buf_323 ) , 
    .Y ( copt_gre_net_988 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6858 ( .A ( copt_gre_net_990 ) , 
    .Y ( copt_gre_net_989 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT HFSBUF_11103_1436 ( .A ( \USRAM/guide_buf_9 ) , 
    .Y ( HFSNET_1093 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6859 ( .A ( \USRAM/guide_buf_324 ) , 
    .Y ( copt_gre_net_990 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6860 ( .A ( copt_gre_net_992 ) , 
    .Y ( copt_gre_net_991 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_7499_1440 ( .A ( \USRAM/guide_buf_9 ) , 
    .Y ( HFSNET_1097 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX32_HVT HFSBUF_1422_1441 ( .A ( ZBUF_47_12 ) , .Y ( HFSNET_1098 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6861 ( .A ( \USRAM/guide_buf_288 ) , 
    .Y ( copt_gre_net_992 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6862 ( .A ( copt_gre_net_994 ) , 
    .Y ( copt_gre_net_993 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6863 ( .A ( ZBUF_607_281 ) , 
    .Y ( copt_gre_net_994 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT HFSBUF_452_1445 ( .A ( ZBUF_269_158 ) , .Y ( HFSNET_1102 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6864 ( .A ( copt_gre_net_996 ) , 
    .Y ( copt_gre_net_995 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6865 ( .A ( ZBUF_2_216 ) , 
    .Y ( copt_gre_net_996 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6866 ( .A ( copt_gre_net_998 ) , 
    .Y ( copt_gre_net_997 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6867 ( .A ( \USRAM/guide_buf_527 ) , 
    .Y ( copt_gre_net_998 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6868 ( .A ( copt_gre_net_1000 ) , 
    .Y ( copt_gre_net_999 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6869 ( .A ( copt_gre_net_1001 ) , 
    .Y ( copt_gre_net_1000 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_44_1453 ( .A ( \USRAM/guide_buf_198 ) , 
    .Y ( HFSNET_1110 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6870 ( .A ( ZBUF_2_145 ) , 
    .Y ( copt_gre_net_1001 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6871 ( .A ( copt_gre_net_1003 ) , 
    .Y ( copt_gre_net_1002 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6872 ( .A ( ZBUF_2_154 ) , 
    .Y ( copt_gre_net_1003 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6874 ( .A ( copt_gre_net_1006 ) , 
    .Y ( copt_gre_net_1005 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_44_1459 ( .A ( HFSNET_25 ) , .Y ( HFSNET_1116 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6875 ( .A ( copt_gre_net_1007 ) , 
    .Y ( copt_gre_net_1006 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6876 ( .A ( \USRAM/guide_buf_658 ) , 
    .Y ( copt_gre_net_1007 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_21_1463 ( .A ( copt_gre_net_1023 ) , .Y ( HFSNET_1120 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_44_1464 ( .A ( copt_gre_net_970 ) , .Y ( HFSNET_1121 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_21_1465 ( .A ( HFSNET_442 ) , .Y ( HFSNET_1122 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_21_1466 ( .A ( copt_gre_net_1020 ) , .Y ( HFSNET_1123 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_21_1467 ( .A ( copt_gre_net_958 ) , .Y ( HFSNET_1124 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_44_1468 ( .A ( copt_gre_net_359 ) , .Y ( HFSNET_1125 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT HFSBUF_64_1469 ( .A ( HFSNET_752 ) , .Y ( ropt_net_1515 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6877 ( .A ( copt_gre_net_1009 ) , 
    .Y ( copt_gre_net_1008 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6878 ( .A ( copt_gre_net_1010 ) , 
    .Y ( copt_gre_net_1009 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6879 ( .A ( \USRAM/guide_buf_38 ) , 
    .Y ( copt_gre_net_1010 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_21_1473 ( .A ( copt_gre_net_1300 ) , .Y ( HFSNET_1130 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6880 ( .A ( copt_gre_net_1012 ) , 
    .Y ( copt_gre_net_1011 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_21_1475 ( .A ( \USRAM/guide_buf_108 ) , 
    .Y ( HFSNET_1132 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_21_1476 ( .A ( \USRAM/guide_buf_128 ) , 
    .Y ( HFSNET_1133 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_21_1477 ( .A ( \USRAM/guide_buf_24 ) , .Y ( HFSNET_1134 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_21_1478 ( .A ( \USRAM/guide_buf_27 ) , .Y ( HFSNET_1135 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_21_1479 ( .A ( \USRAM/guide_buf_435 ) , 
    .Y ( HFSNET_1136 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6881 ( .A ( \USRAM/guide_buf_293 ) , 
    .Y ( copt_gre_net_1012 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT HFSBUF_21_1481 ( .A ( \USRAM/guide_buf_458 ) , 
    .Y ( HFSNET_1138 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6882 ( .A ( ZBUF_21_154 ) , 
    .Y ( copt_gre_net_1013 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT HFSBUF_21_1483 ( .A ( \USRAM/guide_buf_475 ) , 
    .Y ( HFSNET_1140 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_21_1484 ( .A ( \USRAM/guide_buf_477 ) , 
    .Y ( HFSNET_1141 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_21_1485 ( .A ( \USRAM/guide_buf_613 ) , 
    .Y ( HFSNET_1142 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_21_1486 ( .A ( \USRAM/guide_buf_615 ) , 
    .Y ( HFSNET_1143 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT HFSBUF_21_1488 ( .A ( \USRAM/guide_buf_77 ) , .Y ( HFSNET_1145 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6884 ( .A ( copt_gre_net_1016 ) , 
    .Y ( copt_gre_net_1015 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX8_HVT ZBUF_2_inst_5219 ( .A ( \USRAM/guide_buf_189 ) , 
    .Y ( ZBUF_2_56 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT ZBUF_2_inst_5220 ( .A ( \USRAM/guide_buf_223 ) , 
    .Y ( ZBUF_2_57 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_43_inst_2444 ( .A ( ZBUF_88_44 ) , .Y ( ZBUF_43_44 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_2_1494 ( .A ( ZBUF_185_43 ) , .Y ( HFSNET_1151 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6885 ( .A ( ZBUF_73_155 ) , 
    .Y ( copt_gre_net_1016 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
TIEL_HVT optlc_2199 ( .Y ( optlc_net_220 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6887 ( .A ( copt_gre_net_1019 ) , 
    .Y ( copt_gre_net_1018 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6888 ( .A ( \USRAM/guide_buf_295 ) , 
    .Y ( copt_gre_net_1019 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6889 ( .A ( copt_gre_net_1021 ) , 
    .Y ( copt_gre_net_1020 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT ZBUF_88_inst_2445 ( .A ( ZBUF_286_44 ) , .Y ( ZBUF_88_44 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6890 ( .A ( ZBUF_2_155 ) , 
    .Y ( copt_gre_net_1021 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
TIEL_HVT optlc_2200 ( .Y ( optlc_net_221 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX8_HVT ZBUF_286_inst_2447 ( .A ( ZBUF_148_235 ) , .Y ( ZBUF_286_44 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_55_1507 ( .A ( ZINV_270_61 ) , .Y ( HFSNET_1164 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT copt_gre_mt_inst_6892 ( .A ( ZBUF_56_132 ) , 
    .Y ( copt_gre_net_1023 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6893 ( .A ( copt_gre_net_1025 ) , 
    .Y ( copt_gre_net_1024 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_325_1511 ( .A ( copt_gre_net_1366 ) , .Y ( HFSNET_1168 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT ZBUF_4_inst_2449 ( .A ( copt_gre_net_1372 ) , .Y ( ZBUF_4_45 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6894 ( .A ( ZBUF_147_156 ) , 
    .Y ( copt_gre_net_1025 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_57_1516 ( .A ( copt_gre_net_1359 ) , .Y ( HFSNET_1173 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT HFSBUF_83_1517 ( .A ( copt_gre_net_1045 ) , .Y ( HFSNET_1174 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6895 ( .A ( copt_gre_net_1027 ) , 
    .Y ( copt_gre_net_1026 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
TIEL_HVT optlc_2201 ( .Y ( optlc_net_222 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6896 ( .A ( \USRAM/guide_buf_578 ) , 
    .Y ( copt_gre_net_1027 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6897 ( .A ( copt_gre_net_1029 ) , 
    .Y ( copt_gre_net_1028 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
TIEL_HVT optlc_2202 ( .Y ( optlc_net_223 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6898 ( .A ( \USRAM/guide_buf_523 ) , 
    .Y ( copt_gre_net_1029 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_57_1524 ( .A ( copt_gre_net_1370 ) , .Y ( HFSNET_1181 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6899 ( .A ( copt_gre_net_1031 ) , 
    .Y ( copt_gre_net_1030 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_53_inst_5224 ( .A ( \USRAM/guide_buf_196 ) , 
    .Y ( ZBUF_53_59 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_456_1529 ( .A ( HFSNET_1030 ) , .Y ( HFSNET_1186 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX8_HVT HFSBUF_52_1530 ( .A ( copt_gre_net_1415 ) , .Y ( HFSNET_1187 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT HFSBUF_102_1531 ( .A ( ZBUF_159_60 ) , .Y ( HFSNET_1188 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT HFSBUF_558_1532 ( .A ( HFSNET_984 ) , .Y ( HFSNET_1189 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6900 ( .A ( copt_gre_net_1032 ) , 
    .Y ( copt_gre_net_1031 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
TIEL_HVT optlc_2203 ( .Y ( optlc_net_224 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6901 ( .A ( copt_gre_net_1033 ) , 
    .Y ( copt_gre_net_1032 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6902 ( .A ( copt_gre_net_1035 ) , 
    .Y ( copt_gre_net_1033 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
TIEL_HVT optlc_2204 ( .Y ( optlc_net_225 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6903 ( .A ( copt_gre_net_1035 ) , 
    .Y ( copt_gre_net_1034 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6904 ( .A ( copt_gre_net_1036 ) , 
    .Y ( copt_gre_net_1035 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6905 ( .A ( copt_gre_net_1039 ) , 
    .Y ( copt_gre_net_1036 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6906 ( .A ( copt_gre_net_1038 ) , 
    .Y ( copt_gre_net_1037 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6907 ( .A ( copt_gre_net_1039 ) , 
    .Y ( copt_gre_net_1038 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6908 ( .A ( copt_gre_net_1040 ) , 
    .Y ( copt_gre_net_1039 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_115_1544 ( .A ( ZBUF_120_238 ) , .Y ( HFSNET_1201 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT HFSBUF_266_1545 ( .A ( ZBUF_120_238 ) , .Y ( HFSNET_1202 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6909 ( .A ( copt_gre_net_1041 ) , 
    .Y ( copt_gre_net_1040 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6910 ( .A ( HFSNET_861 ) , 
    .Y ( copt_gre_net_1041 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6911 ( .A ( copt_gre_net_1043 ) , 
    .Y ( copt_gre_net_1042 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
TIEL_HVT optlc_2205 ( .Y ( optlc_net_226 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6912 ( .A ( copt_gre_net_1044 ) , 
    .Y ( copt_gre_net_1043 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6913 ( .A ( ZBUF_65_159 ) , 
    .Y ( copt_gre_net_1044 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6914 ( .A ( copt_gre_net_1046 ) , 
    .Y ( copt_gre_net_1045 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX32_HVT HFSBUF_298_1553 ( .A ( ZBUF_144_159 ) , .Y ( HFSNET_1210 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6915 ( .A ( copt_gre_net_1047 ) , 
    .Y ( copt_gre_net_1046 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_2_inst_5226 ( .A ( \USRAM/guide_buf_79 ) , .Y ( ZBUF_2_60 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX32_HVT HFSBUF_306_1556 ( .A ( ZBUF_272_236 ) , .Y ( HFSNET_1213 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6916 ( .A ( ZBUF_517_157 ) , 
    .Y ( copt_gre_net_1047 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
TIEL_HVT optlc_2206 ( .Y ( optlc_net_227 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6917 ( .A ( copt_gre_net_1049 ) , 
    .Y ( copt_gre_net_1048 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
TIEL_HVT optlc_2207 ( .Y ( optlc_net_228 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6918 ( .A ( copt_gre_net_1050 ) , 
    .Y ( copt_gre_net_1049 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
AO22X1_HVT ctmTdsLR_1_1564 ( .A1 ( BIST_MODE[1] ) , .A2 ( HFSNET_805 ) , 
    .A3 ( HFSNET_807 ) , .A4 ( HFSNET_811 ) , .Y ( tmp_net73 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
AND3X1_HVT ctmTdsLR_2_1565 ( .A1 ( tmp_net73 ) , .A2 ( HFSNET_802 ) , 
    .A3 ( TOGGLED_DATA[7] ) , .Y ( ctmn_3959 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6919 ( .A ( ZBUF_313_158 ) , 
    .Y ( copt_gre_net_1050 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6920 ( .A ( copt_gre_net_1052 ) , 
    .Y ( copt_gre_net_1051 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_51_1571 ( .A ( HFSNET_150 ) , .Y ( HFSNET_1226 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6921 ( .A ( ZBUF_113_241 ) , 
    .Y ( copt_gre_net_1052 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6922 ( .A ( copt_gre_net_1054 ) , 
    .Y ( copt_gre_net_1053 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6923 ( .A ( ZBUF_49_235 ) , 
    .Y ( copt_gre_net_1054 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6924 ( .A ( copt_gre_net_1056 ) , 
    .Y ( copt_gre_net_1055 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6925 ( .A ( \USRAM/guide_buf_15 ) , 
    .Y ( copt_gre_net_1056 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX8_HVT HFSINV_4_1578 ( .A ( HFSNET_19 ) , .Y ( HFSNET_1233 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX8_HVT HFSINV__110_SZN ( .A ( MEM_CSB[17] ) , .Y ( HFSNET_19 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6926 ( .A ( copt_gre_net_1058 ) , 
    .Y ( copt_gre_net_1057 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_21_1582 ( .A ( copt_gre_net_774 ) , .Y ( HFSNET_1236 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6927 ( .A ( ZBUF_200_159 ) , 
    .Y ( copt_gre_net_1058 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
TIEL_HVT optlc_2208 ( .Y ( optlc_net_229 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT copt_gre_mt_inst_6929 ( .A ( copt_gre_net_359 ) , 
    .Y ( copt_gre_net_1060 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6930 ( .A ( copt_gre_net_1062 ) , 
    .Y ( copt_gre_net_1061 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT copt_gre_mt_inst_6931 ( .A ( \USRAM/guide_buf_21 ) , 
    .Y ( copt_gre_net_1062 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT copt_gre_mt_inst_6932 ( .A ( copt_gre_net_1064 ) , 
    .Y ( copt_gre_net_1063 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6933 ( .A ( copt_gre_net_1065 ) , 
    .Y ( copt_gre_net_1064 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6934 ( .A ( copt_gre_net_1067 ) , 
    .Y ( copt_gre_net_1065 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6935 ( .A ( copt_gre_net_1067 ) , 
    .Y ( copt_gre_net_1066 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6936 ( .A ( copt_gre_net_1068 ) , 
    .Y ( copt_gre_net_1067 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_2_1595 ( .A ( MEM_CSB[10] ) , .Y ( HFSNET_1249 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6937 ( .A ( copt_gre_net_1071 ) , 
    .Y ( copt_gre_net_1068 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6938 ( .A ( copt_gre_net_1071 ) , 
    .Y ( copt_gre_net_1069 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_21_1599 ( .A ( MEM_OEB[33] ) , .Y ( HFSNET_1253 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_2_1600 ( .A ( MEM_OEB[36] ) , .Y ( HFSNET_1254 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
TIEL_HVT optlc_2209 ( .Y ( optlc_net_230 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT HFSBUF_21_1602 ( .A ( MEM_OEB[54] ) , .Y ( HFSNET_1256 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_21_1603 ( .A ( \USRAM/guide_buf_466 ) , 
    .Y ( HFSNET_1257 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT HFSBUF_2_1604 ( .A ( \USRAM/guide_buf_467 ) , .Y ( HFSNET_1258 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT HFSBUF_2_1606 ( .A ( \USRAM/guide_buf_565 ) , .Y ( HFSNET_1260 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT copt_gre_mt_inst_6940 ( .A ( HFSNET_1306 ) , 
    .Y ( copt_gre_net_1071 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT HFSBUF_2_1608 ( .A ( \USRAM/guide_buf_604 ) , .Y ( HFSNET_1262 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT HFSBUF_2_1609 ( .A ( \USRAM/guide_buf_608 ) , .Y ( HFSNET_1263 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_2_1610 ( .A ( \USRAM/guide_buf_62 ) , .Y ( HFSNET_1264 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_2_1611 ( .A ( \USRAM/guide_buf_65 ) , .Y ( HFSNET_1265 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_2_1612 ( .A ( \USRAM/guide_buf_653 ) , .Y ( HFSNET_1266 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
TIEL_HVT optlc_2210 ( .Y ( optlc_net_231 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_49_1614 ( .A ( \USRAM/guide_buf_654 ) , 
    .Y ( HFSNET_1268 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_2_1615 ( .A ( \USRAM/guide_buf_657 ) , .Y ( HFSNET_1269 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT HFSBUF_2_1616 ( .A ( \USRAM/guide_buf_66 ) , .Y ( HFSNET_1270 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT HFSBUF_21_1617 ( .A ( \USRAM/guide_buf_68 ) , .Y ( HFSNET_1271 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT HFSBUF_21_1618 ( .A ( \USRAM/guide_buf_78 ) , .Y ( HFSNET_1272 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
TIEL_HVT optlc_2211 ( .Y ( optlc_net_232 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_33_1621 ( .A ( HFSNET_849 ) , .Y ( HFSNET_1275 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
IBUFFX16_HVT HFSINV_28_1622 ( .A ( HFSNET_1163 ) , .Y ( HFSNET_1276 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX4_HVT HFSINV__134_SZN ( .A ( ZBUF_131_238 ) , .Y ( HFSNET_1163 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6942 ( .A ( HFSNET_1306 ) , 
    .Y ( copt_gre_net_1073 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6943 ( .A ( HFSNET_868 ) , 
    .Y ( copt_gre_net_1074 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX8_HVT ZBUF_2_inst_5230 ( .A ( \USRAM/guide_buf_363 ) , 
    .Y ( ZBUF_2_62 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX16_HVT ZBUF_126_inst_2456 ( .A ( HFSNET_1326 ) , .Y ( ZBUF_126_46 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6945 ( .A ( copt_gre_net_1077 ) , 
    .Y ( copt_gre_net_1076 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6946 ( .A ( ZBUF_108_160 ) , 
    .Y ( copt_gre_net_1077 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_55_inst_5231 ( .A ( \USRAM/guide_buf_396 ) , 
    .Y ( ZBUF_55_62 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6947 ( .A ( ZBUF_108_160 ) , 
    .Y ( copt_gre_net_1078 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6948 ( .A ( copt_gre_net_1081 ) , 
    .Y ( copt_gre_net_1079 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6949 ( .A ( copt_gre_net_1081 ) , 
    .Y ( copt_gre_net_1080 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX8_HVT HFSBUF_28_1639 ( .A ( copt_gre_net_1355 ) , .Y ( HFSNET_1291 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6950 ( .A ( ZBUF_75_239 ) , 
    .Y ( copt_gre_net_1081 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6951 ( .A ( copt_gre_net_1083 ) , 
    .Y ( copt_gre_net_1082 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6952 ( .A ( HFSNET_1102 ) , 
    .Y ( copt_gre_net_1083 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX8_HVT HFSBUF_19_1644 ( .A ( HFSNET_821 ) , .Y ( HFSNET_1296 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
TIEL_HVT optlc_2212 ( .Y ( optlc_net_233 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT HFSBUF_59_1646 ( .A ( ZBUF_18_177 ) , .Y ( HFSNET_1298 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT HFSBUF_57_1647 ( .A ( copt_gre_net_1053 ) , .Y ( HFSNET_1299 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
IBUFFX16_HVT HFSINV_83_1648 ( .A ( HFSNET_1042 ) , .Y ( HFSNET_1300 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX1_HVT HFSINV__119_SZN ( .A ( HFSNET_1400 ) , .Y ( HFSNET_1042 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
IBUFFX16_HVT HFSINV_83_1651 ( .A ( HFSNET_1026 ) , .Y ( HFSNET_1302 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX1_HVT HFSINV__119_SZN1652 ( .A ( HFSNET_1379 ) , .Y ( HFSNET_1026 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT HFSBUF_60_1654 ( .A ( \USRAM/guide_buf_2 ) , .Y ( HFSNET_1304 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_74_1655 ( .A ( \USRAM/guide_buf_3 ) , .Y ( HFSNET_1305 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT HFSBUF_39_1656 ( .A ( \USRAM/guide_buf_8 ) , .Y ( HFSNET_1306 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT HFSBUF_2_1657 ( .A ( HFSNET_1024 ) , .Y ( HFSNET_1307 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
TIEL_HVT optlc_2213 ( .Y ( optlc_net_234 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6953 ( .A ( HFSNET_1102 ) , 
    .Y ( copt_gre_net_1084 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX8_HVT ZBUF_162_inst_2460 ( .A ( ZBUF_4351_30 ) , .Y ( ZBUF_162_47 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6954 ( .A ( copt_gre_net_1086 ) , 
    .Y ( copt_gre_net_1085 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT copt_gre_mt_inst_6955 ( .A ( copt_gre_net_1087 ) , 
    .Y ( copt_gre_net_1086 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX32_HVT HFSBUF_66_1665 ( .A ( copt_gre_net_1055 ) , .Y ( HFSNET_1315 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX8_HVT HFSBUF_107_1666 ( .A ( copt_gre_net_1131 ) , .Y ( HFSNET_1316 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6956 ( .A ( copt_gre_net_1089 ) , 
    .Y ( copt_gre_net_1087 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_100_1669 ( .A ( HFSNET_863 ) , .Y ( HFSNET_1319 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX8_HVT ZBUF_68_inst_5234 ( .A ( \USRAM/guide_buf_566 ) , 
    .Y ( ZBUF_68_63 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
TIEL_HVT optlc_2214 ( .Y ( optlc_net_235 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6957 ( .A ( copt_gre_net_1089 ) , 
    .Y ( copt_gre_net_1088 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT ZBUF_67_inst_5235 ( .A ( \USRAM/guide_buf_116 ) , 
    .Y ( ZBUF_67_63 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT copt_gre_mt_inst_6958 ( .A ( ZBUF_136_237 ) , 
    .Y ( copt_gre_net_1089 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_17_1676 ( .A ( copt_gre_net_1078 ) , .Y ( HFSNET_1326 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_60_inst_5237 ( .A ( \USRAM/guide_buf_562 ) , 
    .Y ( ZBUF_60_63 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
TIEL_HVT optlc_2215 ( .Y ( optlc_net_236 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX32_HVT HFSBUF_96_1679 ( .A ( copt_gre_net_352 ) , .Y ( HFSNET_1329 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX32_HVT HFSBUF_63_1680 ( .A ( copt_gre_net_350 ) , .Y ( HFSNET_1330 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_76_1681 ( .A ( ZBUF_162_47 ) , .Y ( HFSNET_1331 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_59_inst_5238 ( .A ( \USRAM/guide_buf_569 ) , 
    .Y ( ZBUF_59_63 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX8_HVT HFSBUF_96_1683 ( .A ( copt_gre_net_1396 ) , .Y ( HFSNET_1333 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX8_HVT HFSBUF_45_1684 ( .A ( copt_gre_net_1371 ) , .Y ( HFSNET_1334 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT HFSBUF_196_1685 ( .A ( ZBUF_200_160 ) , .Y ( HFSNET_1335 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6959 ( .A ( copt_gre_net_1091 ) , 
    .Y ( copt_gre_net_1090 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6960 ( .A ( copt_gre_net_1092 ) , 
    .Y ( copt_gre_net_1091 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6961 ( .A ( copt_gre_net_1094 ) , 
    .Y ( copt_gre_net_1092 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6962 ( .A ( copt_gre_net_1094 ) , 
    .Y ( copt_gre_net_1093 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6963 ( .A ( HFSNET_1346 ) , 
    .Y ( copt_gre_net_1094 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_63_inst_5242 ( .A ( \USRAM/guide_buf_567 ) , 
    .Y ( ZBUF_63_65 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6964 ( .A ( copt_gre_net_1096 ) , 
    .Y ( copt_gre_net_1095 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6965 ( .A ( ZBUF_2_162 ) , 
    .Y ( copt_gre_net_1096 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX32_HVT HFSBUF_251_1695 ( .A ( HFSNET_971 ) , .Y ( HFSNET_1345 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT HFSBUF_123_1696 ( .A ( ZBUF_269_158 ) , .Y ( HFSNET_1346 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6967 ( .A ( copt_gre_net_1099 ) , 
    .Y ( copt_gre_net_1098 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT ZBUF_53_inst_5243 ( .A ( \USRAM/guide_buf_262 ) , 
    .Y ( ZBUF_53_65 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6968 ( .A ( ZBUF_142_161 ) , 
    .Y ( copt_gre_net_1099 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT HFSBUF_231_1701 ( .A ( copt_gre_net_1384 ) , .Y ( HFSNET_1351 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6969 ( .A ( HFSNET_1125 ) , 
    .Y ( copt_gre_net_1100 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6970 ( .A ( copt_gre_net_1102 ) , 
    .Y ( copt_gre_net_1101 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT HFSBUF_165_1704 ( .A ( ctmn_3649 ) , .Y ( HFSNET_1354 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6971 ( .A ( ZBUF_149_160 ) , 
    .Y ( copt_gre_net_1102 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT HFSBUF_196_1706 ( .A ( ctmn_3609 ) , .Y ( HFSNET_1356 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT HFSBUF_161_1707 ( .A ( ctmn_3619 ) , .Y ( HFSNET_1357 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT HFSBUF_216_1708 ( .A ( ctmn_3593 ) , .Y ( HFSNET_1358 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT HFSBUF_205_1709 ( .A ( ctmn_3611 ) , .Y ( HFSNET_1359 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT HFSBUF_189_1710 ( .A ( ctmn_3590 ) , .Y ( HFSNET_1360 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6972 ( .A ( copt_gre_net_1105 ) , 
    .Y ( copt_gre_net_1103 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT HFSBUF_174_1712 ( .A ( ctmn_3638 ) , .Y ( HFSNET_1362 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT HFSBUF_180_1713 ( .A ( ctmn_3622 ) , .Y ( HFSNET_1363 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT HFSBUF_184_1715 ( .A ( ctmn_3647 ) , .Y ( HFSNET_1365 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT HFSBUF_177_1716 ( .A ( ctmn_3634 ) , .Y ( HFSNET_1366 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT HFSBUF_148_1717 ( .A ( ctmn_3620 ) , .Y ( HFSNET_1367 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT HFSBUF_118_1718 ( .A ( ctmn_3569 ) , .Y ( HFSNET_1368 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_2_inst_5246 ( .A ( \USRAM/guide_buf_179 ) , 
    .Y ( ZBUF_2_68 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6973 ( .A ( copt_gre_net_1105 ) , 
    .Y ( copt_gre_net_1104 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
TIEL_HVT optlc_2216 ( .Y ( optlc_net_237 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT HFSBUF_178_1722 ( .A ( ctmn_3621 ) , .Y ( HFSNET_1372 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT HFSBUF_123_1723 ( .A ( ctmn_3557 ) , .Y ( HFSNET_1373 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6974 ( .A ( copt_gre_net_1106 ) , 
    .Y ( copt_gre_net_1105 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT HFSBUF_195_1725 ( .A ( ctmn_3624 ) , .Y ( HFSNET_1375 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT HFSBUF_128_1726 ( .A ( copt_gre_net_1430 ) , .Y ( HFSNET_1376 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6975 ( .A ( ZBUF_220_234 ) , 
    .Y ( copt_gre_net_1106 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6976 ( .A ( copt_gre_net_1108 ) , 
    .Y ( copt_gre_net_1107 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_222_1729 ( .A ( HFSNET_1399 ) , .Y ( HFSNET_1379 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT HFSBUF_231_1730 ( .A ( HFSNET_1055 ) , .Y ( HFSNET_1380 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX32_HVT HFSBUF_262_1731 ( .A ( HFSNET_1039 ) , .Y ( HFSNET_1381 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6977 ( .A ( ZBUF_58_163 ) , 
    .Y ( copt_gre_net_1108 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_85_1733 ( .A ( ZBUF_2_53 ) , .Y ( HFSNET_1383 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6978 ( .A ( ZBUF_32_258 ) , 
    .Y ( copt_gre_net_1109 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6981 ( .A ( copt_gre_net_1113 ) , 
    .Y ( copt_gre_net_1112 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_73_inst_5248 ( .A ( \USRAM/guide_buf_393 ) , 
    .Y ( ZBUF_73_69 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_21_1739 ( .A ( MEM_OEB[50] ) , .Y ( HFSNET_1389 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6982 ( .A ( copt_gre_net_1114 ) , 
    .Y ( copt_gre_net_1113 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX8_HVT ZBUF_86_inst_5249 ( .A ( \USRAM/guide_buf_434 ) , 
    .Y ( ZBUF_86_69 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT HFSBUF_4_1742 ( .A ( copt_gre_net_1103 ) , .Y ( HFSNET_1392 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
TIEL_HVT optlc_2217 ( .Y ( optlc_net_238 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_2_1744 ( .A ( HFSNET_840 ) , .Y ( HFSNET_1394 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT HFSBUF_21_1745 ( .A ( HFSNET_821 ) , .Y ( HFSNET_1395 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6983 ( .A ( copt_gre_net_1115 ) , 
    .Y ( copt_gre_net_1114 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6984 ( .A ( copt_gre_net_1116 ) , 
    .Y ( copt_gre_net_1115 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_26_1749 ( .A ( HFSNET_1186 ) , .Y ( HFSNET_1399 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT HFSBUF_2_1750 ( .A ( ZBUF_25_234 ) , .Y ( HFSNET_1400 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6985 ( .A ( copt_gre_net_1119 ) , 
    .Y ( copt_gre_net_1116 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT HFSBUF_145_1752 ( .A ( ctmn_3598 ) , .Y ( HFSNET_1402 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6986 ( .A ( copt_gre_net_1119 ) , 
    .Y ( copt_gre_net_1117 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT copt_gre_mt_inst_6987 ( .A ( copt_gre_net_1119 ) , 
    .Y ( copt_gre_net_1118 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
TIEL_HVT optlc_2218 ( .Y ( optlc_net_239 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
TIEL_HVT optlc_2219 ( .Y ( optlc_net_240 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
TIEL_HVT optlc_2220 ( .Y ( optlc_net_241 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
TIEL_HVT optlc_2221 ( .Y ( optlc_net_242 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
TIEL_HVT optlc_2222 ( .Y ( optlc_net_243 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
TIEL_HVT optlc_2223 ( .Y ( optlc_net_244 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
TIEL_HVT optlc_2224 ( .Y ( optlc_net_245 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
TIEL_HVT optlc_2225 ( .Y ( optlc_net_246 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
TIEL_HVT optlc_2226 ( .Y ( optlc_net_247 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
TIEL_HVT optlc_2227 ( .Y ( optlc_net_248 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
TIEL_HVT optlc_2228 ( .Y ( optlc_net_249 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
TIEL_HVT optlc_2229 ( .Y ( optlc_net_250 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
TIEL_HVT optlc_2230 ( .Y ( optlc_net_251 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
TIEL_HVT optlc_2231 ( .Y ( optlc_net_252 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
TIEL_HVT optlc_2232 ( .Y ( optlc_net_253 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
TIEL_HVT optlc_2233 ( .Y ( optlc_net_254 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
TIEL_HVT optlc_2234 ( .Y ( optlc_net_255 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
TIEL_HVT optlc_2235 ( .Y ( optlc_net_256 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
TIEL_HVT optlc_2236 ( .Y ( optlc_net_257 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
TIEL_HVT optlc_2237 ( .Y ( optlc_net_258 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
TIEL_HVT optlc_2238 ( .Y ( optlc_net_259 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
TIEL_HVT optlc_2239 ( .Y ( optlc_net_260 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
TIEL_HVT optlc_2240 ( .Y ( optlc_net_261 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
TIEL_HVT optlc_2241 ( .Y ( optlc_net_262 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
TIEL_HVT optlc_2242 ( .Y ( optlc_net_263 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
TIEL_HVT optlc_2243 ( .Y ( optlc_net_264 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
TIEL_HVT optlc_2244 ( .Y ( optlc_net_265 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
TIEL_HVT optlc_2245 ( .Y ( optlc_net_266 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
TIEL_HVT optlc_2246 ( .Y ( optlc_net_267 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
TIEL_HVT optlc_2247 ( .Y ( optlc_net_268 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
TIEL_HVT optlc_2248 ( .Y ( optlc_net_269 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
TIEL_HVT optlc_2249 ( .Y ( optlc_net_270 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
TIEL_HVT optlc_2250 ( .Y ( optlc_net_271 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
TIEL_HVT optlc_2251 ( .Y ( optlc_net_272 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
TIEL_HVT optlc_2252 ( .Y ( optlc_net_273 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
TIEL_HVT optlc_2253 ( .Y ( optlc_net_274 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
TIEL_HVT optlc_2254 ( .Y ( optlc_net_275 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
TIEL_HVT optlc_2255 ( .Y ( optlc_net_276 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
TIEL_HVT optlc_2256 ( .Y ( optlc_net_277 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
TIEL_HVT optlc_2257 ( .Y ( optlc_net_278 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
TIEL_HVT optlc_2258 ( .Y ( optlc_net_279 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
TIEL_HVT optlc_2259 ( .Y ( optlc_net_280 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
TIEL_HVT optlc_2260 ( .Y ( optlc_net_281 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
TIEL_HVT optlc_2261 ( .Y ( optlc_net_282 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
TIEL_HVT optlc_2262 ( .Y ( optlc_net_283 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
TIEL_HVT optlc_2263 ( .Y ( optlc_net_284 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
TIEL_HVT optlc_2264 ( .Y ( optlc_net_285 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
TIEL_HVT optlc_2265 ( .Y ( optlc_net_286 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
TIEL_HVT optlc_2266 ( .Y ( optlc_net_287 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
TIEL_HVT optlc_2267 ( .Y ( optlc_net_288 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
TIEL_HVT optlc_2268 ( .Y ( optlc_net_289 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
TIEL_HVT optlc_2269 ( .Y ( optlc_net_290 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
TIEL_HVT optlc_2270 ( .Y ( optlc_net_291 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
TIEL_HVT optlc_2271 ( .Y ( optlc_net_292 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
TIEL_HVT optlc_2272 ( .Y ( optlc_net_293 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
TIEL_HVT optlc_2273 ( .Y ( optlc_net_294 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
TIEL_HVT optlc_2274 ( .Y ( optlc_net_295 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
TIEL_HVT optlc_2275 ( .Y ( optlc_net_296 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
TIEL_HVT optlc_2276 ( .Y ( optlc_net_297 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_212_inst_2277 ( .A ( ctmn_3567 ) , .Y ( ZBUF_212_0 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6988 ( .A ( ZBUF_2_235 ) , 
    .Y ( copt_gre_net_1119 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT ZBUF_21_inst_2280 ( .A ( \USRAM/guide_buf_557 ) , 
    .Y ( ZBUF_21_1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6989 ( .A ( copt_gre_net_1122 ) , 
    .Y ( copt_gre_net_1120 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT copt_gre_mt_inst_6991 ( .A ( copt_gre_net_1123 ) , 
    .Y ( copt_gre_net_1122 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT ZBUF_2_inst_2285 ( .A ( ctmn_3644_CDR1 ) , .Y ( ZBUF_2_6 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT ZBUF_2_inst_2286 ( .A ( ctmn_3714_CDR1 ) , .Y ( ZBUF_2_8 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT ZBUF_2_inst_2287 ( .A ( ctmn_3681_CDR1 ) , .Y ( ZBUF_2_9 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT ZBUF_2_inst_2288 ( .A ( ctmn_3747_CDR1 ) , .Y ( ZBUF_2_10 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6992 ( .A ( copt_gre_net_1124 ) , 
    .Y ( copt_gre_net_1123 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT ZBUF_79_inst_2290 ( .A ( ZBUF_118_289 ) , .Y ( ZBUF_79_10 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6993 ( .A ( copt_gre_net_1125 ) , 
    .Y ( copt_gre_net_1124 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6994 ( .A ( HFSNET_1329 ) , 
    .Y ( copt_gre_net_1125 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT copt_gre_mt_inst_6996 ( .A ( copt_gre_net_1128 ) , 
    .Y ( copt_gre_net_1127 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6997 ( .A ( ZBUF_474_61 ) , 
    .Y ( copt_gre_net_1128 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_17_inst_2296 ( .A ( \USRAM/guide_buf_18 ) , 
    .Y ( ZBUF_17_12 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT ZBUF_21_inst_2471 ( .A ( HFSNET_1224 ) , .Y ( ZBUF_21_49 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT ZBUF_1280_inst_2299 ( .A ( ZBUF_126_32 ) , .Y ( ZBUF_1280_12 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT copt_gre_mt_inst_6999 ( .A ( ZBUF_474_61 ) , 
    .Y ( copt_gre_net_1130 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_47_inst_2301 ( .A ( ZBUF_269_158 ) , .Y ( ZBUF_47_12 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_292_inst_2302 ( .A ( ctmn_3588 ) , .Y ( ZBUF_292_12 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT ZBUF_242_inst_2303 ( .A ( ctmn_3599 ) , .Y ( ZBUF_242_12 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_251_inst_2304 ( .A ( ctmn_3563 ) , .Y ( ZBUF_251_12 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7000 ( .A ( copt_gre_net_1132 ) , 
    .Y ( copt_gre_net_1131 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7001 ( .A ( copt_gre_net_1133 ) , 
    .Y ( copt_gre_net_1132 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7002 ( .A ( ZBUF_158_61 ) , 
    .Y ( copt_gre_net_1133 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7003 ( .A ( copt_gre_net_1136 ) , 
    .Y ( copt_gre_net_1134 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_269_inst_2310 ( .A ( ctmn_3633 ) , .Y ( ZBUF_269_15 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX32_HVT ZBUF_252_inst_2472 ( .A ( copt_gre_net_1380 ) , 
    .Y ( ZBUF_252_49 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_119_inst_2312 ( .A ( ctmn_3600 ) , .Y ( ZBUF_119_16 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_122_inst_5256 ( .A ( \USRAM/guide_buf_606 ) , 
    .Y ( ZBUF_122_70 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT copt_gre_mt_inst_7005 ( .A ( MEM_CSB[6] ) , 
    .Y ( copt_gre_net_1136 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX32_HVT ZBUF_226_inst_2473 ( .A ( copt_gre_net_1412 ) , 
    .Y ( ZBUF_226_49 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7006 ( .A ( copt_gre_net_1138 ) , 
    .Y ( copt_gre_net_1137 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7007 ( .A ( copt_gre_net_1139 ) , 
    .Y ( copt_gre_net_1138 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_74_inst_2320 ( .A ( ctmn_3606 ) , .Y ( ZBUF_74_17 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7008 ( .A ( ctmn_3544 ) , 
    .Y ( copt_gre_net_1139 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT copt_gre_mt_inst_7010 ( .A ( copt_gre_net_1142 ) , 
    .Y ( copt_gre_net_1141 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT ZBUF_37_inst_2477 ( .A ( ZBUF_152_52 ) , .Y ( ZBUF_37_49 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT copt_gre_mt_inst_7011 ( .A ( MEM_CSB[2] ) , 
    .Y ( copt_gre_net_1142 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_2_inst_5257 ( .A ( \USRAM/guide_buf_365 ) , 
    .Y ( ZBUF_2_71 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT ZBUF_60_inst_5258 ( .A ( \USRAM/guide_buf_364 ) , 
    .Y ( ZBUF_60_71 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7012 ( .A ( copt_gre_net_1144 ) , 
    .Y ( copt_gre_net_1143 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7013 ( .A ( copt_gre_net_1145 ) , 
    .Y ( copt_gre_net_1144 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT ZBUF_2_inst_2331 ( .A ( MEM_CSB[49] ) , .Y ( ZBUF_2_19 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7014 ( .A ( copt_gre_net_1147 ) , 
    .Y ( copt_gre_net_1145 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7015 ( .A ( copt_gre_net_1147 ) , 
    .Y ( copt_gre_net_1146 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_2_inst_2335 ( .A ( MEM_CSB[43] ) , .Y ( ZBUF_2_22 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_21_inst_2336 ( .A ( MEM_CSB[50] ) , .Y ( ZBUF_21_22 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_2_inst_2337 ( .A ( MEM_CSB[54] ) , .Y ( ZBUF_2_23 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7016 ( .A ( ZBUF_3623_30 ) , 
    .Y ( copt_gre_net_1147 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_1922_inst_2340 ( .A ( copt_gre_net_1365 ) , 
    .Y ( ZBUF_1922_25 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7017 ( .A ( copt_gre_net_1149 ) , 
    .Y ( copt_gre_net_1148 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX32_HVT ZBUF_183_inst_2482 ( .A ( copt_gre_net_1402 ) , 
    .Y ( ZBUF_183_49 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX8_HVT ZBUF_85_inst_2483 ( .A ( copt_gre_net_1151 ) , .Y ( ZBUF_85_49 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX16_HVT ZBUF_187_inst_2484 ( .A ( HFSNET_949 ) , .Y ( ZBUF_187_49 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX32_HVT ZBUF_253_inst_2485 ( .A ( HFSNET_1019 ) , .Y ( ZBUF_253_49 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX8_HVT ZBUF_104_inst_5260 ( .A ( \USRAM/guide_buf_659 ) , 
    .Y ( ZBUF_104_72 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX8_HVT ZBUF_51_inst_5261 ( .A ( \USRAM/guide_buf_69 ) , 
    .Y ( ZBUF_51_72 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7018 ( .A ( copt_gre_net_1150 ) , 
    .Y ( copt_gre_net_1149 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT copt_gre_mt_inst_7019 ( .A ( copt_gre_net_1151 ) , 
    .Y ( copt_gre_net_1150 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7020 ( .A ( copt_gre_net_1152 ) , 
    .Y ( copt_gre_net_1151 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7021 ( .A ( HFSNET_834 ) , 
    .Y ( copt_gre_net_1152 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX8_HVT ZBUF_104_inst_5263 ( .A ( \USRAM/guide_buf_43 ) , 
    .Y ( ZBUF_104_73 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX8_HVT ZBUF_95_inst_5264 ( .A ( \USRAM/guide_buf_49 ) , 
    .Y ( ZBUF_95_73 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_2_inst_2495 ( .A ( ctmn_3703_CDR1 ) , .Y ( ZBUF_2_50 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT ZBUF_2_inst_2496 ( .A ( ctmn_3661_CDR1 ) , .Y ( ZBUF_2_51 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX32_HVT ZBUF_150_inst_2497 ( .A ( HFSNET_1379 ) , .Y ( ZBUF_150_51 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7022 ( .A ( copt_gre_net_1155 ) , 
    .Y ( copt_gre_net_1153 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT ZBUF_47_inst_2499 ( .A ( \USRAM/guide_buf_12 ) , 
    .Y ( ZBUF_47_51 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_99_inst_5265 ( .A ( \USRAM/guide_buf_47 ) , 
    .Y ( ZBUF_99_73 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7023 ( .A ( copt_gre_net_1155 ) , 
    .Y ( copt_gre_net_1154 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT copt_gre_mt_inst_7024 ( .A ( ZBUF_34_236 ) , 
    .Y ( copt_gre_net_1155 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf ( .A ( HFSNET_0 ) , 
    .Y ( \USRAM/guide_buf ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_1 ( .A ( HFSNET_1 ) , 
    .Y ( \USRAM/guide_buf_1 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_2 ( .A ( HFSNET_2 ) , 
    .Y ( \USRAM/guide_buf_2 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_3 ( .A ( HFSNET_3 ) , 
    .Y ( \USRAM/guide_buf_3 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_4 ( .A ( HFSNET_4 ) , 
    .Y ( \USRAM/guide_buf_4 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_5 ( .A ( HFSNET_5 ) , 
    .Y ( \USRAM/guide_buf_5 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_6 ( .A ( copt_gre_net_457 ) , 
    .Y ( \USRAM/guide_buf_6 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_7 ( .A ( HFSNET_7 ) , 
    .Y ( \USRAM/guide_buf_7 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_8 ( .A ( HFSNET_8 ) , 
    .Y ( \USRAM/guide_buf_8 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_9 ( .A ( HFSNET_9 ) , 
    .Y ( \USRAM/guide_buf_9 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_10 ( .A ( ZCTSNET_32 ) , 
    .Y ( \USRAM/guide_buf_10 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_11 ( .A ( copt_gre_net_1416 ) , 
    .Y ( \USRAM/guide_buf_11 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_12 ( .A ( MEM_IDATA[0] ) , 
    .Y ( \USRAM/guide_buf_12 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_13 ( .A ( MEM_IDATA[1] ) , 
    .Y ( \USRAM/guide_buf_13 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_14 ( .A ( MEM_IDATA[2] ) , 
    .Y ( \USRAM/guide_buf_14 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_15 ( .A ( MEM_IDATA[3] ) , 
    .Y ( \USRAM/guide_buf_15 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_16 ( .A ( MEM_IDATA[4] ) , 
    .Y ( \USRAM/guide_buf_16 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_17 ( .A ( MEM_IDATA[5] ) , 
    .Y ( \USRAM/guide_buf_17 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_18 ( .A ( MEM_IDATA[6] ) , 
    .Y ( \USRAM/guide_buf_18 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_19 ( .A ( MEM_IDATA[7] ) , 
    .Y ( \USRAM/guide_buf_19 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_20 ( .A ( copt_gre_net_1249 ) , 
    .Y ( \USRAM/guide_buf_20 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_21 ( .A ( copt_gre_net_458 ) , 
    .Y ( \USRAM/guide_buf_21 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_22 ( .A ( \USRAM/TMP_ODATA [0] ) , 
    .Y ( \USRAM/guide_buf_22 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_23 ( .A ( \USRAM/TMP_ODATA [1] ) , 
    .Y ( \USRAM/guide_buf_23 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_24 ( .A ( \USRAM/TMP_ODATA [2] ) , 
    .Y ( \USRAM/guide_buf_24 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_25 ( .A ( \USRAM/TMP_ODATA [3] ) , 
    .Y ( \USRAM/guide_buf_25 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_26 ( .A ( \USRAM/TMP_ODATA [4] ) , 
    .Y ( \USRAM/guide_buf_26 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_27 ( .A ( \USRAM/TMP_ODATA [5] ) , 
    .Y ( \USRAM/guide_buf_27 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_28 ( .A ( \USRAM/TMP_ODATA [6] ) , 
    .Y ( \USRAM/guide_buf_28 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_29 ( .A ( \USRAM/TMP_ODATA [7] ) , 
    .Y ( \USRAM/guide_buf_29 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_30 ( .A ( ZBUF_170_169 ) , 
    .Y ( \USRAM/guide_buf_30 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_31 ( .A ( copt_gre_net_518 ) , 
    .Y ( \USRAM/guide_buf_31 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_32 ( .A ( \USRAM/TMP_ODATA [8] ) , 
    .Y ( \USRAM/guide_buf_32 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_33 ( .A ( \USRAM/TMP_ODATA [9] ) , 
    .Y ( \USRAM/guide_buf_33 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_34 ( .A ( \USRAM/TMP_ODATA [10] ) , 
    .Y ( \USRAM/guide_buf_34 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_35 ( .A ( \USRAM/TMP_ODATA [11] ) , 
    .Y ( \USRAM/guide_buf_35 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_36 ( .A ( \USRAM/TMP_ODATA [12] ) , 
    .Y ( \USRAM/guide_buf_36 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_37 ( .A ( \USRAM/TMP_ODATA [13] ) , 
    .Y ( \USRAM/guide_buf_37 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_38 ( .A ( \USRAM/TMP_ODATA [14] ) , 
    .Y ( \USRAM/guide_buf_38 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_39 ( .A ( \USRAM/TMP_ODATA [15] ) , 
    .Y ( \USRAM/guide_buf_39 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_40 ( .A ( copt_gre_net_1141 ) , 
    .Y ( \USRAM/guide_buf_40 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_41 ( .A ( copt_gre_net_501 ) , 
    .Y ( \USRAM/guide_buf_41 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_42 ( .A ( \USRAM/TMP_ODATA [16] ) , 
    .Y ( \USRAM/guide_buf_42 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_43 ( .A ( \USRAM/TMP_ODATA [17] ) , 
    .Y ( \USRAM/guide_buf_43 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_44 ( .A ( \USRAM/TMP_ODATA [18] ) , 
    .Y ( \USRAM/guide_buf_44 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_45 ( .A ( \USRAM/TMP_ODATA [19] ) , 
    .Y ( \USRAM/guide_buf_45 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_46 ( .A ( \USRAM/TMP_ODATA [20] ) , 
    .Y ( \USRAM/guide_buf_46 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_47 ( .A ( \USRAM/TMP_ODATA [21] ) , 
    .Y ( \USRAM/guide_buf_47 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_48 ( .A ( \USRAM/TMP_ODATA [22] ) , 
    .Y ( \USRAM/guide_buf_48 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_49 ( .A ( \USRAM/TMP_ODATA [23] ) , 
    .Y ( \USRAM/guide_buf_49 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_50 ( .A ( copt_gre_net_1198 ) , 
    .Y ( \USRAM/guide_buf_50 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_51 ( .A ( ZBUF_288_6 ) , 
    .Y ( \USRAM/guide_buf_51 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_52 ( .A ( \USRAM/TMP_ODATA [24] ) , 
    .Y ( \USRAM/guide_buf_52 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_53 ( .A ( \USRAM/TMP_ODATA [25] ) , 
    .Y ( \USRAM/guide_buf_53 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_54 ( .A ( \USRAM/TMP_ODATA [26] ) , 
    .Y ( \USRAM/guide_buf_54 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_55 ( .A ( \USRAM/TMP_ODATA [27] ) , 
    .Y ( \USRAM/guide_buf_55 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_56 ( .A ( \USRAM/TMP_ODATA [28] ) , 
    .Y ( \USRAM/guide_buf_56 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_57 ( .A ( \USRAM/TMP_ODATA [29] ) , 
    .Y ( \USRAM/guide_buf_57 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_58 ( .A ( \USRAM/TMP_ODATA [30] ) , 
    .Y ( \USRAM/guide_buf_58 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_59 ( .A ( \USRAM/TMP_ODATA [31] ) , 
    .Y ( \USRAM/guide_buf_59 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_60 ( .A ( copt_gre_net_1405 ) , 
    .Y ( \USRAM/guide_buf_60 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_61 ( .A ( ZBUF_61_4 ) , 
    .Y ( \USRAM/guide_buf_61 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_62 ( .A ( \USRAM/TMP_ODATA [32] ) , 
    .Y ( \USRAM/guide_buf_62 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_63 ( .A ( \USRAM/TMP_ODATA [33] ) , 
    .Y ( \USRAM/guide_buf_63 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_64 ( .A ( \USRAM/TMP_ODATA [34] ) , 
    .Y ( \USRAM/guide_buf_64 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_65 ( .A ( \USRAM/TMP_ODATA [35] ) , 
    .Y ( \USRAM/guide_buf_65 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_66 ( .A ( \USRAM/TMP_ODATA [36] ) , 
    .Y ( \USRAM/guide_buf_66 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_67 ( .A ( \USRAM/TMP_ODATA [37] ) , 
    .Y ( \USRAM/guide_buf_67 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_68 ( .A ( \USRAM/TMP_ODATA [38] ) , 
    .Y ( \USRAM/guide_buf_68 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_69 ( .A ( \USRAM/TMP_ODATA [39] ) , 
    .Y ( \USRAM/guide_buf_69 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_70 ( .A ( copt_gre_net_1175 ) , 
    .Y ( \USRAM/guide_buf_70 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_71 ( .A ( copt_gre_net_1242 ) , 
    .Y ( \USRAM/guide_buf_71 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_72 ( .A ( \USRAM/TMP_ODATA [40] ) , 
    .Y ( \USRAM/guide_buf_72 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_73 ( .A ( \USRAM/TMP_ODATA [41] ) , 
    .Y ( \USRAM/guide_buf_73 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_74 ( .A ( \USRAM/TMP_ODATA [42] ) , 
    .Y ( \USRAM/guide_buf_74 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_75 ( .A ( \USRAM/TMP_ODATA [43] ) , 
    .Y ( \USRAM/guide_buf_75 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_76 ( .A ( \USRAM/TMP_ODATA [44] ) , 
    .Y ( \USRAM/guide_buf_76 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_77 ( .A ( \USRAM/TMP_ODATA [45] ) , 
    .Y ( \USRAM/guide_buf_77 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_78 ( .A ( \USRAM/TMP_ODATA [46] ) , 
    .Y ( \USRAM/guide_buf_78 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_79 ( .A ( \USRAM/TMP_ODATA [47] ) , 
    .Y ( \USRAM/guide_buf_79 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_80 ( .A ( copt_gre_net_1134 ) , 
    .Y ( \USRAM/guide_buf_80 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_81 ( .A ( copt_gre_net_512 ) , 
    .Y ( \USRAM/guide_buf_81 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_82 ( .A ( \USRAM/TMP_ODATA [48] ) , 
    .Y ( \USRAM/guide_buf_82 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_83 ( .A ( \USRAM/TMP_ODATA [49] ) , 
    .Y ( \USRAM/guide_buf_83 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_84 ( .A ( \USRAM/TMP_ODATA [50] ) , 
    .Y ( \USRAM/guide_buf_84 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_85 ( .A ( \USRAM/TMP_ODATA [51] ) , 
    .Y ( \USRAM/guide_buf_85 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_86 ( .A ( \USRAM/TMP_ODATA [52] ) , 
    .Y ( \USRAM/guide_buf_86 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_87 ( .A ( \USRAM/TMP_ODATA [53] ) , 
    .Y ( \USRAM/guide_buf_87 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_88 ( .A ( \USRAM/TMP_ODATA [54] ) , 
    .Y ( \USRAM/guide_buf_88 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_89 ( .A ( \USRAM/TMP_ODATA [55] ) , 
    .Y ( \USRAM/guide_buf_89 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_90 ( .A ( HFSNET_71 ) , 
    .Y ( \USRAM/guide_buf_90 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_91 ( .A ( copt_gre_net_510 ) , 
    .Y ( \USRAM/guide_buf_91 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_92 ( .A ( \USRAM/TMP_ODATA [56] ) , 
    .Y ( \USRAM/guide_buf_92 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_93 ( .A ( \USRAM/TMP_ODATA [57] ) , 
    .Y ( \USRAM/guide_buf_93 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_94 ( .A ( \USRAM/TMP_ODATA [58] ) , 
    .Y ( \USRAM/guide_buf_94 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_95 ( .A ( \USRAM/TMP_ODATA [59] ) , 
    .Y ( \USRAM/guide_buf_95 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_96 ( .A ( \USRAM/TMP_ODATA [60] ) , 
    .Y ( \USRAM/guide_buf_96 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_97 ( .A ( \USRAM/TMP_ODATA [61] ) , 
    .Y ( \USRAM/guide_buf_97 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_98 ( .A ( \USRAM/TMP_ODATA [62] ) , 
    .Y ( \USRAM/guide_buf_98 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_99 ( .A ( \USRAM/TMP_ODATA [63] ) , 
    .Y ( \USRAM/guide_buf_99 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_100 ( .A ( ZBUF_2_242 ) , 
    .Y ( \USRAM/guide_buf_100 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_101 ( .A ( HFSNET_146 ) , 
    .Y ( \USRAM/guide_buf_101 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_102 ( .A ( \USRAM/TMP_ODATA [64] ) , 
    .Y ( \USRAM/guide_buf_102 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_103 ( .A ( \USRAM/TMP_ODATA [65] ) , 
    .Y ( \USRAM/guide_buf_103 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_104 ( .A ( \USRAM/TMP_ODATA [66] ) , 
    .Y ( \USRAM/guide_buf_104 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_105 ( .A ( \USRAM/TMP_ODATA [67] ) , 
    .Y ( \USRAM/guide_buf_105 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_106 ( .A ( \USRAM/TMP_ODATA [68] ) , 
    .Y ( \USRAM/guide_buf_106 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_107 ( .A ( \USRAM/TMP_ODATA [69] ) , 
    .Y ( \USRAM/guide_buf_107 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_108 ( .A ( \USRAM/TMP_ODATA [70] ) , 
    .Y ( \USRAM/guide_buf_108 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_109 ( .A ( \USRAM/TMP_ODATA [71] ) , 
    .Y ( \USRAM/guide_buf_109 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_110 ( .A ( ropt_net_1506 ) , 
    .Y ( \USRAM/guide_buf_110 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_111 ( .A ( HFSNET_148 ) , 
    .Y ( \USRAM/guide_buf_111 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_112 ( .A ( \USRAM/TMP_ODATA [72] ) , 
    .Y ( \USRAM/guide_buf_112 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_113 ( .A ( \USRAM/TMP_ODATA [73] ) , 
    .Y ( \USRAM/guide_buf_113 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_114 ( .A ( \USRAM/TMP_ODATA [74] ) , 
    .Y ( \USRAM/guide_buf_114 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_115 ( .A ( \USRAM/TMP_ODATA [75] ) , 
    .Y ( \USRAM/guide_buf_115 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_116 ( .A ( \USRAM/TMP_ODATA [76] ) , 
    .Y ( \USRAM/guide_buf_116 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_117 ( .A ( \USRAM/TMP_ODATA [77] ) , 
    .Y ( \USRAM/guide_buf_117 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_118 ( .A ( \USRAM/TMP_ODATA [78] ) , 
    .Y ( \USRAM/guide_buf_118 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_119 ( .A ( \USRAM/TMP_ODATA [79] ) , 
    .Y ( \USRAM/guide_buf_119 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_120 ( .A ( HFSNET_1249 ) , 
    .Y ( \USRAM/guide_buf_120 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_121 ( .A ( HFSNET_76 ) , 
    .Y ( \USRAM/guide_buf_121 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_122 ( .A ( \USRAM/TMP_ODATA [80] ) , 
    .Y ( \USRAM/guide_buf_122 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_123 ( .A ( \USRAM/TMP_ODATA [81] ) , 
    .Y ( \USRAM/guide_buf_123 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_124 ( .A ( \USRAM/TMP_ODATA [82] ) , 
    .Y ( \USRAM/guide_buf_124 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_125 ( .A ( \USRAM/TMP_ODATA [83] ) , 
    .Y ( \USRAM/guide_buf_125 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_126 ( .A ( \USRAM/TMP_ODATA [84] ) , 
    .Y ( \USRAM/guide_buf_126 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_127 ( .A ( \USRAM/TMP_ODATA [85] ) , 
    .Y ( \USRAM/guide_buf_127 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_128 ( .A ( \USRAM/TMP_ODATA [86] ) , 
    .Y ( \USRAM/guide_buf_128 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_129 ( .A ( \USRAM/TMP_ODATA [87] ) , 
    .Y ( \USRAM/guide_buf_129 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_130 ( .A ( copt_gre_net_1164 ) , 
    .Y ( \USRAM/guide_buf_130 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_131 ( .A ( copt_gre_net_531 ) , 
    .Y ( \USRAM/guide_buf_131 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_132 ( .A ( \USRAM/TMP_ODATA [88] ) , 
    .Y ( \USRAM/guide_buf_132 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_133 ( .A ( \USRAM/TMP_ODATA [89] ) , 
    .Y ( \USRAM/guide_buf_133 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_134 ( .A ( \USRAM/TMP_ODATA [90] ) , 
    .Y ( \USRAM/guide_buf_134 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_135 ( .A ( \USRAM/TMP_ODATA [91] ) , 
    .Y ( \USRAM/guide_buf_135 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_136 ( .A ( \USRAM/TMP_ODATA [92] ) , 
    .Y ( \USRAM/guide_buf_136 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_137 ( .A ( \USRAM/TMP_ODATA [93] ) , 
    .Y ( \USRAM/guide_buf_137 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_138 ( .A ( \USRAM/TMP_ODATA [94] ) , 
    .Y ( \USRAM/guide_buf_138 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_139 ( .A ( \USRAM/TMP_ODATA [95] ) , 
    .Y ( \USRAM/guide_buf_139 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_140 ( .A ( HFSNET_14 ) , 
    .Y ( \USRAM/guide_buf_140 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_141 ( .A ( ropt_net_1467 ) , 
    .Y ( \USRAM/guide_buf_141 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_142 ( .A ( \USRAM/TMP_ODATA [96] ) , 
    .Y ( \USRAM/guide_buf_142 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_143 ( .A ( \USRAM/TMP_ODATA [97] ) , 
    .Y ( \USRAM/guide_buf_143 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_144 ( .A ( \USRAM/TMP_ODATA [98] ) , 
    .Y ( \USRAM/guide_buf_144 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_145 ( .A ( \USRAM/TMP_ODATA [99] ) , 
    .Y ( \USRAM/guide_buf_145 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_146 ( .A ( \USRAM/TMP_ODATA [100] ) , 
    .Y ( \USRAM/guide_buf_146 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_147 ( .A ( \USRAM/TMP_ODATA [101] ) , 
    .Y ( \USRAM/guide_buf_147 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_148 ( .A ( \USRAM/TMP_ODATA [102] ) , 
    .Y ( \USRAM/guide_buf_148 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_149 ( .A ( \USRAM/TMP_ODATA [103] ) , 
    .Y ( \USRAM/guide_buf_149 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_150 ( .A ( MEM_CSB[13] ) , 
    .Y ( \USRAM/guide_buf_150 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_151 ( .A ( HFSNET_79 ) , 
    .Y ( \USRAM/guide_buf_151 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_152 ( .A ( \USRAM/TMP_ODATA [104] ) , 
    .Y ( \USRAM/guide_buf_152 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_153 ( .A ( \USRAM/TMP_ODATA [105] ) , 
    .Y ( \USRAM/guide_buf_153 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_154 ( .A ( \USRAM/TMP_ODATA [106] ) , 
    .Y ( \USRAM/guide_buf_154 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_155 ( .A ( \USRAM/TMP_ODATA [107] ) , 
    .Y ( \USRAM/guide_buf_155 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_156 ( .A ( \USRAM/TMP_ODATA [108] ) , 
    .Y ( \USRAM/guide_buf_156 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_157 ( .A ( \USRAM/TMP_ODATA [109] ) , 
    .Y ( \USRAM/guide_buf_157 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_158 ( .A ( \USRAM/TMP_ODATA [110] ) , 
    .Y ( \USRAM/guide_buf_158 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_159 ( .A ( \USRAM/TMP_ODATA [111] ) , 
    .Y ( \USRAM/guide_buf_159 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_160 ( .A ( copt_gre_net_1192 ) , 
    .Y ( \USRAM/guide_buf_160 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_161 ( .A ( copt_gre_net_514 ) , 
    .Y ( \USRAM/guide_buf_161 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_162 ( .A ( \USRAM/TMP_ODATA [112] ) , 
    .Y ( \USRAM/guide_buf_162 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_163 ( .A ( \USRAM/TMP_ODATA [113] ) , 
    .Y ( \USRAM/guide_buf_163 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_164 ( .A ( \USRAM/TMP_ODATA [114] ) , 
    .Y ( \USRAM/guide_buf_164 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_165 ( .A ( \USRAM/TMP_ODATA [115] ) , 
    .Y ( \USRAM/guide_buf_165 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_166 ( .A ( \USRAM/TMP_ODATA [116] ) , 
    .Y ( \USRAM/guide_buf_166 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_167 ( .A ( \USRAM/TMP_ODATA [117] ) , 
    .Y ( \USRAM/guide_buf_167 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_168 ( .A ( \USRAM/TMP_ODATA [118] ) , 
    .Y ( \USRAM/guide_buf_168 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_169 ( .A ( \USRAM/TMP_ODATA [119] ) , 
    .Y ( \USRAM/guide_buf_169 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_170 ( .A ( HFSNET_17 ) , 
    .Y ( \USRAM/guide_buf_170 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_171 ( .A ( copt_gre_net_507 ) , 
    .Y ( \USRAM/guide_buf_171 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_172 ( .A ( \USRAM/TMP_ODATA [120] ) , 
    .Y ( \USRAM/guide_buf_172 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_173 ( .A ( \USRAM/TMP_ODATA [121] ) , 
    .Y ( \USRAM/guide_buf_173 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_174 ( .A ( \USRAM/TMP_ODATA [122] ) , 
    .Y ( \USRAM/guide_buf_174 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_175 ( .A ( \USRAM/TMP_ODATA [123] ) , 
    .Y ( \USRAM/guide_buf_175 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_176 ( .A ( \USRAM/TMP_ODATA [124] ) , 
    .Y ( \USRAM/guide_buf_176 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_177 ( .A ( \USRAM/TMP_ODATA [125] ) , 
    .Y ( \USRAM/guide_buf_177 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_178 ( .A ( \USRAM/TMP_ODATA [126] ) , 
    .Y ( \USRAM/guide_buf_178 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_179 ( .A ( \USRAM/TMP_ODATA [127] ) , 
    .Y ( \USRAM/guide_buf_179 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_180 ( .A ( copt_gre_net_1205 ) , 
    .Y ( \USRAM/guide_buf_180 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_181 ( .A ( copt_gre_net_464 ) , 
    .Y ( \USRAM/guide_buf_181 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_182 ( .A ( \USRAM/TMP_ODATA [128] ) , 
    .Y ( \USRAM/guide_buf_182 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_183 ( .A ( \USRAM/TMP_ODATA [129] ) , 
    .Y ( \USRAM/guide_buf_183 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_184 ( .A ( \USRAM/TMP_ODATA [130] ) , 
    .Y ( \USRAM/guide_buf_184 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_185 ( .A ( \USRAM/TMP_ODATA [131] ) , 
    .Y ( \USRAM/guide_buf_185 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_186 ( .A ( \USRAM/TMP_ODATA [132] ) , 
    .Y ( \USRAM/guide_buf_186 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_187 ( .A ( \USRAM/TMP_ODATA [133] ) , 
    .Y ( \USRAM/guide_buf_187 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_188 ( .A ( \USRAM/TMP_ODATA [134] ) , 
    .Y ( \USRAM/guide_buf_188 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_189 ( .A ( \USRAM/TMP_ODATA [135] ) , 
    .Y ( \USRAM/guide_buf_189 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_190 ( .A ( HFSNET_1233 ) , 
    .Y ( \USRAM/guide_buf_190 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_191 ( .A ( copt_gre_net_479 ) , 
    .Y ( \USRAM/guide_buf_191 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_192 ( .A ( \USRAM/TMP_ODATA [136] ) , 
    .Y ( \USRAM/guide_buf_192 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_193 ( .A ( \USRAM/TMP_ODATA [137] ) , 
    .Y ( \USRAM/guide_buf_193 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_194 ( .A ( \USRAM/TMP_ODATA [138] ) , 
    .Y ( \USRAM/guide_buf_194 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_195 ( .A ( \USRAM/TMP_ODATA [139] ) , 
    .Y ( \USRAM/guide_buf_195 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_196 ( .A ( \USRAM/TMP_ODATA [140] ) , 
    .Y ( \USRAM/guide_buf_196 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_197 ( .A ( \USRAM/TMP_ODATA [141] ) , 
    .Y ( \USRAM/guide_buf_197 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_198 ( .A ( \USRAM/TMP_ODATA [142] ) , 
    .Y ( \USRAM/guide_buf_198 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_199 ( .A ( \USRAM/TMP_ODATA [143] ) , 
    .Y ( \USRAM/guide_buf_199 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_200 ( .A ( HFSNET_20 ) , 
    .Y ( \USRAM/guide_buf_200 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_201 ( .A ( HFSNET_86 ) , 
    .Y ( \USRAM/guide_buf_201 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_202 ( .A ( \USRAM/TMP_ODATA [144] ) , 
    .Y ( \USRAM/guide_buf_202 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_203 ( .A ( \USRAM/TMP_ODATA [145] ) , 
    .Y ( \USRAM/guide_buf_203 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_204 ( .A ( \USRAM/TMP_ODATA [146] ) , 
    .Y ( \USRAM/guide_buf_204 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_205 ( .A ( \USRAM/TMP_ODATA [147] ) , 
    .Y ( \USRAM/guide_buf_205 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_206 ( .A ( \USRAM/TMP_ODATA [148] ) , 
    .Y ( \USRAM/guide_buf_206 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_207 ( .A ( \USRAM/TMP_ODATA [149] ) , 
    .Y ( \USRAM/guide_buf_207 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_208 ( .A ( \USRAM/TMP_ODATA [150] ) , 
    .Y ( \USRAM/guide_buf_208 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_209 ( .A ( \USRAM/TMP_ODATA [151] ) , 
    .Y ( \USRAM/guide_buf_209 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_210 ( .A ( HFSNET_22 ) , 
    .Y ( \USRAM/guide_buf_210 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_211 ( .A ( HFSNET_87 ) , 
    .Y ( \USRAM/guide_buf_211 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_212 ( .A ( \USRAM/TMP_ODATA [152] ) , 
    .Y ( \USRAM/guide_buf_212 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_213 ( .A ( \USRAM/TMP_ODATA [153] ) , 
    .Y ( \USRAM/guide_buf_213 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_214 ( .A ( \USRAM/TMP_ODATA [154] ) , 
    .Y ( \USRAM/guide_buf_214 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_215 ( .A ( \USRAM/TMP_ODATA [155] ) , 
    .Y ( \USRAM/guide_buf_215 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_216 ( .A ( \USRAM/TMP_ODATA [156] ) , 
    .Y ( \USRAM/guide_buf_216 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_217 ( .A ( \USRAM/TMP_ODATA [157] ) , 
    .Y ( \USRAM/guide_buf_217 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_218 ( .A ( \USRAM/TMP_ODATA [158] ) , 
    .Y ( \USRAM/guide_buf_218 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_219 ( .A ( \USRAM/TMP_ODATA [159] ) , 
    .Y ( \USRAM/guide_buf_219 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_220 ( .A ( copt_gre_net_1156 ) , 
    .Y ( \USRAM/guide_buf_220 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_221 ( .A ( HFSNET_89 ) , 
    .Y ( \USRAM/guide_buf_221 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_222 ( .A ( \USRAM/TMP_ODATA [160] ) , 
    .Y ( \USRAM/guide_buf_222 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_223 ( .A ( \USRAM/TMP_ODATA [161] ) , 
    .Y ( \USRAM/guide_buf_223 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_224 ( .A ( \USRAM/TMP_ODATA [162] ) , 
    .Y ( \USRAM/guide_buf_224 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_225 ( .A ( \USRAM/TMP_ODATA [163] ) , 
    .Y ( \USRAM/guide_buf_225 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_226 ( .A ( \USRAM/TMP_ODATA [164] ) , 
    .Y ( \USRAM/guide_buf_226 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_227 ( .A ( \USRAM/TMP_ODATA [165] ) , 
    .Y ( \USRAM/guide_buf_227 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_228 ( .A ( \USRAM/TMP_ODATA [166] ) , 
    .Y ( \USRAM/guide_buf_228 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_229 ( .A ( \USRAM/TMP_ODATA [167] ) , 
    .Y ( \USRAM/guide_buf_229 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_230 ( .A ( HFSNET_1116 ) , 
    .Y ( \USRAM/guide_buf_230 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_231 ( .A ( ZBUF_54_3 ) , 
    .Y ( \USRAM/guide_buf_231 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_232 ( .A ( \USRAM/TMP_ODATA [168] ) , 
    .Y ( \USRAM/guide_buf_232 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_233 ( .A ( \USRAM/TMP_ODATA [169] ) , 
    .Y ( \USRAM/guide_buf_233 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_234 ( .A ( \USRAM/TMP_ODATA [170] ) , 
    .Y ( \USRAM/guide_buf_234 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_235 ( .A ( \USRAM/TMP_ODATA [171] ) , 
    .Y ( \USRAM/guide_buf_235 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_236 ( .A ( \USRAM/TMP_ODATA [172] ) , 
    .Y ( \USRAM/guide_buf_236 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_237 ( .A ( \USRAM/TMP_ODATA [173] ) , 
    .Y ( \USRAM/guide_buf_237 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_238 ( .A ( \USRAM/TMP_ODATA [174] ) , 
    .Y ( \USRAM/guide_buf_238 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_239 ( .A ( \USRAM/TMP_ODATA [175] ) , 
    .Y ( \USRAM/guide_buf_239 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_240 ( .A ( MEM_CSB[22] ) , 
    .Y ( \USRAM/guide_buf_240 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_241 ( .A ( HFSNET_92 ) , 
    .Y ( \USRAM/guide_buf_241 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_242 ( .A ( \USRAM/TMP_ODATA [176] ) , 
    .Y ( \USRAM/guide_buf_242 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_243 ( .A ( \USRAM/TMP_ODATA [177] ) , 
    .Y ( \USRAM/guide_buf_243 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_244 ( .A ( \USRAM/TMP_ODATA [178] ) , 
    .Y ( \USRAM/guide_buf_244 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_245 ( .A ( \USRAM/TMP_ODATA [179] ) , 
    .Y ( \USRAM/guide_buf_245 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_246 ( .A ( \USRAM/TMP_ODATA [180] ) , 
    .Y ( \USRAM/guide_buf_246 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_247 ( .A ( \USRAM/TMP_ODATA [181] ) , 
    .Y ( \USRAM/guide_buf_247 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_248 ( .A ( \USRAM/TMP_ODATA [182] ) , 
    .Y ( \USRAM/guide_buf_248 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_249 ( .A ( \USRAM/TMP_ODATA [183] ) , 
    .Y ( \USRAM/guide_buf_249 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_250 ( .A ( MEM_CSB[23] ) , 
    .Y ( \USRAM/guide_buf_250 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_251 ( .A ( MEM_OEB[23] ) , 
    .Y ( \USRAM/guide_buf_251 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_252 ( .A ( \USRAM/TMP_ODATA [184] ) , 
    .Y ( \USRAM/guide_buf_252 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_253 ( .A ( \USRAM/TMP_ODATA [185] ) , 
    .Y ( \USRAM/guide_buf_253 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_254 ( .A ( \USRAM/TMP_ODATA [186] ) , 
    .Y ( \USRAM/guide_buf_254 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_255 ( .A ( \USRAM/TMP_ODATA [187] ) , 
    .Y ( \USRAM/guide_buf_255 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_256 ( .A ( \USRAM/TMP_ODATA [188] ) , 
    .Y ( \USRAM/guide_buf_256 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_257 ( .A ( \USRAM/TMP_ODATA [189] ) , 
    .Y ( \USRAM/guide_buf_257 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_258 ( .A ( \USRAM/TMP_ODATA [190] ) , 
    .Y ( \USRAM/guide_buf_258 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_259 ( .A ( \USRAM/TMP_ODATA [191] ) , 
    .Y ( \USRAM/guide_buf_259 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_260 ( .A ( copt_gre_net_397 ) , 
    .Y ( \USRAM/guide_buf_260 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_261 ( .A ( copt_gre_net_493 ) , 
    .Y ( \USRAM/guide_buf_261 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_262 ( .A ( \USRAM/TMP_ODATA [192] ) , 
    .Y ( \USRAM/guide_buf_262 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_263 ( .A ( \USRAM/TMP_ODATA [193] ) , 
    .Y ( \USRAM/guide_buf_263 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_264 ( .A ( \USRAM/TMP_ODATA [194] ) , 
    .Y ( \USRAM/guide_buf_264 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_265 ( .A ( \USRAM/TMP_ODATA [195] ) , 
    .Y ( \USRAM/guide_buf_265 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_266 ( .A ( \USRAM/TMP_ODATA [196] ) , 
    .Y ( \USRAM/guide_buf_266 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_267 ( .A ( \USRAM/TMP_ODATA [197] ) , 
    .Y ( \USRAM/guide_buf_267 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_268 ( .A ( \USRAM/TMP_ODATA [198] ) , 
    .Y ( \USRAM/guide_buf_268 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_269 ( .A ( \USRAM/TMP_ODATA [199] ) , 
    .Y ( \USRAM/guide_buf_269 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_270 ( .A ( copt_gre_net_1196 ) , 
    .Y ( \USRAM/guide_buf_270 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_271 ( .A ( copt_gre_net_475 ) , 
    .Y ( \USRAM/guide_buf_271 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_272 ( .A ( \USRAM/TMP_ODATA [200] ) , 
    .Y ( \USRAM/guide_buf_272 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_273 ( .A ( \USRAM/TMP_ODATA [201] ) , 
    .Y ( \USRAM/guide_buf_273 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_274 ( .A ( \USRAM/TMP_ODATA [202] ) , 
    .Y ( \USRAM/guide_buf_274 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_275 ( .A ( \USRAM/TMP_ODATA [203] ) , 
    .Y ( \USRAM/guide_buf_275 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_276 ( .A ( \USRAM/TMP_ODATA [204] ) , 
    .Y ( \USRAM/guide_buf_276 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_277 ( .A ( \USRAM/TMP_ODATA [205] ) , 
    .Y ( \USRAM/guide_buf_277 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_278 ( .A ( \USRAM/TMP_ODATA [206] ) , 
    .Y ( \USRAM/guide_buf_278 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_279 ( .A ( \USRAM/TMP_ODATA [207] ) , 
    .Y ( \USRAM/guide_buf_279 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_280 ( .A ( HFSNET_1234 ) , 
    .Y ( \USRAM/guide_buf_280 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_281 ( .A ( HFSNET_96 ) , 
    .Y ( \USRAM/guide_buf_281 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_282 ( .A ( \USRAM/TMP_ODATA [208] ) , 
    .Y ( \USRAM/guide_buf_282 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_283 ( .A ( \USRAM/TMP_ODATA [209] ) , 
    .Y ( \USRAM/guide_buf_283 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_284 ( .A ( \USRAM/TMP_ODATA [210] ) , 
    .Y ( \USRAM/guide_buf_284 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_285 ( .A ( \USRAM/TMP_ODATA [211] ) , 
    .Y ( \USRAM/guide_buf_285 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_286 ( .A ( \USRAM/TMP_ODATA [212] ) , 
    .Y ( \USRAM/guide_buf_286 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_287 ( .A ( \USRAM/TMP_ODATA [213] ) , 
    .Y ( \USRAM/guide_buf_287 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_288 ( .A ( \USRAM/TMP_ODATA [214] ) , 
    .Y ( \USRAM/guide_buf_288 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_289 ( .A ( \USRAM/TMP_ODATA [215] ) , 
    .Y ( \USRAM/guide_buf_289 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_290 ( .A ( copt_gre_net_399 ) , 
    .Y ( \USRAM/guide_buf_290 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_291 ( .A ( HFSNET_98 ) , 
    .Y ( \USRAM/guide_buf_291 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_292 ( .A ( \USRAM/TMP_ODATA [216] ) , 
    .Y ( \USRAM/guide_buf_292 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_293 ( .A ( \USRAM/TMP_ODATA [217] ) , 
    .Y ( \USRAM/guide_buf_293 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_294 ( .A ( \USRAM/TMP_ODATA [218] ) , 
    .Y ( \USRAM/guide_buf_294 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_295 ( .A ( \USRAM/TMP_ODATA [219] ) , 
    .Y ( \USRAM/guide_buf_295 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_296 ( .A ( \USRAM/TMP_ODATA [220] ) , 
    .Y ( \USRAM/guide_buf_296 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_297 ( .A ( \USRAM/TMP_ODATA [221] ) , 
    .Y ( \USRAM/guide_buf_297 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_298 ( .A ( \USRAM/TMP_ODATA [222] ) , 
    .Y ( \USRAM/guide_buf_298 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_299 ( .A ( \USRAM/TMP_ODATA [223] ) , 
    .Y ( \USRAM/guide_buf_299 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_300 ( .A ( MEM_CSB[28] ) , 
    .Y ( \USRAM/guide_buf_300 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_301 ( .A ( MEM_OEB[28] ) , 
    .Y ( \USRAM/guide_buf_301 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_302 ( .A ( \USRAM/TMP_ODATA [224] ) , 
    .Y ( \USRAM/guide_buf_302 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_303 ( .A ( \USRAM/TMP_ODATA [225] ) , 
    .Y ( \USRAM/guide_buf_303 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_304 ( .A ( \USRAM/TMP_ODATA [226] ) , 
    .Y ( \USRAM/guide_buf_304 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_305 ( .A ( \USRAM/TMP_ODATA [227] ) , 
    .Y ( \USRAM/guide_buf_305 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_306 ( .A ( \USRAM/TMP_ODATA [228] ) , 
    .Y ( \USRAM/guide_buf_306 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_307 ( .A ( \USRAM/TMP_ODATA [229] ) , 
    .Y ( \USRAM/guide_buf_307 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_308 ( .A ( \USRAM/TMP_ODATA [230] ) , 
    .Y ( \USRAM/guide_buf_308 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_309 ( .A ( \USRAM/TMP_ODATA [231] ) , 
    .Y ( \USRAM/guide_buf_309 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_310 ( .A ( copt_gre_net_1223 ) , 
    .Y ( \USRAM/guide_buf_310 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_311 ( .A ( copt_gre_net_495 ) , 
    .Y ( \USRAM/guide_buf_311 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_312 ( .A ( \USRAM/TMP_ODATA [232] ) , 
    .Y ( \USRAM/guide_buf_312 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_313 ( .A ( \USRAM/TMP_ODATA [233] ) , 
    .Y ( \USRAM/guide_buf_313 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_314 ( .A ( \USRAM/TMP_ODATA [234] ) , 
    .Y ( \USRAM/guide_buf_314 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_315 ( .A ( \USRAM/TMP_ODATA [235] ) , 
    .Y ( \USRAM/guide_buf_315 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_316 ( .A ( \USRAM/TMP_ODATA [236] ) , 
    .Y ( \USRAM/guide_buf_316 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_317 ( .A ( \USRAM/TMP_ODATA [237] ) , 
    .Y ( \USRAM/guide_buf_317 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_318 ( .A ( \USRAM/TMP_ODATA [238] ) , 
    .Y ( \USRAM/guide_buf_318 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_319 ( .A ( \USRAM/TMP_ODATA [239] ) , 
    .Y ( \USRAM/guide_buf_319 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_320 ( .A ( HFSNET_32 ) , 
    .Y ( \USRAM/guide_buf_320 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_321 ( .A ( copt_gre_net_544 ) , 
    .Y ( \USRAM/guide_buf_321 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_322 ( .A ( \USRAM/TMP_ODATA [240] ) , 
    .Y ( \USRAM/guide_buf_322 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_323 ( .A ( \USRAM/TMP_ODATA [241] ) , 
    .Y ( \USRAM/guide_buf_323 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_324 ( .A ( \USRAM/TMP_ODATA [242] ) , 
    .Y ( \USRAM/guide_buf_324 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_325 ( .A ( \USRAM/TMP_ODATA [243] ) , 
    .Y ( \USRAM/guide_buf_325 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_326 ( .A ( \USRAM/TMP_ODATA [244] ) , 
    .Y ( \USRAM/guide_buf_326 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_327 ( .A ( \USRAM/TMP_ODATA [245] ) , 
    .Y ( \USRAM/guide_buf_327 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_328 ( .A ( \USRAM/TMP_ODATA [246] ) , 
    .Y ( \USRAM/guide_buf_328 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_329 ( .A ( \USRAM/TMP_ODATA [247] ) , 
    .Y ( \USRAM/guide_buf_329 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_330 ( .A ( MEM_CSB[31] ) , 
    .Y ( \USRAM/guide_buf_330 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_331 ( .A ( MEM_OEB[31] ) , 
    .Y ( \USRAM/guide_buf_331 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_332 ( .A ( \USRAM/TMP_ODATA [248] ) , 
    .Y ( \USRAM/guide_buf_332 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_333 ( .A ( \USRAM/TMP_ODATA [249] ) , 
    .Y ( \USRAM/guide_buf_333 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_334 ( .A ( \USRAM/TMP_ODATA [250] ) , 
    .Y ( \USRAM/guide_buf_334 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_335 ( .A ( \USRAM/TMP_ODATA [251] ) , 
    .Y ( \USRAM/guide_buf_335 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_336 ( .A ( \USRAM/TMP_ODATA [252] ) , 
    .Y ( \USRAM/guide_buf_336 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_337 ( .A ( \USRAM/TMP_ODATA [253] ) , 
    .Y ( \USRAM/guide_buf_337 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_338 ( .A ( \USRAM/TMP_ODATA [254] ) , 
    .Y ( \USRAM/guide_buf_338 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_339 ( .A ( \USRAM/TMP_ODATA [255] ) , 
    .Y ( \USRAM/guide_buf_339 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_340 ( .A ( MEM_CSB[32] ) , 
    .Y ( \USRAM/guide_buf_340 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_341 ( .A ( MEM_OEB[32] ) , 
    .Y ( \USRAM/guide_buf_341 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_342 ( .A ( \USRAM/TMP_ODATA [256] ) , 
    .Y ( \USRAM/guide_buf_342 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_343 ( .A ( \USRAM/TMP_ODATA [257] ) , 
    .Y ( \USRAM/guide_buf_343 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_344 ( .A ( \USRAM/TMP_ODATA [258] ) , 
    .Y ( \USRAM/guide_buf_344 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_345 ( .A ( \USRAM/TMP_ODATA [259] ) , 
    .Y ( \USRAM/guide_buf_345 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_346 ( .A ( \USRAM/TMP_ODATA [260] ) , 
    .Y ( \USRAM/guide_buf_346 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_347 ( .A ( \USRAM/TMP_ODATA [261] ) , 
    .Y ( \USRAM/guide_buf_347 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_348 ( .A ( \USRAM/TMP_ODATA [262] ) , 
    .Y ( \USRAM/guide_buf_348 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_349 ( .A ( \USRAM/TMP_ODATA [263] ) , 
    .Y ( \USRAM/guide_buf_349 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_350 ( .A ( HFSNET_33 ) , 
    .Y ( \USRAM/guide_buf_350 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_351 ( .A ( HFSNET_1253 ) , 
    .Y ( \USRAM/guide_buf_351 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_352 ( .A ( \USRAM/TMP_ODATA [264] ) , 
    .Y ( \USRAM/guide_buf_352 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_353 ( .A ( \USRAM/TMP_ODATA [265] ) , 
    .Y ( \USRAM/guide_buf_353 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_354 ( .A ( \USRAM/TMP_ODATA [266] ) , 
    .Y ( \USRAM/guide_buf_354 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_355 ( .A ( \USRAM/TMP_ODATA [267] ) , 
    .Y ( \USRAM/guide_buf_355 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_356 ( .A ( \USRAM/TMP_ODATA [268] ) , 
    .Y ( \USRAM/guide_buf_356 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_357 ( .A ( \USRAM/TMP_ODATA [269] ) , 
    .Y ( \USRAM/guide_buf_357 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_358 ( .A ( \USRAM/TMP_ODATA [270] ) , 
    .Y ( \USRAM/guide_buf_358 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_359 ( .A ( \USRAM/TMP_ODATA [271] ) , 
    .Y ( \USRAM/guide_buf_359 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_360 ( .A ( copt_gre_net_1224 ) , 
    .Y ( \USRAM/guide_buf_360 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_361 ( .A ( ZBUF_25_3 ) , 
    .Y ( \USRAM/guide_buf_361 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_362 ( .A ( \USRAM/TMP_ODATA [272] ) , 
    .Y ( \USRAM/guide_buf_362 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_363 ( .A ( \USRAM/TMP_ODATA [273] ) , 
    .Y ( \USRAM/guide_buf_363 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_364 ( .A ( \USRAM/TMP_ODATA [274] ) , 
    .Y ( \USRAM/guide_buf_364 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_365 ( .A ( \USRAM/TMP_ODATA [275] ) , 
    .Y ( \USRAM/guide_buf_365 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_366 ( .A ( \USRAM/TMP_ODATA [276] ) , 
    .Y ( \USRAM/guide_buf_366 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_367 ( .A ( \USRAM/TMP_ODATA [277] ) , 
    .Y ( \USRAM/guide_buf_367 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_368 ( .A ( \USRAM/TMP_ODATA [278] ) , 
    .Y ( \USRAM/guide_buf_368 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_369 ( .A ( \USRAM/TMP_ODATA [279] ) , 
    .Y ( \USRAM/guide_buf_369 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_370 ( .A ( MEM_CSB[35] ) , 
    .Y ( \USRAM/guide_buf_370 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_371 ( .A ( MEM_OEB[35] ) , 
    .Y ( \USRAM/guide_buf_371 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_372 ( .A ( \USRAM/TMP_ODATA [280] ) , 
    .Y ( \USRAM/guide_buf_372 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_373 ( .A ( \USRAM/TMP_ODATA [281] ) , 
    .Y ( \USRAM/guide_buf_373 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_374 ( .A ( \USRAM/TMP_ODATA [282] ) , 
    .Y ( \USRAM/guide_buf_374 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_375 ( .A ( \USRAM/TMP_ODATA [283] ) , 
    .Y ( \USRAM/guide_buf_375 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_376 ( .A ( \USRAM/TMP_ODATA [284] ) , 
    .Y ( \USRAM/guide_buf_376 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_377 ( .A ( \USRAM/TMP_ODATA [285] ) , 
    .Y ( \USRAM/guide_buf_377 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_378 ( .A ( \USRAM/TMP_ODATA [286] ) , 
    .Y ( \USRAM/guide_buf_378 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_379 ( .A ( \USRAM/TMP_ODATA [287] ) , 
    .Y ( \USRAM/guide_buf_379 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_380 ( .A ( HFSNET_35 ) , 
    .Y ( \USRAM/guide_buf_380 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_381 ( .A ( HFSNET_1254 ) , 
    .Y ( \USRAM/guide_buf_381 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_382 ( .A ( \USRAM/TMP_ODATA [288] ) , 
    .Y ( \USRAM/guide_buf_382 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_383 ( .A ( \USRAM/TMP_ODATA [289] ) , 
    .Y ( \USRAM/guide_buf_383 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_384 ( .A ( \USRAM/TMP_ODATA [290] ) , 
    .Y ( \USRAM/guide_buf_384 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_385 ( .A ( \USRAM/TMP_ODATA [291] ) , 
    .Y ( \USRAM/guide_buf_385 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_386 ( .A ( \USRAM/TMP_ODATA [292] ) , 
    .Y ( \USRAM/guide_buf_386 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_387 ( .A ( \USRAM/TMP_ODATA [293] ) , 
    .Y ( \USRAM/guide_buf_387 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_388 ( .A ( \USRAM/TMP_ODATA [294] ) , 
    .Y ( \USRAM/guide_buf_388 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_389 ( .A ( \USRAM/TMP_ODATA [295] ) , 
    .Y ( \USRAM/guide_buf_389 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_390 ( .A ( copt_gre_net_1194 ) , 
    .Y ( \USRAM/guide_buf_390 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_391 ( .A ( copt_gre_net_488 ) , 
    .Y ( \USRAM/guide_buf_391 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_392 ( .A ( \USRAM/TMP_ODATA [296] ) , 
    .Y ( \USRAM/guide_buf_392 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_393 ( .A ( \USRAM/TMP_ODATA [297] ) , 
    .Y ( \USRAM/guide_buf_393 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_394 ( .A ( \USRAM/TMP_ODATA [298] ) , 
    .Y ( \USRAM/guide_buf_394 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_395 ( .A ( \USRAM/TMP_ODATA [299] ) , 
    .Y ( \USRAM/guide_buf_395 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_396 ( .A ( \USRAM/TMP_ODATA [300] ) , 
    .Y ( \USRAM/guide_buf_396 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_397 ( .A ( \USRAM/TMP_ODATA [301] ) , 
    .Y ( \USRAM/guide_buf_397 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_398 ( .A ( \USRAM/TMP_ODATA [302] ) , 
    .Y ( \USRAM/guide_buf_398 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_399 ( .A ( \USRAM/TMP_ODATA [303] ) , 
    .Y ( \USRAM/guide_buf_399 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_400 ( .A ( copt_gre_net_1168 ) , 
    .Y ( \USRAM/guide_buf_400 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_401 ( .A ( copt_gre_net_481 ) , 
    .Y ( \USRAM/guide_buf_401 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_402 ( .A ( \USRAM/TMP_ODATA [304] ) , 
    .Y ( \USRAM/guide_buf_402 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_403 ( .A ( \USRAM/TMP_ODATA [305] ) , 
    .Y ( \USRAM/guide_buf_403 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_404 ( .A ( \USRAM/TMP_ODATA [306] ) , 
    .Y ( \USRAM/guide_buf_404 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_405 ( .A ( \USRAM/TMP_ODATA [307] ) , 
    .Y ( \USRAM/guide_buf_405 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_406 ( .A ( \USRAM/TMP_ODATA [308] ) , 
    .Y ( \USRAM/guide_buf_406 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_407 ( .A ( \USRAM/TMP_ODATA [309] ) , 
    .Y ( \USRAM/guide_buf_407 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_408 ( .A ( \USRAM/TMP_ODATA [310] ) , 
    .Y ( \USRAM/guide_buf_408 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_409 ( .A ( \USRAM/TMP_ODATA [311] ) , 
    .Y ( \USRAM/guide_buf_409 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_410 ( .A ( HFSNET_38 ) , 
    .Y ( \USRAM/guide_buf_410 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_411 ( .A ( HFSNET_108 ) , 
    .Y ( \USRAM/guide_buf_411 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_412 ( .A ( \USRAM/TMP_ODATA [312] ) , 
    .Y ( \USRAM/guide_buf_412 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_413 ( .A ( \USRAM/TMP_ODATA [313] ) , 
    .Y ( \USRAM/guide_buf_413 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_414 ( .A ( \USRAM/TMP_ODATA [314] ) , 
    .Y ( \USRAM/guide_buf_414 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_415 ( .A ( \USRAM/TMP_ODATA [315] ) , 
    .Y ( \USRAM/guide_buf_415 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_416 ( .A ( \USRAM/TMP_ODATA [316] ) , 
    .Y ( \USRAM/guide_buf_416 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_417 ( .A ( \USRAM/TMP_ODATA [317] ) , 
    .Y ( \USRAM/guide_buf_417 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_418 ( .A ( \USRAM/TMP_ODATA [318] ) , 
    .Y ( \USRAM/guide_buf_418 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_419 ( .A ( \USRAM/TMP_ODATA [319] ) , 
    .Y ( \USRAM/guide_buf_419 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_420 ( .A ( MEM_CSB[40] ) , 
    .Y ( \USRAM/guide_buf_420 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_421 ( .A ( MEM_OEB[40] ) , 
    .Y ( \USRAM/guide_buf_421 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_422 ( .A ( \USRAM/TMP_ODATA [320] ) , 
    .Y ( \USRAM/guide_buf_422 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_423 ( .A ( \USRAM/TMP_ODATA [321] ) , 
    .Y ( \USRAM/guide_buf_423 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_424 ( .A ( \USRAM/TMP_ODATA [322] ) , 
    .Y ( \USRAM/guide_buf_424 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_425 ( .A ( \USRAM/TMP_ODATA [323] ) , 
    .Y ( \USRAM/guide_buf_425 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_426 ( .A ( \USRAM/TMP_ODATA [324] ) , 
    .Y ( \USRAM/guide_buf_426 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_427 ( .A ( \USRAM/TMP_ODATA [325] ) , 
    .Y ( \USRAM/guide_buf_427 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_428 ( .A ( \USRAM/TMP_ODATA [326] ) , 
    .Y ( \USRAM/guide_buf_428 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_429 ( .A ( \USRAM/TMP_ODATA [327] ) , 
    .Y ( \USRAM/guide_buf_429 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_430 ( .A ( copt_gre_net_1218 ) , 
    .Y ( \USRAM/guide_buf_430 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_431 ( .A ( copt_gre_net_1245 ) , 
    .Y ( \USRAM/guide_buf_431 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_432 ( .A ( \USRAM/TMP_ODATA [328] ) , 
    .Y ( \USRAM/guide_buf_432 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_433 ( .A ( \USRAM/TMP_ODATA [329] ) , 
    .Y ( \USRAM/guide_buf_433 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_434 ( .A ( \USRAM/TMP_ODATA [330] ) , 
    .Y ( \USRAM/guide_buf_434 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_435 ( .A ( \USRAM/TMP_ODATA [331] ) , 
    .Y ( \USRAM/guide_buf_435 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_436 ( .A ( \USRAM/TMP_ODATA [332] ) , 
    .Y ( \USRAM/guide_buf_436 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_437 ( .A ( \USRAM/TMP_ODATA [333] ) , 
    .Y ( \USRAM/guide_buf_437 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_438 ( .A ( \USRAM/TMP_ODATA [334] ) , 
    .Y ( \USRAM/guide_buf_438 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_439 ( .A ( \USRAM/TMP_ODATA [335] ) , 
    .Y ( \USRAM/guide_buf_439 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_440 ( .A ( ZBUF_2_168 ) , 
    .Y ( \USRAM/guide_buf_440 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_441 ( .A ( copt_gre_net_520 ) , 
    .Y ( \USRAM/guide_buf_441 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_442 ( .A ( \USRAM/TMP_ODATA [336] ) , 
    .Y ( \USRAM/guide_buf_442 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_443 ( .A ( \USRAM/TMP_ODATA [337] ) , 
    .Y ( \USRAM/guide_buf_443 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_444 ( .A ( \USRAM/TMP_ODATA [338] ) , 
    .Y ( \USRAM/guide_buf_444 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_445 ( .A ( \USRAM/TMP_ODATA [339] ) , 
    .Y ( \USRAM/guide_buf_445 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_446 ( .A ( \USRAM/TMP_ODATA [340] ) , 
    .Y ( \USRAM/guide_buf_446 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_447 ( .A ( \USRAM/TMP_ODATA [341] ) , 
    .Y ( \USRAM/guide_buf_447 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_448 ( .A ( \USRAM/TMP_ODATA [342] ) , 
    .Y ( \USRAM/guide_buf_448 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_449 ( .A ( \USRAM/TMP_ODATA [343] ) , 
    .Y ( \USRAM/guide_buf_449 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_450 ( .A ( ZBUF_2_22 ) , 
    .Y ( \USRAM/guide_buf_450 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_451 ( .A ( HFSNET_114 ) , 
    .Y ( \USRAM/guide_buf_451 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_452 ( .A ( \USRAM/TMP_ODATA [344] ) , 
    .Y ( \USRAM/guide_buf_452 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_453 ( .A ( \USRAM/TMP_ODATA [345] ) , 
    .Y ( \USRAM/guide_buf_453 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_454 ( .A ( \USRAM/TMP_ODATA [346] ) , 
    .Y ( \USRAM/guide_buf_454 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_455 ( .A ( \USRAM/TMP_ODATA [347] ) , 
    .Y ( \USRAM/guide_buf_455 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_456 ( .A ( \USRAM/TMP_ODATA [348] ) , 
    .Y ( \USRAM/guide_buf_456 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_457 ( .A ( \USRAM/TMP_ODATA [349] ) , 
    .Y ( \USRAM/guide_buf_457 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_458 ( .A ( \USRAM/TMP_ODATA [350] ) , 
    .Y ( \USRAM/guide_buf_458 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_459 ( .A ( \USRAM/TMP_ODATA [351] ) , 
    .Y ( \USRAM/guide_buf_459 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_460 ( .A ( copt_gre_net_1422 ) , 
    .Y ( \USRAM/guide_buf_460 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_461 ( .A ( copt_gre_net_1262 ) , 
    .Y ( \USRAM/guide_buf_461 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_462 ( .A ( \USRAM/TMP_ODATA [352] ) , 
    .Y ( \USRAM/guide_buf_462 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_463 ( .A ( \USRAM/TMP_ODATA [353] ) , 
    .Y ( \USRAM/guide_buf_463 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_464 ( .A ( \USRAM/TMP_ODATA [354] ) , 
    .Y ( \USRAM/guide_buf_464 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_465 ( .A ( \USRAM/TMP_ODATA [355] ) , 
    .Y ( \USRAM/guide_buf_465 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_466 ( .A ( \USRAM/TMP_ODATA [356] ) , 
    .Y ( \USRAM/guide_buf_466 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_467 ( .A ( \USRAM/TMP_ODATA [357] ) , 
    .Y ( \USRAM/guide_buf_467 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_468 ( .A ( \USRAM/TMP_ODATA [358] ) , 
    .Y ( \USRAM/guide_buf_468 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_469 ( .A ( \USRAM/TMP_ODATA [359] ) , 
    .Y ( \USRAM/guide_buf_469 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_470 ( .A ( copt_gre_net_1418 ) , 
    .Y ( \USRAM/guide_buf_470 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_471 ( .A ( copt_gre_net_618 ) , 
    .Y ( \USRAM/guide_buf_471 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_472 ( .A ( \USRAM/TMP_ODATA [360] ) , 
    .Y ( \USRAM/guide_buf_472 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_473 ( .A ( \USRAM/TMP_ODATA [361] ) , 
    .Y ( \USRAM/guide_buf_473 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_474 ( .A ( \USRAM/TMP_ODATA [362] ) , 
    .Y ( \USRAM/guide_buf_474 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_475 ( .A ( \USRAM/TMP_ODATA [363] ) , 
    .Y ( \USRAM/guide_buf_475 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_476 ( .A ( \USRAM/TMP_ODATA [364] ) , 
    .Y ( \USRAM/guide_buf_476 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_477 ( .A ( \USRAM/TMP_ODATA [365] ) , 
    .Y ( \USRAM/guide_buf_477 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_478 ( .A ( \USRAM/TMP_ODATA [366] ) , 
    .Y ( \USRAM/guide_buf_478 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_479 ( .A ( \USRAM/TMP_ODATA [367] ) , 
    .Y ( \USRAM/guide_buf_479 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_480 ( .A ( copt_gre_net_1173 ) , 
    .Y ( \USRAM/guide_buf_480 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_481 ( .A ( copt_gre_net_470 ) , 
    .Y ( \USRAM/guide_buf_481 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_482 ( .A ( \USRAM/TMP_ODATA [368] ) , 
    .Y ( \USRAM/guide_buf_482 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_483 ( .A ( \USRAM/TMP_ODATA [369] ) , 
    .Y ( \USRAM/guide_buf_483 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_484 ( .A ( \USRAM/TMP_ODATA [370] ) , 
    .Y ( \USRAM/guide_buf_484 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_485 ( .A ( \USRAM/TMP_ODATA [371] ) , 
    .Y ( \USRAM/guide_buf_485 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_486 ( .A ( \USRAM/TMP_ODATA [372] ) , 
    .Y ( \USRAM/guide_buf_486 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_487 ( .A ( \USRAM/TMP_ODATA [373] ) , 
    .Y ( \USRAM/guide_buf_487 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_488 ( .A ( \USRAM/TMP_ODATA [374] ) , 
    .Y ( \USRAM/guide_buf_488 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_489 ( .A ( \USRAM/TMP_ODATA [375] ) , 
    .Y ( \USRAM/guide_buf_489 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_490 ( .A ( MEM_CSB[47] ) , 
    .Y ( \USRAM/guide_buf_490 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_491 ( .A ( ropt_net_1521 ) , 
    .Y ( \USRAM/guide_buf_491 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_492 ( .A ( \USRAM/TMP_ODATA [376] ) , 
    .Y ( \USRAM/guide_buf_492 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_493 ( .A ( \USRAM/TMP_ODATA [377] ) , 
    .Y ( \USRAM/guide_buf_493 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_494 ( .A ( \USRAM/TMP_ODATA [378] ) , 
    .Y ( \USRAM/guide_buf_494 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_495 ( .A ( \USRAM/TMP_ODATA [379] ) , 
    .Y ( \USRAM/guide_buf_495 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_496 ( .A ( \USRAM/TMP_ODATA [380] ) , 
    .Y ( \USRAM/guide_buf_496 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_497 ( .A ( \USRAM/TMP_ODATA [381] ) , 
    .Y ( \USRAM/guide_buf_497 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_498 ( .A ( \USRAM/TMP_ODATA [382] ) , 
    .Y ( \USRAM/guide_buf_498 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_499 ( .A ( \USRAM/TMP_ODATA [383] ) , 
    .Y ( \USRAM/guide_buf_499 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_500 ( .A ( MEM_CSB[48] ) , 
    .Y ( \USRAM/guide_buf_500 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_501 ( .A ( MEM_OEB[48] ) , 
    .Y ( \USRAM/guide_buf_501 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_502 ( .A ( \USRAM/TMP_ODATA [384] ) , 
    .Y ( \USRAM/guide_buf_502 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_503 ( .A ( \USRAM/TMP_ODATA [385] ) , 
    .Y ( \USRAM/guide_buf_503 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_504 ( .A ( \USRAM/TMP_ODATA [386] ) , 
    .Y ( \USRAM/guide_buf_504 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_505 ( .A ( \USRAM/TMP_ODATA [387] ) , 
    .Y ( \USRAM/guide_buf_505 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_506 ( .A ( \USRAM/TMP_ODATA [388] ) , 
    .Y ( \USRAM/guide_buf_506 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_507 ( .A ( \USRAM/TMP_ODATA [389] ) , 
    .Y ( \USRAM/guide_buf_507 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_508 ( .A ( \USRAM/TMP_ODATA [390] ) , 
    .Y ( \USRAM/guide_buf_508 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_509 ( .A ( \USRAM/TMP_ODATA [391] ) , 
    .Y ( \USRAM/guide_buf_509 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_510 ( .A ( ZBUF_2_19 ) , 
    .Y ( \USRAM/guide_buf_510 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_511 ( .A ( HFSNET_121 ) , 
    .Y ( \USRAM/guide_buf_511 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_512 ( .A ( \USRAM/TMP_ODATA [392] ) , 
    .Y ( \USRAM/guide_buf_512 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_513 ( .A ( \USRAM/TMP_ODATA [393] ) , 
    .Y ( \USRAM/guide_buf_513 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_514 ( .A ( \USRAM/TMP_ODATA [394] ) , 
    .Y ( \USRAM/guide_buf_514 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_515 ( .A ( \USRAM/TMP_ODATA [395] ) , 
    .Y ( \USRAM/guide_buf_515 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_516 ( .A ( \USRAM/TMP_ODATA [396] ) , 
    .Y ( \USRAM/guide_buf_516 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_517 ( .A ( \USRAM/TMP_ODATA [397] ) , 
    .Y ( \USRAM/guide_buf_517 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_518 ( .A ( \USRAM/TMP_ODATA [398] ) , 
    .Y ( \USRAM/guide_buf_518 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_519 ( .A ( \USRAM/TMP_ODATA [399] ) , 
    .Y ( \USRAM/guide_buf_519 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_520 ( .A ( ZBUF_2_170 ) , 
    .Y ( \USRAM/guide_buf_520 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_521 ( .A ( copt_gre_net_569 ) , 
    .Y ( \USRAM/guide_buf_521 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_522 ( .A ( \USRAM/TMP_ODATA [400] ) , 
    .Y ( \USRAM/guide_buf_522 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_523 ( .A ( \USRAM/TMP_ODATA [401] ) , 
    .Y ( \USRAM/guide_buf_523 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_524 ( .A ( \USRAM/TMP_ODATA [402] ) , 
    .Y ( \USRAM/guide_buf_524 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_525 ( .A ( \USRAM/TMP_ODATA [403] ) , 
    .Y ( \USRAM/guide_buf_525 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_526 ( .A ( \USRAM/TMP_ODATA [404] ) , 
    .Y ( \USRAM/guide_buf_526 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_527 ( .A ( \USRAM/TMP_ODATA [405] ) , 
    .Y ( \USRAM/guide_buf_527 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_528 ( .A ( \USRAM/TMP_ODATA [406] ) , 
    .Y ( \USRAM/guide_buf_528 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_529 ( .A ( \USRAM/TMP_ODATA [407] ) , 
    .Y ( \USRAM/guide_buf_529 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_530 ( .A ( HFSNET_51 ) , 
    .Y ( \USRAM/guide_buf_530 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_531 ( .A ( HFSNET_124 ) , 
    .Y ( \USRAM/guide_buf_531 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_532 ( .A ( \USRAM/TMP_ODATA [408] ) , 
    .Y ( \USRAM/guide_buf_532 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_533 ( .A ( \USRAM/TMP_ODATA [409] ) , 
    .Y ( \USRAM/guide_buf_533 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_534 ( .A ( \USRAM/TMP_ODATA [410] ) , 
    .Y ( \USRAM/guide_buf_534 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_535 ( .A ( \USRAM/TMP_ODATA [411] ) , 
    .Y ( \USRAM/guide_buf_535 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_536 ( .A ( \USRAM/TMP_ODATA [412] ) , 
    .Y ( \USRAM/guide_buf_536 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_537 ( .A ( \USRAM/TMP_ODATA [413] ) , 
    .Y ( \USRAM/guide_buf_537 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_538 ( .A ( \USRAM/TMP_ODATA [414] ) , 
    .Y ( \USRAM/guide_buf_538 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_539 ( .A ( \USRAM/TMP_ODATA [415] ) , 
    .Y ( \USRAM/guide_buf_539 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_540 ( .A ( HFSNET_52 ) , 
    .Y ( \USRAM/guide_buf_540 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_541 ( .A ( HFSNET_125 ) , 
    .Y ( \USRAM/guide_buf_541 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_542 ( .A ( \USRAM/TMP_ODATA [416] ) , 
    .Y ( \USRAM/guide_buf_542 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_543 ( .A ( \USRAM/TMP_ODATA [417] ) , 
    .Y ( \USRAM/guide_buf_543 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_544 ( .A ( \USRAM/TMP_ODATA [418] ) , 
    .Y ( \USRAM/guide_buf_544 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_545 ( .A ( \USRAM/TMP_ODATA [419] ) , 
    .Y ( \USRAM/guide_buf_545 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_546 ( .A ( \USRAM/TMP_ODATA [420] ) , 
    .Y ( \USRAM/guide_buf_546 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_547 ( .A ( \USRAM/TMP_ODATA [421] ) , 
    .Y ( \USRAM/guide_buf_547 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_548 ( .A ( \USRAM/TMP_ODATA [422] ) , 
    .Y ( \USRAM/guide_buf_548 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_549 ( .A ( \USRAM/TMP_ODATA [423] ) , 
    .Y ( \USRAM/guide_buf_549 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_550 ( .A ( copt_gre_net_1226 ) , 
    .Y ( \USRAM/guide_buf_550 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_551 ( .A ( gre_a_BUF_4_291 ) , 
    .Y ( \USRAM/guide_buf_551 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_552 ( .A ( \USRAM/TMP_ODATA [424] ) , 
    .Y ( \USRAM/guide_buf_552 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_553 ( .A ( \USRAM/TMP_ODATA [425] ) , 
    .Y ( \USRAM/guide_buf_553 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_554 ( .A ( \USRAM/TMP_ODATA [426] ) , 
    .Y ( \USRAM/guide_buf_554 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_555 ( .A ( \USRAM/TMP_ODATA [427] ) , 
    .Y ( \USRAM/guide_buf_555 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_556 ( .A ( \USRAM/TMP_ODATA [428] ) , 
    .Y ( \USRAM/guide_buf_556 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_557 ( .A ( \USRAM/TMP_ODATA [429] ) , 
    .Y ( \USRAM/guide_buf_557 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_558 ( .A ( \USRAM/TMP_ODATA [430] ) , 
    .Y ( \USRAM/guide_buf_558 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_559 ( .A ( \USRAM/TMP_ODATA [431] ) , 
    .Y ( \USRAM/guide_buf_559 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_560 ( .A ( copt_gre_net_1182 ) , 
    .Y ( \USRAM/guide_buf_560 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_561 ( .A ( copt_gre_net_1247 ) , 
    .Y ( \USRAM/guide_buf_561 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_562 ( .A ( \USRAM/TMP_ODATA [432] ) , 
    .Y ( \USRAM/guide_buf_562 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_563 ( .A ( \USRAM/TMP_ODATA [433] ) , 
    .Y ( \USRAM/guide_buf_563 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_564 ( .A ( \USRAM/TMP_ODATA [434] ) , 
    .Y ( \USRAM/guide_buf_564 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_565 ( .A ( \USRAM/TMP_ODATA [435] ) , 
    .Y ( \USRAM/guide_buf_565 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_566 ( .A ( \USRAM/TMP_ODATA [436] ) , 
    .Y ( \USRAM/guide_buf_566 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_567 ( .A ( \USRAM/TMP_ODATA [437] ) , 
    .Y ( \USRAM/guide_buf_567 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_568 ( .A ( \USRAM/TMP_ODATA [438] ) , 
    .Y ( \USRAM/guide_buf_568 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_569 ( .A ( \USRAM/TMP_ODATA [439] ) , 
    .Y ( \USRAM/guide_buf_569 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_570 ( .A ( HFSNET_55 ) , 
    .Y ( \USRAM/guide_buf_570 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_571 ( .A ( ropt_net_1471 ) , 
    .Y ( \USRAM/guide_buf_571 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_572 ( .A ( \USRAM/TMP_ODATA [440] ) , 
    .Y ( \USRAM/guide_buf_572 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_573 ( .A ( \USRAM/TMP_ODATA [441] ) , 
    .Y ( \USRAM/guide_buf_573 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_574 ( .A ( \USRAM/TMP_ODATA [442] ) , 
    .Y ( \USRAM/guide_buf_574 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_575 ( .A ( \USRAM/TMP_ODATA [443] ) , 
    .Y ( \USRAM/guide_buf_575 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_576 ( .A ( \USRAM/TMP_ODATA [444] ) , 
    .Y ( \USRAM/guide_buf_576 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_577 ( .A ( \USRAM/TMP_ODATA [445] ) , 
    .Y ( \USRAM/guide_buf_577 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_578 ( .A ( \USRAM/TMP_ODATA [446] ) , 
    .Y ( \USRAM/guide_buf_578 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_579 ( .A ( \USRAM/TMP_ODATA [447] ) , 
    .Y ( \USRAM/guide_buf_579 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_580 ( .A ( HFSNET_56 ) , 
    .Y ( \USRAM/guide_buf_580 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_581 ( .A ( HFSNET_131 ) , 
    .Y ( \USRAM/guide_buf_581 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_582 ( .A ( \USRAM/TMP_ODATA [448] ) , 
    .Y ( \USRAM/guide_buf_582 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_583 ( .A ( \USRAM/TMP_ODATA [449] ) , 
    .Y ( \USRAM/guide_buf_583 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_584 ( .A ( \USRAM/TMP_ODATA [450] ) , 
    .Y ( \USRAM/guide_buf_584 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_585 ( .A ( \USRAM/TMP_ODATA [451] ) , 
    .Y ( \USRAM/guide_buf_585 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_586 ( .A ( \USRAM/TMP_ODATA [452] ) , 
    .Y ( \USRAM/guide_buf_586 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_587 ( .A ( \USRAM/TMP_ODATA [453] ) , 
    .Y ( \USRAM/guide_buf_587 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_588 ( .A ( \USRAM/TMP_ODATA [454] ) , 
    .Y ( \USRAM/guide_buf_588 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_589 ( .A ( \USRAM/TMP_ODATA [455] ) , 
    .Y ( \USRAM/guide_buf_589 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_590 ( .A ( copt_gre_net_1202 ) , 
    .Y ( \USRAM/guide_buf_590 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_591 ( .A ( copt_gre_net_459 ) , 
    .Y ( \USRAM/guide_buf_591 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_592 ( .A ( \USRAM/TMP_ODATA [456] ) , 
    .Y ( \USRAM/guide_buf_592 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_593 ( .A ( \USRAM/TMP_ODATA [457] ) , 
    .Y ( \USRAM/guide_buf_593 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_594 ( .A ( \USRAM/TMP_ODATA [458] ) , 
    .Y ( \USRAM/guide_buf_594 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_595 ( .A ( \USRAM/TMP_ODATA [459] ) , 
    .Y ( \USRAM/guide_buf_595 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_596 ( .A ( \USRAM/TMP_ODATA [460] ) , 
    .Y ( \USRAM/guide_buf_596 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_597 ( .A ( \USRAM/TMP_ODATA [461] ) , 
    .Y ( \USRAM/guide_buf_597 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_598 ( .A ( \USRAM/TMP_ODATA [462] ) , 
    .Y ( \USRAM/guide_buf_598 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_599 ( .A ( \USRAM/TMP_ODATA [463] ) , 
    .Y ( \USRAM/guide_buf_599 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_600 ( .A ( HFSNET_58 ) , 
    .Y ( \USRAM/guide_buf_600 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_601 ( .A ( copt_gre_net_504 ) , 
    .Y ( \USRAM/guide_buf_601 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_602 ( .A ( \USRAM/TMP_ODATA [464] ) , 
    .Y ( \USRAM/guide_buf_602 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_603 ( .A ( \USRAM/TMP_ODATA [465] ) , 
    .Y ( \USRAM/guide_buf_603 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_604 ( .A ( \USRAM/TMP_ODATA [466] ) , 
    .Y ( \USRAM/guide_buf_604 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_605 ( .A ( \USRAM/TMP_ODATA [467] ) , 
    .Y ( \USRAM/guide_buf_605 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_606 ( .A ( \USRAM/TMP_ODATA [468] ) , 
    .Y ( \USRAM/guide_buf_606 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_607 ( .A ( \USRAM/TMP_ODATA [469] ) , 
    .Y ( \USRAM/guide_buf_607 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_608 ( .A ( \USRAM/TMP_ODATA [470] ) , 
    .Y ( \USRAM/guide_buf_608 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_609 ( .A ( \USRAM/TMP_ODATA [471] ) , 
    .Y ( \USRAM/guide_buf_609 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_610 ( .A ( ZBUF_68_245 ) , 
    .Y ( \USRAM/guide_buf_610 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_611 ( .A ( ZBUF_65_1 ) , 
    .Y ( \USRAM/guide_buf_611 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_612 ( .A ( \USRAM/TMP_ODATA [472] ) , 
    .Y ( \USRAM/guide_buf_612 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_613 ( .A ( \USRAM/TMP_ODATA [473] ) , 
    .Y ( \USRAM/guide_buf_613 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_614 ( .A ( \USRAM/TMP_ODATA [474] ) , 
    .Y ( \USRAM/guide_buf_614 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_615 ( .A ( \USRAM/TMP_ODATA [475] ) , 
    .Y ( \USRAM/guide_buf_615 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_616 ( .A ( \USRAM/TMP_ODATA [476] ) , 
    .Y ( \USRAM/guide_buf_616 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_617 ( .A ( \USRAM/TMP_ODATA [477] ) , 
    .Y ( \USRAM/guide_buf_617 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_618 ( .A ( \USRAM/TMP_ODATA [478] ) , 
    .Y ( \USRAM/guide_buf_618 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_619 ( .A ( \USRAM/TMP_ODATA [479] ) , 
    .Y ( \USRAM/guide_buf_619 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_620 ( .A ( ZBUF_2_172 ) , 
    .Y ( \USRAM/guide_buf_620 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_621 ( .A ( copt_gre_net_498 ) , 
    .Y ( \USRAM/guide_buf_621 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_622 ( .A ( \USRAM/TMP_ODATA [480] ) , 
    .Y ( \USRAM/guide_buf_622 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_623 ( .A ( \USRAM/TMP_ODATA [481] ) , 
    .Y ( \USRAM/guide_buf_623 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_624 ( .A ( \USRAM/TMP_ODATA [482] ) , 
    .Y ( \USRAM/guide_buf_624 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_625 ( .A ( \USRAM/TMP_ODATA [483] ) , 
    .Y ( \USRAM/guide_buf_625 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_626 ( .A ( \USRAM/TMP_ODATA [484] ) , 
    .Y ( \USRAM/guide_buf_626 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_627 ( .A ( \USRAM/TMP_ODATA [485] ) , 
    .Y ( \USRAM/guide_buf_627 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_628 ( .A ( \USRAM/TMP_ODATA [486] ) , 
    .Y ( \USRAM/guide_buf_628 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_629 ( .A ( \USRAM/TMP_ODATA [487] ) , 
    .Y ( \USRAM/guide_buf_629 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_630 ( .A ( copt_gre_net_1190 ) , 
    .Y ( \USRAM/guide_buf_630 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_631 ( .A ( copt_gre_net_530 ) , 
    .Y ( \USRAM/guide_buf_631 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_632 ( .A ( \USRAM/TMP_ODATA [488] ) , 
    .Y ( \USRAM/guide_buf_632 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_633 ( .A ( \USRAM/TMP_ODATA [489] ) , 
    .Y ( \USRAM/guide_buf_633 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_634 ( .A ( \USRAM/TMP_ODATA [490] ) , 
    .Y ( \USRAM/guide_buf_634 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_635 ( .A ( \USRAM/TMP_ODATA [491] ) , 
    .Y ( \USRAM/guide_buf_635 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_636 ( .A ( \USRAM/TMP_ODATA [492] ) , 
    .Y ( \USRAM/guide_buf_636 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_637 ( .A ( \USRAM/TMP_ODATA [493] ) , 
    .Y ( \USRAM/guide_buf_637 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_638 ( .A ( \USRAM/TMP_ODATA [494] ) , 
    .Y ( \USRAM/guide_buf_638 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_639 ( .A ( \USRAM/TMP_ODATA [495] ) , 
    .Y ( \USRAM/guide_buf_639 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_640 ( .A ( copt_gre_net_1210 ) , 
    .Y ( \USRAM/guide_buf_640 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_641 ( .A ( ZBUF_285_26 ) , 
    .Y ( \USRAM/guide_buf_641 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_642 ( .A ( \USRAM/TMP_ODATA [496] ) , 
    .Y ( \USRAM/guide_buf_642 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_643 ( .A ( \USRAM/TMP_ODATA [497] ) , 
    .Y ( \USRAM/guide_buf_643 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_644 ( .A ( \USRAM/TMP_ODATA [498] ) , 
    .Y ( \USRAM/guide_buf_644 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_645 ( .A ( \USRAM/TMP_ODATA [499] ) , 
    .Y ( \USRAM/guide_buf_645 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_646 ( .A ( \USRAM/TMP_ODATA [500] ) , 
    .Y ( \USRAM/guide_buf_646 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_647 ( .A ( \USRAM/TMP_ODATA [501] ) , 
    .Y ( \USRAM/guide_buf_647 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_648 ( .A ( \USRAM/TMP_ODATA [502] ) , 
    .Y ( \USRAM/guide_buf_648 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_649 ( .A ( \USRAM/TMP_ODATA [503] ) , 
    .Y ( \USRAM/guide_buf_649 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_650 ( .A ( HFSNET_67 ) , 
    .Y ( \USRAM/guide_buf_650 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_651 ( .A ( copt_gre_net_523 ) , 
    .Y ( \USRAM/guide_buf_651 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_652 ( .A ( \USRAM/TMP_ODATA [504] ) , 
    .Y ( \USRAM/guide_buf_652 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_653 ( .A ( \USRAM/TMP_ODATA [505] ) , 
    .Y ( \USRAM/guide_buf_653 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_654 ( .A ( \USRAM/TMP_ODATA [506] ) , 
    .Y ( \USRAM/guide_buf_654 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_655 ( .A ( \USRAM/TMP_ODATA [507] ) , 
    .Y ( \USRAM/guide_buf_655 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_656 ( .A ( \USRAM/TMP_ODATA [508] ) , 
    .Y ( \USRAM/guide_buf_656 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_657 ( .A ( \USRAM/TMP_ODATA [509] ) , 
    .Y ( \USRAM/guide_buf_657 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_658 ( .A ( \USRAM/TMP_ODATA [510] ) , 
    .Y ( \USRAM/guide_buf_658 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT \USRAM/macro_guide_buf_659 ( .A ( \USRAM/TMP_ODATA [511] ) , 
    .Y ( \USRAM/guide_buf_659 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7025 ( .A ( copt_gre_net_1157 ) , 
    .Y ( copt_gre_net_1156 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7026 ( .A ( ZBUF_2_169 ) , 
    .Y ( copt_gre_net_1157 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX8_HVT ZBUF_102_inst_5266 ( .A ( \USRAM/guide_buf_42 ) , 
    .Y ( ZBUF_102_73 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX8_HVT ZBUF_152_inst_2508 ( .A ( ZBUF_105_157 ) , .Y ( ZBUF_152_52 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7028 ( .A ( copt_gre_net_1160 ) , 
    .Y ( copt_gre_net_1159 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7029 ( .A ( copt_gre_net_1391 ) , 
    .Y ( copt_gre_net_1160 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7030 ( .A ( copt_gre_net_1163 ) , 
    .Y ( copt_gre_net_1161 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7031 ( .A ( copt_gre_net_1163 ) , 
    .Y ( copt_gre_net_1162 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7032 ( .A ( ZBUF_54_157 ) , 
    .Y ( copt_gre_net_1163 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7033 ( .A ( copt_gre_net_1165 ) , 
    .Y ( copt_gre_net_1164 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7034 ( .A ( ZBUF_687_284 ) , 
    .Y ( copt_gre_net_1165 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX8_HVT ZBUF_97_inst_5269 ( .A ( \USRAM/guide_buf_46 ) , 
    .Y ( ZBUF_97_74 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7035 ( .A ( copt_gre_net_1167 ) , 
    .Y ( copt_gre_net_1166 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_2_inst_2523 ( .A ( HFSNET_941 ) , .Y ( ZBUF_2_53 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7036 ( .A ( ctmn_3539 ) , 
    .Y ( copt_gre_net_1167 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT ZBUF_23_inst_2525 ( .A ( ZBUF_736_237 ) , .Y ( ZBUF_23_54 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7037 ( .A ( copt_gre_net_1169 ) , 
    .Y ( copt_gre_net_1168 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7038 ( .A ( ZBUF_677_284 ) , 
    .Y ( copt_gre_net_1169 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX32_HVT ZBUF_397_inst_2529 ( .A ( \USRAM/guide_buf_15 ) , 
    .Y ( ZBUF_397_54 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_76_inst_2531 ( .A ( HFSNET_1035 ) , .Y ( ZBUF_76_54 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT ZBUF_36_inst_2533 ( .A ( ZBUF_4_60 ) , .Y ( ZBUF_36_54 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT ZBUF_52_inst_2534 ( .A ( ZBUF_185_43 ) , .Y ( ZBUF_52_54 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7039 ( .A ( copt_gre_net_1171 ) , 
    .Y ( copt_gre_net_1170 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7040 ( .A ( copt_gre_net_1172 ) , 
    .Y ( copt_gre_net_1171 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT ZBUF_9_inst_2541 ( .A ( ZBUF_205_258 ) , .Y ( ZBUF_9_54 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT ZBUF_2_inst_5280 ( .A ( \USRAM/guide_buf_228 ) , 
    .Y ( ZBUF_2_78 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT ZBUF_42_inst_5281 ( .A ( \USRAM/guide_buf_387 ) , 
    .Y ( ZBUF_42_78 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7041 ( .A ( ZBUF_72_160 ) , 
    .Y ( copt_gre_net_1172 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_2_inst_5283 ( .A ( \USRAM/guide_buf_117 ) , 
    .Y ( ZBUF_2_79 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX8_HVT ZBUF_166_inst_2547 ( .A ( ZBUF_62_61 ) , .Y ( ZBUF_166_55 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_31_inst_5284 ( .A ( \USRAM/guide_buf_446 ) , 
    .Y ( ZBUF_31_79 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7042 ( .A ( copt_gre_net_1174 ) , 
    .Y ( copt_gre_net_1173 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_76_inst_5286 ( .A ( \USRAM/guide_buf_443 ) , 
    .Y ( ZBUF_76_79 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_147_inst_5287 ( .A ( \USRAM/guide_buf_447 ) , 
    .Y ( ZBUF_147_79 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_241_inst_2552 ( .A ( ctmn_3561 ) , .Y ( ZBUF_241_55 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX32_HVT ZBUF_182_inst_2553 ( .A ( copt_gre_net_1161 ) , 
    .Y ( ZBUF_182_55 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7043 ( .A ( ZBUF_2_181 ) , 
    .Y ( copt_gre_net_1174 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT copt_gre_mt_inst_7044 ( .A ( copt_gre_net_1176 ) , 
    .Y ( copt_gre_net_1175 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_2_inst_5289 ( .A ( \USRAM/guide_buf_194 ) , 
    .Y ( ZBUF_2_80 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7045 ( .A ( copt_gre_net_1177 ) , 
    .Y ( copt_gre_net_1176 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX8_HVT ZBUF_62_inst_2558 ( .A ( HFSNET_834 ) , .Y ( ZBUF_62_57 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_2_inst_5291 ( .A ( \USRAM/guide_buf_93 ) , .Y ( ZBUF_2_81 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7046 ( .A ( copt_gre_net_1178 ) , 
    .Y ( copt_gre_net_1177 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7047 ( .A ( copt_gre_net_1179 ) , 
    .Y ( copt_gre_net_1178 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_58_inst_5294 ( .A ( \USRAM/guide_buf_167 ) , 
    .Y ( ZBUF_58_82 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_2_inst_5295 ( .A ( \USRAM/guide_buf_96 ) , .Y ( ZBUF_2_83 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7048 ( .A ( ZBUF_110_160 ) , 
    .Y ( copt_gre_net_1179 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7049 ( .A ( copt_gre_net_1181 ) , 
    .Y ( copt_gre_net_1180 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7050 ( .A ( ZBUF_26_243 ) , 
    .Y ( copt_gre_net_1181 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7051 ( .A ( copt_gre_net_1183 ) , 
    .Y ( copt_gre_net_1182 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7052 ( .A ( ZBUF_2_284 ) , 
    .Y ( copt_gre_net_1183 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT copt_gre_mt_inst_7053 ( .A ( copt_gre_net_1185 ) , 
    .Y ( copt_gre_net_1184 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7054 ( .A ( HFSNET_1351 ) , 
    .Y ( copt_gre_net_1185 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7055 ( .A ( copt_gre_net_1187 ) , 
    .Y ( copt_gre_net_1186 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT ZBUF_159_inst_2574 ( .A ( ZBUF_570_60 ) , .Y ( ZBUF_159_60 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7056 ( .A ( ZBUF_757_175 ) , 
    .Y ( copt_gre_net_1187 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX8_HVT ZBUF_570_inst_2576 ( .A ( HFSNET_1304 ) , .Y ( ZBUF_570_60 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT ZBUF_4_inst_2577 ( .A ( HFSNET_1315 ) , .Y ( ZBUF_4_60 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7057 ( .A ( copt_gre_net_1189 ) , 
    .Y ( copt_gre_net_1188 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT ZBUF_85_inst_2579 ( .A ( HFSNET_1315 ) , .Y ( ZBUF_85_60 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7058 ( .A ( ZBUF_91_235 ) , 
    .Y ( copt_gre_net_1189 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7059 ( .A ( copt_gre_net_1191 ) , 
    .Y ( copt_gre_net_1190 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX8_HVT ZINV_325_inst_2582 ( .A ( ZINV_440_61 ) , .Y ( ZINV_325_61 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7060 ( .A ( ZBUF_105_167 ) , 
    .Y ( copt_gre_net_1191 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX16_HVT ZINV_270_inst_2584 ( .A ( ZINV_440_61 ) , .Y ( ZINV_270_61 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX16_HVT ZINV_440_inst_2585 ( .A ( copt_gre_net_361 ) , .Y ( ZINV_440_61 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX8_HVT ZBUF_158_inst_2586 ( .A ( copt_gre_net_361 ) , 
    .Y ( ZBUF_158_61 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT ZBUF_62_inst_2587 ( .A ( copt_gre_net_362 ) , .Y ( ZBUF_62_61 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX8_HVT ZBUF_154_inst_2588 ( .A ( copt_gre_net_1076 ) , 
    .Y ( ZBUF_154_61 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX32_HVT ZBUF_365_inst_2589 ( .A ( HFSNET_976 ) , .Y ( ZBUF_365_61 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_155_inst_5301 ( .A ( \USRAM/guide_buf_603 ) , 
    .Y ( ZBUF_155_85 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX8_HVT ZBUF_76_inst_2592 ( .A ( copt_gre_net_1127 ) , .Y ( ZBUF_76_61 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_474_inst_2594 ( .A ( HFSNET_1164 ) , .Y ( ZBUF_474_61 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7061 ( .A ( copt_gre_net_1193 ) , 
    .Y ( copt_gre_net_1192 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7062 ( .A ( ZBUF_59_175 ) , 
    .Y ( copt_gre_net_1193 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX4_HVT ZINV_11_inst_2600 ( .A ( ZINV_38_61 ) , .Y ( ZINV_11_61 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX8_HVT ZINV_4_inst_2601 ( .A ( ZINV_38_61 ) , .Y ( ZINV_4_61 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX8_HVT ZINV_38_inst_2602 ( .A ( \USRAM/guide_buf ) , .Y ( ZINV_38_61 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX16_HVT ZCTSINV_470_4969 ( .A ( ZCTSNET_2 ) , .Y ( ZCTSNET_0 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX16_HVT ZCTSINV_388_4970 ( .A ( ZCTSNET_2 ) , .Y ( ZCTSNET_1 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX16_HVT ZCTSINV_527_4971 ( .A ( ZCTSNET_3 ) , .Y ( ZCTSNET_2 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX16_HVT ZCTSINV_561_4972 ( .A ( ZCTSNET_11 ) , .Y ( ZCTSNET_3 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX16_HVT ZCTSINV_643_4973 ( .A ( ZCTSNET_11 ) , .Y ( ZCTSNET_4 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX16_HVT ctosc_gls_inst_5090 ( .A ( ctosc_gls_4 ) , .Y ( ctosc_gls_3 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX2_HVT ctosc_gls_inst_5091 ( .A ( ctosc_gls_5 ) , .Y ( ctosc_gls_4 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX4_HVT ZCTSINV_86_4976 ( .A ( ZCTSNET_9 ) , .Y ( ZCTSNET_7 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX4_HVT ZCTSINV_61_4977 ( .A ( ZCTSNET_9 ) , .Y ( ZCTSNET_8 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX16_HVT ZCTSINV_128_4978 ( .A ( ctosc_drc_0 ) , .Y ( ZCTSNET_9 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX8_HVT ctosc_drc_inst_5088 ( .A ( ZCTSNET_11 ) , .Y ( ctosc_drc_2 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX16_HVT ZCTSINV_1167_4980 ( .A ( ZCTSNET_30 ) , .Y ( ZCTSNET_11 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX4_HVT ZCTSINV_2366_4981 ( .A ( ZCTSNET_15 ) , .Y ( ZCTSNET_12 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX16_HVT ZCTSINV_2488_4982 ( .A ( ZCTSNET_15 ) , .Y ( ZCTSNET_13 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX16_HVT ZCTSINV_2634_4983 ( .A ( ZCTSNET_15 ) , .Y ( ZCTSNET_14 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX16_HVT ZCTSINV_2729_4984 ( .A ( ZCTSNET_16 ) , .Y ( ZCTSNET_15 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX16_HVT ZCTSINV_2957_4985 ( .A ( ZCTSNET_21 ) , .Y ( ZCTSNET_16 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX2_HVT ZCTSINV_3079_4986 ( .A ( ZCTSNET_21 ) , .Y ( ZCTSNET_17 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX16_HVT ZCTSINV_3212_4987 ( .A ( ZCTSNET_19 ) , .Y ( ZCTSNET_18 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX16_HVT ZCTSINV_3282_4988 ( .A ( ZCTSNET_20 ) , .Y ( ZCTSNET_19 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX16_HVT ZCTSINV_3407_f_4989 ( .A ( ZCTSNET_21 ) , .Y ( ZCTSNET_20 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX16_HVT ZCTSINV_3773_4990 ( .A ( ZCTSNET_30 ) , .Y ( ZCTSNET_21 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX8_HVT ZCTSINV_1251_4991 ( .A ( ZCTSNET_25 ) , .Y ( ZCTSNET_22 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX16_HVT ZCTSINV_1386_4992 ( .A ( ZCTSNET_25 ) , .Y ( ZCTSNET_23 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX16_HVT ZCTSINV_1223_4993 ( .A ( ZCTSNET_25 ) , .Y ( ZCTSNET_24 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX16_HVT ZCTSINV_1466_4994 ( .A ( ZCTSNET_26 ) , .Y ( ZCTSNET_25 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX8_HVT ZCTSINV_1508_4995 ( .A ( ZCTSNET_29 ) , .Y ( ZCTSNET_26 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX16_HVT ZCTSINV_1595_4996 ( .A ( ZCTSNET_29 ) , .Y ( ZCTSNET_27 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX16_HVT ZCTSINV_1694_4997 ( .A ( ZCTSNET_29 ) , .Y ( ZCTSNET_28 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX16_HVT ZCTSINV_2207_4998 ( .A ( ZCTSNET_30 ) , .Y ( ZCTSNET_29 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX16_HVT ZCTSINV_4926_4999 ( .A ( ZCTSNET_31 ) , .Y ( ZCTSNET_30 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX8_HVT ZCTSINV_5377_5000 ( .A ( \USRAM/guide_buf_10 ) , .Y ( ZCTSNET_31 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX8_HVT ZCTSINV_130_5001 ( .A ( ZCTSNET_33 ) , .Y ( ZCTSNET_32 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX8_HVT ZCTSINV_190_5002 ( .A ( ctosc_dly_trglat_12 ) , .Y ( ZCTSNET_33 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX4_HVT ZCTSINV_199_5004 ( .A ( ZCTSNET_38 ) , .Y ( ZCTSNET_35 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX4_HVT ZCTSINV_556_5005 ( .A ( ZCTSNET_38 ) , .Y ( ZCTSNET_36 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX4_HVT ZCTSINV_374_5006 ( .A ( ZCTSNET_38 ) , .Y ( ZCTSNET_37 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX8_HVT ZCTSINV_795_5007 ( .A ( ZCTSNET_50 ) , .Y ( ZCTSNET_38 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX8_HVT ZCTSINV_2770_5008 ( .A ( ZCTSNET_44 ) , .Y ( ZCTSNET_39 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX8_HVT ZCTSINV_3106_5009 ( .A ( ZCTSNET_44 ) , .Y ( ZCTSNET_40 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX8_HVT ZCTSINV_3813_5010 ( .A ( ZCTSNET_44 ) , .Y ( ZCTSNET_41 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX4_HVT ZCTSINV_3581_5011 ( .A ( ZCTSNET_44 ) , .Y ( ZCTSNET_42 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX2_HVT ZCTSINV_3484_5012 ( .A ( ZCTSNET_44 ) , .Y ( ZCTSNET_43 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX16_HVT ZCTSINV_4671_5013 ( .A ( ZCTSNET_50 ) , .Y ( ZCTSNET_44 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX8_HVT ZCTSINV_1782_5014 ( .A ( ZCTSNET_49 ) , .Y ( ZCTSNET_45 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX4_HVT ZCTSINV_1451_5015 ( .A ( ZCTSNET_49 ) , .Y ( ZCTSNET_46 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX4_HVT ZCTSINV_1350_5016 ( .A ( ZCTSNET_49 ) , .Y ( ZCTSNET_47 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX4_HVT ZCTSINV_2136_5017 ( .A ( ZCTSNET_49 ) , .Y ( ZCTSNET_48 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX16_HVT ZCTSINV_2509_5018 ( .A ( ZCTSNET_50 ) , .Y ( ZCTSNET_49 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX16_HVT ZCTSINV_6094_5019 ( .A ( ZCTSNET_52 ) , .Y ( ZCTSNET_50 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX4_HVT ZCTSINV_7168_5020 ( .A ( ZCTSNET_52 ) , .Y ( ZCTSNET_51 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX16_HVT ZCTSINV_7670_5021 ( .A ( ctosc_dly_trglat_8 ) , .Y ( ZCTSNET_52 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX8_HVT ctosc_drc_inst_5086 ( .A ( ZCTSNET_11 ) , .Y ( ctosc_drc_0 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX16_HVT ctosc_gls_inst_5092 ( .A ( ctosc_gls_6 ) , .Y ( ctosc_gls_5 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX8_HVT ctosc_drc_inst_5089 ( .A ( ZCTSNET_11 ) , .Y ( ctosc_drc_3 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX4_HVT ctosc_gls_inst_5093 ( .A ( ctosc_gls_7 ) , .Y ( ctosc_gls_6 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX2_HVT ctosc_gls_inst_5094 ( .A ( ctosc_gls_8 ) , .Y ( ctosc_gls_7 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX4_HVT ctosc_gls_inst_5095 ( .A ( ZCTSNET_32 ) , .Y ( ctosc_gls_8 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX8_HVT ctosc_dly_trglat_inst_5104 ( .A ( ctosc_dly_trglat_10 ) , 
    .Y ( ctosc_dly_trglat_8 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX4_HVT ctosc_dly_trglat_inst_5105 ( .A ( CLK ) , 
    .Y ( ctosc_dly_trglat_9 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX8_HVT ctosc_dly_trglat_inst_5106 ( .A ( ctosc_dly_trglat_11 ) , 
    .Y ( ctosc_dly_trglat_10 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX4_HVT ctosc_dly_trglat_inst_5107 ( .A ( ctosc_dly_trglat_9 ) , 
    .Y ( ctosc_dly_trglat_11 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX2_HVT ctosc_dly_trglat_inst_5108 ( .A ( ctosc_dly_trglat_13 ) , 
    .Y ( ctosc_dly_trglat_12 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
INVX2_HVT ctosc_dly_trglat_inst_5109 ( .A ( MEM_CE ) , 
    .Y ( ctosc_dly_trglat_13 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_131_inst_5110 ( .A ( copt_gre_net_1060 ) , 
    .Y ( ZBUF_131_0 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7063 ( .A ( copt_gre_net_1195 ) , 
    .Y ( copt_gre_net_1194 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7064 ( .A ( ZBUF_2_176 ) , 
    .Y ( copt_gre_net_1195 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7065 ( .A ( copt_gre_net_1197 ) , 
    .Y ( copt_gre_net_1196 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7066 ( .A ( ZBUF_2_174 ) , 
    .Y ( copt_gre_net_1197 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7067 ( .A ( copt_gre_net_1199 ) , 
    .Y ( copt_gre_net_1198 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7068 ( .A ( ZBUF_174_172 ) , 
    .Y ( copt_gre_net_1199 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_54_inst_5311 ( .A ( \USRAM/guide_buf_26 ) , 
    .Y ( ZBUF_54_89 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_97_inst_5317 ( .A ( \USRAM/guide_buf_48 ) , 
    .Y ( ZBUF_97_89 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX8_HVT ZBUF_2_inst_5320 ( .A ( \USRAM/guide_buf_56 ) , .Y ( ZBUF_2_91 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7069 ( .A ( copt_gre_net_1201 ) , 
    .Y ( copt_gre_net_1200 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_2_inst_5325 ( .A ( \USRAM/guide_buf_137 ) , 
    .Y ( ZBUF_2_92 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7070 ( .A ( ctmn_3545 ) , 
    .Y ( copt_gre_net_1201 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_2_inst_5327 ( .A ( \USRAM/guide_buf_133 ) , 
    .Y ( ZBUF_2_93 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT ZBUF_32_inst_5328 ( .A ( \USRAM/guide_buf_442 ) , 
    .Y ( ZBUF_32_93 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_2_inst_5329 ( .A ( \USRAM/guide_buf_113 ) , 
    .Y ( ZBUF_2_94 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT ZBUF_103_inst_5330 ( .A ( \USRAM/guide_buf_59 ) , 
    .Y ( ZBUF_103_94 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_2_inst_5331 ( .A ( \USRAM/guide_buf_647 ) , 
    .Y ( ZBUF_2_95 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_2_inst_5333 ( .A ( \USRAM/guide_buf_138 ) , 
    .Y ( ZBUF_2_96 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_147_inst_5336 ( .A ( \USRAM/guide_buf_444 ) , 
    .Y ( ZBUF_147_98 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_2_inst_5337 ( .A ( \USRAM/guide_buf_36 ) , .Y ( ZBUF_2_99 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_75_inst_5338 ( .A ( \USRAM/guide_buf_448 ) , 
    .Y ( ZBUF_75_99 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7071 ( .A ( copt_gre_net_1203 ) , 
    .Y ( copt_gre_net_1202 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7072 ( .A ( ZBUF_712_284 ) , 
    .Y ( copt_gre_net_1203 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT ZBUF_2_inst_5344 ( .A ( \USRAM/guide_buf_646 ) , 
    .Y ( ZBUF_2_103 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_60_inst_5345 ( .A ( \USRAM/guide_buf_162 ) , 
    .Y ( ZBUF_60_103 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT copt_gre_mt_inst_7074 ( .A ( ZBUF_99_169 ) , 
    .Y ( copt_gre_net_1205 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT ZBUF_76_inst_5351 ( .A ( \USRAM/guide_buf_513 ) , 
    .Y ( ZBUF_76_104 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT ZBUF_2_inst_5352 ( .A ( \USRAM/guide_buf_516 ) , 
    .Y ( ZBUF_2_105 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT ZBUF_2_inst_5353 ( .A ( \USRAM/guide_buf_512 ) , 
    .Y ( ZBUF_2_106 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7075 ( .A ( copt_gre_net_1207 ) , 
    .Y ( copt_gre_net_1206 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7076 ( .A ( HFSNET_1304 ) , 
    .Y ( copt_gre_net_1207 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_55_inst_5357 ( .A ( \USRAM/guide_buf_168 ) , 
    .Y ( ZBUF_55_107 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7077 ( .A ( copt_gre_net_1209 ) , 
    .Y ( copt_gre_net_1208 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT ZBUF_2_inst_5360 ( .A ( \USRAM/guide_buf_176 ) , 
    .Y ( ZBUF_2_110 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_2_inst_5361 ( .A ( \USRAM/guide_buf_582 ) , 
    .Y ( ZBUF_2_111 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT ZBUF_144_inst_5362 ( .A ( \USRAM/guide_buf_166 ) , 
    .Y ( ZBUF_144_111 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7078 ( .A ( ZBUF_1032_175 ) , 
    .Y ( copt_gre_net_1209 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_60_inst_5364 ( .A ( \USRAM/guide_buf_172 ) , 
    .Y ( ZBUF_60_111 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7079 ( .A ( copt_gre_net_1211 ) , 
    .Y ( copt_gre_net_1210 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7080 ( .A ( ZBUF_163_172 ) , 
    .Y ( copt_gre_net_1211 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7081 ( .A ( copt_gre_net_1213 ) , 
    .Y ( copt_gre_net_1212 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT copt_gre_mt_inst_7082 ( .A ( copt_gre_net_1214 ) , 
    .Y ( copt_gre_net_1213 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_263_inst_5369 ( .A ( \USRAM/guide_buf_29 ) , 
    .Y ( ZBUF_263_114 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7083 ( .A ( copt_gre_net_1215 ) , 
    .Y ( copt_gre_net_1214 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7084 ( .A ( ZBUF_1922_25 ) , 
    .Y ( copt_gre_net_1215 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7085 ( .A ( copt_gre_net_1217 ) , 
    .Y ( copt_gre_net_1216 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7086 ( .A ( ctmn_3546 ) , 
    .Y ( copt_gre_net_1217 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7087 ( .A ( copt_gre_net_1219 ) , 
    .Y ( copt_gre_net_1218 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX8_HVT ZBUF_159_inst_5376 ( .A ( \USRAM/guide_buf_188 ) , 
    .Y ( ZBUF_159_118 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_2_inst_5377 ( .A ( \USRAM/guide_buf_136 ) , 
    .Y ( ZBUF_2_119 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX8_HVT ZBUF_81_inst_5379 ( .A ( \USRAM/guide_buf_83 ) , 
    .Y ( ZBUF_81_120 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX8_HVT ZBUF_56_inst_5380 ( .A ( \USRAM/guide_buf_652 ) , 
    .Y ( ZBUF_56_120 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX8_HVT ZBUF_2_inst_5381 ( .A ( \USRAM/guide_buf_86 ) , 
    .Y ( ZBUF_2_121 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_240_inst_5382 ( .A ( \USRAM/guide_buf_87 ) , 
    .Y ( ZBUF_240_121 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7088 ( .A ( copt_gre_net_1221 ) , 
    .Y ( copt_gre_net_1219 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_291_inst_5384 ( .A ( \USRAM/guide_buf_32 ) , 
    .Y ( ZBUF_291_121 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_2_inst_5386 ( .A ( \USRAM/guide_buf_55 ) , 
    .Y ( ZBUF_2_122 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX8_HVT ZBUF_19_inst_5387 ( .A ( \USRAM/guide_buf_283 ) , 
    .Y ( ZBUF_19_122 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_271_inst_5389 ( .A ( HFSNET_268 ) , .Y ( ZBUF_271_123 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX8_HVT ZBUF_2_inst_5390 ( .A ( \USRAM/guide_buf_58 ) , 
    .Y ( ZBUF_2_124 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_71_inst_5395 ( .A ( \USRAM/guide_buf_75 ) , 
    .Y ( ZBUF_71_124 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_2_inst_5396 ( .A ( \USRAM/guide_buf_115 ) , 
    .Y ( ZBUF_2_125 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT copt_gre_mt_inst_7090 ( .A ( ZBUF_834_284 ) , 
    .Y ( copt_gre_net_1221 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_2_inst_5398 ( .A ( \USRAM/guide_buf_134 ) , 
    .Y ( ZBUF_2_127 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_2_inst_5400 ( .A ( \USRAM/guide_buf_114 ) , 
    .Y ( ZBUF_2_128 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT ZBUF_2_inst_5401 ( .A ( \USRAM/guide_buf_648 ) , 
    .Y ( ZBUF_2_129 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_27_inst_5403 ( .A ( \USRAM/guide_buf_326 ) , 
    .Y ( ZBUF_27_129 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT copt_gre_mt_inst_7092 ( .A ( ZBUF_2_175 ) , 
    .Y ( copt_gre_net_1223 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT ZBUF_24_inst_5407 ( .A ( \USRAM/guide_buf_329 ) , 
    .Y ( ZBUF_24_130 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7093 ( .A ( copt_gre_net_1225 ) , 
    .Y ( copt_gre_net_1224 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_56_inst_5411 ( .A ( \USRAM/guide_buf_463 ) , 
    .Y ( ZBUF_56_132 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7094 ( .A ( ZBUF_2_179 ) , 
    .Y ( copt_gre_net_1225 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7095 ( .A ( copt_gre_net_1227 ) , 
    .Y ( copt_gre_net_1226 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT ZBUF_39_inst_5414 ( .A ( \USRAM/guide_buf_417 ) , 
    .Y ( ZBUF_39_133 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7096 ( .A ( MEM_CSB[53] ) , 
    .Y ( copt_gre_net_1227 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7097 ( .A ( ZBUF_122_241 ) , 
    .Y ( copt_gre_net_1228 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_68_inst_5417 ( .A ( \USRAM/guide_buf_609 ) , 
    .Y ( ZBUF_68_133 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7098 ( .A ( copt_gre_net_1230 ) , 
    .Y ( copt_gre_net_1229 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7099 ( .A ( copt_gre_net_1232 ) , 
    .Y ( copt_gre_net_1230 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_59_inst_5420 ( .A ( \USRAM/guide_buf_94 ) , 
    .Y ( ZBUF_59_134 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7100 ( .A ( copt_gre_net_1232 ) , 
    .Y ( copt_gre_net_1231 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_2_inst_5422 ( .A ( \USRAM/guide_buf_105 ) , 
    .Y ( ZBUF_2_136 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7101 ( .A ( copt_gre_net_1233 ) , 
    .Y ( copt_gre_net_1232 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT ZBUF_2_inst_5424 ( .A ( \USRAM/guide_buf_174 ) , 
    .Y ( ZBUF_2_138 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7102 ( .A ( copt_gre_net_1238 ) , 
    .Y ( copt_gre_net_1233 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_2_inst_5427 ( .A ( \USRAM/guide_buf_98 ) , 
    .Y ( ZBUF_2_141 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7104 ( .A ( copt_gre_net_1236 ) , 
    .Y ( copt_gre_net_1235 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_2_inst_5429 ( .A ( \USRAM/guide_buf_25 ) , 
    .Y ( ZBUF_2_143 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX8_HVT ZBUF_82_inst_5431 ( .A ( \USRAM/guide_buf_85 ) , 
    .Y ( ZBUF_82_144 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX8_HVT ZBUF_155_inst_5432 ( .A ( \USRAM/guide_buf_84 ) , 
    .Y ( ZBUF_155_144 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX8_HVT ZBUF_142_inst_5434 ( .A ( \USRAM/guide_buf_655 ) , 
    .Y ( ZBUF_142_144 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX8_HVT ZBUF_230_inst_5435 ( .A ( \USRAM/guide_buf_462 ) , 
    .Y ( ZBUF_230_144 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_2_inst_5436 ( .A ( \USRAM/guide_buf_33 ) , 
    .Y ( ZBUF_2_145 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_35_inst_5438 ( .A ( \USRAM/guide_buf_292 ) , 
    .Y ( ZBUF_35_145 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7105 ( .A ( copt_gre_net_1237 ) , 
    .Y ( copt_gre_net_1236 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX8_HVT ZBUF_27_inst_5442 ( .A ( \USRAM/guide_buf_284 ) , 
    .Y ( ZBUF_27_146 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT ZBUF_61_inst_5443 ( .A ( \USRAM/guide_buf_526 ) , 
    .Y ( ZBUF_61_146 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7106 ( .A ( copt_gre_net_1238 ) , 
    .Y ( copt_gre_net_1237 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_225_inst_5450 ( .A ( \USRAM/guide_buf_469 ) , 
    .Y ( ZBUF_225_147 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT copt_gre_mt_inst_7107 ( .A ( copt_gre_net_1239 ) , 
    .Y ( copt_gre_net_1238 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7108 ( .A ( HFSNET_1189 ) , 
    .Y ( copt_gre_net_1239 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT copt_gre_mt_inst_7109 ( .A ( ZBUF_43_44 ) , 
    .Y ( copt_gre_net_1240 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7111 ( .A ( copt_gre_net_1243 ) , 
    .Y ( copt_gre_net_1242 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7112 ( .A ( ZBUF_4_195 ) , 
    .Y ( copt_gre_net_1243 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7113 ( .A ( ctmn_3639 ) , 
    .Y ( copt_gre_net_1244 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7114 ( .A ( copt_gre_net_1246 ) , 
    .Y ( copt_gre_net_1245 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_142_inst_5461 ( .A ( \USRAM/guide_buf_465 ) , 
    .Y ( ZBUF_142_151 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX8_HVT ZBUF_2_inst_5462 ( .A ( \USRAM/guide_buf_34 ) , 
    .Y ( ZBUF_2_152 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7115 ( .A ( ZBUF_38_195 ) , 
    .Y ( copt_gre_net_1246 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT ZBUF_2_inst_5465 ( .A ( \USRAM/guide_buf_479 ) , 
    .Y ( ZBUF_2_154 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT ZBUF_21_inst_5467 ( .A ( \USRAM/guide_buf_298 ) , 
    .Y ( ZBUF_21_154 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_2_inst_5468 ( .A ( \USRAM/guide_buf_468 ) , 
    .Y ( ZBUF_2_155 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_73_inst_5469 ( .A ( \USRAM/guide_buf_464 ) , 
    .Y ( ZBUF_73_155 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7116 ( .A ( copt_gre_net_1248 ) , 
    .Y ( copt_gre_net_1247 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_147_inst_5473 ( .A ( \USRAM/guide_buf_574 ) , 
    .Y ( ZBUF_147_156 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_21_inst_5474 ( .A ( HFSNET_1055 ) , .Y ( ZBUF_21_156 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_4_inst_5475 ( .A ( HFSNET_1055 ) , .Y ( ZBUF_4_156 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX8_HVT ZBUF_301_inst_5476 ( .A ( ZBUF_570_60 ) , .Y ( ZBUF_301_156 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7117 ( .A ( copt_gre_net_472 ) , 
    .Y ( copt_gre_net_1248 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX8_HVT ZBUF_193_inst_5478 ( .A ( HFSNET_1016 ) , .Y ( ZBUF_193_156 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7118 ( .A ( copt_gre_net_1250 ) , 
    .Y ( copt_gre_net_1249 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_2_inst_5480 ( .A ( HFSNET_849 ) , .Y ( ZBUF_2_157 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7119 ( .A ( copt_gre_net_1251 ) , 
    .Y ( copt_gre_net_1250 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_159_inst_5482 ( .A ( HFSNET_1039 ) , .Y ( ZBUF_159_157 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT ZBUF_54_inst_5483 ( .A ( HFSNET_1039 ) , .Y ( ZBUF_54_157 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7120 ( .A ( HFSNET_75 ) , 
    .Y ( copt_gre_net_1251 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX8_HVT ZBUF_105_inst_5485 ( .A ( HFSNET_1024 ) , .Y ( ZBUF_105_157 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_517_inst_5486 ( .A ( HFSNET_1007 ) , .Y ( ZBUF_517_157 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7122 ( .A ( copt_gre_net_1254 ) , 
    .Y ( copt_gre_net_1253 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7123 ( .A ( copt_gre_net_1255 ) , 
    .Y ( copt_gre_net_1254 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7124 ( .A ( ZBUF_2_275 ) , 
    .Y ( copt_gre_net_1255 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT ZBUF_223_inst_5491 ( .A ( ZBUF_297_157 ) , .Y ( ZBUF_223_157 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_297_inst_5492 ( .A ( \USRAM/guide_buf_12 ) , 
    .Y ( ZBUF_297_157 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT ZBUF_4_inst_5493 ( .A ( ZBUF_25_234 ) , .Y ( ZBUF_4_158 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_313_inst_5495 ( .A ( copt_gre_net_360 ) , 
    .Y ( ZBUF_313_158 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX8_HVT ZBUF_269_inst_5496 ( .A ( \USRAM/guide_buf_9 ) , 
    .Y ( ZBUF_269_158 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7126 ( .A ( copt_gre_net_1258 ) , 
    .Y ( copt_gre_net_1257 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_200_inst_5498 ( .A ( HFSNET_1330 ) , .Y ( ZBUF_200_159 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_57_inst_5499 ( .A ( HFSNET_930 ) , .Y ( ZBUF_57_159 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_2_inst_5500 ( .A ( ZBUF_17_12 ) , .Y ( ZBUF_2_159 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_65_inst_5501 ( .A ( ZBUF_17_12 ) , .Y ( ZBUF_65_159 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7127 ( .A ( copt_gre_net_1259 ) , 
    .Y ( copt_gre_net_1258 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT ZBUF_30_inst_5503 ( .A ( HFSNET_976 ) , .Y ( ZBUF_30_159 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_226_inst_5504 ( .A ( copt_gre_net_1060 ) , 
    .Y ( ZBUF_226_159 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_29_inst_5505 ( .A ( HFSNET_881 ) , .Y ( ZBUF_29_159 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX8_HVT ZBUF_144_inst_5506 ( .A ( copt_gre_net_351 ) , 
    .Y ( ZBUF_144_159 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT ZBUF_200_inst_5507 ( .A ( HFSNET_991 ) , .Y ( ZBUF_200_160 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT ZBUF_196_inst_5508 ( .A ( HFSNET_869 ) , .Y ( ZBUF_196_160 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7128 ( .A ( HFSNET_585 ) , 
    .Y ( copt_gre_net_1259 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX8_HVT ZBUF_72_inst_5510 ( .A ( ZBUF_9_0 ) , .Y ( ZBUF_72_160 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7129 ( .A ( copt_gre_net_1261 ) , 
    .Y ( copt_gre_net_1260 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_110_inst_5512 ( .A ( MEM_CSB[5] ) , .Y ( ZBUF_110_160 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_179_inst_5513 ( .A ( copt_gre_net_1073 ) , 
    .Y ( ZBUF_179_160 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_108_inst_5514 ( .A ( HFSNET_998 ) , .Y ( ZBUF_108_160 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX8_HVT ZBUF_88_inst_5515 ( .A ( ZBUF_286_44 ) , .Y ( ZBUF_88_160 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7130 ( .A ( HFSNET_581 ) , 
    .Y ( copt_gre_net_1261 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7131 ( .A ( ZBUF_4_256 ) , 
    .Y ( copt_gre_net_1262 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX8_HVT ZBUF_114_inst_5519 ( .A ( MEM_CSB[63] ) , .Y ( ZBUF_114_160 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT ZBUF_153_inst_5521 ( .A ( ZBUF_220_234 ) , .Y ( ZBUF_153_160 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_149_inst_5523 ( .A ( HFSNET_44 ) , .Y ( ZBUF_149_160 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_62_inst_5524 ( .A ( HFSNET_858 ) , .Y ( ZBUF_62_160 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7133 ( .A ( copt_gre_net_1265 ) , 
    .Y ( copt_gre_net_1264 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7134 ( .A ( copt_gre_net_1266 ) , 
    .Y ( copt_gre_net_1265 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7135 ( .A ( ZBUF_69_201 ) , 
    .Y ( copt_gre_net_1266 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_142_inst_5529 ( .A ( MEM_CSB[58] ) , .Y ( ZBUF_142_161 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7136 ( .A ( copt_gre_net_1268 ) , 
    .Y ( copt_gre_net_1267 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7137 ( .A ( copt_gre_net_1269 ) , 
    .Y ( copt_gre_net_1268 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7138 ( .A ( HFSNET_1142 ) , 
    .Y ( copt_gre_net_1269 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_2_inst_5533 ( .A ( MEM_CSB[59] ) , .Y ( ZBUF_2_162 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7139 ( .A ( copt_gre_net_1272 ) , 
    .Y ( copt_gre_net_1270 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT ZBUF_31_inst_5536 ( .A ( HFSNET_951 ) , .Y ( ZBUF_31_163 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT copt_gre_mt_inst_7141 ( .A ( ZBUF_34_204 ) , 
    .Y ( copt_gre_net_1272 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7142 ( .A ( ZBUF_24_204 ) , 
    .Y ( copt_gre_net_1273 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_58_inst_5541 ( .A ( MEM_CSB[4] ) , .Y ( ZBUF_58_163 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7144 ( .A ( copt_gre_net_1276 ) , 
    .Y ( copt_gre_net_1275 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7145 ( .A ( HFSNET_408 ) , 
    .Y ( copt_gre_net_1276 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7146 ( .A ( copt_gre_net_1279 ) , 
    .Y ( copt_gre_net_1277 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX8_HVT ZBUF_104_inst_5546 ( .A ( HFSNET_834 ) , .Y ( ZBUF_104_165 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7148 ( .A ( HFSNET_509 ) , 
    .Y ( copt_gre_net_1279 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX8_HVT ZBUF_274_inst_5548 ( .A ( ZBUF_47_51 ) , .Y ( ZBUF_274_166 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7149 ( .A ( copt_gre_net_1281 ) , 
    .Y ( copt_gre_net_1280 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7150 ( .A ( copt_gre_net_1282 ) , 
    .Y ( copt_gre_net_1281 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7151 ( .A ( HFSNET_221 ) , 
    .Y ( copt_gre_net_1282 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT copt_gre_mt_inst_7152 ( .A ( copt_gre_net_1284 ) , 
    .Y ( copt_gre_net_1283 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX8_HVT ZBUF_163_inst_5554 ( .A ( copt_gre_net_1153 ) , 
    .Y ( ZBUF_163_166 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT ZBUF_125_inst_5555 ( .A ( copt_gre_net_1212 ) , 
    .Y ( ZBUF_125_166 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7153 ( .A ( ZBUF_62_201 ) , 
    .Y ( copt_gre_net_1284 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT ZBUF_6_inst_5557 ( .A ( copt_gre_net_1356 ) , .Y ( ZBUF_6_167 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_372_inst_5558 ( .A ( HFSNET_994 ) , .Y ( ZBUF_372_167 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7154 ( .A ( copt_gre_net_1286 ) , 
    .Y ( copt_gre_net_1285 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX8_HVT ZBUF_208_inst_5560 ( .A ( copt_gre_net_1109 ) , 
    .Y ( ZBUF_208_167 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7155 ( .A ( copt_gre_net_1287 ) , 
    .Y ( copt_gre_net_1286 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_105_inst_5563 ( .A ( MEM_CSB[61] ) , .Y ( ZBUF_105_167 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT ZBUF_2_inst_5564 ( .A ( HFSNET_42 ) , .Y ( ZBUF_2_168 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_2_inst_5565 ( .A ( MEM_CSB[20] ) , .Y ( ZBUF_2_169 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT ZBUF_61_inst_5566 ( .A ( HFSNET_1319 ) , .Y ( ZBUF_61_169 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT ZBUF_6_inst_5567 ( .A ( ZBUF_162_47 ) , .Y ( ZBUF_6_169 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7156 ( .A ( HFSNET_573 ) , 
    .Y ( copt_gre_net_1287 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT ZBUF_68_inst_5569 ( .A ( ZBUF_136_237 ) , .Y ( ZBUF_68_169 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_99_inst_5570 ( .A ( MEM_CSB[16] ) , .Y ( ZBUF_99_169 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX8_HVT ZBUF_170_inst_5572 ( .A ( MEM_CSB[1] ) , .Y ( ZBUF_170_169 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX8_HVT ZBUF_2_inst_5573 ( .A ( ZBUF_21_22 ) , .Y ( ZBUF_2_170 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX8_HVT ZBUF_2_inst_5575 ( .A ( MEM_CSB[60] ) , .Y ( ZBUF_2_172 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_174_inst_5576 ( .A ( MEM_CSB[3] ) , .Y ( ZBUF_174_172 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_163_inst_5577 ( .A ( MEM_CSB[62] ) , .Y ( ZBUF_163_172 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT ZBUF_230_inst_5578 ( .A ( HFSNET_771 ) , .Y ( ZBUF_230_172 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7157 ( .A ( copt_gre_net_1289 ) , 
    .Y ( copt_gre_net_1288 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_2_inst_5580 ( .A ( MEM_CSB[25] ) , .Y ( ZBUF_2_174 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7158 ( .A ( copt_gre_net_1290 ) , 
    .Y ( copt_gre_net_1289 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7159 ( .A ( HFSNET_1264 ) , 
    .Y ( copt_gre_net_1290 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT ZBUF_765_inst_5583 ( .A ( ctmn_3542 ) , .Y ( ZBUF_765_174 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7160 ( .A ( copt_gre_net_1292 ) , 
    .Y ( copt_gre_net_1291 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7161 ( .A ( ZBUF_40_207 ) , 
    .Y ( copt_gre_net_1292 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_2_inst_5587 ( .A ( MEM_CSB[29] ) , .Y ( ZBUF_2_175 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_1032_inst_5588 ( .A ( ctmn_3549 ) , .Y ( ZBUF_1032_175 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7162 ( .A ( copt_gre_net_1294 ) , 
    .Y ( copt_gre_net_1293 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_757_inst_5590 ( .A ( ctmn_3550 ) , .Y ( ZBUF_757_175 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7163 ( .A ( HFSNET_1136 ) , 
    .Y ( copt_gre_net_1294 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_502_inst_5592 ( .A ( HFSNET_799 ) , .Y ( ZBUF_502_175 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7164 ( .A ( copt_gre_net_1296 ) , 
    .Y ( copt_gre_net_1295 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_59_inst_5594 ( .A ( MEM_CSB[14] ) , .Y ( ZBUF_59_175 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_2_inst_5595 ( .A ( MEM_CSB[37] ) , .Y ( ZBUF_2_176 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7165 ( .A ( copt_gre_net_728 ) , 
    .Y ( copt_gre_net_1296 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7166 ( .A ( copt_gre_net_1298 ) , 
    .Y ( copt_gre_net_1297 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7167 ( .A ( copt_gre_net_1299 ) , 
    .Y ( copt_gre_net_1298 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_69_inst_5600 ( .A ( ZBUF_76_32 ) , .Y ( ZBUF_69_176 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7168 ( .A ( HFSNET_520 ) , 
    .Y ( copt_gre_net_1299 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7169 ( .A ( copt_gre_net_1301 ) , 
    .Y ( copt_gre_net_1300 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_18_inst_5603 ( .A ( HFSNET_1097 ) , .Y ( ZBUF_18_177 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7170 ( .A ( ZBUF_19_216 ) , 
    .Y ( copt_gre_net_1301 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT ZBUF_397_inst_5605 ( .A ( ZBUF_158_33 ) , .Y ( ZBUF_397_178 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_2_inst_5606 ( .A ( MEM_CSB[34] ) , .Y ( ZBUF_2_179 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7172 ( .A ( copt_gre_net_1304 ) , 
    .Y ( copt_gre_net_1303 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7173 ( .A ( ZBUF_28_216 ) , 
    .Y ( copt_gre_net_1304 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_2_inst_5611 ( .A ( MEM_CSB[46] ) , .Y ( ZBUF_2_181 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7174 ( .A ( copt_gre_net_1306 ) , 
    .Y ( copt_gre_net_1305 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7175 ( .A ( HFSNET_1257 ) , 
    .Y ( copt_gre_net_1306 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX8_HVT ZBUF_101_inst_5615 ( .A ( HFSNET_1031 ) , .Y ( ZBUF_101_181 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX8_HVT ZBUF_228_inst_5616 ( .A ( ZBUF_268_283 ) , .Y ( ZBUF_228_181 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX8_HVT ZBUF_63_inst_5617 ( .A ( copt_gre_net_1393 ) , 
    .Y ( ZBUF_63_181 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX8_HVT ZBUF_71_inst_5618 ( .A ( ZBUF_130_34 ) , .Y ( ZBUF_71_181 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7176 ( .A ( copt_gre_net_1308 ) , 
    .Y ( copt_gre_net_1307 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX8_HVT ZBUF_191_inst_5620 ( .A ( ZBUF_126_241 ) , .Y ( ZBUF_191_181 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT ZBUF_131_inst_5621 ( .A ( ropt_net_1508 ) , .Y ( ZBUF_131_181 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7177 ( .A ( ZBUF_2_218 ) , 
    .Y ( copt_gre_net_1308 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX8_HVT ZBUF_184_inst_5623 ( .A ( HFSNET_1302 ) , .Y ( ZBUF_184_181 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT copt_gre_mt_inst_7178 ( .A ( copt_gre_net_1310 ) , 
    .Y ( copt_gre_net_1309 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX8_HVT ZBUF_120_inst_5625 ( .A ( HFSNET_1041 ) , .Y ( ZBUF_120_181 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX8_HVT ZBUF_445_inst_5626 ( .A ( ZBUF_247_34 ) , .Y ( ZBUF_445_181 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT ZBUF_30_inst_5627 ( .A ( ZBUF_365_61 ) , .Y ( ZBUF_30_181 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT ZBUF_95_inst_5628 ( .A ( HFSNET_1315 ) , .Y ( ZBUF_95_181 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT copt_gre_mt_inst_7179 ( .A ( HFSNET_1135 ) , 
    .Y ( copt_gre_net_1310 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7180 ( .A ( copt_gre_net_1312 ) , 
    .Y ( copt_gre_net_1311 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX8_HVT ZBUF_30_inst_5631 ( .A ( ZBUF_18_238 ) , .Y ( ZBUF_30_182 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7181 ( .A ( copt_gre_net_1313 ) , 
    .Y ( copt_gre_net_1312 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7182 ( .A ( ZBUF_2_225 ) , 
    .Y ( copt_gre_net_1313 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX8_HVT ZBUF_116_inst_5634 ( .A ( HFSNET_1173 ) , .Y ( ZBUF_116_182 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7183 ( .A ( copt_gre_net_1315 ) , 
    .Y ( copt_gre_net_1314 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7184 ( .A ( copt_gre_net_1316 ) , 
    .Y ( copt_gre_net_1315 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7185 ( .A ( HFSNET_151 ) , 
    .Y ( copt_gre_net_1316 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7186 ( .A ( copt_gre_net_1318 ) , 
    .Y ( copt_gre_net_1317 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX8_HVT ZBUF_222_inst_5639 ( .A ( copt_gre_net_1377 ) , 
    .Y ( ZBUF_222_184 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX8_HVT ZBUF_66_inst_5640 ( .A ( HFSNET_875 ) , .Y ( ZBUF_66_184 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX8_HVT ZBUF_104_inst_5641 ( .A ( HFSNET_753 ) , .Y ( ODATA[2] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT ZBUF_35_inst_5642 ( .A ( HFSNET_1070 ) , .Y ( ZBUF_35_184 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX8_HVT ZBUF_106_inst_5643 ( .A ( HFSNET_754 ) , .Y ( ODATA[3] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7187 ( .A ( copt_gre_net_1319 ) , 
    .Y ( copt_gre_net_1318 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX8_HVT ZBUF_4_inst_5645 ( .A ( HFSNET_760 ) , .Y ( ODATA[7] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX8_HVT ZBUF_75_inst_5647 ( .A ( ZBUF_2_238 ) , .Y ( ZBUF_75_185 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX8_HVT ZBUF_75_inst_5648 ( .A ( copt_gre_net_1084 ) , 
    .Y ( ZBUF_75_186 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT ZBUF_75_inst_5649 ( .A ( copt_gre_net_1206 ) , 
    .Y ( ZBUF_75_187 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX8_HVT ZBUF_75_inst_5650 ( .A ( copt_gre_net_392 ) , .Y ( ZBUF_75_188 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT ZBUF_35_inst_5651 ( .A ( HFSNET_841 ) , .Y ( ZBUF_35_188 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7188 ( .A ( HFSNET_1134 ) , 
    .Y ( copt_gre_net_1319 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT ZBUF_75_inst_5653 ( .A ( ZBUF_182_237 ) , .Y ( ZBUF_75_189 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT ZBUF_75_inst_5654 ( .A ( ZBUF_310_5 ) , .Y ( ZBUF_75_190 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX8_HVT ZBUF_132_inst_5655 ( .A ( copt_gre_net_1399 ) , 
    .Y ( ZBUF_132_190 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX8_HVT ZBUF_75_inst_5656 ( .A ( ZBUF_301_7 ) , .Y ( ZBUF_75_191 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX8_HVT ZBUF_128_inst_5657 ( .A ( HFSNET_1168 ) , .Y ( ZBUF_128_191 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT ZBUF_129_inst_5658 ( .A ( copt_gre_net_1188 ) , 
    .Y ( ZBUF_129_191 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX8_HVT ZBUF_282_inst_5659 ( .A ( ZBUF_161_283 ) , .Y ( ZBUF_282_191 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX8_HVT ZBUF_129_inst_5660 ( .A ( copt_gre_net_1170 ) , 
    .Y ( ZBUF_129_192 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7189 ( .A ( copt_gre_net_1321 ) , 
    .Y ( copt_gre_net_1320 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7190 ( .A ( copt_gre_net_1322 ) , 
    .Y ( copt_gre_net_1321 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT ZBUF_35_inst_5664 ( .A ( HFSNET_829 ) , .Y ( ZBUF_35_192 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7191 ( .A ( ZBUF_23_224 ) , 
    .Y ( copt_gre_net_1322 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX8_HVT ZBUF_71_inst_5666 ( .A ( copt_gre_net_1393 ) , 
    .Y ( ZBUF_71_192 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT ZBUF_76_inst_5667 ( .A ( HFSNET_1395 ) , .Y ( ZBUF_76_192 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7192 ( .A ( copt_gre_net_1324 ) , 
    .Y ( copt_gre_net_1323 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7193 ( .A ( ZBUF_29_224 ) , 
    .Y ( copt_gre_net_1324 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7194 ( .A ( copt_gre_net_1326 ) , 
    .Y ( copt_gre_net_1325 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX8_HVT ZBUF_76_inst_5671 ( .A ( ZBUF_6_290 ) , .Y ( ZBUF_76_194 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7195 ( .A ( ZBUF_271_123 ) , 
    .Y ( copt_gre_net_1326 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7196 ( .A ( copt_gre_net_1328 ) , 
    .Y ( copt_gre_net_1327 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_4_inst_5674 ( .A ( copt_gre_net_467 ) , .Y ( ZBUF_4_195 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7197 ( .A ( ZBUF_134_231 ) , 
    .Y ( copt_gre_net_1328 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_38_inst_5676 ( .A ( copt_gre_net_477 ) , .Y ( ZBUF_38_195 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7198 ( .A ( copt_gre_net_1330 ) , 
    .Y ( copt_gre_net_1329 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_120_inst_5678 ( .A ( ZBUF_2_4 ) , .Y ( ZBUF_120_196 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7199 ( .A ( ZBUF_63_224 ) , 
    .Y ( copt_gre_net_1330 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_68_inst_5686 ( .A ( HFSNET_116 ) , .Y ( ZBUF_68_197 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7200 ( .A ( copt_gre_net_1332 ) , 
    .Y ( copt_gre_net_1331 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7201 ( .A ( ZBUF_2_231 ) , 
    .Y ( copt_gre_net_1332 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX8_HVT ZBUF_79_inst_5691 ( .A ( HFSNET_1143 ) , .Y ( ZBUF_79_198 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7202 ( .A ( copt_gre_net_1334 ) , 
    .Y ( copt_gre_net_1333 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT ZBUF_2_inst_5694 ( .A ( copt_gre_net_573 ) , .Y ( ZBUF_2_201 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX8_HVT ZBUF_63_inst_5696 ( .A ( HFSNET_1265 ) , .Y ( ZBUF_63_201 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT ZBUF_97_inst_5697 ( .A ( HFSNET_223 ) , .Y ( ZBUF_97_201 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_62_inst_5698 ( .A ( copt_gre_net_653 ) , .Y ( ZBUF_62_201 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT ZBUF_120_inst_5699 ( .A ( HFSNET_231 ) , .Y ( ZBUF_120_201 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_69_inst_5700 ( .A ( copt_gre_net_584 ) , .Y ( ZBUF_69_201 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT ZBUF_2_inst_5701 ( .A ( copt_gre_net_591 ) , .Y ( ZBUF_2_202 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT ZBUF_2_inst_5702 ( .A ( copt_gre_net_672 ) , .Y ( ZBUF_2_203 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7203 ( .A ( HFSNET_1269 ) , 
    .Y ( copt_gre_net_1334 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_34_inst_5706 ( .A ( copt_gre_net_578 ) , .Y ( ZBUF_34_204 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT ZBUF_24_inst_5708 ( .A ( copt_gre_net_581 ) , .Y ( ZBUF_24_204 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT ZBUF_74_inst_5709 ( .A ( copt_gre_net_668 ) , .Y ( ZBUF_74_204 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_120_inst_5712 ( .A ( HFSNET_232 ) , .Y ( ZBUF_120_205 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_2_inst_5713 ( .A ( HFSNET_536 ) , .Y ( ZBUF_2_206 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_2_inst_5714 ( .A ( HFSNET_528 ) , .Y ( ZBUF_2_207 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_40_inst_5715 ( .A ( HFSNET_158 ) , .Y ( ZBUF_40_207 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT copt_gre_mt_inst_7205 ( .A ( HFSNET_1132 ) , 
    .Y ( copt_gre_net_1336 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_2_inst_5717 ( .A ( HFSNET_161 ) , .Y ( ZBUF_2_209 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX8_HVT ZBUF_2_inst_5719 ( .A ( HFSNET_644 ) , .Y ( ZBUF_2_211 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT ZBUF_2_inst_5720 ( .A ( HFSNET_522 ) , .Y ( ZBUF_2_212 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7206 ( .A ( copt_gre_net_1338 ) , 
    .Y ( copt_gre_net_1337 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7207 ( .A ( copt_gre_net_1339 ) , 
    .Y ( copt_gre_net_1338 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT ZBUF_80_inst_5724 ( .A ( HFSNET_217 ) , .Y ( ZBUF_80_214 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_2_inst_5726 ( .A ( HFSNET_645 ) , .Y ( ZBUF_2_216 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_28_inst_5727 ( .A ( HFSNET_337 ) , .Y ( ZBUF_28_216 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_19_inst_5728 ( .A ( HFSNET_1272 ) , .Y ( ZBUF_19_216 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7208 ( .A ( HFSNET_1266 ) , 
    .Y ( copt_gre_net_1339 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT ZBUF_58_inst_5730 ( .A ( HFSNET_333 ) , .Y ( ZBUF_58_217 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_2_inst_5731 ( .A ( HFSNET_324 ) , .Y ( ZBUF_2_218 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7209 ( .A ( copt_gre_net_1341 ) , 
    .Y ( copt_gre_net_1340 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT ZBUF_66_inst_5734 ( .A ( HFSNET_515 ) , .Y ( ZBUF_66_220 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT ZBUF_2_inst_5735 ( .A ( HFSNET_513 ) , .Y ( ZBUF_2_221 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7210 ( .A ( copt_gre_net_1342 ) , 
    .Y ( copt_gre_net_1341 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_2_inst_5737 ( .A ( ctmn_3578_CDR1 ) , .Y ( ZBUF_2_223 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_114_inst_5738 ( .A ( HFSNET_152 ) , .Y ( ZBUF_114_223 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_23_inst_5742 ( .A ( copt_gre_net_900 ) , .Y ( ZBUF_23_224 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7211 ( .A ( HFSNET_447 ) , 
    .Y ( copt_gre_net_1342 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_29_inst_5744 ( .A ( copt_gre_net_902 ) , .Y ( ZBUF_29_224 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT ZBUF_61_inst_5745 ( .A ( copt_gre_net_911 ) , .Y ( ZBUF_61_224 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7212 ( .A ( copt_gre_net_1344 ) , 
    .Y ( copt_gre_net_1343 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7213 ( .A ( ZBUF_24_229 ) , 
    .Y ( copt_gre_net_1344 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_63_inst_5748 ( .A ( copt_gre_net_948 ) , .Y ( ZBUF_63_224 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_2_inst_5749 ( .A ( copt_gre_net_897 ) , .Y ( ZBUF_2_225 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7214 ( .A ( copt_gre_net_1346 ) , 
    .Y ( copt_gre_net_1345 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT ZBUF_60_inst_5751 ( .A ( copt_gre_net_950 ) , .Y ( ZBUF_60_226 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7215 ( .A ( ZBUF_30_229 ) , 
    .Y ( copt_gre_net_1346 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT ZBUF_2_inst_5753 ( .A ( HFSNET_329 ) , .Y ( ZBUF_2_228 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7216 ( .A ( copt_gre_net_1348 ) , 
    .Y ( copt_gre_net_1347 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX8_HVT ZBUF_84_inst_5756 ( .A ( HFSNET_1268 ) , .Y ( ZBUF_84_229 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7217 ( .A ( HFSNET_449 ) , 
    .Y ( copt_gre_net_1348 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_30_inst_5758 ( .A ( HFSNET_305 ) , .Y ( ZBUF_30_229 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_24_inst_5759 ( .A ( copt_gre_net_991 ) , .Y ( ZBUF_24_229 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7218 ( .A ( copt_gre_net_1350 ) , 
    .Y ( copt_gre_net_1349 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_2_inst_5762 ( .A ( HFSNET_454 ) , .Y ( ZBUF_2_231 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_134_inst_5763 ( .A ( HFSNET_1141 ) , .Y ( ZBUF_134_231 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7219 ( .A ( ZBUF_130_234 ) , 
    .Y ( copt_gre_net_1350 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT ZBUF_63_inst_5766 ( .A ( copt_gre_net_1015 ) , 
    .Y ( ZBUF_63_233 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7220 ( .A ( copt_gre_net_1352 ) , 
    .Y ( copt_gre_net_1351 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7221 ( .A ( HFSNET_451 ) , 
    .Y ( copt_gre_net_1352 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7222 ( .A ( copt_gre_net_1354 ) , 
    .Y ( copt_gre_net_1353 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_130_inst_5770 ( .A ( HFSNET_457 ) , .Y ( ZBUF_130_234 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX8_HVT ZBUF_87_inst_5772 ( .A ( HFSNET_751 ) , .Y ( ODATA[0] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT ZBUF_25_inst_5773 ( .A ( HFSNET_1047 ) , .Y ( ZBUF_25_234 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX8_HVT ZBUF_220_inst_5774 ( .A ( ZBUF_570_60 ) , .Y ( ZBUF_220_234 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_2_inst_5775 ( .A ( ZBUF_148_235 ) , .Y ( ZBUF_2_235 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT ZBUF_148_inst_5776 ( .A ( ZBUF_193_156 ) , .Y ( ZBUF_148_235 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_49_inst_5777 ( .A ( HFSNET_1307 ) , .Y ( ZBUF_49_235 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7223 ( .A ( copt_gre_net_1356 ) , 
    .Y ( copt_gre_net_1354 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT ZBUF_229_inst_5780 ( .A ( copt_gre_net_1362 ) , 
    .Y ( ZBUF_229_235 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT ZBUF_94_inst_5781 ( .A ( copt_gre_net_1361 ) , 
    .Y ( ZBUF_94_235 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT ZBUF_33_inst_5782 ( .A ( HFSNET_1275 ) , .Y ( ZBUF_33_235 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7224 ( .A ( copt_gre_net_1356 ) , 
    .Y ( copt_gre_net_1355 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7225 ( .A ( ZBUF_372_167 ) , 
    .Y ( copt_gre_net_1356 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX8_HVT ZBUF_329_inst_5785 ( .A ( \USRAM/guide_buf_16 ) , 
    .Y ( ZBUF_329_235 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX8_HVT ZBUF_91_inst_5787 ( .A ( HFSNET_919 ) , .Y ( ZBUF_91_235 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7227 ( .A ( copt_gre_net_1359 ) , 
    .Y ( copt_gre_net_1358 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7228 ( .A ( copt_gre_net_1360 ) , 
    .Y ( copt_gre_net_1359 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7229 ( .A ( HFSNET_1174 ) , 
    .Y ( copt_gre_net_1360 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT ZBUF_59_inst_5792 ( .A ( copt_gre_net_1394 ) , 
    .Y ( ZBUF_59_236 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_136_inst_5793 ( .A ( HFSNET_849 ) , .Y ( ZBUF_136_236 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT ZBUF_34_inst_5794 ( .A ( ZBUF_76_32 ) , .Y ( ZBUF_34_236 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX8_HVT ZBUF_272_inst_5795 ( .A ( HFSNET_866 ) , .Y ( ZBUF_272_236 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7230 ( .A ( copt_gre_net_1363 ) , 
    .Y ( copt_gre_net_1361 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX8_HVT ZBUF_136_inst_5797 ( .A ( HFSNET_1065 ) , .Y ( ZBUF_136_237 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX8_HVT ZBUF_182_inst_5798 ( .A ( HFSNET_919 ) , .Y ( ZBUF_182_237 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT ZBUF_2_inst_5799 ( .A ( ZBUF_736_237 ) , .Y ( ZBUF_2_237 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7231 ( .A ( copt_gre_net_1363 ) , 
    .Y ( copt_gre_net_1362 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7232 ( .A ( copt_gre_net_1364 ) , 
    .Y ( copt_gre_net_1363 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX8_HVT ZBUF_736_inst_5802 ( .A ( HFSNET_1007 ) , .Y ( ZBUF_736_237 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT ZBUF_22_inst_5804 ( .A ( copt_gre_net_1437 ) , 
    .Y ( ZBUF_22_237 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7233 ( .A ( copt_gre_net_1365 ) , 
    .Y ( copt_gre_net_1364 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX8_HVT ZBUF_302_inst_5806 ( .A ( copt_gre_net_1093 ) , 
    .Y ( ZBUF_302_237 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_2_inst_5807 ( .A ( HFSNET_1346 ) , .Y ( ZBUF_2_238 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX8_HVT ZBUF_100_inst_5808 ( .A ( HFSNET_853 ) , .Y ( ZBUF_100_238 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX8_HVT ZBUF_120_inst_5809 ( .A ( copt_gre_net_1074 ) , 
    .Y ( ZBUF_120_238 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7234 ( .A ( copt_gre_net_1061 ) , 
    .Y ( copt_gre_net_1365 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT ZBUF_97_inst_5811 ( .A ( HFSNET_1102 ) , .Y ( ZBUF_97_238 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7235 ( .A ( copt_gre_net_1367 ) , 
    .Y ( copt_gre_net_1366 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7236 ( .A ( ZBUF_226_159 ) , 
    .Y ( copt_gre_net_1367 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT ZBUF_18_inst_5817 ( .A ( ZBUF_131_238 ) , .Y ( ZBUF_18_238 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX8_HVT ZBUF_131_inst_5818 ( .A ( ZBUF_2_157 ) , .Y ( ZBUF_131_238 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_75_inst_5819 ( .A ( ZBUF_193_156 ) , .Y ( ZBUF_75_239 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7238 ( .A ( copt_gre_net_1370 ) , 
    .Y ( copt_gre_net_1369 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7239 ( .A ( HFSNET_1299 ) , 
    .Y ( copt_gre_net_1370 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7240 ( .A ( copt_gre_net_1372 ) , 
    .Y ( copt_gre_net_1371 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX8_HVT ZBUF_131_inst_5823 ( .A ( copt_gre_net_1390 ) , 
    .Y ( ZBUF_131_239 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX8_HVT ZBUF_199_inst_5824 ( .A ( HFSNET_875 ) , .Y ( ZBUF_199_239 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT ZBUF_69_inst_5825 ( .A ( HFSNET_834 ) , .Y ( ZBUF_69_239 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX8_HVT ZBUF_137_inst_5826 ( .A ( HFSNET_1306 ) , .Y ( ZBUF_137_239 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7241 ( .A ( HFSNET_1335 ) , 
    .Y ( copt_gre_net_1372 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7242 ( .A ( copt_gre_net_1374 ) , 
    .Y ( copt_gre_net_1373 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7243 ( .A ( copt_gre_net_1376 ) , 
    .Y ( copt_gre_net_1374 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT copt_gre_mt_inst_7245 ( .A ( HFSNET_883 ) , 
    .Y ( copt_gre_net_1376 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT ZBUF_71_inst_5833 ( .A ( copt_gre_net_1425 ) , 
    .Y ( ZBUF_71_240 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX8_HVT ZBUF_229_inst_5834 ( .A ( HFSNET_870 ) , .Y ( ZBUF_229_240 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7246 ( .A ( copt_gre_net_1378 ) , 
    .Y ( copt_gre_net_1377 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7247 ( .A ( copt_gre_net_1379 ) , 
    .Y ( copt_gre_net_1378 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7248 ( .A ( HFSNET_939 ) , 
    .Y ( copt_gre_net_1379 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7249 ( .A ( copt_gre_net_1381 ) , 
    .Y ( copt_gre_net_1380 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7250 ( .A ( copt_gre_net_1383 ) , 
    .Y ( copt_gre_net_1381 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT ZBUF_24_inst_5841 ( .A ( ZBUF_126_32 ) , .Y ( ZBUF_24_241 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT copt_gre_mt_inst_7252 ( .A ( ZBUF_179_160 ) , 
    .Y ( copt_gre_net_1383 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_178_inst_5844 ( .A ( copt_gre_net_1060 ) , 
    .Y ( ZBUF_178_241 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7253 ( .A ( copt_gre_net_1385 ) , 
    .Y ( copt_gre_net_1384 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT ZBUF_139_inst_5846 ( .A ( HFSNET_979 ) , .Y ( ZBUF_139_241 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7254 ( .A ( HFSNET_1394 ) , 
    .Y ( copt_gre_net_1385 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7255 ( .A ( copt_gre_net_1387 ) , 
    .Y ( copt_gre_net_1386 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7256 ( .A ( HFSNET_842 ) , 
    .Y ( copt_gre_net_1387 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_122_inst_5850 ( .A ( HFSNET_939 ) , .Y ( ZBUF_122_241 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT copt_gre_mt_inst_7257 ( .A ( copt_gre_net_1389 ) , 
    .Y ( copt_gre_net_1388 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_73_inst_5853 ( .A ( HFSNET_1016 ) , .Y ( ZBUF_73_241 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX8_HVT ZBUF_45_inst_5854 ( .A ( HFSNET_1016 ) , .Y ( ZBUF_45_241 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX8_HVT ZBUF_126_inst_5855 ( .A ( ZBUF_2_159 ) , .Y ( ZBUF_126_241 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_113_inst_5856 ( .A ( HFSNET_930 ) , .Y ( ZBUF_113_241 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX8_HVT ZBUF_58_inst_5857 ( .A ( HFSNET_1007 ) , .Y ( ZBUF_58_241 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_105_inst_5860 ( .A ( copt_gre_net_1107 ) , 
    .Y ( ZBUF_105_241 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT ZBUF_2_inst_5861 ( .A ( HFSNET_73 ) , .Y ( ZBUF_2_242 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_106_inst_5862 ( .A ( HFSNET_11 ) , .Y ( ZBUF_106_242 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7258 ( .A ( ZBUF_29_159 ) , 
    .Y ( copt_gre_net_1389 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7259 ( .A ( copt_gre_net_1391 ) , 
    .Y ( copt_gre_net_1390 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_26_inst_5866 ( .A ( copt_gre_net_1373 ) , 
    .Y ( ZBUF_26_243 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_2_inst_5867 ( .A ( copt_gre_net_1101 ) , .Y ( ZBUF_2_244 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT copt_gre_mt_inst_7260 ( .A ( \USRAM/guide_buf_21 ) , 
    .Y ( copt_gre_net_1391 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT ZBUF_68_inst_5869 ( .A ( copt_gre_net_1095 ) , 
    .Y ( ZBUF_68_245 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT copt_gre_mt_inst_7261 ( .A ( copt_gre_net_1048 ) , 
    .Y ( copt_gre_net_1392 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX8_HVT ZBUF_167_inst_5872 ( .A ( HFSNET_1329 ) , .Y ( ZBUF_167_245 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT ZBUF_33_inst_5873 ( .A ( ZBUF_586_259 ) , .Y ( ZBUF_33_245 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7262 ( .A ( copt_gre_net_1394 ) , 
    .Y ( copt_gre_net_1393 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX8_HVT ZBUF_196_inst_5875 ( .A ( HFSNET_1181 ) , .Y ( ZBUF_196_245 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX8_HVT ZBUF_125_inst_5876 ( .A ( HFSNET_858 ) , .Y ( ZBUF_125_245 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7263 ( .A ( copt_gre_net_1395 ) , 
    .Y ( copt_gre_net_1394 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7264 ( .A ( ZBUF_136_236 ) , 
    .Y ( copt_gre_net_1395 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX8_HVT ZBUF_103_inst_5879 ( .A ( ZBUF_61_169 ) , .Y ( ZBUF_103_245 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX8_HVT ZBUF_120_inst_5880 ( .A ( ZBUF_76_54 ) , .Y ( ZBUF_120_245 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX8_HVT ZBUF_34_inst_5881 ( .A ( HFSNET_1351 ) , .Y ( ZBUF_34_245 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7265 ( .A ( copt_gre_net_1397 ) , 
    .Y ( copt_gre_net_1396 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7266 ( .A ( copt_gre_net_1398 ) , 
    .Y ( copt_gre_net_1397 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7267 ( .A ( HFSNET_1097 ) , 
    .Y ( copt_gre_net_1398 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7268 ( .A ( copt_gre_net_1400 ) , 
    .Y ( copt_gre_net_1399 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7269 ( .A ( copt_gre_net_1401 ) , 
    .Y ( copt_gre_net_1400 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX8_HVT ZBUF_75_inst_5887 ( .A ( HFSNET_1319 ) , .Y ( ZBUF_75_246 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX8_HVT ZBUF_75_inst_5888 ( .A ( copt_gre_net_388 ) , .Y ( ZBUF_75_247 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT ZBUF_16_inst_5889 ( .A ( ZBUF_223_30 ) , .Y ( ZBUF_16_247 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX8_HVT ZBUF_180_inst_5890 ( .A ( copt_gre_net_1373 ) , 
    .Y ( ZBUF_180_247 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX8_HVT ZBUF_183_inst_5891 ( .A ( ZBUF_72_160 ) , .Y ( ZBUF_183_247 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX8_HVT ZBUF_107_inst_5892 ( .A ( HFSNET_756 ) , .Y ( ODATA[4] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX8_HVT ZBUF_75_inst_5893 ( .A ( HFSNET_1300 ) , .Y ( ZBUF_75_248 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX8_HVT ZBUF_107_inst_5894 ( .A ( HFSNET_758 ) , .Y ( ODATA[5] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX8_HVT ZBUF_73_inst_5895 ( .A ( copt_gre_net_376 ) , .Y ( ZBUF_73_248 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX8_HVT ZBUF_80_inst_5896 ( .A ( copt_gre_net_1420 ) , 
    .Y ( ZBUF_80_248 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX8_HVT ZBUF_205_inst_5897 ( .A ( copt_gre_net_1159 ) , 
    .Y ( ZBUF_205_248 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX8_HVT ZBUF_124_inst_5898 ( .A ( ZBUF_208_167 ) , .Y ( ZBUF_124_248 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX8_HVT ZBUF_124_inst_5899 ( .A ( copt_gre_net_1100 ) , 
    .Y ( ZBUF_124_249 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7270 ( .A ( ZBUF_58_284 ) , 
    .Y ( copt_gre_net_1401 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT ZBUF_13_inst_5901 ( .A ( HFSNET_1331 ) , .Y ( ZBUF_13_249 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7271 ( .A ( copt_gre_net_1403 ) , 
    .Y ( copt_gre_net_1402 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7272 ( .A ( copt_gre_net_1404 ) , 
    .Y ( copt_gre_net_1403 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX8_HVT ZBUF_243_inst_5904 ( .A ( ZBUF_200_160 ) , .Y ( ZBUF_243_250 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX8_HVT ZBUF_387_inst_5905 ( .A ( copt_gre_net_1088 ) , 
    .Y ( ZBUF_387_250 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7273 ( .A ( HFSNET_872 ) , 
    .Y ( copt_gre_net_1404 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX8_HVT ZBUF_75_inst_5907 ( .A ( copt_gre_net_1154 ) , 
    .Y ( ZBUF_75_250 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT ZBUF_4_inst_5908 ( .A ( HFSNET_963 ) , .Y ( ZBUF_4_251 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7274 ( .A ( copt_gre_net_1406 ) , 
    .Y ( copt_gre_net_1405 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX8_HVT ZBUF_75_inst_5910 ( .A ( ZBUF_188_290 ) , .Y ( ZBUF_75_251 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT ZBUF_255_inst_5911 ( .A ( ZBUF_274_166 ) , .Y ( ZBUF_255_251 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX8_HVT ZBUF_76_inst_5912 ( .A ( ZBUF_137_239 ) , .Y ( ZBUF_76_251 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX8_HVT ZBUF_75_inst_5913 ( .A ( copt_gre_net_1455 ) , 
    .Y ( ZBUF_75_252 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT ZBUF_75_inst_5914 ( .A ( copt_gre_net_1454 ) , 
    .Y ( ZBUF_75_253 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7275 ( .A ( ZBUF_105_241 ) , 
    .Y ( copt_gre_net_1406 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX8_HVT ZBUF_121_inst_5916 ( .A ( copt_gre_net_1410 ) , 
    .Y ( ZBUF_121_253 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT ZBUF_49_inst_5917 ( .A ( copt_gre_net_1030 ) , 
    .Y ( ZBUF_49_253 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7277 ( .A ( HFSNET_923 ) , 
    .Y ( copt_gre_net_1408 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_49_inst_5920 ( .A ( HFSNET_881 ) , .Y ( ZBUF_49_254 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT copt_gre_mt_inst_7278 ( .A ( HFSNET_923 ) , 
    .Y ( copt_gre_net_1409 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7279 ( .A ( copt_gre_net_1411 ) , 
    .Y ( copt_gre_net_1410 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7280 ( .A ( ZBUF_19_259 ) , 
    .Y ( copt_gre_net_1411 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7281 ( .A ( copt_gre_net_1413 ) , 
    .Y ( copt_gre_net_1412 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7282 ( .A ( ZBUF_47_258 ) , 
    .Y ( copt_gre_net_1413 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_122_inst_5926 ( .A ( ctmn_3564 ) , .Y ( ZBUF_122_255 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT copt_gre_mt_inst_7283 ( .A ( copt_gre_net_1415 ) , 
    .Y ( copt_gre_net_1414 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_4_inst_5928 ( .A ( copt_gre_net_526 ) , .Y ( ZBUF_4_256 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7284 ( .A ( HFSNET_1188 ) , 
    .Y ( copt_gre_net_1415 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT ZBUF_55_inst_5930 ( .A ( HFSNET_226 ) , .Y ( ZBUF_55_256 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7285 ( .A ( copt_gre_net_1417 ) , 
    .Y ( copt_gre_net_1416 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7286 ( .A ( ZBUF_106_242 ) , 
    .Y ( copt_gre_net_1417 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7287 ( .A ( copt_gre_net_1419 ) , 
    .Y ( copt_gre_net_1418 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_31_inst_5934 ( .A ( copt_gre_net_1305 ) , 
    .Y ( ZBUF_31_258 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7288 ( .A ( HFSNET_46 ) , 
    .Y ( copt_gre_net_1419 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_32_inst_5936 ( .A ( HFSNET_919 ) , .Y ( ZBUF_32_258 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_78_inst_5937 ( .A ( HFSNET_1186 ) , .Y ( ZBUF_78_258 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX8_HVT ZBUF_205_inst_5938 ( .A ( ZBUF_570_60 ) , .Y ( ZBUF_205_258 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT copt_gre_mt_inst_7289 ( .A ( copt_gre_net_1421 ) , 
    .Y ( copt_gre_net_1420 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7290 ( .A ( HFSNET_1298 ) , 
    .Y ( copt_gre_net_1421 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7291 ( .A ( copt_gre_net_1423 ) , 
    .Y ( copt_gre_net_1422 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_47_inst_5942 ( .A ( HFSNET_1047 ) , .Y ( ZBUF_47_258 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT ZBUF_2_inst_5944 ( .A ( HFSNET_1093 ) , .Y ( ZBUF_2_258 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7292 ( .A ( ZBUF_2_244 ) , 
    .Y ( copt_gre_net_1423 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7293 ( .A ( copt_gre_net_1425 ) , 
    .Y ( copt_gre_net_1424 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7294 ( .A ( copt_gre_net_1426 ) , 
    .Y ( copt_gre_net_1425 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_19_inst_5948 ( .A ( ZBUF_131_0 ) , .Y ( ZBUF_19_259 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX8_HVT ZBUF_161_inst_5949 ( .A ( copt_gre_net_1143 ) , 
    .Y ( ZBUF_161_259 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT ZBUF_35_inst_5950 ( .A ( copt_gre_net_1144 ) , 
    .Y ( ZBUF_35_259 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7295 ( .A ( ZBUF_264_1 ) , 
    .Y ( copt_gre_net_1426 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7296 ( .A ( ZBUF_264_1 ) , 
    .Y ( copt_gre_net_1427 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX8_HVT ZBUF_586_inst_5954 ( .A ( HFSNET_1164 ) , .Y ( ZBUF_586_259 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT ZBUF_25_inst_5955 ( .A ( copt_gre_net_1392 ) , 
    .Y ( ZBUF_25_259 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7297 ( .A ( ZBUF_243_4 ) , 
    .Y ( copt_gre_net_1428 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX8_HVT ZBUF_103_inst_5959 ( .A ( copt_gre_net_1409 ) , 
    .Y ( ZBUF_103_260 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX8_HVT ZBUF_75_inst_5960 ( .A ( ZBUF_4_158 ) , .Y ( ZBUF_75_261 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7299 ( .A ( ctmn_3608 ) , 
    .Y ( copt_gre_net_1430 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX8_HVT ZBUF_218_inst_5962 ( .A ( HFSNET_1329 ) , .Y ( ZBUF_218_261 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7300 ( .A ( copt_gre_net_1432 ) , 
    .Y ( copt_gre_net_1431 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT ZBUF_218_inst_5964 ( .A ( HFSNET_1330 ) , .Y ( ZBUF_218_262 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX8_HVT ZBUF_66_inst_5965 ( .A ( copt_gre_net_1408 ) , 
    .Y ( ZBUF_66_262 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX8_HVT ZBUF_125_inst_5966 ( .A ( HFSNET_1394 ) , .Y ( ZBUF_125_262 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7301 ( .A ( ZBUF_31_258 ) , 
    .Y ( copt_gre_net_1432 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_33_inst_5968 ( .A ( ZBUF_243_4 ) , .Y ( ZBUF_33_262 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7302 ( .A ( copt_gre_net_1434 ) , 
    .Y ( copt_gre_net_1433 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX8_HVT ZBUF_157_inst_5970 ( .A ( copt_gre_net_1120 ) , 
    .Y ( ZBUF_157_262 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX8_HVT ZBUF_148_inst_5971 ( .A ( HFSNET_979 ) , .Y ( ZBUF_148_262 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX8_HVT ZBUF_122_inst_5972 ( .A ( copt_gre_net_368 ) , 
    .Y ( ZBUF_122_262 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX8_HVT ZBUF_122_inst_5973 ( .A ( ZBUF_91_235 ) , .Y ( ZBUF_122_263 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX8_HVT ZBUF_126_inst_5974 ( .A ( copt_gre_net_1366 ) , 
    .Y ( ZBUF_126_263 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX8_HVT ZBUF_75_inst_5975 ( .A ( copt_gre_net_1053 ) , 
    .Y ( ZBUF_75_263 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX8_HVT ZBUF_75_inst_5976 ( .A ( copt_gre_net_1045 ) , 
    .Y ( ZBUF_75_264 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7303 ( .A ( copt_gre_net_1435 ) , 
    .Y ( copt_gre_net_1434 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7304 ( .A ( copt_gre_net_1436 ) , 
    .Y ( copt_gre_net_1435 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX8_HVT ZBUF_69_inst_5979 ( .A ( ZBUF_193_156 ) , .Y ( ZBUF_69_266 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX8_HVT ZBUF_77_inst_5980 ( .A ( copt_gre_net_1353 ) , 
    .Y ( ZBUF_77_266 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX8_HVT ZBUF_73_inst_5981 ( .A ( copt_gre_net_1450 ) , 
    .Y ( ZBUF_73_266 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7305 ( .A ( copt_gre_net_1437 ) , 
    .Y ( copt_gre_net_1436 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT ZBUF_76_inst_5983 ( .A ( ZBUF_100_238 ) , .Y ( ZBUF_76_267 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX8_HVT ZBUF_93_inst_5984 ( .A ( HFSNET_837 ) , .Y ( ZBUF_93_267 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT ZBUF_76_inst_5985 ( .A ( ZBUF_274_166 ) , .Y ( ZBUF_76_268 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT copt_gre_mt_inst_7306 ( .A ( HFSNET_1069 ) , 
    .Y ( copt_gre_net_1437 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX8_HVT ZBUF_129_inst_5987 ( .A ( copt_gre_net_1180 ) , 
    .Y ( ZBUF_129_269 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7307 ( .A ( copt_gre_net_1439 ) , 
    .Y ( copt_gre_net_1438 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT ZBUF_35_inst_5989 ( .A ( ZBUF_52_54 ) , .Y ( ZBUF_35_269 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX8_HVT ZBUF_122_inst_5990 ( .A ( copt_gre_net_1051 ) , 
    .Y ( ZBUF_122_270 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT ZBUF_216_inst_5991 ( .A ( ZBUF_182_237 ) , .Y ( ZBUF_216_270 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_4_inst_5992 ( .A ( HFSNET_1315 ) , .Y ( ZBUF_4_270 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7308 ( .A ( copt_gre_net_1440 ) , 
    .Y ( copt_gre_net_1439 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7309 ( .A ( copt_gre_net_1441 ) , 
    .Y ( copt_gre_net_1440 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT ZBUF_76_inst_5995 ( .A ( ZBUF_161_283 ) , .Y ( ZBUF_76_271 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7310 ( .A ( copt_gre_net_1443 ) , 
    .Y ( copt_gre_net_1441 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7311 ( .A ( copt_gre_net_1443 ) , 
    .Y ( copt_gre_net_1442 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_25_inst_5998 ( .A ( ctmn_3623 ) , .Y ( ZBUF_25_271 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7312 ( .A ( HFSNET_883 ) , 
    .Y ( copt_gre_net_1443 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7313 ( .A ( copt_gre_net_1445 ) , 
    .Y ( copt_gre_net_1444 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7314 ( .A ( copt_gre_net_1447 ) , 
    .Y ( copt_gre_net_1445 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX8_HVT ZBUF_118_inst_6003 ( .A ( HFSNET_941 ) , .Y ( ZBUF_118_271 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX8_HVT ZBUF_76_inst_6004 ( .A ( ZBUF_25_259 ) , .Y ( ZBUF_76_272 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT ZBUF_118_inst_6005 ( .A ( copt_gre_net_1448 ) , 
    .Y ( ZBUF_118_272 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT ZBUF_76_inst_6006 ( .A ( HFSNET_1202 ) , .Y ( ZBUF_76_273 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT copt_gre_mt_inst_7316 ( .A ( ZBUF_131_0 ) , 
    .Y ( copt_gre_net_1447 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7317 ( .A ( copt_gre_net_1449 ) , 
    .Y ( copt_gre_net_1448 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7318 ( .A ( copt_gre_net_1383 ) , 
    .Y ( copt_gre_net_1449 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7319 ( .A ( copt_gre_net_1383 ) , 
    .Y ( copt_gre_net_1450 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7320 ( .A ( copt_gre_net_1452 ) , 
    .Y ( copt_gre_net_1451 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_28_inst_6015 ( .A ( ctmn_3640 ) , .Y ( ZBUF_28_274 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7321 ( .A ( ZBUF_78_258 ) , 
    .Y ( copt_gre_net_1452 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT copt_gre_mt_inst_7323 ( .A ( HFSNET_1125 ) , 
    .Y ( copt_gre_net_1454 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7324 ( .A ( copt_gre_net_1456 ) , 
    .Y ( copt_gre_net_1455 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7325 ( .A ( HFSNET_849 ) , 
    .Y ( copt_gre_net_1456 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7326 ( .A ( ctmn_3589 ) , 
    .Y ( copt_gre_net_1457 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7327 ( .A ( copt_gre_net_1459 ) , 
    .Y ( copt_gre_net_1458 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7328 ( .A ( ZBUF_69_176 ) , 
    .Y ( copt_gre_net_1459 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7329 ( .A ( copt_gre_net_1461 ) , 
    .Y ( copt_gre_net_1460 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7330 ( .A ( ZBUF_178_241 ) , 
    .Y ( copt_gre_net_1461 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7332 ( .A ( ctmn_3583 ) , 
    .Y ( copt_gre_net_1463 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_2_inst_6030 ( .A ( HFSNET_577 ) , .Y ( ZBUF_2_275 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_105_inst_6031 ( .A ( \USRAM/guide_buf_617 ) , 
    .Y ( ZBUF_105_275 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7333 ( .A ( ctmn_3576 ) , 
    .Y ( copt_gre_net_1464 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX8_HVT ZBUF_737_inst_6033 ( .A ( \USRAM/guide_buf_236 ) , 
    .Y ( ZBUF_737_275 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_1508_inst_6034 ( .A ( \USRAM/guide_buf_239 ) , 
    .Y ( ZBUF_1508_275 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_647_inst_6035 ( .A ( \USRAM/guide_buf_405 ) , 
    .Y ( ZBUF_647_275 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_737_inst_6036 ( .A ( \USRAM/guide_buf_404 ) , 
    .Y ( ZBUF_737_276 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_632_inst_6037 ( .A ( \USRAM/guide_buf_408 ) , 
    .Y ( ZBUF_632_276 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_637_inst_6038 ( .A ( \USRAM/guide_buf_272 ) , 
    .Y ( ZBUF_637_276 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_7334 ( .A ( ctmn_3586 ) , 
    .Y ( copt_gre_net_1465 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX8_HVT ZBUF_2232_inst_6040 ( .A ( \USRAM/guide_buf_232 ) , 
    .Y ( ZBUF_2232_276 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_747_inst_6041 ( .A ( \USRAM/guide_buf_234 ) , 
    .Y ( ZBUF_747_276 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_742_inst_6042 ( .A ( \USRAM/guide_buf_235 ) , 
    .Y ( ZBUF_742_276 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ropt_mt_inst_7335 ( .A ( ctmn_3630 ) , .Y ( ropt_net_1466 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX8_HVT ZBUF_637_inst_6045 ( .A ( \USRAM/guide_buf_274 ) , 
    .Y ( ZBUF_637_277 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_607_inst_6046 ( .A ( \USRAM/guide_buf_367 ) , 
    .Y ( ZBUF_607_277 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ropt_mt_inst_7336 ( .A ( ropt_net_1468 ) , .Y ( ropt_net_1467 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_2186_inst_6048 ( .A ( \USRAM/guide_buf_238 ) , 
    .Y ( ZBUF_2186_277 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ropt_mt_inst_7337 ( .A ( MEM_OEB[12] ) , .Y ( ropt_net_1468 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_617_inst_6050 ( .A ( \USRAM/guide_buf_139 ) , 
    .Y ( ZBUF_617_278 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT ZBUF_26_inst_6051 ( .A ( HFSNET_365 ) , .Y ( ZBUF_26_278 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_742_inst_6052 ( .A ( \USRAM/guide_buf_522 ) , 
    .Y ( ZBUF_742_278 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_2_inst_6053 ( .A ( \USRAM/guide_buf_529 ) , 
    .Y ( ZBUF_2_279 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_612_inst_6054 ( .A ( \USRAM/guide_buf_132 ) , 
    .Y ( ZBUF_612_279 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_1382_inst_6055 ( .A ( \USRAM/guide_buf_183 ) , 
    .Y ( ZBUF_1382_279 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX8_HVT ZBUF_485_inst_6056 ( .A ( HFSNET_1262 ) , .Y ( ZBUF_485_279 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_2_inst_6057 ( .A ( HFSNET_1263 ) , .Y ( ZBUF_2_280 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_2_inst_6058 ( .A ( HFSNET_571 ) , .Y ( ZBUF_2_281 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_607_inst_6059 ( .A ( \USRAM/guide_buf_313 ) , 
    .Y ( ZBUF_607_281 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_662_inst_6060 ( .A ( \USRAM/guide_buf_524 ) , 
    .Y ( ZBUF_662_281 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_737_inst_6061 ( .A ( \USRAM/guide_buf_528 ) , 
    .Y ( ZBUF_737_281 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_657_inst_6062 ( .A ( \USRAM/guide_buf_525 ) , 
    .Y ( ZBUF_657_281 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_468_inst_6063 ( .A ( \USRAM/guide_buf_135 ) , 
    .Y ( ZBUF_468_281 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX8_HVT ZBUF_1388_inst_6064 ( .A ( \USRAM/guide_buf_185 ) , 
    .Y ( ZBUF_1388_281 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ropt_mt_inst_7338 ( .A ( ropt_net_1470 ) , .Y ( ropt_net_1469 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ropt_mt_inst_7339 ( .A ( \USRAM/guide_buf_407 ) , 
    .Y ( ropt_net_1470 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ropt_mt_inst_7340 ( .A ( ropt_net_1472 ) , .Y ( ropt_net_1471 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ropt_mt_inst_7341 ( .A ( HFSNET_130 ) , .Y ( ropt_net_1472 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX8_HVT ZBUF_34_inst_6070 ( .A ( ZBUF_152_52 ) , .Y ( ZBUF_34_283 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ropt_mt_inst_7342 ( .A ( ropt_net_1474 ) , .Y ( ropt_net_1473 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ropt_mt_inst_7343 ( .A ( ZBUF_632_276 ) , .Y ( ropt_net_1474 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX8_HVT ZBUF_161_inst_6073 ( .A ( copt_gre_net_1388 ) , 
    .Y ( ZBUF_161_283 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX8_HVT ZBUF_268_inst_6074 ( .A ( copt_gre_net_360 ) , 
    .Y ( ZBUF_268_283 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_2_inst_6075 ( .A ( ZBUF_2_23 ) , .Y ( ZBUF_2_284 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_687_inst_6076 ( .A ( MEM_CSB[11] ) , .Y ( ZBUF_687_284 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_712_inst_6077 ( .A ( MEM_CSB[57] ) , .Y ( ZBUF_712_284 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_677_inst_6078 ( .A ( MEM_CSB[38] ) , .Y ( ZBUF_677_284 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_58_inst_6079 ( .A ( ZBUF_47_51 ) , .Y ( ZBUF_58_284 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ZBUF_834_inst_6080 ( .A ( MEM_CSB[41] ) , .Y ( ZBUF_834_284 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ropt_mt_inst_7344 ( .A ( ropt_net_1476 ) , .Y ( ropt_net_1475 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ropt_mt_inst_7345 ( .A ( \USRAM/guide_buf_182 ) , 
    .Y ( ropt_net_1476 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ropt_mt_inst_7346 ( .A ( copt_gre_net_648 ) , 
    .Y ( ropt_net_1477 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX8_HVT ZBUF_244_inst_6085 ( .A ( HFSNET_1330 ) , .Y ( ZBUF_244_286 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ropt_mt_inst_7347 ( .A ( ropt_net_1479 ) , .Y ( ropt_net_1478 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ropt_mt_inst_7348 ( .A ( \USRAM/guide_buf_37 ) , 
    .Y ( ropt_net_1479 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX8_HVT ZBUF_34_inst_6088 ( .A ( ZBUF_2_237 ) , .Y ( ZBUF_34_287 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ropt_mt_inst_7349 ( .A ( ropt_net_1481 ) , .Y ( ropt_net_1480 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ropt_mt_inst_7350 ( .A ( \USRAM/guide_buf_224 ) , 
    .Y ( ropt_net_1481 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ropt_mt_inst_7351 ( .A ( ropt_net_1483 ) , .Y ( ropt_net_1482 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ropt_mt_inst_7352 ( .A ( ZBUF_21_1 ) , .Y ( ropt_net_1483 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT ZBUF_118_inst_6093 ( .A ( HFSNET_849 ) , .Y ( ZBUF_118_289 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ropt_mt_inst_7353 ( .A ( ropt_net_1485 ) , .Y ( ropt_net_1484 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ropt_mt_inst_7354 ( .A ( HFSNET_156 ) , .Y ( ropt_net_1485 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ropt_mt_inst_7355 ( .A ( ropt_net_1487 ) , .Y ( ropt_net_1486 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT ZBUF_6_inst_6098 ( .A ( HFSNET_853 ) , .Y ( ZBUF_6_290 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ropt_mt_inst_7356 ( .A ( HFSNET_517 ) , .Y ( ropt_net_1487 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT ZBUF_957_inst_6100 ( .A ( copt_gre_net_1424 ) , 
    .Y ( ZBUF_957_290 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ropt_mt_inst_7357 ( .A ( ropt_net_1489 ) , .Y ( ropt_net_1488 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ropt_mt_inst_7358 ( .A ( \USRAM/guide_buf_45 ) , 
    .Y ( ropt_net_1489 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ropt_mt_inst_7359 ( .A ( ropt_net_1491 ) , .Y ( ropt_net_1490 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ropt_mt_inst_7360 ( .A ( \USRAM/guide_buf_53 ) , 
    .Y ( ropt_net_1491 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ropt_mt_inst_7361 ( .A ( ctmn_3723_CDR1 ) , .Y ( ropt_net_1492 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT ZBUF_188_inst_6106 ( .A ( ZBUF_570_60 ) , .Y ( ZBUF_188_290 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ropt_mt_inst_7362 ( .A ( ropt_net_1494 ) , .Y ( ropt_net_1493 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ropt_mt_inst_7363 ( .A ( \USRAM/guide_buf_118 ) , 
    .Y ( ropt_net_1494 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ropt_mt_inst_7364 ( .A ( ropt_net_1496 ) , .Y ( ropt_net_1495 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX8_HVT gre_mt_BUF_74_inst_6110 ( .A ( HFSNET_1009 ) , 
    .Y ( gre_mt_BUF_74_291 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6115 ( .A ( copt_gre_net_311 ) , 
    .Y ( copt_gre_net_310 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6116 ( .A ( \USRAM/guide_buf_618 ) , 
    .Y ( copt_gre_net_311 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6117 ( .A ( copt_gre_net_313 ) , 
    .Y ( copt_gre_net_312 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6118 ( .A ( HFSNET_464 ) , 
    .Y ( copt_gre_net_313 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6120 ( .A ( \USRAM/guide_buf_489 ) , 
    .Y ( copt_gre_net_315 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6121 ( .A ( copt_gre_net_317 ) , 
    .Y ( copt_gre_net_316 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6122 ( .A ( \USRAM/guide_buf_356 ) , 
    .Y ( copt_gre_net_317 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6123 ( .A ( copt_gre_net_319 ) , 
    .Y ( copt_gre_net_318 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6124 ( .A ( \USRAM/guide_buf_355 ) , 
    .Y ( copt_gre_net_319 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6125 ( .A ( copt_gre_net_321 ) , 
    .Y ( copt_gre_net_320 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6126 ( .A ( \USRAM/guide_buf_354 ) , 
    .Y ( copt_gre_net_321 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6127 ( .A ( copt_gre_net_323 ) , 
    .Y ( copt_gre_net_322 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6128 ( .A ( \USRAM/guide_buf_488 ) , 
    .Y ( copt_gre_net_323 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6129 ( .A ( copt_gre_net_325 ) , 
    .Y ( copt_gre_net_324 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6130 ( .A ( \USRAM/guide_buf_485 ) , 
    .Y ( copt_gre_net_325 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6131 ( .A ( copt_gre_net_327 ) , 
    .Y ( copt_gre_net_326 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6132 ( .A ( \USRAM/guide_buf_268 ) , 
    .Y ( copt_gre_net_327 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6133 ( .A ( copt_gre_net_329 ) , 
    .Y ( copt_gre_net_328 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6134 ( .A ( \USRAM/guide_buf_143 ) , 
    .Y ( copt_gre_net_329 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6135 ( .A ( copt_gre_net_331 ) , 
    .Y ( copt_gre_net_330 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6136 ( .A ( \USRAM/guide_buf_264 ) , 
    .Y ( copt_gre_net_331 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT copt_gre_mt_inst_6137 ( .A ( ctmn_3813_CDR1 ) , 
    .Y ( copt_gre_net_332 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6138 ( .A ( copt_gre_net_334 ) , 
    .Y ( copt_gre_net_333 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6139 ( .A ( \USRAM/guide_buf_583 ) , 
    .Y ( copt_gre_net_334 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6140 ( .A ( copt_gre_net_336 ) , 
    .Y ( copt_gre_net_335 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6141 ( .A ( \USRAM/guide_buf_177 ) , 
    .Y ( copt_gre_net_336 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6142 ( .A ( copt_gre_net_338 ) , 
    .Y ( copt_gre_net_337 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6143 ( .A ( \USRAM/guide_buf_586 ) , 
    .Y ( copt_gre_net_338 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT copt_gre_mt_inst_6144 ( .A ( ctmn_3764_CDR1 ) , 
    .Y ( copt_gre_net_339 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6145 ( .A ( ctmn_3857_CDR1 ) , 
    .Y ( copt_gre_net_340 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6146 ( .A ( copt_gre_net_342 ) , 
    .Y ( copt_gre_net_341 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6147 ( .A ( copt_gre_net_343 ) , 
    .Y ( copt_gre_net_342 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6148 ( .A ( copt_gre_net_344 ) , 
    .Y ( copt_gre_net_343 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6149 ( .A ( HFSNET_215 ) , 
    .Y ( copt_gre_net_344 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6150 ( .A ( copt_gre_net_346 ) , 
    .Y ( copt_gre_net_345 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6151 ( .A ( copt_gre_net_659 ) , 
    .Y ( copt_gre_net_346 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT copt_gre_mt_inst_6153 ( .A ( \USRAM/guide_buf_149 ) , 
    .Y ( copt_gre_net_348 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6155 ( .A ( \USRAM/guide_buf_18 ) , 
    .Y ( copt_gre_net_350 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT copt_gre_mt_inst_6156 ( .A ( \USRAM/guide_buf_14 ) , 
    .Y ( copt_gre_net_351 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6157 ( .A ( \USRAM/guide_buf_17 ) , 
    .Y ( copt_gre_net_352 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6158 ( .A ( copt_gre_net_354 ) , 
    .Y ( copt_gre_net_353 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6159 ( .A ( \USRAM/guide_buf_585 ) , 
    .Y ( copt_gre_net_354 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ropt_mt_inst_7365 ( .A ( \USRAM/guide_buf_88 ) , 
    .Y ( ropt_net_1496 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6162 ( .A ( copt_gre_net_358 ) , 
    .Y ( copt_gre_net_357 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6163 ( .A ( \USRAM/guide_buf_584 ) , 
    .Y ( copt_gre_net_358 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT copt_gre_mt_inst_6164 ( .A ( \USRAM/guide_buf_19 ) , 
    .Y ( copt_gre_net_359 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT copt_gre_mt_inst_6165 ( .A ( \USRAM/guide_buf_7 ) , 
    .Y ( copt_gre_net_360 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6166 ( .A ( copt_gre_net_362 ) , 
    .Y ( copt_gre_net_361 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6167 ( .A ( HFSNET_914 ) , 
    .Y ( copt_gre_net_362 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6168 ( .A ( ctmn_62_CDR1 ) , 
    .Y ( copt_gre_net_363 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT copt_gre_mt_inst_6170 ( .A ( copt_gre_net_1062 ) , 
    .Y ( copt_gre_net_365 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ropt_mt_inst_7366 ( .A ( ropt_net_1498 ) , .Y ( ropt_net_1497 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT copt_gre_mt_inst_6173 ( .A ( ZBUF_47_51 ) , 
    .Y ( copt_gre_net_368 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ropt_mt_inst_7367 ( .A ( \USRAM/guide_buf_35 ) , 
    .Y ( ropt_net_1498 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6175 ( .A ( copt_gre_net_371 ) , 
    .Y ( BIST_PASS ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6176 ( .A ( copt_gre_net_372 ) , 
    .Y ( copt_gre_net_371 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6177 ( .A ( copt_gre_net_373 ) , 
    .Y ( copt_gre_net_372 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6178 ( .A ( copt_gre_net_374 ) , 
    .Y ( copt_gre_net_373 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6179 ( .A ( copt_gre_net_375 ) , 
    .Y ( copt_gre_net_374 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6180 ( .A ( aps_rename_6_ ) , 
    .Y ( copt_gre_net_375 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6181 ( .A ( HFSNET_1302 ) , 
    .Y ( copt_gre_net_376 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
DELLN1X2_HVT ropt_mt_inst_7368 ( .A ( ropt_net_1500 ) , .Y ( ropt_net_1499 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT ropt_mt_inst_7369 ( .A ( ropt_net_1501 ) , .Y ( ropt_net_1500 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ropt_mt_inst_7370 ( .A ( ropt_net_1502 ) , .Y ( ropt_net_1501 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT copt_gre_mt_inst_6186 ( .A ( ZBUF_205_258 ) , 
    .Y ( copt_gre_net_381 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6187 ( .A ( ZBUF_205_258 ) , 
    .Y ( copt_gre_net_382 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ropt_mt_inst_7371 ( .A ( HFSNET_1381 ) , .Y ( ropt_net_1502 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ropt_mt_inst_7372 ( .A ( ropt_net_1504 ) , .Y ( ropt_net_1503 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ropt_mt_inst_7373 ( .A ( ZBUF_57_159 ) , .Y ( ropt_net_1504 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT copt_gre_mt_inst_6191 ( .A ( HFSNET_1300 ) , 
    .Y ( copt_gre_net_386 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6193 ( .A ( copt_gre_net_389 ) , 
    .Y ( copt_gre_net_388 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6194 ( .A ( ZBUF_62_160 ) , 
    .Y ( copt_gre_net_389 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT copt_gre_mt_inst_6195 ( .A ( HFSNET_927 ) , 
    .Y ( copt_gre_net_390 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6197 ( .A ( copt_gre_net_393 ) , 
    .Y ( copt_gre_net_392 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6198 ( .A ( ZBUF_2_258 ) , 
    .Y ( copt_gre_net_393 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT ropt_mt_inst_7375 ( .A ( MEM_CSB[9] ) , .Y ( ropt_net_1506 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT copt_gre_mt_inst_6200 ( .A ( ZBUF_235_4 ) , 
    .Y ( copt_gre_net_395 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6202 ( .A ( copt_gre_net_398 ) , 
    .Y ( copt_gre_net_397 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6203 ( .A ( HFSNET_26 ) , 
    .Y ( copt_gre_net_398 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6204 ( .A ( copt_gre_net_400 ) , 
    .Y ( copt_gre_net_399 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6205 ( .A ( HFSNET_29 ) , 
    .Y ( copt_gre_net_400 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT copt_gre_mt_inst_6206 ( .A ( copt_gre_net_402 ) , 
    .Y ( copt_gre_net_401 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6207 ( .A ( copt_gre_net_403 ) , 
    .Y ( copt_gre_net_402 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6208 ( .A ( copt_gre_net_404 ) , 
    .Y ( copt_gre_net_403 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6209 ( .A ( copt_gre_net_1051 ) , 
    .Y ( copt_gre_net_404 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6210 ( .A ( copt_gre_net_406 ) , 
    .Y ( copt_gre_net_405 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6211 ( .A ( ZBUF_586_259 ) , 
    .Y ( copt_gre_net_406 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT ropt_mt_inst_7376 ( .A ( ropt_net_1508 ) , .Y ( ropt_net_1507 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6213 ( .A ( copt_gre_net_409 ) , 
    .Y ( copt_gre_net_408 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6214 ( .A ( ZBUF_4_270 ) , 
    .Y ( copt_gre_net_409 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT copt_gre_mt_inst_6216 ( .A ( copt_gre_net_414 ) , 
    .Y ( copt_gre_net_411 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6217 ( .A ( copt_gre_net_414 ) , 
    .Y ( copt_gre_net_412 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ropt_mt_inst_7377 ( .A ( copt_gre_net_1082 ) , 
    .Y ( ropt_net_1508 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT copt_gre_mt_inst_6219 ( .A ( copt_gre_net_415 ) , 
    .Y ( copt_gre_net_414 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6220 ( .A ( copt_gre_net_420 ) , 
    .Y ( copt_gre_net_415 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ropt_mt_inst_7378 ( .A ( ropt_net_1510 ) , .Y ( ODATA[6] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6222 ( .A ( copt_gre_net_418 ) , 
    .Y ( copt_gre_net_417 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6223 ( .A ( copt_gre_net_419 ) , 
    .Y ( copt_gre_net_418 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6224 ( .A ( copt_gre_net_420 ) , 
    .Y ( copt_gre_net_419 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT copt_gre_mt_inst_6225 ( .A ( HFSNET_835 ) , 
    .Y ( copt_gre_net_420 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ropt_mt_inst_7379 ( .A ( ZBUF_21_49 ) , .Y ( ropt_net_1510 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6227 ( .A ( ctmn_3778_CDR1 ) , 
    .Y ( copt_gre_net_422 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT ropt_mt_inst_7380 ( .A ( ropt_net_1512 ) , .Y ( ropt_net_1511 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6229 ( .A ( ctmn_3784_CDR1 ) , 
    .Y ( copt_gre_net_424 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6232 ( .A ( HFSNET_1380 ) , 
    .Y ( copt_gre_net_427 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT ropt_mt_inst_7381 ( .A ( ropt_net_1514 ) , .Y ( ropt_net_1512 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6235 ( .A ( ctmn_3553 ) , 
    .Y ( copt_gre_net_430 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6237 ( .A ( ctmn_3894 ) , 
    .Y ( copt_gre_net_432 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT ropt_mt_inst_7383 ( .A ( copt_gre_net_360 ) , 
    .Y ( ropt_net_1514 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ropt_mt_inst_7384 ( .A ( ropt_net_1516 ) , .Y ( ODATA[1] ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6241 ( .A ( HFSNET_775 ) , 
    .Y ( copt_gre_net_436 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6243 ( .A ( copt_gre_net_439 ) , 
    .Y ( copt_gre_net_438 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6244 ( .A ( copt_gre_net_440 ) , 
    .Y ( copt_gre_net_439 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6245 ( .A ( ZBUF_30_32 ) , 
    .Y ( copt_gre_net_440 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6246 ( .A ( copt_gre_net_442 ) , 
    .Y ( copt_gre_net_441 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6247 ( .A ( copt_gre_net_443 ) , 
    .Y ( copt_gre_net_442 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6248 ( .A ( copt_gre_net_1371 ) , 
    .Y ( copt_gre_net_443 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ropt_mt_inst_7385 ( .A ( ropt_net_1515 ) , .Y ( ropt_net_1516 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ropt_mt_inst_7386 ( .A ( ropt_net_1518 ) , .Y ( ropt_net_1517 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX4_HVT copt_gre_mt_inst_6251 ( .A ( ctmn_3844_CDR1 ) , 
    .Y ( copt_gre_net_446 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6252 ( .A ( ctmn_3817_CDR1 ) , 
    .Y ( copt_gre_net_447 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6254 ( .A ( ctmn_3893 ) , 
    .Y ( copt_gre_net_449 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ropt_mt_inst_7387 ( .A ( ZBUF_4351_30 ) , .Y ( ropt_net_1518 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6256 ( .A ( ctmn_3575 ) , 
    .Y ( copt_gre_net_451 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6259 ( .A ( ctmn_3587 ) , 
    .Y ( copt_gre_net_454 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ropt_mt_inst_7388 ( .A ( ctmn_3577 ) , .Y ( ropt_net_1519 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6261 ( .A ( ctmn_3635 ) , 
    .Y ( copt_gre_net_456 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6262 ( .A ( MEM_ADDR[6] ) , 
    .Y ( copt_gre_net_457 ) , .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT copt_gre_mt_inst_6263 ( .A ( MEM_WEB ) , .Y ( copt_gre_net_458 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ropt_mt_inst_7389 ( .A ( ctmn_3657_CDR1 ) , .Y ( ropt_net_1520 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
NBUFFX2_HVT ropt_mt_inst_7390 ( .A ( MEM_OEB[47] ) , .Y ( ropt_net_1521 ) , 
    .VDD ( VDD ) , .VSS ( VSS ) ) ;
endmodule


