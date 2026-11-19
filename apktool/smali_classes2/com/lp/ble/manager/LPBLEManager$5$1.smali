.class Lcom/lp/ble/manager/LPBLEManager$5$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lp/ble/manager/LPBLEResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lp/ble/manager/LPBLEManager$5;->onConnectSuccess(Landroid/bluetooth/BluetoothGatt;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lp/ble/manager/LPBLEManager$5;

.field final synthetic val$gatt:Landroid/bluetooth/BluetoothGatt;

.field final synthetic val$status:I


# direct methods
.method public constructor <init>(Lcom/lp/ble/manager/LPBLEManager$5;Landroid/bluetooth/BluetoothGatt;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/lp/ble/manager/LPBLEManager$5$1;->this$1:Lcom/lp/ble/manager/LPBLEManager$5;

    iput-object p2, p0, Lcom/lp/ble/manager/LPBLEManager$5$1;->val$gatt:Landroid/bluetooth/BluetoothGatt;

    iput p3, p0, Lcom/lp/ble/manager/LPBLEManager$5$1;->val$status:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/Exception;)V
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    iget-object v1, p0, Lcom/lp/ble/manager/LPBLEManager$5$1;->this$1:Lcom/lp/ble/manager/LPBLEManager$5;

    const/16 v2, 0x20

    if-le v0, v2, :cond_1

    iget-object p1, v1, Lcom/lp/ble/manager/LPBLEManager$5;->this$0:Lcom/lp/ble/manager/LPBLEManager;

    invoke-static {p1}, Lcom/lp/ble/manager/LPBLEManager;->d(Lcom/lp/ble/manager/LPBLEManager;)Lcom/lp/ble/BLEConnector;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/lp/ble/manager/LPBLEManager$5$1;->this$1:Lcom/lp/ble/manager/LPBLEManager$5;

    iget-object p1, p1, Lcom/lp/ble/manager/LPBLEManager$5;->this$0:Lcom/lp/ble/manager/LPBLEManager;

    invoke-static {p1}, Lcom/lp/ble/manager/LPBLEManager;->d(Lcom/lp/ble/manager/LPBLEManager;)Lcom/lp/ble/BLEConnector;

    move-result-object p1

    iget-object p1, p1, Lcom/lp/ble/BLEConnector;->a:Lcom/lp/ble/entity/LPBluetoothDevice;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/lp/ble/entity/LPBluetoothDevice;->a:Z

    :cond_0
    iget-object p1, p0, Lcom/lp/ble/manager/LPBLEManager$5$1;->this$1:Lcom/lp/ble/manager/LPBLEManager$5;

    iget-object p1, p1, Lcom/lp/ble/manager/LPBLEManager$5;->val$listener:Lcom/lp/ble/manager/LPConnectBLEListener;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/lp/ble/manager/LPBLEManager$5$1;->val$gatt:Landroid/bluetooth/BluetoothGatt;

    iget p0, p0, Lcom/lp/ble/manager/LPBLEManager$5$1;->val$status:I

    invoke-interface {p1, v0, p0}, Lcom/lp/ble/manager/LPConnectBLEListener;->onConnectSuccess(Landroid/bluetooth/BluetoothGatt;I)V

    return-void

    :cond_1
    iget-object p0, v1, Lcom/lp/ble/manager/LPBLEManager$5;->val$listener:Lcom/lp/ble/manager/LPConnectBLEListener;

    if-eqz p0, :cond_2

    invoke-interface {p0, p1}, Lcom/lp/ble/manager/LPConnectBLEListener;->onConnectFail(Ljava/lang/Exception;)V

    :cond_2
    return-void
.end method

.method public onResult(Lcom/lp/ble/entity/BLEResponse;)V
    .locals 0

    .line 63
    invoke-virtual {p1}, Lcom/lp/ble/entity/BLEResponse;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/lp/ble/manager/LPBLEManager$5$1;->onResult(Ljava/lang/String;)V

    return-void
.end method

.method public onResult(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    sget-object v0, Lcom/lp/ble/utils/BLELog;->a:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/lp/ble/manager/LPBLEManager$5$1;->this$1:Lcom/lp/ble/manager/LPBLEManager$5;

    iget-object v0, v0, Lcom/lp/ble/manager/LPBLEManager$5;->this$0:Lcom/lp/ble/manager/LPBLEManager;

    invoke-static {v0, p1}, Lcom/lp/ble/manager/LPBLEManager;->l(Lcom/lp/ble/manager/LPBLEManager;Ljava/lang/String;)Lcom/lp/ble/manager/LPBLEDeviceInfo;

    move-result-object p1

    iget-object v0, p0, Lcom/lp/ble/manager/LPBLEManager$5$1;->this$1:Lcom/lp/ble/manager/LPBLEManager$5;

    iget-object v1, v0, Lcom/lp/ble/manager/LPBLEManager$5;->val$lpBluetoothDevice:Lcom/lp/ble/entity/LPBluetoothDevice;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    iput-object p1, v1, Lcom/lp/ble/entity/LPBluetoothDevice;->l:Lcom/lp/ble/manager/LPBLEDeviceInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p1, v0, Lcom/lp/ble/manager/LPBLEManager$5;->val$listener:Lcom/lp/ble/manager/LPConnectBLEListener;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/lp/ble/manager/LPBLEManager$5$1;->val$gatt:Landroid/bluetooth/BluetoothGatt;

    iget p0, p0, Lcom/lp/ble/manager/LPBLEManager$5$1;->val$status:I

    invoke-interface {p1, v0, p0}, Lcom/lp/ble/manager/LPConnectBLEListener;->onConnectSuccess(Landroid/bluetooth/BluetoothGatt;I)V

    return-void

    :goto_1
    iget-object v0, p0, Lcom/lp/ble/manager/LPBLEManager$5$1;->this$1:Lcom/lp/ble/manager/LPBLEManager$5;

    iget-object v0, v0, Lcom/lp/ble/manager/LPBLEManager$5;->val$listener:Lcom/lp/ble/manager/LPConnectBLEListener;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/lp/ble/manager/LPBLEManager$5$1;->val$gatt:Landroid/bluetooth/BluetoothGatt;

    iget p0, p0, Lcom/lp/ble/manager/LPBLEManager$5$1;->val$status:I

    invoke-interface {v0, v1, p0}, Lcom/lp/ble/manager/LPConnectBLEListener;->onConnectSuccess(Landroid/bluetooth/BluetoothGatt;I)V

    :cond_1
    throw p1

    :catch_0
    iget-object p1, p0, Lcom/lp/ble/manager/LPBLEManager$5$1;->this$1:Lcom/lp/ble/manager/LPBLEManager$5;

    iget-object p1, p1, Lcom/lp/ble/manager/LPBLEManager$5;->val$listener:Lcom/lp/ble/manager/LPConnectBLEListener;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/lp/ble/manager/LPBLEManager$5$1;->val$gatt:Landroid/bluetooth/BluetoothGatt;

    iget p0, p0, Lcom/lp/ble/manager/LPBLEManager$5$1;->val$status:I

    invoke-interface {p1, v0, p0}, Lcom/lp/ble/manager/LPConnectBLEListener;->onConnectSuccess(Landroid/bluetooth/BluetoothGatt;I)V

    :cond_2
    return-void
.end method

.method public onWriteSuccess(II[B)V
    .locals 0

    return-void
.end method
