.class Lcom/lp/ble/BLEConnector$5$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/lp/ble/BLEConnector$5;

.field final synthetic val$gatt:Landroid/bluetooth/BluetoothGatt;

.field final synthetic val$status:I


# direct methods
.method public constructor <init>(Lcom/lp/ble/BLEConnector$5;Landroid/bluetooth/BluetoothGatt;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/lp/ble/BLEConnector$5$2;->this$1:Lcom/lp/ble/BLEConnector$5;

    iput-object p2, p0, Lcom/lp/ble/BLEConnector$5$2;->val$gatt:Landroid/bluetooth/BluetoothGatt;

    iput p3, p0, Lcom/lp/ble/BLEConnector$5$2;->val$status:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/lp/ble/BLEConnector$5$2;->this$1:Lcom/lp/ble/BLEConnector$5;

    iget-object v0, v0, Lcom/lp/ble/BLEConnector$5;->a:Lcom/lp/ble/BLEConnector;

    iget-object v0, v0, Lcom/lp/ble/BLEConnector;->i:Lcom/lp/ble/BLEGattListener;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/lp/ble/BLEConnector$5$2;->val$gatt:Landroid/bluetooth/BluetoothGatt;

    iget p0, p0, Lcom/lp/ble/BLEConnector$5$2;->val$status:I

    invoke-interface {v0, v1, p0}, Lcom/lp/ble/BLEGattListener;->onConnectSuccess(Landroid/bluetooth/BluetoothGatt;I)V

    :cond_0
    return-void
.end method
