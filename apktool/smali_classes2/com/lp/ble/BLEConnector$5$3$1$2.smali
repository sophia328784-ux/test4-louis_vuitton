.class Lcom/lp/ble/BLEConnector$5$3$1$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$3:Lcom/lp/ble/BLEConnector$5$3$1;


# direct methods
.method public constructor <init>(Lcom/lp/ble/BLEConnector$5$3$1;)V
    .locals 0

    iput-object p1, p0, Lcom/lp/ble/BLEConnector$5$3$1$2;->this$3:Lcom/lp/ble/BLEConnector$5$3$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/lp/ble/BLEManager;->c()V

    iget-object v0, p0, Lcom/lp/ble/BLEConnector$5$3$1$2;->this$3:Lcom/lp/ble/BLEConnector$5$3$1;

    iget-object v0, v0, Lcom/lp/ble/BLEConnector$5$3$1;->a:Lcom/lp/ble/BLEConnector$5$3;

    iget-object v0, v0, Lcom/lp/ble/BLEConnector$5$3;->this$1:Lcom/lp/ble/BLEConnector$5;

    iget-object v0, v0, Lcom/lp/ble/BLEConnector$5;->a:Lcom/lp/ble/BLEConnector;

    iget-object v0, v0, Lcom/lp/ble/BLEConnector;->i:Lcom/lp/ble/BLEGattListener;

    invoke-static {v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    iget-object v0, p0, Lcom/lp/ble/BLEConnector$5$3$1$2;->this$3:Lcom/lp/ble/BLEConnector$5$3$1;

    iget-object v0, v0, Lcom/lp/ble/BLEConnector$5$3$1;->a:Lcom/lp/ble/BLEConnector$5$3;

    iget-object v0, v0, Lcom/lp/ble/BLEConnector$5$3;->this$1:Lcom/lp/ble/BLEConnector$5;

    iget-object v0, v0, Lcom/lp/ble/BLEConnector$5;->a:Lcom/lp/ble/BLEConnector;

    invoke-virtual {v0}, Lcom/lp/ble/BLEConnector;->g()Ljava/lang/String;

    sget-object v0, Lcom/lp/ble/utils/BLELog;->a:Ljava/util/HashMap;

    iget-object p0, p0, Lcom/lp/ble/BLEConnector$5$3$1$2;->this$3:Lcom/lp/ble/BLEConnector$5$3$1;

    iget-object p0, p0, Lcom/lp/ble/BLEConnector$5$3$1;->a:Lcom/lp/ble/BLEConnector$5$3;

    iget-object v0, p0, Lcom/lp/ble/BLEConnector$5$3;->this$1:Lcom/lp/ble/BLEConnector$5;

    iget-object v0, v0, Lcom/lp/ble/BLEConnector$5;->a:Lcom/lp/ble/BLEConnector;

    iget-object v0, v0, Lcom/lp/ble/BLEConnector;->i:Lcom/lp/ble/BLEGattListener;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/lp/ble/BLEConnector$5$3;->val$gatt:Landroid/bluetooth/BluetoothGatt;

    iget p0, p0, Lcom/lp/ble/BLEConnector$5$3;->val$status:I

    invoke-interface {v0, v1, p0}, Lcom/lp/ble/BLEGattListener;->onConnectSuccess(Landroid/bluetooth/BluetoothGatt;I)V

    :cond_0
    return-void
.end method
