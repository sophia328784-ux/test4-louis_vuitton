.class Lcom/lp/ble/manager/LPBLEManager$11;
.super Lcom/clj/fastble/callback/BleWriteCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lp/ble/manager/LPBLEManager;->connectWLAN(Lcom/lp/ble/manager/ConnectBLEInfo;Lcom/lp/ble/manager/LPConnectWiFiListener;)V
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

    iput-object p1, p0, Lcom/lp/ble/manager/LPBLEManager$11;->this$0:Lcom/lp/ble/manager/LPBLEManager;

    invoke-direct {p0}, Lcom/clj/fastble/callback/BleWriteCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onWriteFailure(Lcom/clj/fastble/exception/BleException;)V
    .locals 0

    return-void
.end method

.method public onWriteSuccess(II[B)V
    .locals 2

    sget-object p1, Lcom/lp/ble/utils/BLELog;->a:Ljava/util/HashMap;

    iget-object p1, p0, Lcom/lp/ble/manager/LPBLEManager$11;->this$0:Lcom/lp/ble/manager/LPBLEManager;

    invoke-static {p1}, Lcom/lp/ble/manager/LPBLEManager;->d(Lcom/lp/ble/manager/LPBLEManager;)Lcom/lp/ble/BLEConnector;

    move-result-object p1

    iget-object p2, p0, Lcom/lp/ble/manager/LPBLEManager$11;->this$0:Lcom/lp/ble/manager/LPBLEManager;

    iget-object p2, p2, Lcom/lp/ble/manager/LPBLEManager;->mBLEInfo:Lcom/lp/ble/manager/ConnectBLEInfo;

    iget-object p3, p2, Lcom/lp/ble/manager/ConnectBLEInfo;->sessionId:Ljava/lang/String;

    iget-object p2, p2, Lcom/lp/ble/manager/ConnectBLEInfo;->password:Ljava/lang/String;

    const-string v0, "LP0.1:NNETP:PASS:"

    :try_start_0
    sget-object v1, Lcom/lp/ble/utils/AesCBC;->a:Lcom/lp/ble/utils/AesCBC;

    if-nez v1, :cond_0

    new-instance v1, Lcom/lp/ble/utils/AesCBC;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lcom/lp/ble/utils/AesCBC;->a:Lcom/lp/ble/utils/AesCBC;

    :cond_0
    const-string v1, "~linkplayble@#=="

    invoke-static {p2, v1}, Lcom/lp/ble/utils/AesCBC;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ":SESSIONID:"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "\n"

    const-string v0, ""

    invoke-virtual {p2, p3, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p2, 0x0

    :goto_0
    new-instance p3, Lcom/lp/ble/manager/LPBLEManager$11$1;

    invoke-direct {p3, p0}, Lcom/lp/ble/manager/LPBLEManager$11$1;-><init>(Lcom/lp/ble/manager/LPBLEManager$11;)V

    invoke-virtual {p1, p3, p2}, Lcom/lp/ble/BLEConnector;->o(Lcom/clj/fastble/callback/BleWriteCallback;Ljava/lang/String;)V

    return-void
.end method
