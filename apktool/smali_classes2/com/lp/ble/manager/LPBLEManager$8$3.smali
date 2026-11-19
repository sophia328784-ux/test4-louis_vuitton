.class Lcom/lp/ble/manager/LPBLEManager$8$3;
.super Lcom/clj/fastble/callback/BleWriteCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lp/ble/manager/LPBLEManager$8;->onCharacteristicChanged(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lp/ble/manager/LPBLEManager$8;


# direct methods
.method public constructor <init>(Lcom/lp/ble/manager/LPBLEManager$8;)V
    .locals 0

    iput-object p1, p0, Lcom/lp/ble/manager/LPBLEManager$8$3;->this$1:Lcom/lp/ble/manager/LPBLEManager$8;

    invoke-direct {p0}, Lcom/clj/fastble/callback/BleWriteCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onWriteFailure(Lcom/clj/fastble/exception/BleException;)V
    .locals 1

    invoke-virtual {p1}, Lcom/clj/fastble/exception/BleException;->toString()Ljava/lang/String;

    sget-object v0, Lcom/lp/ble/utils/BLELog;->a:Ljava/util/HashMap;

    iget-object p0, p0, Lcom/lp/ble/manager/LPBLEManager$8$3;->this$1:Lcom/lp/ble/manager/LPBLEManager$8;

    iget-object p0, p0, Lcom/lp/ble/manager/LPBLEManager$8;->this$0:Lcom/lp/ble/manager/LPBLEManager;

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
    .locals 0

    sget-object p0, Lcom/lp/ble/utils/BLELog;->a:Ljava/util/HashMap;

    return-void
.end method
