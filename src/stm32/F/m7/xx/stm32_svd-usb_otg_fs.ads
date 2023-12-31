--  This spec has been automatically generated from STM32F7x.svd

pragma Restrictions (No_Elaboration_Code);
pragma Ada_2012;
pragma Style_Checks (Off);

with Bare_Types; use Bare_Types;
with System;

package STM32_SVD.USB_OTG_FS is
   pragma Preelaborate;

   ---------------
   -- Registers --
   ---------------

   subtype OTG_FS_DCFG_DSPD_Field is UInt2;
   subtype OTG_FS_DCFG_DAD_Field is UInt7;
   subtype OTG_FS_DCFG_PFIVL_Field is UInt2;

   --  OTG_FS device configuration register (OTG_FS_DCFG)
   type OTG_FS_DCFG_Register is record
      --  Device speed
      DSPD           : OTG_FS_DCFG_DSPD_Field := 16#0#;
      --  Non-zero-length status OUT handshake
      NZLSOHSK       : Boolean := False;
      --  unspecified
      Reserved_3_3   : Bit := 16#0#;
      --  Device address
      DAD            : OTG_FS_DCFG_DAD_Field := 16#0#;
      --  Periodic frame interval
      PFIVL          : OTG_FS_DCFG_PFIVL_Field := 16#0#;
      --  unspecified
      Reserved_13_31 : UInt19 := 16#1100#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for OTG_FS_DCFG_Register use record
      DSPD           at 0 range 0 .. 1;
      NZLSOHSK       at 0 range 2 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      DAD            at 0 range 4 .. 10;
      PFIVL          at 0 range 11 .. 12;
      Reserved_13_31 at 0 range 13 .. 31;
   end record;

   subtype OTG_FS_DCTL_TCTL_Field is UInt3;

   --  OTG_FS device control register (OTG_FS_DCTL)
   type OTG_FS_DCTL_Register is record
      --  Remote wakeup signaling
      RWUSIG         : Boolean := False;
      --  Soft disconnect
      SDIS           : Boolean := False;
      --  Read-only. Global IN NAK status
      GINSTS         : Boolean := False;
      --  Read-only. Global OUT NAK status
      GONSTS         : Boolean := False;
      --  Test control
      TCTL           : OTG_FS_DCTL_TCTL_Field := 16#0#;
      --  Set global IN NAK
      SGINAK         : Boolean := False;
      --  Clear global IN NAK
      CGINAK         : Boolean := False;
      --  Set global OUT NAK
      SGONAK         : Boolean := False;
      --  Clear global OUT NAK
      CGONAK         : Boolean := False;
      --  Power-on programming done
      POPRGDNE       : Boolean := False;
      --  unspecified
      Reserved_12_31 : UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for OTG_FS_DCTL_Register use record
      RWUSIG         at 0 range 0 .. 0;
      SDIS           at 0 range 1 .. 1;
      GINSTS         at 0 range 2 .. 2;
      GONSTS         at 0 range 3 .. 3;
      TCTL           at 0 range 4 .. 6;
      SGINAK         at 0 range 7 .. 7;
      CGINAK         at 0 range 8 .. 8;
      SGONAK         at 0 range 9 .. 9;
      CGONAK         at 0 range 10 .. 10;
      POPRGDNE       at 0 range 11 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   subtype OTG_FS_DSTS_ENUMSPD_Field is UInt2;
   subtype OTG_FS_DSTS_FNSOF_Field is UInt14;

   --  OTG_FS device status register (OTG_FS_DSTS)
   type OTG_FS_DSTS_Register is record
      --  Read-only. Suspend status
      SUSPSTS        : Boolean;
      --  Read-only. Enumerated speed
      ENUMSPD        : OTG_FS_DSTS_ENUMSPD_Field;
      --  Read-only. Erratic error
      EERR           : Boolean;
      --  unspecified
      Reserved_4_7   : UInt4;
      --  Read-only. Frame number of the received SOF
      FNSOF          : OTG_FS_DSTS_FNSOF_Field;
      --  unspecified
      Reserved_22_31 : UInt10;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for OTG_FS_DSTS_Register use record
      SUSPSTS        at 0 range 0 .. 0;
      ENUMSPD        at 0 range 1 .. 2;
      EERR           at 0 range 3 .. 3;
      Reserved_4_7   at 0 range 4 .. 7;
      FNSOF          at 0 range 8 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

   --  OTG_FS device IN endpoint common interrupt mask register
   --  (OTG_FS_DIEPMSK)
   type OTG_FS_DIEPMSK_Register is record
      --  Transfer completed interrupt mask
      XFRCM         : Boolean := False;
      --  Endpoint disabled interrupt mask
      EPDM          : Boolean := False;
      --  unspecified
      Reserved_2_2  : Bit := 16#0#;
      --  Timeout condition mask (Non-isochronous endpoints)
      TOM           : Boolean := False;
      --  IN token received when TxFIFO empty mask
      ITTXFEMSK     : Boolean := False;
      --  IN token received with EP mismatch mask
      INEPNMM       : Boolean := False;
      --  IN endpoint NAK effective mask
      INEPNEM       : Boolean := False;
      --  unspecified
      Reserved_7_31 : UInt25 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for OTG_FS_DIEPMSK_Register use record
      XFRCM         at 0 range 0 .. 0;
      EPDM          at 0 range 1 .. 1;
      Reserved_2_2  at 0 range 2 .. 2;
      TOM           at 0 range 3 .. 3;
      ITTXFEMSK     at 0 range 4 .. 4;
      INEPNMM       at 0 range 5 .. 5;
      INEPNEM       at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   --  OTG_FS device OUT endpoint common interrupt mask register
   --  (OTG_FS_DOEPMSK)
   type OTG_FS_DOEPMSK_Register is record
      --  Transfer completed interrupt mask
      XFRCM         : Boolean := False;
      --  Endpoint disabled interrupt mask
      EPDM          : Boolean := False;
      --  unspecified
      Reserved_2_2  : Bit := 16#0#;
      --  SETUP phase done mask
      STUPM         : Boolean := False;
      --  OUT token received when endpoint disabled mask
      OTEPDM        : Boolean := False;
      --  unspecified
      Reserved_5_31 : UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for OTG_FS_DOEPMSK_Register use record
      XFRCM         at 0 range 0 .. 0;
      EPDM          at 0 range 1 .. 1;
      Reserved_2_2  at 0 range 2 .. 2;
      STUPM         at 0 range 3 .. 3;
      OTEPDM        at 0 range 4 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   subtype OTG_FS_DAINT_IEPINT_Field is UInt16;
   subtype OTG_FS_DAINT_OEPINT_Field is UInt16;

   --  OTG_FS device all endpoints interrupt register (OTG_FS_DAINT)
   type OTG_FS_DAINT_Register is record
      --  Read-only. IN endpoint interrupt bits
      IEPINT : OTG_FS_DAINT_IEPINT_Field;
      --  Read-only. OUT endpoint interrupt bits
      OEPINT : OTG_FS_DAINT_OEPINT_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for OTG_FS_DAINT_Register use record
      IEPINT at 0 range 0 .. 15;
      OEPINT at 0 range 16 .. 31;
   end record;

   subtype OTG_FS_DAINTMSK_IEPM_Field is UInt16;
   subtype OTG_FS_DAINTMSK_OEPM_Field is UInt16;

   --  OTG_FS all endpoints interrupt mask register (OTG_FS_DAINTMSK)
   type OTG_FS_DAINTMSK_Register is record
      --  IN EP interrupt mask bits
      IEPM : OTG_FS_DAINTMSK_IEPM_Field := 16#0#;
      --  OUT EP interrupt mask bits
      OEPM : OTG_FS_DAINTMSK_OEPM_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for OTG_FS_DAINTMSK_Register use record
      IEPM at 0 range 0 .. 15;
      OEPM at 0 range 16 .. 31;
   end record;

   subtype OTG_FS_DVBUSDIS_VBUSDT_Field is UInt16;

   --  OTG_FS device VBUS discharge time register
   type OTG_FS_DVBUSDIS_Register is record
      --  Device VBUS discharge time
      VBUSDT         : OTG_FS_DVBUSDIS_VBUSDT_Field := 16#17D7#;
      --  unspecified
      Reserved_16_31 : UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for OTG_FS_DVBUSDIS_Register use record
      VBUSDT         at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype OTG_FS_DVBUSPULSE_DVBUSP_Field is UInt12;

   --  OTG_FS device VBUS pulsing time register
   type OTG_FS_DVBUSPULSE_Register is record
      --  Device VBUS pulsing time
      DVBUSP         : OTG_FS_DVBUSPULSE_DVBUSP_Field := 16#5B8#;
      --  unspecified
      Reserved_12_31 : UInt20 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for OTG_FS_DVBUSPULSE_Register use record
      DVBUSP         at 0 range 0 .. 11;
      Reserved_12_31 at 0 range 12 .. 31;
   end record;

   subtype OTG_FS_DIEPEMPMSK_INEPTXFEM_Field is UInt16;

   --  OTG_FS device IN endpoint FIFO empty interrupt mask register
   type OTG_FS_DIEPEMPMSK_Register is record
      --  IN EP Tx FIFO empty interrupt mask bits
      INEPTXFEM      : OTG_FS_DIEPEMPMSK_INEPTXFEM_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for OTG_FS_DIEPEMPMSK_Register use record
      INEPTXFEM      at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype OTG_FS_DIEPCTL0_MPSIZ_Field is UInt2;
   subtype OTG_FS_DIEPCTL0_EPTYP_Field is UInt2;
   subtype OTG_FS_DIEPCTL0_TXFNUM_Field is UInt4;

   --  OTG_FS device control IN endpoint 0 control register (OTG_FS_DIEPCTL0)
   type OTG_FS_DIEPCTL0_Register is record
      --  Maximum packet size
      MPSIZ          : OTG_FS_DIEPCTL0_MPSIZ_Field := 16#0#;
      --  unspecified
      Reserved_2_14  : UInt13 := 16#0#;
      --  Read-only. USB active endpoint
      USBAEP         : Boolean := False;
      --  unspecified
      Reserved_16_16 : Bit := 16#0#;
      --  Read-only. NAK status
      NAKSTS         : Boolean := False;
      --  Read-only. Endpoint type
      EPTYP          : OTG_FS_DIEPCTL0_EPTYP_Field := 16#0#;
      --  unspecified
      Reserved_20_20 : Bit := 16#0#;
      --  STALL handshake
      STALL          : Boolean := False;
      --  TxFIFO number
      TXFNUM         : OTG_FS_DIEPCTL0_TXFNUM_Field := 16#0#;
      --  Write-only. Clear NAK
      CNAK           : Boolean := False;
      --  Write-only. Set NAK
      SNAK           : Boolean := False;
      --  unspecified
      Reserved_28_29 : UInt2 := 16#0#;
      --  Read-only. Endpoint disable
      EPDIS          : Boolean := False;
      --  Read-only. Endpoint enable
      EPENA          : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for OTG_FS_DIEPCTL0_Register use record
      MPSIZ          at 0 range 0 .. 1;
      Reserved_2_14  at 0 range 2 .. 14;
      USBAEP         at 0 range 15 .. 15;
      Reserved_16_16 at 0 range 16 .. 16;
      NAKSTS         at 0 range 17 .. 17;
      EPTYP          at 0 range 18 .. 19;
      Reserved_20_20 at 0 range 20 .. 20;
      STALL          at 0 range 21 .. 21;
      TXFNUM         at 0 range 22 .. 25;
      CNAK           at 0 range 26 .. 26;
      SNAK           at 0 range 27 .. 27;
      Reserved_28_29 at 0 range 28 .. 29;
      EPDIS          at 0 range 30 .. 30;
      EPENA          at 0 range 31 .. 31;
   end record;

   --  device endpoint-x interrupt register
   type OTG_FS_DIEPINT_Register is record
      --  XFRC
      XFRC          : Boolean := False;
      --  EPDISD
      EPDISD        : Boolean := False;
      --  unspecified
      Reserved_2_2  : Bit := 16#0#;
      --  TOC
      TOC           : Boolean := False;
      --  ITTXFE
      ITTXFE        : Boolean := False;
      --  unspecified
      Reserved_5_5  : Bit := 16#0#;
      --  INEPNE
      INEPNE        : Boolean := False;
      --  Read-only. TXFE
      TXFE          : Boolean := True;
      --  unspecified
      Reserved_8_31 : UInt24 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for OTG_FS_DIEPINT_Register use record
      XFRC          at 0 range 0 .. 0;
      EPDISD        at 0 range 1 .. 1;
      Reserved_2_2  at 0 range 2 .. 2;
      TOC           at 0 range 3 .. 3;
      ITTXFE        at 0 range 4 .. 4;
      Reserved_5_5  at 0 range 5 .. 5;
      INEPNE        at 0 range 6 .. 6;
      TXFE          at 0 range 7 .. 7;
      Reserved_8_31 at 0 range 8 .. 31;
   end record;

   subtype OTG_FS_DIEPTSIZ0_XFRSIZ_Field is UInt7;
   subtype OTG_FS_DIEPTSIZ0_PKTCNT_Field is UInt2;

   --  device endpoint-0 transfer size register
   type OTG_FS_DIEPTSIZ0_Register is record
      --  Transfer size
      XFRSIZ         : OTG_FS_DIEPTSIZ0_XFRSIZ_Field := 16#0#;
      --  unspecified
      Reserved_7_18  : UInt12 := 16#0#;
      --  Packet count
      PKTCNT         : OTG_FS_DIEPTSIZ0_PKTCNT_Field := 16#0#;
      --  unspecified
      Reserved_21_31 : UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for OTG_FS_DIEPTSIZ0_Register use record
      XFRSIZ         at 0 range 0 .. 6;
      Reserved_7_18  at 0 range 7 .. 18;
      PKTCNT         at 0 range 19 .. 20;
      Reserved_21_31 at 0 range 21 .. 31;
   end record;

   subtype OTG_FS_DTXFSTS_INEPTFSAV_Field is UInt16;

   --  OTG_FS device IN endpoint transmit FIFO status register
   type OTG_FS_DTXFSTS_Register is record
      --  Read-only. IN endpoint TxFIFO space available
      INEPTFSAV      : OTG_FS_DTXFSTS_INEPTFSAV_Field;
      --  unspecified
      Reserved_16_31 : UInt16;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for OTG_FS_DTXFSTS_Register use record
      INEPTFSAV      at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype OTG_FS_DIEPCTL1_MPSIZ_Field is UInt11;
   subtype OTG_FS_DIEPCTL1_EPTYP_Field is UInt2;
   subtype OTG_FS_DIEPCTL1_TXFNUM_Field is UInt4;

   --  OTG device endpoint-1 control register
   type OTG_FS_DIEPCTL1_Register is record
      --  MPSIZ
      MPSIZ          : OTG_FS_DIEPCTL1_MPSIZ_Field := 16#0#;
      --  unspecified
      Reserved_11_14 : UInt4 := 16#0#;
      --  USBAEP
      USBAEP         : Boolean := False;
      --  Read-only. EONUM/DPID
      EONUM_DPID     : Boolean := False;
      --  Read-only. NAKSTS
      NAKSTS         : Boolean := False;
      --  EPTYP
      EPTYP          : OTG_FS_DIEPCTL1_EPTYP_Field := 16#0#;
      --  unspecified
      Reserved_20_20 : Bit := 16#0#;
      --  Stall
      Stall          : Boolean := False;
      --  TXFNUM
      TXFNUM         : OTG_FS_DIEPCTL1_TXFNUM_Field := 16#0#;
      --  Write-only. CNAK
      CNAK           : Boolean := False;
      --  Write-only. SNAK
      SNAK           : Boolean := False;
      --  Write-only. SD0PID/SEVNFRM
      SD0PID_SEVNFRM : Boolean := False;
      --  Write-only. SODDFRM/SD1PID
      SODDFRM_SD1PID : Boolean := False;
      --  EPDIS
      EPDIS          : Boolean := False;
      --  EPENA
      EPENA          : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for OTG_FS_DIEPCTL1_Register use record
      MPSIZ          at 0 range 0 .. 10;
      Reserved_11_14 at 0 range 11 .. 14;
      USBAEP         at 0 range 15 .. 15;
      EONUM_DPID     at 0 range 16 .. 16;
      NAKSTS         at 0 range 17 .. 17;
      EPTYP          at 0 range 18 .. 19;
      Reserved_20_20 at 0 range 20 .. 20;
      Stall          at 0 range 21 .. 21;
      TXFNUM         at 0 range 22 .. 25;
      CNAK           at 0 range 26 .. 26;
      SNAK           at 0 range 27 .. 27;
      SD0PID_SEVNFRM at 0 range 28 .. 28;
      SODDFRM_SD1PID at 0 range 29 .. 29;
      EPDIS          at 0 range 30 .. 30;
      EPENA          at 0 range 31 .. 31;
   end record;

   subtype OTG_FS_DIEPTSIZ_XFRSIZ_Field is UInt19;
   subtype OTG_FS_DIEPTSIZ_PKTCNT_Field is UInt10;
   subtype OTG_FS_DIEPTSIZ_MCNT_Field is UInt2;

   --  device endpoint-1 transfer size register
   type OTG_FS_DIEPTSIZ_Register is record
      --  Transfer size
      XFRSIZ         : OTG_FS_DIEPTSIZ_XFRSIZ_Field := 16#0#;
      --  Packet count
      PKTCNT         : OTG_FS_DIEPTSIZ_PKTCNT_Field := 16#0#;
      --  Multi count
      MCNT           : OTG_FS_DIEPTSIZ_MCNT_Field := 16#0#;
      --  unspecified
      Reserved_31_31 : Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for OTG_FS_DIEPTSIZ_Register use record
      XFRSIZ         at 0 range 0 .. 18;
      PKTCNT         at 0 range 19 .. 28;
      MCNT           at 0 range 29 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype OTG_FS_DIEPCTL_MPSIZ_Field is UInt11;
   subtype OTG_FS_DIEPCTL_EPTYP_Field is UInt2;
   subtype OTG_FS_DIEPCTL_TXFNUM_Field is UInt4;

   --  OTG device endpoint-2 control register
   type OTG_FS_DIEPCTL_Register is record
      --  MPSIZ
      MPSIZ          : OTG_FS_DIEPCTL_MPSIZ_Field := 16#0#;
      --  unspecified
      Reserved_11_14 : UInt4 := 16#0#;
      --  USBAEP
      USBAEP         : Boolean := False;
      --  Read-only. EONUM/DPID
      EONUM_DPID     : Boolean := False;
      --  Read-only. NAKSTS
      NAKSTS         : Boolean := False;
      --  EPTYP
      EPTYP          : OTG_FS_DIEPCTL_EPTYP_Field := 16#0#;
      --  unspecified
      Reserved_20_20 : Bit := 16#0#;
      --  Stall
      Stall          : Boolean := False;
      --  TXFNUM
      TXFNUM         : OTG_FS_DIEPCTL_TXFNUM_Field := 16#0#;
      --  Write-only. CNAK
      CNAK           : Boolean := False;
      --  Write-only. SNAK
      SNAK           : Boolean := False;
      --  Write-only. SD0PID/SEVNFRM
      SD0PID_SEVNFRM : Boolean := False;
      --  Write-only. SODDFRM
      SODDFRM        : Boolean := False;
      --  EPDIS
      EPDIS          : Boolean := False;
      --  EPENA
      EPENA          : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for OTG_FS_DIEPCTL_Register use record
      MPSIZ          at 0 range 0 .. 10;
      Reserved_11_14 at 0 range 11 .. 14;
      USBAEP         at 0 range 15 .. 15;
      EONUM_DPID     at 0 range 16 .. 16;
      NAKSTS         at 0 range 17 .. 17;
      EPTYP          at 0 range 18 .. 19;
      Reserved_20_20 at 0 range 20 .. 20;
      Stall          at 0 range 21 .. 21;
      TXFNUM         at 0 range 22 .. 25;
      CNAK           at 0 range 26 .. 26;
      SNAK           at 0 range 27 .. 27;
      SD0PID_SEVNFRM at 0 range 28 .. 28;
      SODDFRM        at 0 range 29 .. 29;
      EPDIS          at 0 range 30 .. 30;
      EPENA          at 0 range 31 .. 31;
   end record;

   subtype OTG_FS_DOEPCTL0_MPSIZ_Field is UInt2;
   subtype OTG_FS_DOEPCTL0_EPTYP_Field is UInt2;

   --  device endpoint-0 control register
   type OTG_FS_DOEPCTL0_Register is record
      --  Read-only. MPSIZ
      MPSIZ          : OTG_FS_DOEPCTL0_MPSIZ_Field := 16#0#;
      --  unspecified
      Reserved_2_14  : UInt13 := 16#0#;
      --  Read-only. USBAEP
      USBAEP         : Boolean := True;
      --  unspecified
      Reserved_16_16 : Bit := 16#0#;
      --  Read-only. NAKSTS
      NAKSTS         : Boolean := False;
      --  Read-only. EPTYP
      EPTYP          : OTG_FS_DOEPCTL0_EPTYP_Field := 16#0#;
      --  SNPM
      SNPM           : Boolean := False;
      --  Stall
      Stall          : Boolean := False;
      --  unspecified
      Reserved_22_25 : UInt4 := 16#0#;
      --  Write-only. CNAK
      CNAK           : Boolean := False;
      --  Write-only. SNAK
      SNAK           : Boolean := False;
      --  unspecified
      Reserved_28_29 : UInt2 := 16#0#;
      --  Read-only. EPDIS
      EPDIS          : Boolean := False;
      --  Write-only. EPENA
      EPENA          : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for OTG_FS_DOEPCTL0_Register use record
      MPSIZ          at 0 range 0 .. 1;
      Reserved_2_14  at 0 range 2 .. 14;
      USBAEP         at 0 range 15 .. 15;
      Reserved_16_16 at 0 range 16 .. 16;
      NAKSTS         at 0 range 17 .. 17;
      EPTYP          at 0 range 18 .. 19;
      SNPM           at 0 range 20 .. 20;
      Stall          at 0 range 21 .. 21;
      Reserved_22_25 at 0 range 22 .. 25;
      CNAK           at 0 range 26 .. 26;
      SNAK           at 0 range 27 .. 27;
      Reserved_28_29 at 0 range 28 .. 29;
      EPDIS          at 0 range 30 .. 30;
      EPENA          at 0 range 31 .. 31;
   end record;

   --  device endpoint-0 interrupt register
   type OTG_FS_DOEPINT_Register is record
      --  XFRC
      XFRC          : Boolean := False;
      --  EPDISD
      EPDISD        : Boolean := False;
      --  unspecified
      Reserved_2_2  : Bit := 16#0#;
      --  STUP
      STUP          : Boolean := False;
      --  OTEPDIS
      OTEPDIS       : Boolean := False;
      --  unspecified
      Reserved_5_5  : Bit := 16#0#;
      --  B2BSTUP
      B2BSTUP       : Boolean := False;
      --  unspecified
      Reserved_7_31 : UInt25 := 16#1#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for OTG_FS_DOEPINT_Register use record
      XFRC          at 0 range 0 .. 0;
      EPDISD        at 0 range 1 .. 1;
      Reserved_2_2  at 0 range 2 .. 2;
      STUP          at 0 range 3 .. 3;
      OTEPDIS       at 0 range 4 .. 4;
      Reserved_5_5  at 0 range 5 .. 5;
      B2BSTUP       at 0 range 6 .. 6;
      Reserved_7_31 at 0 range 7 .. 31;
   end record;

   subtype OTG_FS_DOEPTSIZ0_XFRSIZ_Field is UInt7;
   subtype OTG_FS_DOEPTSIZ0_STUPCNT_Field is UInt2;

   --  device OUT endpoint-0 transfer size register
   type OTG_FS_DOEPTSIZ0_Register is record
      --  Transfer size
      XFRSIZ         : OTG_FS_DOEPTSIZ0_XFRSIZ_Field := 16#0#;
      --  unspecified
      Reserved_7_18  : UInt12 := 16#0#;
      --  Packet count
      PKTCNT         : Boolean := False;
      --  unspecified
      Reserved_20_28 : UInt9 := 16#0#;
      --  SETUP packet count
      STUPCNT        : OTG_FS_DOEPTSIZ0_STUPCNT_Field := 16#0#;
      --  unspecified
      Reserved_31_31 : Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for OTG_FS_DOEPTSIZ0_Register use record
      XFRSIZ         at 0 range 0 .. 6;
      Reserved_7_18  at 0 range 7 .. 18;
      PKTCNT         at 0 range 19 .. 19;
      Reserved_20_28 at 0 range 20 .. 28;
      STUPCNT        at 0 range 29 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype OTG_FS_DOEPCTL_MPSIZ_Field is UInt11;
   subtype OTG_FS_DOEPCTL_EPTYP_Field is UInt2;

   --  device endpoint-1 control register
   type OTG_FS_DOEPCTL_Register is record
      --  MPSIZ
      MPSIZ          : OTG_FS_DOEPCTL_MPSIZ_Field := 16#0#;
      --  unspecified
      Reserved_11_14 : UInt4 := 16#0#;
      --  USBAEP
      USBAEP         : Boolean := False;
      --  Read-only. EONUM/DPID
      EONUM_DPID     : Boolean := False;
      --  Read-only. NAKSTS
      NAKSTS         : Boolean := False;
      --  EPTYP
      EPTYP          : OTG_FS_DOEPCTL_EPTYP_Field := 16#0#;
      --  SNPM
      SNPM           : Boolean := False;
      --  Stall
      Stall          : Boolean := False;
      --  unspecified
      Reserved_22_25 : UInt4 := 16#0#;
      --  Write-only. CNAK
      CNAK           : Boolean := False;
      --  Write-only. SNAK
      SNAK           : Boolean := False;
      --  Write-only. SD0PID/SEVNFRM
      SD0PID_SEVNFRM : Boolean := False;
      --  Write-only. SODDFRM
      SODDFRM        : Boolean := False;
      --  EPDIS
      EPDIS          : Boolean := False;
      --  EPENA
      EPENA          : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for OTG_FS_DOEPCTL_Register use record
      MPSIZ          at 0 range 0 .. 10;
      Reserved_11_14 at 0 range 11 .. 14;
      USBAEP         at 0 range 15 .. 15;
      EONUM_DPID     at 0 range 16 .. 16;
      NAKSTS         at 0 range 17 .. 17;
      EPTYP          at 0 range 18 .. 19;
      SNPM           at 0 range 20 .. 20;
      Stall          at 0 range 21 .. 21;
      Reserved_22_25 at 0 range 22 .. 25;
      CNAK           at 0 range 26 .. 26;
      SNAK           at 0 range 27 .. 27;
      SD0PID_SEVNFRM at 0 range 28 .. 28;
      SODDFRM        at 0 range 29 .. 29;
      EPDIS          at 0 range 30 .. 30;
      EPENA          at 0 range 31 .. 31;
   end record;

   subtype OTG_FS_DOEPTSIZ_XFRSIZ_Field is UInt19;
   subtype OTG_FS_DOEPTSIZ_PKTCNT_Field is UInt10;
   subtype OTG_FS_DOEPTSIZ_RXDPID_STUPCNT_Field is UInt2;

   --  device OUT endpoint-1 transfer size register
   type OTG_FS_DOEPTSIZ_Register is record
      --  Transfer size
      XFRSIZ         : OTG_FS_DOEPTSIZ_XFRSIZ_Field := 16#0#;
      --  Packet count
      PKTCNT         : OTG_FS_DOEPTSIZ_PKTCNT_Field := 16#0#;
      --  Received data PID/SETUP packet count
      RXDPID_STUPCNT : OTG_FS_DOEPTSIZ_RXDPID_STUPCNT_Field := 16#0#;
      --  unspecified
      Reserved_31_31 : Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for OTG_FS_DOEPTSIZ_Register use record
      XFRSIZ         at 0 range 0 .. 18;
      PKTCNT         at 0 range 19 .. 28;
      RXDPID_STUPCNT at 0 range 29 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   --  OTG_FS control and status register (OTG_FS_GOTGCTL)
   type OTG_FS_GOTGCTL_Register is record
      --  Read-only. Session request success
      SRQSCS         : Boolean := False;
      --  Session request
      SRQ            : Boolean := False;
      --  VBUS valid override enable
      VBVALOEN       : Boolean := False;
      --  VBUS valid override value
      VBVALOVAL      : Boolean := False;
      --  A-peripheral session valid override enable
      AVALOEN        : Boolean := False;
      --  A-peripheral session valid override value
      AVALOVAL       : Boolean := False;
      --  B-peripheral session valid override enable
      BVALOEN        : Boolean := False;
      --  B-peripheral session valid override value
      BVALOVAL       : Boolean := False;
      --  Read-only. Host negotiation success
      HNGSCS         : Boolean := False;
      --  HNP request
      HNPRQ          : Boolean := False;
      --  Host set HNP enable
      HSHNPEN        : Boolean := False;
      --  Device HNP enabled
      DHNPEN         : Boolean := True;
      --  Embedded host enable
      EHEN           : Boolean := False;
      --  unspecified
      Reserved_13_15 : UInt3 := 16#0#;
      --  Read-only. Connector ID status
      CIDSTS         : Boolean := False;
      --  Read-only. Long/short debounce time
      DBCT           : Boolean := False;
      --  Read-only. A-session valid
      ASVLD          : Boolean := False;
      --  Read-only. B-session valid
      BSVLD          : Boolean := False;
      --  OTG version
      OTGVER         : Boolean := False;
      --  unspecified
      Reserved_21_31 : UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for OTG_FS_GOTGCTL_Register use record
      SRQSCS         at 0 range 0 .. 0;
      SRQ            at 0 range 1 .. 1;
      VBVALOEN       at 0 range 2 .. 2;
      VBVALOVAL      at 0 range 3 .. 3;
      AVALOEN        at 0 range 4 .. 4;
      AVALOVAL       at 0 range 5 .. 5;
      BVALOEN        at 0 range 6 .. 6;
      BVALOVAL       at 0 range 7 .. 7;
      HNGSCS         at 0 range 8 .. 8;
      HNPRQ          at 0 range 9 .. 9;
      HSHNPEN        at 0 range 10 .. 10;
      DHNPEN         at 0 range 11 .. 11;
      EHEN           at 0 range 12 .. 12;
      Reserved_13_15 at 0 range 13 .. 15;
      CIDSTS         at 0 range 16 .. 16;
      DBCT           at 0 range 17 .. 17;
      ASVLD          at 0 range 18 .. 18;
      BSVLD          at 0 range 19 .. 19;
      OTGVER         at 0 range 20 .. 20;
      Reserved_21_31 at 0 range 21 .. 31;
   end record;

   --  OTG_FS interrupt register (OTG_FS_GOTGINT)
   type OTG_FS_GOTGINT_Register is record
      --  unspecified
      Reserved_0_1   : UInt2 := 16#0#;
      --  Session end detected
      SEDET          : Boolean := False;
      --  unspecified
      Reserved_3_7   : UInt5 := 16#0#;
      --  Session request success status change
      SRSSCHG        : Boolean := False;
      --  Host negotiation success status change
      HNSSCHG        : Boolean := False;
      --  unspecified
      Reserved_10_16 : UInt7 := 16#0#;
      --  Host negotiation detected
      HNGDET         : Boolean := False;
      --  A-device timeout change
      ADTOCHG        : Boolean := False;
      --  Debounce done
      DBCDNE         : Boolean := False;
      --  ID input pin changed
      IDCHNG         : Boolean := False;
      --  unspecified
      Reserved_21_31 : UInt11 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for OTG_FS_GOTGINT_Register use record
      Reserved_0_1   at 0 range 0 .. 1;
      SEDET          at 0 range 2 .. 2;
      Reserved_3_7   at 0 range 3 .. 7;
      SRSSCHG        at 0 range 8 .. 8;
      HNSSCHG        at 0 range 9 .. 9;
      Reserved_10_16 at 0 range 10 .. 16;
      HNGDET         at 0 range 17 .. 17;
      ADTOCHG        at 0 range 18 .. 18;
      DBCDNE         at 0 range 19 .. 19;
      IDCHNG         at 0 range 20 .. 20;
      Reserved_21_31 at 0 range 21 .. 31;
   end record;

   --  OTG_FS AHB configuration register (OTG_FS_GAHBCFG)
   type OTG_FS_GAHBCFG_Register is record
      --  Global interrupt mask
      GINT          : Boolean := False;
      --  unspecified
      Reserved_1_6  : UInt6 := 16#0#;
      --  TxFIFO empty level
      TXFELVL       : Boolean := False;
      --  Periodic TxFIFO empty level
      PTXFELVL      : Boolean := False;
      --  unspecified
      Reserved_9_31 : UInt23 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for OTG_FS_GAHBCFG_Register use record
      GINT          at 0 range 0 .. 0;
      Reserved_1_6  at 0 range 1 .. 6;
      TXFELVL       at 0 range 7 .. 7;
      PTXFELVL      at 0 range 8 .. 8;
      Reserved_9_31 at 0 range 9 .. 31;
   end record;

   subtype OTG_FS_GUSBCFG_TOCAL_Field is UInt3;
   subtype OTG_FS_GUSBCFG_TRDT_Field is UInt4;

   --  OTG_FS USB configuration register (OTG_FS_GUSBCFG)
   type OTG_FS_GUSBCFG_Register is record
      --  FS timeout calibration
      TOCAL          : OTG_FS_GUSBCFG_TOCAL_Field := 16#0#;
      --  unspecified
      Reserved_3_5   : UInt3 := 16#0#;
      --  Write-only. Full Speed serial transceiver select
      PHYSEL         : Boolean := False;
      --  unspecified
      Reserved_7_7   : Bit := 16#0#;
      --  SRP-capable
      SRPCAP         : Boolean := False;
      --  HNP-capable
      HNPCAP         : Boolean := True;
      --  USB turnaround time
      TRDT           : OTG_FS_GUSBCFG_TRDT_Field := 16#2#;
      --  unspecified
      Reserved_14_28 : UInt15 := 16#0#;
      --  Force host mode
      FHMOD          : Boolean := False;
      --  Force device mode
      FDMOD          : Boolean := False;
      --  unspecified
      Reserved_31_31 : Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for OTG_FS_GUSBCFG_Register use record
      TOCAL          at 0 range 0 .. 2;
      Reserved_3_5   at 0 range 3 .. 5;
      PHYSEL         at 0 range 6 .. 6;
      Reserved_7_7   at 0 range 7 .. 7;
      SRPCAP         at 0 range 8 .. 8;
      HNPCAP         at 0 range 9 .. 9;
      TRDT           at 0 range 10 .. 13;
      Reserved_14_28 at 0 range 14 .. 28;
      FHMOD          at 0 range 29 .. 29;
      FDMOD          at 0 range 30 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype OTG_FS_GRSTCTL_TXFNUM_Field is UInt5;

   --  OTG_FS reset register (OTG_FS_GRSTCTL)
   type OTG_FS_GRSTCTL_Register is record
      --  Core soft reset
      CSRST          : Boolean := False;
      --  HCLK soft reset
      HSRST          : Boolean := False;
      --  Host frame counter reset
      FCRST          : Boolean := False;
      --  unspecified
      Reserved_3_3   : Bit := 16#0#;
      --  RxFIFO flush
      RXFFLSH        : Boolean := False;
      --  TxFIFO flush
      TXFFLSH        : Boolean := False;
      --  TxFIFO number
      TXFNUM         : OTG_FS_GRSTCTL_TXFNUM_Field := 16#0#;
      --  unspecified
      Reserved_11_30 : UInt20 := 16#40000#;
      --  Read-only. AHB master idle
      AHBIDL         : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for OTG_FS_GRSTCTL_Register use record
      CSRST          at 0 range 0 .. 0;
      HSRST          at 0 range 1 .. 1;
      FCRST          at 0 range 2 .. 2;
      Reserved_3_3   at 0 range 3 .. 3;
      RXFFLSH        at 0 range 4 .. 4;
      TXFFLSH        at 0 range 5 .. 5;
      TXFNUM         at 0 range 6 .. 10;
      Reserved_11_30 at 0 range 11 .. 30;
      AHBIDL         at 0 range 31 .. 31;
   end record;

   --  OTG_FS core interrupt register (OTG_FS_GINTSTS)
   type OTG_FS_GINTSTS_Register is record
      --  Read-only. Current mode of operation
      CMOD               : Boolean := False;
      --  Mode mismatch interrupt
      MMIS               : Boolean := False;
      --  Read-only. OTG interrupt
      OTGINT             : Boolean := False;
      --  Start of frame
      SOF                : Boolean := False;
      --  Read-only. RxFIFO non-empty
      RXFLVL             : Boolean := False;
      --  Read-only. Non-periodic TxFIFO empty
      NPTXFE             : Boolean := True;
      --  Read-only. Global IN non-periodic NAK effective
      GINAKEFF           : Boolean := False;
      --  Read-only. Global OUT NAK effective
      GOUTNAKEFF         : Boolean := False;
      --  unspecified
      Reserved_8_9       : UInt2 := 16#0#;
      --  Early suspend
      ESUSP              : Boolean := False;
      --  USB suspend
      USBSUSP            : Boolean := False;
      --  USB reset
      USBRST             : Boolean := False;
      --  Enumeration done
      ENUMDNE            : Boolean := False;
      --  Isochronous OUT packet dropped interrupt
      ISOODRP            : Boolean := False;
      --  End of periodic frame interrupt
      EOPF               : Boolean := False;
      --  unspecified
      Reserved_16_17     : UInt2 := 16#0#;
      --  Read-only. IN endpoint interrupt
      IEPINT             : Boolean := False;
      --  Read-only. OUT endpoint interrupt
      OEPINT             : Boolean := False;
      --  Incomplete isochronous IN transfer
      IISOIXFR           : Boolean := False;
      --  Incomplete periodic transfer(Host mode)/Incomplete isochronous OUT
      --  transfer(Device mode)
      IPXFR_INCOMPISOOUT : Boolean := False;
      --  unspecified
      Reserved_22_22     : Bit := 16#0#;
      --  Reset detected interrupt
      RSTDET             : Boolean := False;
      --  Read-only. Host port interrupt
      HPRTINT            : Boolean := False;
      --  Read-only. Host channels interrupt
      HCINT              : Boolean := False;
      --  Read-only. Periodic TxFIFO empty
      PTXFE              : Boolean := True;
      --  unspecified
      Reserved_27_27     : Bit := 16#0#;
      --  Connector ID status change
      CIDSCHG            : Boolean := False;
      --  Disconnect detected interrupt
      DISCINT            : Boolean := False;
      --  Session request/new session detected interrupt
      SRQINT             : Boolean := False;
      --  Resume/remote wakeup detected interrupt
      WKUPINT            : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for OTG_FS_GINTSTS_Register use record
      CMOD               at 0 range 0 .. 0;
      MMIS               at 0 range 1 .. 1;
      OTGINT             at 0 range 2 .. 2;
      SOF                at 0 range 3 .. 3;
      RXFLVL             at 0 range 4 .. 4;
      NPTXFE             at 0 range 5 .. 5;
      GINAKEFF           at 0 range 6 .. 6;
      GOUTNAKEFF         at 0 range 7 .. 7;
      Reserved_8_9       at 0 range 8 .. 9;
      ESUSP              at 0 range 10 .. 10;
      USBSUSP            at 0 range 11 .. 11;
      USBRST             at 0 range 12 .. 12;
      ENUMDNE            at 0 range 13 .. 13;
      ISOODRP            at 0 range 14 .. 14;
      EOPF               at 0 range 15 .. 15;
      Reserved_16_17     at 0 range 16 .. 17;
      IEPINT             at 0 range 18 .. 18;
      OEPINT             at 0 range 19 .. 19;
      IISOIXFR           at 0 range 20 .. 20;
      IPXFR_INCOMPISOOUT at 0 range 21 .. 21;
      Reserved_22_22     at 0 range 22 .. 22;
      RSTDET             at 0 range 23 .. 23;
      HPRTINT            at 0 range 24 .. 24;
      HCINT              at 0 range 25 .. 25;
      PTXFE              at 0 range 26 .. 26;
      Reserved_27_27     at 0 range 27 .. 27;
      CIDSCHG            at 0 range 28 .. 28;
      DISCINT            at 0 range 29 .. 29;
      SRQINT             at 0 range 30 .. 30;
      WKUPINT            at 0 range 31 .. 31;
   end record;

   --  OTG_FS interrupt mask register (OTG_FS_GINTMSK)
   type OTG_FS_GINTMSK_Register is record
      --  unspecified
      Reserved_0_0     : Bit := 16#0#;
      --  Mode mismatch interrupt mask
      MMISM            : Boolean := False;
      --  OTG interrupt mask
      OTGINT           : Boolean := False;
      --  Start of frame mask
      SOFM             : Boolean := False;
      --  Receive FIFO non-empty mask
      RXFLVLM          : Boolean := False;
      --  Non-periodic TxFIFO empty mask
      NPTXFEM          : Boolean := False;
      --  Global non-periodic IN NAK effective mask
      GINAKEFFM        : Boolean := False;
      --  Global OUT NAK effective mask
      GONAKEFFM        : Boolean := False;
      --  unspecified
      Reserved_8_9     : UInt2 := 16#0#;
      --  Early suspend mask
      ESUSPM           : Boolean := False;
      --  USB suspend mask
      USBSUSPM         : Boolean := False;
      --  USB reset mask
      USBRST           : Boolean := False;
      --  Enumeration done mask
      ENUMDNEM         : Boolean := False;
      --  Isochronous OUT packet dropped interrupt mask
      ISOODRPM         : Boolean := False;
      --  End of periodic frame interrupt mask
      EOPFM            : Boolean := False;
      --  unspecified
      Reserved_16_17   : UInt2 := 16#0#;
      --  IN endpoints interrupt mask
      IEPINT           : Boolean := False;
      --  OUT endpoints interrupt mask
      OEPINT           : Boolean := False;
      --  Incomplete isochronous IN transfer mask
      IISOIXFRM        : Boolean := False;
      --  Incomplete periodic transfer mask(Host mode)/Incomplete isochronous
      --  OUT transfer mask(Device mode)
      IPXFRM_IISOOXFRM : Boolean := False;
      --  unspecified
      Reserved_22_22   : Bit := 16#0#;
      --  Reset detected interrupt mask
      RSTDETM          : Boolean := False;
      --  Read-only. Host port interrupt mask
      PRTIM            : Boolean := False;
      --  Host channels interrupt mask
      HCIM             : Boolean := False;
      --  Periodic TxFIFO empty mask
      PTXFEM           : Boolean := False;
      --  LPM interrupt mask
      LPMIN            : Boolean := False;
      --  Connector ID status change mask
      CIDSCHGM         : Boolean := False;
      --  Disconnect detected interrupt mask
      DISCINT          : Boolean := False;
      --  Session request/new session detected interrupt mask
      SRQIM            : Boolean := False;
      --  Resume/remote wakeup detected interrupt mask
      WUIM             : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for OTG_FS_GINTMSK_Register use record
      Reserved_0_0     at 0 range 0 .. 0;
      MMISM            at 0 range 1 .. 1;
      OTGINT           at 0 range 2 .. 2;
      SOFM             at 0 range 3 .. 3;
      RXFLVLM          at 0 range 4 .. 4;
      NPTXFEM          at 0 range 5 .. 5;
      GINAKEFFM        at 0 range 6 .. 6;
      GONAKEFFM        at 0 range 7 .. 7;
      Reserved_8_9     at 0 range 8 .. 9;
      ESUSPM           at 0 range 10 .. 10;
      USBSUSPM         at 0 range 11 .. 11;
      USBRST           at 0 range 12 .. 12;
      ENUMDNEM         at 0 range 13 .. 13;
      ISOODRPM         at 0 range 14 .. 14;
      EOPFM            at 0 range 15 .. 15;
      Reserved_16_17   at 0 range 16 .. 17;
      IEPINT           at 0 range 18 .. 18;
      OEPINT           at 0 range 19 .. 19;
      IISOIXFRM        at 0 range 20 .. 20;
      IPXFRM_IISOOXFRM at 0 range 21 .. 21;
      Reserved_22_22   at 0 range 22 .. 22;
      RSTDETM          at 0 range 23 .. 23;
      PRTIM            at 0 range 24 .. 24;
      HCIM             at 0 range 25 .. 25;
      PTXFEM           at 0 range 26 .. 26;
      LPMIN            at 0 range 27 .. 27;
      CIDSCHGM         at 0 range 28 .. 28;
      DISCINT          at 0 range 29 .. 29;
      SRQIM            at 0 range 30 .. 30;
      WUIM             at 0 range 31 .. 31;
   end record;

   subtype OTG_FS_GRXSTSR_Device_EPNUM_Field is UInt4;
   subtype OTG_FS_GRXSTSR_Device_BCNT_Field is UInt11;
   subtype OTG_FS_GRXSTSR_Device_DPID_Field is UInt2;
   subtype OTG_FS_GRXSTSR_Device_PKTSTS_Field is UInt4;
   subtype OTG_FS_GRXSTSR_Device_FRMNUM_Field is UInt4;

   --  OTG_FS Receive status debug read(Device mode)
   type OTG_FS_GRXSTSR_Device_Register is record
      --  Read-only. Endpoint number
      EPNUM          : OTG_FS_GRXSTSR_Device_EPNUM_Field;
      --  Read-only. Byte count
      BCNT           : OTG_FS_GRXSTSR_Device_BCNT_Field;
      --  Read-only. Data PID
      DPID           : OTG_FS_GRXSTSR_Device_DPID_Field;
      --  Read-only. Packet status
      PKTSTS         : OTG_FS_GRXSTSR_Device_PKTSTS_Field;
      --  Read-only. Frame number
      FRMNUM         : OTG_FS_GRXSTSR_Device_FRMNUM_Field;
      --  unspecified
      Reserved_25_31 : UInt7;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for OTG_FS_GRXSTSR_Device_Register use record
      EPNUM          at 0 range 0 .. 3;
      BCNT           at 0 range 4 .. 14;
      DPID           at 0 range 15 .. 16;
      PKTSTS         at 0 range 17 .. 20;
      FRMNUM         at 0 range 21 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   subtype OTG_FS_GRXSTSR_Host_CHNUM_Field is UInt4;
   subtype OTG_FS_GRXSTSR_Host_BCNT_Field is UInt11;
   subtype OTG_FS_GRXSTSR_Host_DPID_Field is UInt2;
   subtype OTG_FS_GRXSTSR_Host_PKTSTS_Field is UInt4;

   --  OTG_FS Receive status debug read(Host mode)
   type OTG_FS_GRXSTSR_Host_Register is record
      --  Read-only. Endpoint number
      CHNUM          : OTG_FS_GRXSTSR_Host_CHNUM_Field;
      --  Read-only. Byte count
      BCNT           : OTG_FS_GRXSTSR_Host_BCNT_Field;
      --  Read-only. Data PID
      DPID           : OTG_FS_GRXSTSR_Host_DPID_Field;
      --  Read-only. Packet status
      PKTSTS         : OTG_FS_GRXSTSR_Host_PKTSTS_Field;
      --  unspecified
      Reserved_21_31 : UInt11;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for OTG_FS_GRXSTSR_Host_Register use record
      CHNUM          at 0 range 0 .. 3;
      BCNT           at 0 range 4 .. 14;
      DPID           at 0 range 15 .. 16;
      PKTSTS         at 0 range 17 .. 20;
      Reserved_21_31 at 0 range 21 .. 31;
   end record;

   subtype OTG_FS_GRXSTSP_Device_EPNUM_Field is UInt4;
   subtype OTG_FS_GRXSTSP_Device_BCNT_Field is UInt11;
   subtype OTG_FS_GRXSTSP_Device_DPID_Field is UInt2;
   subtype OTG_FS_GRXSTSP_Device_PKTSTS_Field is UInt4;
   subtype OTG_FS_GRXSTSP_Device_FRMNUM_Field is UInt4;

   --  OTG status read and pop register (Device mode)
   type OTG_FS_GRXSTSP_Device_Register is record
      --  Read-only. Endpoint number
      EPNUM          : OTG_FS_GRXSTSP_Device_EPNUM_Field;
      --  Read-only. Byte count
      BCNT           : OTG_FS_GRXSTSP_Device_BCNT_Field;
      --  Read-only. Data PID
      DPID           : OTG_FS_GRXSTSP_Device_DPID_Field;
      --  Read-only. Packet status
      PKTSTS         : OTG_FS_GRXSTSP_Device_PKTSTS_Field;
      --  Read-only. Frame number
      FRMNUM         : OTG_FS_GRXSTSP_Device_FRMNUM_Field;
      --  unspecified
      Reserved_25_31 : UInt7;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for OTG_FS_GRXSTSP_Device_Register use record
      EPNUM          at 0 range 0 .. 3;
      BCNT           at 0 range 4 .. 14;
      DPID           at 0 range 15 .. 16;
      PKTSTS         at 0 range 17 .. 20;
      FRMNUM         at 0 range 21 .. 24;
      Reserved_25_31 at 0 range 25 .. 31;
   end record;

   subtype OTG_FS_GRXSTSP_Host_CHNUM_Field is UInt4;
   subtype OTG_FS_GRXSTSP_Host_BCNT_Field is UInt11;
   subtype OTG_FS_GRXSTSP_Host_DPID_Field is UInt2;
   subtype OTG_FS_GRXSTSP_Host_PKTSTS_Field is UInt4;

   --  OTG status read and pop register (Host mode)
   type OTG_FS_GRXSTSP_Host_Register is record
      --  Read-only. Channel number
      CHNUM          : OTG_FS_GRXSTSP_Host_CHNUM_Field;
      --  Read-only. Byte count
      BCNT           : OTG_FS_GRXSTSP_Host_BCNT_Field;
      --  Read-only. Data PID
      DPID           : OTG_FS_GRXSTSP_Host_DPID_Field;
      --  Read-only. Packet status
      PKTSTS         : OTG_FS_GRXSTSP_Host_PKTSTS_Field;
      --  unspecified
      Reserved_21_31 : UInt11;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for OTG_FS_GRXSTSP_Host_Register use record
      CHNUM          at 0 range 0 .. 3;
      BCNT           at 0 range 4 .. 14;
      DPID           at 0 range 15 .. 16;
      PKTSTS         at 0 range 17 .. 20;
      Reserved_21_31 at 0 range 21 .. 31;
   end record;

   subtype OTG_FS_GRXFSIZ_RXFD_Field is UInt16;

   --  OTG_FS Receive FIFO size register (OTG_FS_GRXFSIZ)
   type OTG_FS_GRXFSIZ_Register is record
      --  RxFIFO depth
      RXFD           : OTG_FS_GRXFSIZ_RXFD_Field := 16#200#;
      --  unspecified
      Reserved_16_31 : UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for OTG_FS_GRXFSIZ_Register use record
      RXFD           at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype OTG_FS_DIEPTXF0_Device_TX0FSA_Field is UInt16;
   subtype OTG_FS_DIEPTXF0_Device_TX0FD_Field is UInt16;

   --  OTG_FS Endpoint 0 Transmit FIFO size
   type OTG_FS_DIEPTXF0_Device_Register is record
      --  Endpoint 0 transmit RAM start address
      TX0FSA : OTG_FS_DIEPTXF0_Device_TX0FSA_Field := 16#200#;
      --  Endpoint 0 TxFIFO depth
      TX0FD  : OTG_FS_DIEPTXF0_Device_TX0FD_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for OTG_FS_DIEPTXF0_Device_Register use record
      TX0FSA at 0 range 0 .. 15;
      TX0FD  at 0 range 16 .. 31;
   end record;

   subtype OTG_FS_HNPTXFSIZ_Host_NPTXFSA_Field is UInt16;
   subtype OTG_FS_HNPTXFSIZ_Host_NPTXFD_Field is UInt16;

   --  OTG_FS Host non-periodic transmit FIFO size register
   type OTG_FS_HNPTXFSIZ_Host_Register is record
      --  Non-periodic transmit RAM start address
      NPTXFSA : OTG_FS_HNPTXFSIZ_Host_NPTXFSA_Field := 16#200#;
      --  Non-periodic TxFIFO depth
      NPTXFD  : OTG_FS_HNPTXFSIZ_Host_NPTXFD_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for OTG_FS_HNPTXFSIZ_Host_Register use record
      NPTXFSA at 0 range 0 .. 15;
      NPTXFD  at 0 range 16 .. 31;
   end record;

   subtype OTG_FS_HNPTXSTS_NPTXFSAV_Field is UInt16;
   subtype OTG_FS_HNPTXSTS_NPTQXSAV_Field is UInt8;
   subtype OTG_FS_HNPTXSTS_NPTXQTOP_Field is UInt7;

   --  OTG_FS non-periodic transmit FIFO/queue status register
   --  (OTG_FS_GNPTXSTS)
   type OTG_FS_HNPTXSTS_Register is record
      --  Read-only. Non-periodic TxFIFO space available
      NPTXFSAV       : OTG_FS_HNPTXSTS_NPTXFSAV_Field;
      --  Read-only. Non-periodic transmit request queue space available
      NPTQXSAV       : OTG_FS_HNPTXSTS_NPTQXSAV_Field;
      --  Read-only. Top of the non-periodic transmit request queue
      NPTXQTOP       : OTG_FS_HNPTXSTS_NPTXQTOP_Field;
      --  unspecified
      Reserved_31_31 : Bit;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for OTG_FS_HNPTXSTS_Register use record
      NPTXFSAV       at 0 range 0 .. 15;
      NPTQXSAV       at 0 range 16 .. 23;
      NPTXQTOP       at 0 range 24 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   subtype OTG_FS_GI2CCTL_RWDATA_Field is UInt8;
   subtype OTG_FS_GI2CCTL_REGADDR_Field is UInt8;
   subtype OTG_FS_GI2CCTL_ADDR_Field is UInt7;
   subtype OTG_FS_GI2CCTL_I2CDEVADR_Field is UInt2;

   --  OTG I2C access register
   type OTG_FS_GI2CCTL_Register is record
      --  I2C Read/Write Data
      RWDATA         : OTG_FS_GI2CCTL_RWDATA_Field := 16#0#;
      --  I2C Register Address
      REGADDR        : OTG_FS_GI2CCTL_REGADDR_Field := 16#4#;
      --  I2C Address
      ADDR           : OTG_FS_GI2CCTL_ADDR_Field := 16#0#;
      --  I2C Enable
      I2CEN          : Boolean := False;
      --  I2C ACK
      ACK            : Boolean := False;
      --  unspecified
      Reserved_25_25 : Bit := 16#1#;
      --  I2C Device Address
      I2CDEVADR      : OTG_FS_GI2CCTL_I2CDEVADR_Field := 16#0#;
      --  I2C DatSe0 USB mode
      I2CDATSE0      : Boolean := False;
      --  unspecified
      Reserved_29_29 : Bit := 16#0#;
      --  Read/Write Indicator
      RW             : Boolean := False;
      --  I2C Busy/Done
      BSYDNE         : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for OTG_FS_GI2CCTL_Register use record
      RWDATA         at 0 range 0 .. 7;
      REGADDR        at 0 range 8 .. 15;
      ADDR           at 0 range 16 .. 22;
      I2CEN          at 0 range 23 .. 23;
      ACK            at 0 range 24 .. 24;
      Reserved_25_25 at 0 range 25 .. 25;
      I2CDEVADR      at 0 range 26 .. 27;
      I2CDATSE0      at 0 range 28 .. 28;
      Reserved_29_29 at 0 range 29 .. 29;
      RW             at 0 range 30 .. 30;
      BSYDNE         at 0 range 31 .. 31;
   end record;

   --  OTG_FS general core configuration register (OTG_FS_GCCFG)
   type OTG_FS_GCCFG_Register is record
      --  Data contact detection (DCD) status
      DCDET          : Boolean := False;
      --  Primary detection (PD) status
      PDET           : Boolean := False;
      --  Secondary detection (SD) status
      SDET           : Boolean := False;
      --  DM pull-up detection status
      PS2DET         : Boolean := False;
      --  unspecified
      Reserved_4_15  : UInt12 := 16#0#;
      --  Power down
      PWRDWN         : Boolean := False;
      --  Battery charging detector (BCD) enable
      BCDEN          : Boolean := False;
      --  Data contact detection (DCD) mode enable
      DCDEN          : Boolean := False;
      --  Primary detection (PD) mode enable
      PDEN           : Boolean := False;
      --  Secondary detection (SD) mode enable
      SDEN           : Boolean := False;
      --  USB VBUS detection enable
      VBDEN          : Boolean := False;
      --  unspecified
      Reserved_22_31 : UInt10 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for OTG_FS_GCCFG_Register use record
      DCDET          at 0 range 0 .. 0;
      PDET           at 0 range 1 .. 1;
      SDET           at 0 range 2 .. 2;
      PS2DET         at 0 range 3 .. 3;
      Reserved_4_15  at 0 range 4 .. 15;
      PWRDWN         at 0 range 16 .. 16;
      BCDEN          at 0 range 17 .. 17;
      DCDEN          at 0 range 18 .. 18;
      PDEN           at 0 range 19 .. 19;
      SDEN           at 0 range 20 .. 20;
      VBDEN          at 0 range 21 .. 21;
      Reserved_22_31 at 0 range 22 .. 31;
   end record;

   subtype OTG_FS_GLPMCFG_BESL_Field is UInt4;
   subtype OTG_FS_GLPMCFG_BESLTHRS_Field is UInt4;
   subtype OTG_FS_GLPMCFG_LPMRST_Field is UInt2;
   subtype OTG_FS_GLPMCFG_LPMCHIDX_Field is UInt4;
   subtype OTG_FS_GLPMCFG_LPMRCNT_Field is UInt3;
   subtype OTG_FS_GLPMCFG_LPMRCNTSTS_Field is UInt3;

   --  OTG core LPM configuration register
   type OTG_FS_GLPMCFG_Register is record
      --  LPM support enable
      LPMEN          : Boolean := False;
      --  LPM token acknowledge enable
      LPMACK         : Boolean := False;
      --  Best effort service latency
      BESL           : OTG_FS_GLPMCFG_BESL_Field := 16#0#;
      --  bRemoteWake value
      REMWAKE        : Boolean := False;
      --  L1 Shallow Sleep enable
      L1SSEN         : Boolean := False;
      --  BESL threshold
      BESLTHRS       : OTG_FS_GLPMCFG_BESLTHRS_Field := 16#4#;
      --  L1 deep sleep enable
      L1DSEN         : Boolean := False;
      --  Read-only. LPM response
      LPMRST         : OTG_FS_GLPMCFG_LPMRST_Field := 16#0#;
      --  Read-only. Port sleep status
      SLPSTS         : Boolean := False;
      --  Read-only. Sleep State Resume OK
      L1RSMOK        : Boolean := False;
      --  LPM Channel Index
      LPMCHIDX       : OTG_FS_GLPMCFG_LPMCHIDX_Field := 16#0#;
      --  LPM retry count
      LPMRCNT        : OTG_FS_GLPMCFG_LPMRCNT_Field := 16#0#;
      --  Send LPM transaction
      SNDLPM         : Boolean := False;
      --  Read-only. LPM retry count status
      LPMRCNTSTS     : OTG_FS_GLPMCFG_LPMRCNTSTS_Field := 16#1#;
      --  Enable best effort service latency
      ENBESL         : Boolean := False;
      --  unspecified
      Reserved_29_31 : UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for OTG_FS_GLPMCFG_Register use record
      LPMEN          at 0 range 0 .. 0;
      LPMACK         at 0 range 1 .. 1;
      BESL           at 0 range 2 .. 5;
      REMWAKE        at 0 range 6 .. 6;
      L1SSEN         at 0 range 7 .. 7;
      BESLTHRS       at 0 range 8 .. 11;
      L1DSEN         at 0 range 12 .. 12;
      LPMRST         at 0 range 13 .. 14;
      SLPSTS         at 0 range 15 .. 15;
      L1RSMOK        at 0 range 16 .. 16;
      LPMCHIDX       at 0 range 17 .. 20;
      LPMRCNT        at 0 range 21 .. 23;
      SNDLPM         at 0 range 24 .. 24;
      LPMRCNTSTS     at 0 range 25 .. 27;
      ENBESL         at 0 range 28 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   --  OTG power down register
   type OTG_FS_GPWRDN_Register is record
      --  ADP module enable
      ADPMEN         : Boolean := False;
      --  unspecified
      Reserved_1_22  : UInt22 := 16#200#;
      --  ADP interrupt flag
      ADPIF          : Boolean := False;
      --  unspecified
      Reserved_24_31 : UInt8 := 16#2#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for OTG_FS_GPWRDN_Register use record
      ADPMEN         at 0 range 0 .. 0;
      Reserved_1_22  at 0 range 1 .. 22;
      ADPIF          at 0 range 23 .. 23;
      Reserved_24_31 at 0 range 24 .. 31;
   end record;

   subtype OTG_FS_GADPCTL_PRBDSCHG_Field is UInt2;
   subtype OTG_FS_GADPCTL_PRBDELTA_Field is UInt2;
   subtype OTG_FS_GADPCTL_PRBPER_Field is UInt2;
   subtype OTG_FS_GADPCTL_RTIM_Field is UInt11;
   subtype OTG_FS_GADPCTL_AR_Field is UInt2;

   --  OTG ADP timer, control and status register
   type OTG_FS_GADPCTL_Register is record
      --  Probe discharge
      PRBDSCHG       : OTG_FS_GADPCTL_PRBDSCHG_Field := 16#0#;
      --  Probe delta
      PRBDELTA       : OTG_FS_GADPCTL_PRBDELTA_Field := 16#0#;
      --  Probe period
      PRBPER         : OTG_FS_GADPCTL_PRBPER_Field := 16#0#;
      --  Read-only. Ramp time
      RTIM           : OTG_FS_GADPCTL_RTIM_Field := 16#10#;
      --  Enable probe
      ENAPRB         : Boolean := False;
      --  Enable sense
      ENASNS         : Boolean := False;
      --  Read-only. ADP reset
      ADPRST         : Boolean := False;
      --  ADP enable
      ADPEN          : Boolean := False;
      --  ADP probe interrupt flag
      ADPPRBIF       : Boolean := False;
      --  ADP sense interrupt flag
      ADPSNSIF       : Boolean := False;
      --  ADP timeout interrupt flag
      ADPTOIF        : Boolean := False;
      --  ADP probe interrupt mask
      ADPPRBIM       : Boolean := False;
      --  ADP sense interrupt mask
      ADPSNSIM       : Boolean := True;
      --  ADP timeout interrupt mask
      ADPTOIM        : Boolean := False;
      --  Access request
      AR             : OTG_FS_GADPCTL_AR_Field := 16#0#;
      --  unspecified
      Reserved_29_31 : UInt3 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for OTG_FS_GADPCTL_Register use record
      PRBDSCHG       at 0 range 0 .. 1;
      PRBDELTA       at 0 range 2 .. 3;
      PRBPER         at 0 range 4 .. 5;
      RTIM           at 0 range 6 .. 16;
      ENAPRB         at 0 range 17 .. 17;
      ENASNS         at 0 range 18 .. 18;
      ADPRST         at 0 range 19 .. 19;
      ADPEN          at 0 range 20 .. 20;
      ADPPRBIF       at 0 range 21 .. 21;
      ADPSNSIF       at 0 range 22 .. 22;
      ADPTOIF        at 0 range 23 .. 23;
      ADPPRBIM       at 0 range 24 .. 24;
      ADPSNSIM       at 0 range 25 .. 25;
      ADPTOIM        at 0 range 26 .. 26;
      AR             at 0 range 27 .. 28;
      Reserved_29_31 at 0 range 29 .. 31;
   end record;

   subtype OTG_FS_HPTXFSIZ_PTXSA_Field is UInt16;
   subtype OTG_FS_HPTXFSIZ_PTXFSIZ_Field is UInt16;

   --  OTG_FS Host periodic transmit FIFO size register (OTG_FS_HPTXFSIZ)
   type OTG_FS_HPTXFSIZ_Register is record
      --  Host periodic TxFIFO start address
      PTXSA   : OTG_FS_HPTXFSIZ_PTXSA_Field := 16#600#;
      --  Host periodic TxFIFO depth
      PTXFSIZ : OTG_FS_HPTXFSIZ_PTXFSIZ_Field := 16#200#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for OTG_FS_HPTXFSIZ_Register use record
      PTXSA   at 0 range 0 .. 15;
      PTXFSIZ at 0 range 16 .. 31;
   end record;

   subtype OTG_FS_DIEPTXF_INEPTXSA_Field is UInt16;
   subtype OTG_FS_DIEPTXF_INEPTXFD_Field is UInt16;

   --  OTG_FS device IN endpoint transmit FIFO size register (OTG_FS_DIEPTXF1)
   type OTG_FS_DIEPTXF_Register is record
      --  IN endpoint FIFO2 transmit RAM start address
      INEPTXSA : OTG_FS_DIEPTXF_INEPTXSA_Field := 16#400#;
      --  IN endpoint TxFIFO depth
      INEPTXFD : OTG_FS_DIEPTXF_INEPTXFD_Field := 16#200#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for OTG_FS_DIEPTXF_Register use record
      INEPTXSA at 0 range 0 .. 15;
      INEPTXFD at 0 range 16 .. 31;
   end record;

   subtype OTG_FS_HCFG_FSLSPCS_Field is UInt2;

   --  OTG_FS host configuration register (OTG_FS_HCFG)
   type OTG_FS_HCFG_Register is record
      --  FS/LS PHY clock select
      FSLSPCS       : OTG_FS_HCFG_FSLSPCS_Field := 16#0#;
      --  Read-only. FS- and LS-only support
      FSLSS         : Boolean := False;
      --  unspecified
      Reserved_3_31 : UInt29 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for OTG_FS_HCFG_Register use record
      FSLSPCS       at 0 range 0 .. 1;
      FSLSS         at 0 range 2 .. 2;
      Reserved_3_31 at 0 range 3 .. 31;
   end record;

   subtype OTG_FS_HFIR_FRIVL_Field is UInt16;

   --  OTG_FS Host frame interval register
   type OTG_FS_HFIR_Register is record
      --  Frame interval
      FRIVL          : OTG_FS_HFIR_FRIVL_Field := 16#EA60#;
      --  unspecified
      Reserved_16_31 : UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for OTG_FS_HFIR_Register use record
      FRIVL          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype OTG_FS_HFNUM_FRNUM_Field is UInt16;
   subtype OTG_FS_HFNUM_FTREM_Field is UInt16;

   --  OTG_FS host frame number/frame time remaining register (OTG_FS_HFNUM)
   type OTG_FS_HFNUM_Register is record
      --  Read-only. Frame number
      FRNUM : OTG_FS_HFNUM_FRNUM_Field;
      --  Read-only. Frame time remaining
      FTREM : OTG_FS_HFNUM_FTREM_Field;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for OTG_FS_HFNUM_Register use record
      FRNUM at 0 range 0 .. 15;
      FTREM at 0 range 16 .. 31;
   end record;

   subtype OTG_FS_HPTXSTS_PTXFSAVL_Field is UInt16;
   subtype OTG_FS_HPTXSTS_PTXQSAV_Field is UInt8;
   subtype OTG_FS_HPTXSTS_PTXQTOP_Field is UInt8;

   --  OTG_FS_Host periodic transmit FIFO/queue status register
   --  (OTG_FS_HPTXSTS)
   type OTG_FS_HPTXSTS_Register is record
      --  Periodic transmit data FIFO space available
      PTXFSAVL : OTG_FS_HPTXSTS_PTXFSAVL_Field := 16#100#;
      --  Read-only. Periodic transmit request queue space available
      PTXQSAV  : OTG_FS_HPTXSTS_PTXQSAV_Field := 16#8#;
      --  Read-only. Top of the periodic transmit request queue
      PTXQTOP  : OTG_FS_HPTXSTS_PTXQTOP_Field := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for OTG_FS_HPTXSTS_Register use record
      PTXFSAVL at 0 range 0 .. 15;
      PTXQSAV  at 0 range 16 .. 23;
      PTXQTOP  at 0 range 24 .. 31;
   end record;

   subtype OTG_FS_HAINT_HAINT_Field is UInt16;

   --  OTG_FS Host all channels interrupt register
   type OTG_FS_HAINT_Register is record
      --  Read-only. Channel interrupts
      HAINT          : OTG_FS_HAINT_HAINT_Field;
      --  unspecified
      Reserved_16_31 : UInt16;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for OTG_FS_HAINT_Register use record
      HAINT          at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype OTG_FS_HAINTMSK_HAINTM_Field is UInt16;

   --  OTG_FS host all channels interrupt mask register
   type OTG_FS_HAINTMSK_Register is record
      --  Channel interrupt mask
      HAINTM         : OTG_FS_HAINTMSK_HAINTM_Field := 16#0#;
      --  unspecified
      Reserved_16_31 : UInt16 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for OTG_FS_HAINTMSK_Register use record
      HAINTM         at 0 range 0 .. 15;
      Reserved_16_31 at 0 range 16 .. 31;
   end record;

   subtype OTG_FS_HPRT_PLSTS_Field is UInt2;
   subtype OTG_FS_HPRT_PTCTL_Field is UInt4;
   subtype OTG_FS_HPRT_PSPD_Field is UInt2;

   --  OTG_FS host port control and status register (OTG_FS_HPRT)
   type OTG_FS_HPRT_Register is record
      --  Read-only. Port connect status
      PCSTS          : Boolean := False;
      --  Port connect detected
      PCDET          : Boolean := False;
      --  Port enable
      PENA           : Boolean := False;
      --  Port enable/disable change
      PENCHNG        : Boolean := False;
      --  Read-only. Port overcurrent active
      POCA           : Boolean := False;
      --  Port overcurrent change
      POCCHNG        : Boolean := False;
      --  Port resume
      PRES           : Boolean := False;
      --  Port suspend
      PSUSP          : Boolean := False;
      --  Port reset
      PRST           : Boolean := False;
      --  unspecified
      Reserved_9_9   : Bit := 16#0#;
      --  Read-only. Port line status
      PLSTS          : OTG_FS_HPRT_PLSTS_Field := 16#0#;
      --  Port power
      PPWR           : Boolean := False;
      --  Port test control
      PTCTL          : OTG_FS_HPRT_PTCTL_Field := 16#0#;
      --  Read-only. Port speed
      PSPD           : OTG_FS_HPRT_PSPD_Field := 16#0#;
      --  unspecified
      Reserved_19_31 : UInt13 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for OTG_FS_HPRT_Register use record
      PCSTS          at 0 range 0 .. 0;
      PCDET          at 0 range 1 .. 1;
      PENA           at 0 range 2 .. 2;
      PENCHNG        at 0 range 3 .. 3;
      POCA           at 0 range 4 .. 4;
      POCCHNG        at 0 range 5 .. 5;
      PRES           at 0 range 6 .. 6;
      PSUSP          at 0 range 7 .. 7;
      PRST           at 0 range 8 .. 8;
      Reserved_9_9   at 0 range 9 .. 9;
      PLSTS          at 0 range 10 .. 11;
      PPWR           at 0 range 12 .. 12;
      PTCTL          at 0 range 13 .. 16;
      PSPD           at 0 range 17 .. 18;
      Reserved_19_31 at 0 range 19 .. 31;
   end record;

   subtype OTG_FS_HCCHAR_MPSIZ_Field is UInt11;
   subtype OTG_FS_HCCHAR_EPNUM_Field is UInt4;
   subtype OTG_FS_HCCHAR_EPTYP_Field is UInt2;
   subtype OTG_FS_HCCHAR_MCNT_Field is UInt2;
   subtype OTG_FS_HCCHAR_DAD_Field is UInt7;

   --  OTG_FS host channel-0 characteristics register (OTG_FS_HCCHAR0)
   type OTG_FS_HCCHAR_Register is record
      --  Maximum packet size
      MPSIZ          : OTG_FS_HCCHAR_MPSIZ_Field := 16#0#;
      --  Endpoint number
      EPNUM          : OTG_FS_HCCHAR_EPNUM_Field := 16#0#;
      --  Endpoint direction
      EPDIR          : Boolean := False;
      --  unspecified
      Reserved_16_16 : Bit := 16#0#;
      --  Low-speed device
      LSDEV          : Boolean := False;
      --  Endpoint type
      EPTYP          : OTG_FS_HCCHAR_EPTYP_Field := 16#0#;
      --  Multicount
      MCNT           : OTG_FS_HCCHAR_MCNT_Field := 16#0#;
      --  Device address
      DAD            : OTG_FS_HCCHAR_DAD_Field := 16#0#;
      --  Odd frame
      ODDFRM         : Boolean := False;
      --  Channel disable
      CHDIS          : Boolean := False;
      --  Channel enable
      CHENA          : Boolean := False;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for OTG_FS_HCCHAR_Register use record
      MPSIZ          at 0 range 0 .. 10;
      EPNUM          at 0 range 11 .. 14;
      EPDIR          at 0 range 15 .. 15;
      Reserved_16_16 at 0 range 16 .. 16;
      LSDEV          at 0 range 17 .. 17;
      EPTYP          at 0 range 18 .. 19;
      MCNT           at 0 range 20 .. 21;
      DAD            at 0 range 22 .. 28;
      ODDFRM         at 0 range 29 .. 29;
      CHDIS          at 0 range 30 .. 30;
      CHENA          at 0 range 31 .. 31;
   end record;

   --  OTG_FS host channel-0 interrupt register (OTG_FS_HCINT0)
   type OTG_FS_HCINT_Register is record
      --  Transfer completed
      XFRC           : Boolean := False;
      --  Channel halted
      CHH            : Boolean := False;
      --  unspecified
      Reserved_2_2   : Bit := 16#0#;
      --  STALL response received interrupt
      STALL          : Boolean := False;
      --  NAK response received interrupt
      NAK            : Boolean := False;
      --  ACK response received/transmitted interrupt
      ACK            : Boolean := False;
      --  unspecified
      Reserved_6_6   : Bit := 16#0#;
      --  Transaction error
      TXERR          : Boolean := False;
      --  Babble error
      BBERR          : Boolean := False;
      --  Frame overrun
      FRMOR          : Boolean := False;
      --  Data toggle error
      DTERR          : Boolean := False;
      --  unspecified
      Reserved_11_31 : UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for OTG_FS_HCINT_Register use record
      XFRC           at 0 range 0 .. 0;
      CHH            at 0 range 1 .. 1;
      Reserved_2_2   at 0 range 2 .. 2;
      STALL          at 0 range 3 .. 3;
      NAK            at 0 range 4 .. 4;
      ACK            at 0 range 5 .. 5;
      Reserved_6_6   at 0 range 6 .. 6;
      TXERR          at 0 range 7 .. 7;
      BBERR          at 0 range 8 .. 8;
      FRMOR          at 0 range 9 .. 9;
      DTERR          at 0 range 10 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   --  OTG_FS host channel-0 mask register (OTG_FS_HCINTMSK0)
   type OTG_FS_HCINTMSK_Register is record
      --  Transfer completed mask
      XFRCM          : Boolean := False;
      --  Channel halted mask
      CHHM           : Boolean := False;
      --  unspecified
      Reserved_2_2   : Bit := 16#0#;
      --  STALL response received interrupt mask
      STALLM         : Boolean := False;
      --  NAK response received interrupt mask
      NAKM           : Boolean := False;
      --  ACK response received/transmitted interrupt mask
      ACKM           : Boolean := False;
      --  response received interrupt mask
      NYET           : Boolean := False;
      --  Transaction error mask
      TXERRM         : Boolean := False;
      --  Babble error mask
      BBERRM         : Boolean := False;
      --  Frame overrun mask
      FRMORM         : Boolean := False;
      --  Data toggle error mask
      DTERRM         : Boolean := False;
      --  unspecified
      Reserved_11_31 : UInt21 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for OTG_FS_HCINTMSK_Register use record
      XFRCM          at 0 range 0 .. 0;
      CHHM           at 0 range 1 .. 1;
      Reserved_2_2   at 0 range 2 .. 2;
      STALLM         at 0 range 3 .. 3;
      NAKM           at 0 range 4 .. 4;
      ACKM           at 0 range 5 .. 5;
      NYET           at 0 range 6 .. 6;
      TXERRM         at 0 range 7 .. 7;
      BBERRM         at 0 range 8 .. 8;
      FRMORM         at 0 range 9 .. 9;
      DTERRM         at 0 range 10 .. 10;
      Reserved_11_31 at 0 range 11 .. 31;
   end record;

   subtype OTG_FS_HCTSIZ_XFRSIZ_Field is UInt19;
   subtype OTG_FS_HCTSIZ_PKTCNT_Field is UInt10;
   subtype OTG_FS_HCTSIZ_DPID_Field is UInt2;

   --  OTG_FS host channel-0 transfer size register
   type OTG_FS_HCTSIZ_Register is record
      --  Transfer size
      XFRSIZ         : OTG_FS_HCTSIZ_XFRSIZ_Field := 16#0#;
      --  Packet count
      PKTCNT         : OTG_FS_HCTSIZ_PKTCNT_Field := 16#0#;
      --  Data PID
      DPID           : OTG_FS_HCTSIZ_DPID_Field := 16#0#;
      --  unspecified
      Reserved_31_31 : Bit := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for OTG_FS_HCTSIZ_Register use record
      XFRSIZ         at 0 range 0 .. 18;
      PKTCNT         at 0 range 19 .. 28;
      DPID           at 0 range 29 .. 30;
      Reserved_31_31 at 0 range 31 .. 31;
   end record;

   --  OTG_FS power and clock gating control register (OTG_FS_PCGCCTL)
   type OTG_FS_PCGCCTL_Register is record
      --  Stop PHY clock
      STPPCLK       : Boolean := False;
      --  Gate HCLK
      GATEHCLK      : Boolean := False;
      --  unspecified
      Reserved_2_3  : UInt2 := 16#0#;
      --  PHY Suspended
      PHYSUSP       : Boolean := False;
      --  unspecified
      Reserved_5_31 : UInt27 := 16#0#;
   end record
     with Volatile_Full_Access, Size => 32,
          Bit_Order => System.Low_Order_First;

   for OTG_FS_PCGCCTL_Register use record
      STPPCLK       at 0 range 0 .. 0;
      GATEHCLK      at 0 range 1 .. 1;
      Reserved_2_3  at 0 range 2 .. 3;
      PHYSUSP       at 0 range 4 .. 4;
      Reserved_5_31 at 0 range 5 .. 31;
   end record;

   -----------------
   -- Peripherals --
   -----------------

   --  USB on the go full speed
   type OTG_FS_DEVICE_Peripheral is record
      --  OTG_FS device configuration register (OTG_FS_DCFG)
      OTG_FS_DCFG       : aliased OTG_FS_DCFG_Register;
      --  OTG_FS device control register (OTG_FS_DCTL)
      OTG_FS_DCTL       : aliased OTG_FS_DCTL_Register;
      --  OTG_FS device status register (OTG_FS_DSTS)
      OTG_FS_DSTS       : aliased OTG_FS_DSTS_Register;
      --  OTG_FS device IN endpoint common interrupt mask register
      --  (OTG_FS_DIEPMSK)
      OTG_FS_DIEPMSK    : aliased OTG_FS_DIEPMSK_Register;
      --  OTG_FS device OUT endpoint common interrupt mask register
      --  (OTG_FS_DOEPMSK)
      OTG_FS_DOEPMSK    : aliased OTG_FS_DOEPMSK_Register;
      --  OTG_FS device all endpoints interrupt register (OTG_FS_DAINT)
      OTG_FS_DAINT      : aliased OTG_FS_DAINT_Register;
      --  OTG_FS all endpoints interrupt mask register (OTG_FS_DAINTMSK)
      OTG_FS_DAINTMSK   : aliased OTG_FS_DAINTMSK_Register;
      --  OTG_FS device VBUS discharge time register
      OTG_FS_DVBUSDIS   : aliased OTG_FS_DVBUSDIS_Register;
      --  OTG_FS device VBUS pulsing time register
      OTG_FS_DVBUSPULSE : aliased OTG_FS_DVBUSPULSE_Register;
      --  OTG_FS device IN endpoint FIFO empty interrupt mask register
      OTG_FS_DIEPEMPMSK : aliased OTG_FS_DIEPEMPMSK_Register;
      --  OTG_FS device control IN endpoint 0 control register
      --  (OTG_FS_DIEPCTL0)
      OTG_FS_DIEPCTL0   : aliased OTG_FS_DIEPCTL0_Register;
      --  device endpoint-x interrupt register
      OTG_FS_DIEPINT0   : aliased OTG_FS_DIEPINT_Register;
      --  device endpoint-0 transfer size register
      OTG_FS_DIEPTSIZ0  : aliased OTG_FS_DIEPTSIZ0_Register;
      --  OTG_FS device IN endpoint transmit FIFO status register
      OTG_FS_DTXFSTS0   : aliased OTG_FS_DTXFSTS_Register;
      --  OTG device endpoint-1 control register
      OTG_FS_DIEPCTL1   : aliased OTG_FS_DIEPCTL1_Register;
      --  device endpoint-1 interrupt register
      OTG_FS_DIEPINT1   : aliased OTG_FS_DIEPINT_Register;
      --  device endpoint-1 transfer size register
      OTG_FS_DIEPTSIZ1  : aliased OTG_FS_DIEPTSIZ_Register;
      --  OTG_FS device IN endpoint transmit FIFO status register
      OTG_FS_DTXFSTS1   : aliased OTG_FS_DTXFSTS_Register;
      --  OTG device endpoint-2 control register
      OTG_FS_DIEPCTL2   : aliased OTG_FS_DIEPCTL_Register;
      --  device endpoint-2 interrupt register
      OTG_FS_DIEPINT2   : aliased OTG_FS_DIEPINT_Register;
      --  device endpoint-2 transfer size register
      OTG_FS_DIEPTSIZ2  : aliased OTG_FS_DIEPTSIZ_Register;
      --  OTG_FS device IN endpoint transmit FIFO status register
      OTG_FS_DTXFSTS2   : aliased OTG_FS_DTXFSTS_Register;
      --  OTG device endpoint-3 control register
      OTG_FS_DIEPCTL3   : aliased OTG_FS_DIEPCTL_Register;
      --  device endpoint-3 interrupt register
      OTG_FS_DIEPINT3   : aliased OTG_FS_DIEPINT_Register;
      --  device endpoint-3 transfer size register
      OTG_FS_DIEPTSIZ3  : aliased OTG_FS_DIEPTSIZ_Register;
      --  OTG_FS device IN endpoint transmit FIFO status register
      OTG_FS_DTXFSTS3   : aliased OTG_FS_DTXFSTS_Register;
      --  OTG device endpoint-4 control register
      OTG_FS_DIEPCTL4   : aliased OTG_FS_DIEPCTL_Register;
      --  device endpoint-4 interrupt register
      OTG_FS_DIEPINT4   : aliased OTG_FS_DIEPINT_Register;
      --  device endpoint-4 transfer size register
      OTG_FS_DIEPTSIZ4  : aliased OTG_FS_DIEPTSIZ_Register;
      --  OTG_FS device IN endpoint transmit FIFO status register
      OTG_FS_DTXFSTS4   : aliased OTG_FS_DTXFSTS_Register;
      --  OTG device endpoint-5 control register
      OTG_FS_DIEPCTL5   : aliased OTG_FS_DIEPCTL_Register;
      --  device endpoint-5 interrupt register
      OTG_FS_DIEPINT5   : aliased OTG_FS_DIEPINT_Register;
      --  device endpoint-5 transfer size register
      OTG_FS_DIEPTSIZ55 : aliased OTG_FS_DIEPTSIZ_Register;
      --  OTG_FS device IN endpoint transmit FIFO status register
      OTG_FS_DTXFSTS55  : aliased OTG_FS_DTXFSTS_Register;
      --  device endpoint-0 control register
      OTG_FS_DOEPCTL0   : aliased OTG_FS_DOEPCTL0_Register;
      --  device endpoint-0 interrupt register
      OTG_FS_DOEPINT0   : aliased OTG_FS_DOEPINT_Register;
      --  device OUT endpoint-0 transfer size register
      OTG_FS_DOEPTSIZ0  : aliased OTG_FS_DOEPTSIZ0_Register;
      --  device endpoint-1 control register
      OTG_FS_DOEPCTL1   : aliased OTG_FS_DOEPCTL_Register;
      --  device endpoint-1 interrupt register
      OTG_FS_DOEPINT1   : aliased OTG_FS_DOEPINT_Register;
      --  device OUT endpoint-1 transfer size register
      OTG_FS_DOEPTSIZ1  : aliased OTG_FS_DOEPTSIZ_Register;
      --  device endpoint-2 control register
      OTG_FS_DOEPCTL2   : aliased OTG_FS_DOEPCTL_Register;
      --  device endpoint-2 interrupt register
      OTG_FS_DOEPINT2   : aliased OTG_FS_DOEPINT_Register;
      --  device OUT endpoint-2 transfer size register
      OTG_FS_DOEPTSIZ2  : aliased OTG_FS_DOEPTSIZ_Register;
      --  device endpoint-3 control register
      OTG_FS_DOEPCTL3   : aliased OTG_FS_DOEPCTL_Register;
      --  device endpoint-3 interrupt register
      OTG_FS_DOEPINT3   : aliased OTG_FS_DOEPINT_Register;
      --  device OUT endpoint-3 transfer size register
      OTG_FS_DOEPTSIZ3  : aliased OTG_FS_DOEPTSIZ_Register;
      --  device endpoint-4 control register
      OTG_FS_DOEPCTL4   : aliased OTG_FS_DOEPCTL_Register;
      --  device endpoint-4 interrupt register
      OTG_FS_DOEPINT4   : aliased OTG_FS_DOEPINT_Register;
      --  device OUT endpoint-4 transfer size register
      OTG_FS_DOEPTSIZ4  : aliased OTG_FS_DOEPTSIZ_Register;
      --  device endpoint-5 control register
      OTG_FS_DOEPCTL5   : aliased OTG_FS_DOEPCTL_Register;
      --  device endpoint-5 interrupt register
      OTG_FS_DOEPINT5   : aliased OTG_FS_DOEPINT_Register;
      --  device OUT endpoint-5 transfer size register
      OTG_FS_DOEPTSIZ5  : aliased OTG_FS_DOEPTSIZ_Register;
   end record
     with Volatile;

   for OTG_FS_DEVICE_Peripheral use record
      OTG_FS_DCFG       at 16#0# range 0 .. 31;
      OTG_FS_DCTL       at 16#4# range 0 .. 31;
      OTG_FS_DSTS       at 16#8# range 0 .. 31;
      OTG_FS_DIEPMSK    at 16#10# range 0 .. 31;
      OTG_FS_DOEPMSK    at 16#14# range 0 .. 31;
      OTG_FS_DAINT      at 16#18# range 0 .. 31;
      OTG_FS_DAINTMSK   at 16#1C# range 0 .. 31;
      OTG_FS_DVBUSDIS   at 16#28# range 0 .. 31;
      OTG_FS_DVBUSPULSE at 16#2C# range 0 .. 31;
      OTG_FS_DIEPEMPMSK at 16#34# range 0 .. 31;
      OTG_FS_DIEPCTL0   at 16#100# range 0 .. 31;
      OTG_FS_DIEPINT0   at 16#108# range 0 .. 31;
      OTG_FS_DIEPTSIZ0  at 16#110# range 0 .. 31;
      OTG_FS_DTXFSTS0   at 16#118# range 0 .. 31;
      OTG_FS_DIEPCTL1   at 16#120# range 0 .. 31;
      OTG_FS_DIEPINT1   at 16#128# range 0 .. 31;
      OTG_FS_DIEPTSIZ1  at 16#130# range 0 .. 31;
      OTG_FS_DTXFSTS1   at 16#138# range 0 .. 31;
      OTG_FS_DIEPCTL2   at 16#140# range 0 .. 31;
      OTG_FS_DIEPINT2   at 16#148# range 0 .. 31;
      OTG_FS_DIEPTSIZ2  at 16#150# range 0 .. 31;
      OTG_FS_DTXFSTS2   at 16#158# range 0 .. 31;
      OTG_FS_DIEPCTL3   at 16#160# range 0 .. 31;
      OTG_FS_DIEPINT3   at 16#168# range 0 .. 31;
      OTG_FS_DIEPTSIZ3  at 16#170# range 0 .. 31;
      OTG_FS_DTXFSTS3   at 16#178# range 0 .. 31;
      OTG_FS_DIEPCTL4   at 16#180# range 0 .. 31;
      OTG_FS_DIEPINT4   at 16#188# range 0 .. 31;
      OTG_FS_DIEPTSIZ4  at 16#194# range 0 .. 31;
      OTG_FS_DTXFSTS4   at 16#19C# range 0 .. 31;
      OTG_FS_DIEPCTL5   at 16#1A0# range 0 .. 31;
      OTG_FS_DIEPINT5   at 16#1A8# range 0 .. 31;
      OTG_FS_DIEPTSIZ55 at 16#1B0# range 0 .. 31;
      OTG_FS_DTXFSTS55  at 16#1B8# range 0 .. 31;
      OTG_FS_DOEPCTL0   at 16#300# range 0 .. 31;
      OTG_FS_DOEPINT0   at 16#308# range 0 .. 31;
      OTG_FS_DOEPTSIZ0  at 16#310# range 0 .. 31;
      OTG_FS_DOEPCTL1   at 16#320# range 0 .. 31;
      OTG_FS_DOEPINT1   at 16#328# range 0 .. 31;
      OTG_FS_DOEPTSIZ1  at 16#330# range 0 .. 31;
      OTG_FS_DOEPCTL2   at 16#340# range 0 .. 31;
      OTG_FS_DOEPINT2   at 16#348# range 0 .. 31;
      OTG_FS_DOEPTSIZ2  at 16#350# range 0 .. 31;
      OTG_FS_DOEPCTL3   at 16#360# range 0 .. 31;
      OTG_FS_DOEPINT3   at 16#368# range 0 .. 31;
      OTG_FS_DOEPTSIZ3  at 16#370# range 0 .. 31;
      OTG_FS_DOEPCTL4   at 16#378# range 0 .. 31;
      OTG_FS_DOEPINT4   at 16#380# range 0 .. 31;
      OTG_FS_DOEPTSIZ4  at 16#388# range 0 .. 31;
      OTG_FS_DOEPCTL5   at 16#390# range 0 .. 31;
      OTG_FS_DOEPINT5   at 16#398# range 0 .. 31;
      OTG_FS_DOEPTSIZ5  at 16#3A0# range 0 .. 31;
   end record;

   --  USB on the go full speed
   OTG_FS_DEVICE_Periph : aliased OTG_FS_DEVICE_Peripheral
     with Import, Address => System'To_Address (16#50000800#);

   type OTG_FS_GLOBAL_Disc is
     (
      Device,
      Host,
      Dieptxf0_Device,
      Hnptxfsiz_Host);

   --  USB on the go full speed
   type OTG_FS_GLOBAL_Peripheral
     (Discriminent : OTG_FS_GLOBAL_Disc := Device)
   is record
      --  OTG_FS control and status register (OTG_FS_GOTGCTL)
      OTG_FS_GOTGCTL         : aliased OTG_FS_GOTGCTL_Register;
      --  OTG_FS interrupt register (OTG_FS_GOTGINT)
      OTG_FS_GOTGINT         : aliased OTG_FS_GOTGINT_Register;
      --  OTG_FS AHB configuration register (OTG_FS_GAHBCFG)
      OTG_FS_GAHBCFG         : aliased OTG_FS_GAHBCFG_Register;
      --  OTG_FS USB configuration register (OTG_FS_GUSBCFG)
      OTG_FS_GUSBCFG         : aliased OTG_FS_GUSBCFG_Register;
      --  OTG_FS reset register (OTG_FS_GRSTCTL)
      OTG_FS_GRSTCTL         : aliased OTG_FS_GRSTCTL_Register;
      --  OTG_FS core interrupt register (OTG_FS_GINTSTS)
      OTG_FS_GINTSTS         : aliased OTG_FS_GINTSTS_Register;
      --  OTG_FS interrupt mask register (OTG_FS_GINTMSK)
      OTG_FS_GINTMSK         : aliased OTG_FS_GINTMSK_Register;
      --  OTG_FS Receive FIFO size register (OTG_FS_GRXFSIZ)
      OTG_FS_GRXFSIZ         : aliased OTG_FS_GRXFSIZ_Register;
      --  OTG_FS non-periodic transmit FIFO/queue status register
      --  (OTG_FS_GNPTXSTS)
      OTG_FS_HNPTXSTS        : aliased OTG_FS_HNPTXSTS_Register;
      --  OTG I2C access register
      OTG_FS_GI2CCTL         : aliased OTG_FS_GI2CCTL_Register;
      --  OTG_FS general core configuration register (OTG_FS_GCCFG)
      OTG_FS_GCCFG           : aliased OTG_FS_GCCFG_Register;
      --  core ID register
      OTG_FS_CID             : aliased UInt32;
      --  OTG core LPM configuration register
      OTG_FS_GLPMCFG         : aliased OTG_FS_GLPMCFG_Register;
      --  OTG power down register
      OTG_FS_GPWRDN          : aliased OTG_FS_GPWRDN_Register;
      --  OTG ADP timer, control and status register
      OTG_FS_GADPCTL         : aliased OTG_FS_GADPCTL_Register;
      --  OTG_FS Host periodic transmit FIFO size register (OTG_FS_HPTXFSIZ)
      OTG_FS_HPTXFSIZ        : aliased OTG_FS_HPTXFSIZ_Register;
      --  OTG_FS device IN endpoint transmit FIFO size register
      --  (OTG_FS_DIEPTXF1)
      OTG_FS_DIEPTXF1        : aliased OTG_FS_DIEPTXF_Register;
      --  OTG_FS device IN endpoint transmit FIFO size register
      --  (OTG_FS_DIEPTXF2)
      OTG_FS_DIEPTXF2        : aliased OTG_FS_DIEPTXF_Register;
      --  OTG_FS device IN endpoint transmit FIFO size register
      --  (OTG_FS_DIEPTXF3)
      OTG_FS_DIEPTXF3        : aliased OTG_FS_DIEPTXF_Register;
      --  OTG_FS device IN endpoint transmit FIFO size register
      --  (OTG_FS_DIEPTXF4)
      OTG_FS_DIEPTXF4        : aliased OTG_FS_DIEPTXF_Register;
      --  OTG_FS device IN endpoint transmit FIFO size register
      --  (OTG_FS_DIEPTXF5)
      OTG_FS_DIEPTXF5        : aliased OTG_FS_DIEPTXF_Register;
      case Discriminent is
         when Device =>
            --  OTG_FS Receive status debug read(Device mode)
            OTG_FS_GRXSTSR_Device : aliased OTG_FS_GRXSTSR_Device_Register;
            --  OTG status read and pop register (Device mode)
            OTG_FS_GRXSTSP_Device : aliased OTG_FS_GRXSTSP_Device_Register;
         when Host =>
            --  OTG_FS Receive status debug read(Host mode)
            OTG_FS_GRXSTSR_Host : aliased OTG_FS_GRXSTSR_Host_Register;
            --  OTG status read and pop register (Host mode)
            OTG_FS_GRXSTSP_Host : aliased OTG_FS_GRXSTSP_Host_Register;
         when Dieptxf0_Device =>
            --  OTG_FS Endpoint 0 Transmit FIFO size
            OTG_FS_DIEPTXF0_Device : aliased OTG_FS_DIEPTXF0_Device_Register;
         when Hnptxfsiz_Host =>
            --  OTG_FS Host non-periodic transmit FIFO size register
            OTG_FS_HNPTXFSIZ_Host : aliased OTG_FS_HNPTXFSIZ_Host_Register;
      end case;
   end record
     with Unchecked_Union, Volatile;

   for OTG_FS_GLOBAL_Peripheral use record
      OTG_FS_GOTGCTL         at 16#0# range 0 .. 31;
      OTG_FS_GOTGINT         at 16#4# range 0 .. 31;
      OTG_FS_GAHBCFG         at 16#8# range 0 .. 31;
      OTG_FS_GUSBCFG         at 16#C# range 0 .. 31;
      OTG_FS_GRSTCTL         at 16#10# range 0 .. 31;
      OTG_FS_GINTSTS         at 16#14# range 0 .. 31;
      OTG_FS_GINTMSK         at 16#18# range 0 .. 31;
      OTG_FS_GRXFSIZ         at 16#24# range 0 .. 31;
      OTG_FS_HNPTXSTS        at 16#2C# range 0 .. 31;
      OTG_FS_GI2CCTL         at 16#30# range 0 .. 31;
      OTG_FS_GCCFG           at 16#38# range 0 .. 31;
      OTG_FS_CID             at 16#3C# range 0 .. 31;
      OTG_FS_GLPMCFG         at 16#54# range 0 .. 31;
      OTG_FS_GPWRDN          at 16#58# range 0 .. 31;
      OTG_FS_GADPCTL         at 16#60# range 0 .. 31;
      OTG_FS_HPTXFSIZ        at 16#100# range 0 .. 31;
      OTG_FS_DIEPTXF1        at 16#104# range 0 .. 31;
      OTG_FS_DIEPTXF2        at 16#108# range 0 .. 31;
      OTG_FS_DIEPTXF3        at 16#10C# range 0 .. 31;
      OTG_FS_DIEPTXF4        at 16#110# range 0 .. 31;
      OTG_FS_DIEPTXF5        at 16#114# range 0 .. 31;
      OTG_FS_GRXSTSR_Device  at 16#1C# range 0 .. 31;
      OTG_FS_GRXSTSP_Device  at 16#20# range 0 .. 31;
      OTG_FS_GRXSTSR_Host    at 16#1C# range 0 .. 31;
      OTG_FS_GRXSTSP_Host    at 16#20# range 0 .. 31;
      OTG_FS_DIEPTXF0_Device at 16#28# range 0 .. 31;
      OTG_FS_HNPTXFSIZ_Host  at 16#28# range 0 .. 31;
   end record;

   --  USB on the go full speed
   OTG_FS_GLOBAL_Periph : aliased OTG_FS_GLOBAL_Peripheral
     with Import, Address => System'To_Address (16#50000000#);

   --  USB on the go full speed
   type OTG_FS_HOST_Peripheral is record
      --  OTG_FS host configuration register (OTG_FS_HCFG)
      OTG_FS_HCFG       : aliased OTG_FS_HCFG_Register;
      --  OTG_FS Host frame interval register
      OTG_FS_HFIR       : aliased OTG_FS_HFIR_Register;
      --  OTG_FS host frame number/frame time remaining register (OTG_FS_HFNUM)
      OTG_FS_HFNUM      : aliased OTG_FS_HFNUM_Register;
      --  OTG_FS_Host periodic transmit FIFO/queue status register
      --  (OTG_FS_HPTXSTS)
      OTG_FS_HPTXSTS    : aliased OTG_FS_HPTXSTS_Register;
      --  OTG_FS Host all channels interrupt register
      OTG_FS_HAINT      : aliased OTG_FS_HAINT_Register;
      --  OTG_FS host all channels interrupt mask register
      OTG_FS_HAINTMSK   : aliased OTG_FS_HAINTMSK_Register;
      --  OTG_FS host port control and status register (OTG_FS_HPRT)
      OTG_FS_HPRT       : aliased OTG_FS_HPRT_Register;
      --  OTG_FS host channel-0 characteristics register (OTG_FS_HCCHAR0)
      OTG_FS_HCCHAR0    : aliased OTG_FS_HCCHAR_Register;
      --  OTG_FS host channel-0 interrupt register (OTG_FS_HCINT0)
      OTG_FS_HCINT0     : aliased OTG_FS_HCINT_Register;
      --  OTG_FS host channel-0 mask register (OTG_FS_HCINTMSK0)
      OTG_FS_HCINTMSK0  : aliased OTG_FS_HCINTMSK_Register;
      --  OTG_FS host channel-0 transfer size register
      OTG_FS_HCTSIZ0    : aliased OTG_FS_HCTSIZ_Register;
      --  OTG_FS host channel-1 characteristics register (OTG_FS_HCCHAR1)
      OTG_FS_HCCHAR1    : aliased OTG_FS_HCCHAR_Register;
      --  OTG_FS host channel-1 interrupt register (OTG_FS_HCINT1)
      OTG_FS_HCINT1     : aliased OTG_FS_HCINT_Register;
      --  OTG_FS host channel-1 mask register (OTG_FS_HCINTMSK1)
      OTG_FS_HCINTMSK1  : aliased OTG_FS_HCINTMSK_Register;
      --  OTG_FS host channel-1 transfer size register
      OTG_FS_HCTSIZ1    : aliased OTG_FS_HCTSIZ_Register;
      --  OTG_FS host channel-2 characteristics register (OTG_FS_HCCHAR2)
      OTG_FS_HCCHAR2    : aliased OTG_FS_HCCHAR_Register;
      --  OTG_FS host channel-2 interrupt register (OTG_FS_HCINT2)
      OTG_FS_HCINT2     : aliased OTG_FS_HCINT_Register;
      --  OTG_FS host channel-2 mask register (OTG_FS_HCINTMSK2)
      OTG_FS_HCINTMSK2  : aliased OTG_FS_HCINTMSK_Register;
      --  OTG_FS host channel-2 transfer size register
      OTG_FS_HCTSIZ2    : aliased OTG_FS_HCTSIZ_Register;
      --  OTG_FS host channel-3 characteristics register (OTG_FS_HCCHAR3)
      OTG_FS_HCCHAR3    : aliased OTG_FS_HCCHAR_Register;
      --  OTG_FS host channel-3 interrupt register (OTG_FS_HCINT3)
      OTG_FS_HCINT3     : aliased OTG_FS_HCINT_Register;
      --  OTG_FS host channel-3 mask register (OTG_FS_HCINTMSK3)
      OTG_FS_HCINTMSK3  : aliased OTG_FS_HCINTMSK_Register;
      --  OTG_FS host channel-3 transfer size register
      OTG_FS_HCTSIZ3    : aliased OTG_FS_HCTSIZ_Register;
      --  OTG_FS host channel-4 characteristics register (OTG_FS_HCCHAR4)
      OTG_FS_HCCHAR4    : aliased OTG_FS_HCCHAR_Register;
      --  OTG_FS host channel-4 interrupt register (OTG_FS_HCINT4)
      OTG_FS_HCINT4     : aliased OTG_FS_HCINT_Register;
      --  OTG_FS host channel-4 mask register (OTG_FS_HCINTMSK4)
      OTG_FS_HCINTMSK4  : aliased OTG_FS_HCINTMSK_Register;
      --  OTG_FS host channel-x transfer size register
      OTG_FS_HCTSIZ4    : aliased OTG_FS_HCTSIZ_Register;
      --  OTG_FS host channel-5 characteristics register (OTG_FS_HCCHAR5)
      OTG_FS_HCCHAR5    : aliased OTG_FS_HCCHAR_Register;
      --  OTG_FS host channel-5 interrupt register (OTG_FS_HCINT5)
      OTG_FS_HCINT5     : aliased OTG_FS_HCINT_Register;
      --  OTG_FS host channel-5 mask register (OTG_FS_HCINTMSK5)
      OTG_FS_HCINTMSK5  : aliased OTG_FS_HCINTMSK_Register;
      --  OTG_FS host channel-5 transfer size register
      OTG_FS_HCTSIZ5    : aliased OTG_FS_HCTSIZ_Register;
      --  OTG_FS host channel-6 characteristics register (OTG_FS_HCCHAR6)
      OTG_FS_HCCHAR6    : aliased OTG_FS_HCCHAR_Register;
      --  OTG_FS host channel-6 interrupt register (OTG_FS_HCINT6)
      OTG_FS_HCINT6     : aliased OTG_FS_HCINT_Register;
      --  OTG_FS host channel-6 mask register (OTG_FS_HCINTMSK6)
      OTG_FS_HCINTMSK6  : aliased OTG_FS_HCINTMSK_Register;
      --  OTG_FS host channel-6 transfer size register
      OTG_FS_HCTSIZ6    : aliased OTG_FS_HCTSIZ_Register;
      --  OTG_FS host channel-7 characteristics register (OTG_FS_HCCHAR7)
      OTG_FS_HCCHAR7    : aliased OTG_FS_HCCHAR_Register;
      --  OTG_FS host channel-7 interrupt register (OTG_FS_HCINT7)
      OTG_FS_HCINT7     : aliased OTG_FS_HCINT_Register;
      --  OTG_FS host channel-7 mask register (OTG_FS_HCINTMSK7)
      OTG_FS_HCINTMSK7  : aliased OTG_FS_HCINTMSK_Register;
      --  OTG_FS host channel-7 transfer size register
      OTG_FS_HCTSIZ7    : aliased OTG_FS_HCTSIZ_Register;
      --  OTG_FS host channel-8 characteristics register
      OTG_FS_HCCHAR8    : aliased OTG_FS_HCCHAR_Register;
      --  OTG_FS host channel-8 interrupt register
      OTG_FS_HCINT8     : aliased OTG_FS_HCINT_Register;
      --  OTG_FS host channel-8 mask register
      OTG_FS_HCINTMSK8  : aliased OTG_FS_HCINTMSK_Register;
      --  OTG_FS host channel-8 transfer size register
      OTG_FS_HCTSIZ8    : aliased OTG_FS_HCTSIZ_Register;
      --  OTG_FS host channel-9 characteristics register
      OTG_FS_HCCHAR9    : aliased OTG_FS_HCCHAR_Register;
      --  OTG_FS host channel-9 interrupt register
      OTG_FS_HCINT9     : aliased OTG_FS_HCINT_Register;
      --  OTG_FS host channel-9 mask register
      OTG_FS_HCINTMSK9  : aliased OTG_FS_HCINTMSK_Register;
      --  OTG_FS host channel-9 transfer size register
      OTG_FS_HCTSIZ9    : aliased OTG_FS_HCTSIZ_Register;
      --  OTG_FS host channel-10 characteristics register
      OTG_FS_HCCHAR10   : aliased OTG_FS_HCCHAR_Register;
      --  OTG_FS host channel-10 interrupt register
      OTG_FS_HCINT10    : aliased OTG_FS_HCINT_Register;
      --  OTG_FS host channel-10 mask register
      OTG_FS_HCINTMSK10 : aliased OTG_FS_HCINTMSK_Register;
      --  OTG_FS host channel-10 transfer size register
      OTG_FS_HCTSIZ10   : aliased OTG_FS_HCTSIZ_Register;
      --  OTG_FS host channel-11 characteristics register
      OTG_FS_HCCHAR11   : aliased OTG_FS_HCCHAR_Register;
      --  OTG_FS host channel-11 interrupt register
      OTG_FS_HCINT11    : aliased OTG_FS_HCINT_Register;
      --  OTG_FS host channel-11 mask register
      OTG_FS_HCINTMSK11 : aliased OTG_FS_HCINTMSK_Register;
      --  OTG_FS host channel-11 transfer size register
      OTG_FS_HCTSIZ11   : aliased OTG_FS_HCTSIZ_Register;
   end record
     with Volatile;

   for OTG_FS_HOST_Peripheral use record
      OTG_FS_HCFG       at 16#0# range 0 .. 31;
      OTG_FS_HFIR       at 16#4# range 0 .. 31;
      OTG_FS_HFNUM      at 16#8# range 0 .. 31;
      OTG_FS_HPTXSTS    at 16#10# range 0 .. 31;
      OTG_FS_HAINT      at 16#14# range 0 .. 31;
      OTG_FS_HAINTMSK   at 16#18# range 0 .. 31;
      OTG_FS_HPRT       at 16#40# range 0 .. 31;
      OTG_FS_HCCHAR0    at 16#100# range 0 .. 31;
      OTG_FS_HCINT0     at 16#108# range 0 .. 31;
      OTG_FS_HCINTMSK0  at 16#10C# range 0 .. 31;
      OTG_FS_HCTSIZ0    at 16#110# range 0 .. 31;
      OTG_FS_HCCHAR1    at 16#120# range 0 .. 31;
      OTG_FS_HCINT1     at 16#128# range 0 .. 31;
      OTG_FS_HCINTMSK1  at 16#12C# range 0 .. 31;
      OTG_FS_HCTSIZ1    at 16#130# range 0 .. 31;
      OTG_FS_HCCHAR2    at 16#140# range 0 .. 31;
      OTG_FS_HCINT2     at 16#148# range 0 .. 31;
      OTG_FS_HCINTMSK2  at 16#14C# range 0 .. 31;
      OTG_FS_HCTSIZ2    at 16#150# range 0 .. 31;
      OTG_FS_HCCHAR3    at 16#160# range 0 .. 31;
      OTG_FS_HCINT3     at 16#168# range 0 .. 31;
      OTG_FS_HCINTMSK3  at 16#16C# range 0 .. 31;
      OTG_FS_HCTSIZ3    at 16#170# range 0 .. 31;
      OTG_FS_HCCHAR4    at 16#180# range 0 .. 31;
      OTG_FS_HCINT4     at 16#188# range 0 .. 31;
      OTG_FS_HCINTMSK4  at 16#18C# range 0 .. 31;
      OTG_FS_HCTSIZ4    at 16#190# range 0 .. 31;
      OTG_FS_HCCHAR5    at 16#1A0# range 0 .. 31;
      OTG_FS_HCINT5     at 16#1A8# range 0 .. 31;
      OTG_FS_HCINTMSK5  at 16#1AC# range 0 .. 31;
      OTG_FS_HCTSIZ5    at 16#1B0# range 0 .. 31;
      OTG_FS_HCCHAR6    at 16#1C0# range 0 .. 31;
      OTG_FS_HCINT6     at 16#1C8# range 0 .. 31;
      OTG_FS_HCINTMSK6  at 16#1CC# range 0 .. 31;
      OTG_FS_HCTSIZ6    at 16#1D0# range 0 .. 31;
      OTG_FS_HCCHAR7    at 16#1E0# range 0 .. 31;
      OTG_FS_HCINT7     at 16#1E8# range 0 .. 31;
      OTG_FS_HCINTMSK7  at 16#1EC# range 0 .. 31;
      OTG_FS_HCTSIZ7    at 16#1F0# range 0 .. 31;
      OTG_FS_HCCHAR8    at 16#1F4# range 0 .. 31;
      OTG_FS_HCINT8     at 16#1F8# range 0 .. 31;
      OTG_FS_HCINTMSK8  at 16#1FC# range 0 .. 31;
      OTG_FS_HCTSIZ8    at 16#200# range 0 .. 31;
      OTG_FS_HCCHAR9    at 16#204# range 0 .. 31;
      OTG_FS_HCINT9     at 16#208# range 0 .. 31;
      OTG_FS_HCINTMSK9  at 16#20C# range 0 .. 31;
      OTG_FS_HCTSIZ9    at 16#210# range 0 .. 31;
      OTG_FS_HCCHAR10   at 16#214# range 0 .. 31;
      OTG_FS_HCINT10    at 16#218# range 0 .. 31;
      OTG_FS_HCINTMSK10 at 16#21C# range 0 .. 31;
      OTG_FS_HCTSIZ10   at 16#220# range 0 .. 31;
      OTG_FS_HCCHAR11   at 16#224# range 0 .. 31;
      OTG_FS_HCINT11    at 16#228# range 0 .. 31;
      OTG_FS_HCINTMSK11 at 16#22C# range 0 .. 31;
      OTG_FS_HCTSIZ11   at 16#230# range 0 .. 31;
   end record;

   --  USB on the go full speed
   OTG_FS_HOST_Periph : aliased OTG_FS_HOST_Peripheral
     with Import, Address => System'To_Address (16#50000400#);

   --  USB on the go full speed
   type OTG_FS_PWRCLK_Peripheral is record
      --  OTG_FS power and clock gating control register (OTG_FS_PCGCCTL)
      OTG_FS_PCGCCTL : aliased OTG_FS_PCGCCTL_Register;
   end record
     with Volatile;

   for OTG_FS_PWRCLK_Peripheral use record
      OTG_FS_PCGCCTL at 0 range 0 .. 31;
   end record;

   --  USB on the go full speed
   OTG_FS_PWRCLK_Periph : aliased OTG_FS_PWRCLK_Peripheral
     with Import, Address => System'To_Address (16#50000E00#);

end STM32_SVD.USB_OTG_FS;
