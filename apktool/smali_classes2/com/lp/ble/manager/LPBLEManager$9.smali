.class Lcom/lp/ble/manager/LPBLEManager$9;
.super Lcom/clj/fastble/callback/BleWriteCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lp/ble/manager/LPBLEManager;->sendPWD(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lp/ble/manager/LPBLEManager;

.field final synthetic val$finalStrPwdCmd:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/lp/ble/manager/LPBLEManager;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lp/ble/manager/LPBLEManager$9;->this$0:Lcom/lp/ble/manager/LPBLEManager;

    iput-object p2, p0, Lcom/lp/ble/manager/LPBLEManager$9;->val$finalStrPwdCmd:Ljava/lang/String;

    invoke-direct {p0}, Lcom/clj/fastble/callback/BleWriteCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onWriteFailure(Lcom/clj/fastble/exception/BleException;)V
    .locals 1

    iget-object v0, p1, Lcom/clj/fastble/exception/BleException;->c:Ljava/lang/String;

    sget-object v0, Lcom/lp/ble/utils/BLELog;->a:Ljava/util/HashMap;

    iget-object p0, p0, Lcom/lp/ble/manager/LPBLEManager$9;->this$0:Lcom/lp/ble/manager/LPBLEManager;

    iget-boolean v0, p0, Lcom/lp/ble/manager/LPBLEManager;->failedCallback:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lp/ble/manager/LPBLEManager;->failedCallback:Z

    iget-object p0, p0, Lcom/lp/ble/manager/LPBLEManager;->listener:Lcom/lp/ble/manager/LPConnectWiFiListener;

    if-eqz p0, :cond_0

    new-instance v0, Ljava/lang/Exception;

    iget-object p1, p1, Lcom/clj/fastble/exception/BleException;->c:Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v0}, Lcom/lp/ble/manager/LPConnectWiFiListener;->LPConnectFailed(Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public onWriteSuccess(II[B)V
    .locals 1

    sget-object p1, Lcom/lp/ble/utils/BLELog;->a:Ljava/util/HashMap;

    iget-object p1, p0, Lcom/lp/ble/manager/LPBLEManager$9;->this$0:Lcom/lp/ble/manager/LPBLEManager;

    invoke-static {p1}, Lcom/lp/ble/manager/LPBLEManager;->d(Lcom/lp/ble/manager/LPBLEManager;)Lcom/lp/ble/BLEConnector;

    move-result-object p1

    iget-object p2, p0, Lcom/lp/ble/manager/LPBLEManager$9;->this$0:Lcom/lp/ble/manager/LPBLEManager;

    invoke-static {p2}, Lcom/lp/ble/manager/LPBLEManager;->b(Lcom/lp/ble/manager/LPBLEManager;)Lcom/lp/ble/entity/LPBluetoothDevice;

    move-result-object p2

    iget p2, p2, Lcom/lp/ble/entity/LPBluetoothDevice;->d:I

    iget-object p3, p0, Lcom/lp/ble/manager/LPBLEManager$9;->val$finalStrPwdCmd:Ljava/lang/String;

    new-instance v0, Lcom/lp/ble/manager/LPBLEManager$9$1;

    invoke-direct {v0, p0}, Lcom/lp/ble/manager/LPBLEManager$9$1;-><init>(Lcom/lp/ble/manager/LPBLEManager$9;)V

    const/16 p0, 0x1013

    invoke-virtual {p1, p2, p0, p3, v0}, Lcom/lp/ble/BLEConnector;->n(IILjava/lang/String;Lcom/clj/fastble/callback/BleWriteCallback;)V

    return-void
.end method
