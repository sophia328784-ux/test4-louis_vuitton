.class public final synthetic Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/bottomsheet/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/bottomsheet/ScanMainBottomSheet;

.field public final synthetic d:Lcom/lp/ble/entity/LPBluetoothDevice;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/bottomsheet/ScanMainBottomSheet;Lcom/lp/ble/entity/LPBluetoothDevice;I)V
    .locals 0

    iput p3, p0, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/bottomsheet/a;->b:I

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/bottomsheet/a;->c:Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/bottomsheet/ScanMainBottomSheet;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/bottomsheet/a;->d:Lcom/lp/ble/entity/LPBluetoothDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/bottomsheet/a;->b:I

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/bottomsheet/a;->d:Lcom/lp/ble/entity/LPBluetoothDevice;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/bottomsheet/a;->c:Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/bottomsheet/ScanMainBottomSheet;

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/bottomsheet/ScanMainBottomSheet;->R:Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/bottomsheet/ScanMainBottomSheet$Companion;

    new-instance v0, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/bottomsheet/ScanMainBottomSheet$openConnectToWifi$listener$1;

    invoke-direct {v0, p0, v2}, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/bottomsheet/ScanMainBottomSheet$openConnectToWifi$listener$1;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/bottomsheet/ScanMainBottomSheet;Lcom/lp/ble/entity/LPBluetoothDevice;)V

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/bottomsheet/Hilt_ScanMainBottomSheet;->getContext()Landroid/content/Context;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/bottomsheet/ScanMainBottomSheet;->Y()Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/helper/ScanNavigationHelper;

    move-result-object v3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v3, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/helper/ScanNavigationHelper;->a:Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/bottomsheet/ScanBottomSheetRouter;

    sget-object v4, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/tutorial/ConnectToWifiFragment;->L:Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/tutorial/ConnectToWifiFragment$Companion;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/tutorial/ConnectToWifiFragment;

    invoke-direct {v4}, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/tutorial/ConnectToWifiFragment;-><init>()V

    sget-object v5, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/manager/TrunkGeneralHelper;->a:Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/manager/TrunkGeneralHelper;

    iget-object v5, v2, Lcom/lp/ble/entity/LPBluetoothDevice;->b:Landroid/bluetooth/BluetoothDevice;

    const/4 v6, 0x0

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    iget-object v5, v2, Lcom/lp/ble/entity/LPBluetoothDevice;->b:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5}, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/manager/TrunkGeneralHelper;->f(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v6, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/manager/TrunkGeneralHelper$SpeakerTrunkType;->PM:Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/manager/TrunkGeneralHelper$SpeakerTrunkType;

    goto :goto_0

    :cond_0
    iget-object v2, v2, Lcom/lp/ble/entity/LPBluetoothDevice;->b:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/manager/TrunkGeneralHelper;->e(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v6, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/manager/TrunkGeneralHelper$SpeakerTrunkType;->GM:Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/manager/TrunkGeneralHelper$SpeakerTrunkType;

    :cond_1
    :goto_0
    iput-object v6, v4, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/tutorial/ConnectToWifiFragment;->G:Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/manager/TrunkGeneralHelper$SpeakerTrunkType;

    iput-object v0, v4, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/tutorial/ConnectToWifiFragment;->H:Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/bottomsheet/ScanMainBottomSheet$openConnectToWifi$listener$1;

    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/tutorial/bledevicelist/LVBLEDeviceListFragment;->N:Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/tutorial/bledevicelist/LVBLEDeviceListFragment$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/tutorial/bledevicelist/LVBLEDeviceListFragment;->P:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, v4, v0, v1}, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/bottomsheet/ScanBottomSheetRouter;->a(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;Ljava/lang/String;Z)V

    :cond_2
    return-void

    :pswitch_0
    iget-object v0, v2, Lcom/lp/ble/entity/LPBluetoothDevice;->b:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/bottomsheet/ScanMainBottomSheet;->P:Ljava/lang/String;

    new-instance v0, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/bottomsheet/ScanMainBottomSheet$openWifiConnectionSuccess$listener$1;

    invoke-direct {v0, p0}, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/bottomsheet/ScanMainBottomSheet$openWifiConnectionSuccess$listener$1;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/bottomsheet/ScanMainBottomSheet;)V

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/bottomsheet/Hilt_ScanMainBottomSheet;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/bottomsheet/ScanMainBottomSheet;->Y()Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/helper/ScanNavigationHelper;

    move-result-object v2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    iget-object v2, v2, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/helper/ScanNavigationHelper;->a:Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/bottomsheet/ScanBottomSheetRouter;

    sget-object v3, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/tutorial/ConnectToWifiSuccessFragment;->H:Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/tutorial/ConnectToWifiSuccessFragment$Companion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/tutorial/ConnectToWifiSuccessFragment;

    invoke-direct {v3}, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/tutorial/ConnectToWifiSuccessFragment;-><init>()V

    iput-object v0, v3, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/tutorial/ConnectToWifiSuccessFragment;->G:Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/bottomsheet/ScanMainBottomSheet$openWifiConnectionSuccess$listener$1;

    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/tutorial/ConnectToWifiSuccessFragment;->J:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, v3, v0, v1}, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/bottomsheet/ScanBottomSheetRouter;->a(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;Ljava/lang/String;Z)V

    :cond_3
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
