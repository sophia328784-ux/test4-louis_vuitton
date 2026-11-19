.class Lcom/lp/ble/manager/LPBLEManager$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lp/ble/BLEScanListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lp/ble/manager/LPBLEManager;->scan()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lp/ble/manager/LPBLEManager;


# direct methods
.method public constructor <init>(Lcom/lp/ble/manager/LPBLEManager;)V
    .locals 0

    iput-object p1, p0, Lcom/lp/ble/manager/LPBLEManager$2;->this$0:Lcom/lp/ble/manager/LPBLEManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScanFailed(I)V
    .locals 1

    iget-object v0, p0, Lcom/lp/ble/manager/LPBLEManager$2;->this$0:Lcom/lp/ble/manager/LPBLEManager;

    invoke-static {v0}, Lcom/lp/ble/manager/LPBLEManager;->f(Lcom/lp/ble/manager/LPBLEManager;)Lcom/lp/ble/manager/LPBLEScanListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/lp/ble/manager/LPBLEManager$2;->this$0:Lcom/lp/ble/manager/LPBLEManager;

    invoke-static {p0}, Lcom/lp/ble/manager/LPBLEManager;->f(Lcom/lp/ble/manager/LPBLEManager;)Lcom/lp/ble/manager/LPBLEScanListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/lp/ble/manager/LPBLEScanListener;->LPBLEScanFailed(I)V

    :cond_0
    return-void
.end method

.method public onScanFinished()V
    .locals 1

    iget-object v0, p0, Lcom/lp/ble/manager/LPBLEManager$2;->this$0:Lcom/lp/ble/manager/LPBLEManager;

    invoke-static {v0}, Lcom/lp/ble/manager/LPBLEManager;->f(Lcom/lp/ble/manager/LPBLEManager;)Lcom/lp/ble/manager/LPBLEScanListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/lp/ble/manager/LPBLEManager$2;->this$0:Lcom/lp/ble/manager/LPBLEManager;

    invoke-static {p0}, Lcom/lp/ble/manager/LPBLEManager;->f(Lcom/lp/ble/manager/LPBLEManager;)Lcom/lp/ble/manager/LPBLEScanListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/lp/ble/manager/LPBLEScanListener;->LPBLEScanFinish()V

    :cond_0
    return-void
.end method

.method public onScanResult(Lcom/lp/ble/entity/LPBluetoothDevice;)V
    .locals 1

    iget-object v0, p0, Lcom/lp/ble/manager/LPBLEManager$2;->this$0:Lcom/lp/ble/manager/LPBLEManager;

    invoke-static {v0}, Lcom/lp/ble/manager/LPBLEManager;->f(Lcom/lp/ble/manager/LPBLEManager;)Lcom/lp/ble/manager/LPBLEScanListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/lp/ble/manager/LPBLEManager$2;->this$0:Lcom/lp/ble/manager/LPBLEManager;

    invoke-static {p0}, Lcom/lp/ble/manager/LPBLEManager;->f(Lcom/lp/ble/manager/LPBLEManager;)Lcom/lp/ble/manager/LPBLEScanListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/lp/ble/manager/LPBLEScanListener;->LPBLEScanResult(Lcom/lp/ble/entity/LPBluetoothDevice;)V

    :cond_0
    return-void
.end method
