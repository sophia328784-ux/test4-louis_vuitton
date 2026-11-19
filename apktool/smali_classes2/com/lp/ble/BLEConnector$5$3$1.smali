.class Lcom/lp/ble/BLEConnector$5$3$1;
.super Lcom/clj/fastble/callback/BleMtuChangedCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lp/ble/BLEConnector$5$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/lp/ble/BLEConnector$5$3;


# direct methods
.method public constructor <init>(Lcom/lp/ble/BLEConnector$5$3;)V
    .locals 0

    iput-object p1, p0, Lcom/lp/ble/BLEConnector$5$3$1;->a:Lcom/lp/ble/BLEConnector$5$3;

    invoke-direct {p0}, Lcom/clj/fastble/callback/BleMtuChangedCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 4

    iget-object p1, p0, Lcom/lp/ble/BLEConnector$5$3$1;->a:Lcom/lp/ble/BLEConnector$5$3;

    iget-object v0, p1, Lcom/lp/ble/BLEConnector$5$3;->this$1:Lcom/lp/ble/BLEConnector$5;

    iget-object v0, v0, Lcom/lp/ble/BLEConnector$5;->a:Lcom/lp/ble/BLEConnector;

    new-instance v1, Lcom/lp/ble/BLEConnector$5$3$1$1;

    invoke-direct {v1, p0}, Lcom/lp/ble/BLEConnector$5$3$1$1;-><init>(Lcom/lp/ble/BLEConnector$5$3$1;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/lp/ble/BLEConnector;->k(Ljava/lang/Runnable;J)V

    iget-object p1, p1, Lcom/lp/ble/BLEConnector$5$3;->this$1:Lcom/lp/ble/BLEConnector$5;

    iget-object p1, p1, Lcom/lp/ble/BLEConnector$5;->a:Lcom/lp/ble/BLEConnector;

    new-instance v0, Lcom/lp/ble/BLEConnector$5$3$1$2;

    invoke-direct {v0, p0}, Lcom/lp/ble/BLEConnector$5$3$1$2;-><init>(Lcom/lp/ble/BLEConnector$5$3$1;)V

    const-wide/16 v1, 0x5dc

    invoke-virtual {p1, v0, v1, v2}, Lcom/lp/ble/BLEConnector;->k(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public final b(Lcom/clj/fastble/exception/BleException;)V
    .locals 1

    iget-object p0, p0, Lcom/lp/ble/BLEConnector$5$3$1;->a:Lcom/lp/ble/BLEConnector$5$3;

    iget-object p1, p0, Lcom/lp/ble/BLEConnector$5$3;->this$1:Lcom/lp/ble/BLEConnector$5;

    iget-object p1, p1, Lcom/lp/ble/BLEConnector$5;->a:Lcom/lp/ble/BLEConnector;

    iget-object p1, p1, Lcom/lp/ble/BLEConnector;->i:Lcom/lp/ble/BLEGattListener;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/lp/ble/BLEConnector$5$3;->val$gatt:Landroid/bluetooth/BluetoothGatt;

    iget p0, p0, Lcom/lp/ble/BLEConnector$5$3;->val$status:I

    invoke-interface {p1, v0, p0}, Lcom/lp/ble/BLEGattListener;->onReConnectBLE(Landroid/bluetooth/BluetoothGatt;I)V

    :cond_0
    return-void
.end method
