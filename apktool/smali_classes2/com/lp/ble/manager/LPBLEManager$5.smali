.class Lcom/lp/ble/manager/LPBLEManager$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lp/ble/manager/LPConnectBLEListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lp/ble/manager/LPBLEManager;->connectBLE(Lcom/lp/ble/entity/LPBluetoothDevice;Lcom/lp/ble/manager/LPConnectBLEListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lp/ble/manager/LPBLEManager;

.field final synthetic val$listener:Lcom/lp/ble/manager/LPConnectBLEListener;

.field final synthetic val$lpBluetoothDevice:Lcom/lp/ble/entity/LPBluetoothDevice;


# direct methods
.method public constructor <init>(Lcom/lp/ble/manager/LPBLEManager;Lcom/lp/ble/manager/LPConnectBLEListener;Lcom/lp/ble/entity/LPBluetoothDevice;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/lp/ble/manager/LPBLEManager$5;->this$0:Lcom/lp/ble/manager/LPBLEManager;

    iput-object p2, p0, Lcom/lp/ble/manager/LPBLEManager$5;->val$listener:Lcom/lp/ble/manager/LPConnectBLEListener;

    iput-object p3, p0, Lcom/lp/ble/manager/LPBLEManager$5;->val$lpBluetoothDevice:Lcom/lp/ble/entity/LPBluetoothDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectFail(Ljava/lang/Exception;)V
    .locals 0

    iget-object p0, p0, Lcom/lp/ble/manager/LPBLEManager$5;->val$listener:Lcom/lp/ble/manager/LPConnectBLEListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/lp/ble/manager/LPConnectBLEListener;->onConnectFail(Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public onConnectSuccess(Landroid/bluetooth/BluetoothGatt;I)V
    .locals 2

    iget-object v0, p0, Lcom/lp/ble/manager/LPBLEManager$5;->val$lpBluetoothDevice:Lcom/lp/ble/entity/LPBluetoothDevice;

    invoke-virtual {v0}, Lcom/lp/ble/entity/LPBluetoothDevice;->a()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/lp/ble/manager/LPBLEManager$5;->val$listener:Lcom/lp/ble/manager/LPConnectBLEListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/lp/ble/manager/LPConnectBLEListener;->onConnectSuccess(Landroid/bluetooth/BluetoothGatt;I)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/lp/ble/manager/LPBLEManager$5;->this$0:Lcom/lp/ble/manager/LPBLEManager;

    new-instance v1, Lcom/lp/ble/manager/LPBLEManager$5$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/lp/ble/manager/LPBLEManager$5$1;-><init>(Lcom/lp/ble/manager/LPBLEManager$5;Landroid/bluetooth/BluetoothGatt;I)V

    const/16 p0, 0x1001

    const-string p1, ""

    invoke-virtual {v0, p0, p1, v1}, Lcom/lp/ble/manager/LPBLEManager;->sendCustomerCMD(ILjava/lang/String;Lcom/lp/ble/manager/LPBLEResultListener;)V

    return-void
.end method

.method public onDisConnected(ZLandroid/bluetooth/BluetoothGatt;I)V
    .locals 0

    iget-object p0, p0, Lcom/lp/ble/manager/LPBLEManager$5;->val$listener:Lcom/lp/ble/manager/LPConnectBLEListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2, p3}, Lcom/lp/ble/manager/LPConnectBLEListener;->onDisConnected(ZLandroid/bluetooth/BluetoothGatt;I)V

    :cond_0
    return-void
.end method

.method public onFailed(ILjava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/lp/ble/manager/LPBLEManager$5;->val$listener:Lcom/lp/ble/manager/LPConnectBLEListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/lp/ble/manager/LPConnectBLEListener;->onFailed(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onReConnectBLE(Landroid/bluetooth/BluetoothGatt;I)V
    .locals 0

    iget-object p0, p0, Lcom/lp/ble/manager/LPBLEManager$5;->val$listener:Lcom/lp/ble/manager/LPConnectBLEListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/lp/ble/manager/LPConnectBLEListener;->onReConnectBLE(Landroid/bluetooth/BluetoothGatt;I)V

    :cond_0
    return-void
.end method

.method public onStartConnect()V
    .locals 0

    iget-object p0, p0, Lcom/lp/ble/manager/LPBLEManager$5;->val$listener:Lcom/lp/ble/manager/LPConnectBLEListener;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/lp/ble/manager/LPConnectBLEListener;->onStartConnect()V

    :cond_0
    return-void
.end method
