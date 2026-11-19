.class Lcom/lp/ble/BLEConnector$1$1;
.super Lcom/clj/fastble/callback/BleWriteCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lp/ble/BLEConnector$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/lp/ble/BLEConnector$1;


# direct methods
.method public constructor <init>(Lcom/lp/ble/BLEConnector$1;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lp/ble/BLEConnector$1$1;->a:Lcom/lp/ble/BLEConnector$1;

    invoke-direct {p0}, Lcom/clj/fastble/callback/BleWriteCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onWriteFailure(Lcom/clj/fastble/exception/BleException;)V
    .locals 0

    iget-object p0, p0, Lcom/lp/ble/BLEConnector$1$1;->a:Lcom/lp/ble/BLEConnector$1;

    iget-object p0, p0, Lcom/lp/ble/BLEConnector$1;->this$0:Lcom/lp/ble/BLEConnector;

    invoke-virtual {p0}, Lcom/lp/ble/BLEConnector;->g()Ljava/lang/String;

    sget-object p0, Lcom/lp/ble/utils/BLELog;->a:Ljava/util/HashMap;

    return-void
.end method

.method public final onWriteSuccess(II[B)V
    .locals 0

    iget-object p0, p0, Lcom/lp/ble/BLEConnector$1$1;->a:Lcom/lp/ble/BLEConnector$1;

    iget-object p1, p0, Lcom/lp/ble/BLEConnector$1;->this$0:Lcom/lp/ble/BLEConnector;

    invoke-virtual {p1}, Lcom/lp/ble/BLEConnector;->g()Ljava/lang/String;

    sget-object p1, Lcom/lp/ble/utils/BLELog;->a:Ljava/util/HashMap;

    iget-object p0, p0, Lcom/lp/ble/BLEConnector$1;->this$0:Lcom/lp/ble/BLEConnector;

    const/16 p1, 0x1003

    const-string p2, "{\"result\":\"OK\"}"

    invoke-virtual {p0, p1, p2}, Lcom/lp/ble/BLEConnector;->i(ILjava/lang/String;)V

    return-void
.end method
