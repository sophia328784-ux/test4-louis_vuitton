.class Lcom/lp/ble/BLEConnector$1$9;
.super Lcom/clj/fastble/callback/BleReadCallback;
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
.method public constructor <init>(Lcom/lp/ble/BLEConnector$1;)V
    .locals 0

    iput-object p1, p0, Lcom/lp/ble/BLEConnector$1$9;->a:Lcom/lp/ble/BLEConnector$1;

    invoke-direct {p0}, Lcom/clj/fastble/callback/BleReadCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/clj/fastble/exception/BleException;)V
    .locals 0

    iget-object p0, p0, Lcom/lp/ble/BLEConnector$1$9;->a:Lcom/lp/ble/BLEConnector$1;

    iget-object p0, p0, Lcom/lp/ble/BLEConnector$1;->this$0:Lcom/lp/ble/BLEConnector;

    invoke-virtual {p0}, Lcom/lp/ble/BLEConnector;->g()Ljava/lang/String;

    sget-object p0, Lcom/lp/ble/utils/BLELog;->a:Ljava/util/HashMap;

    return-void
.end method

.method public final b([B)V
    .locals 3

    iget-object p0, p0, Lcom/lp/ble/BLEConnector$1$9;->a:Lcom/lp/ble/BLEConnector$1;

    iget-object v0, p0, Lcom/lp/ble/BLEConnector$1;->this$0:Lcom/lp/ble/BLEConnector;

    invoke-virtual {v0}, Lcom/lp/ble/BLEConnector;->g()Ljava/lang/String;

    invoke-static {p1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    sget-object v0, Lcom/lp/ble/utils/BLELog;->a:Ljava/util/HashMap;

    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    :try_start_0
    invoke-static {p1}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/lp/ble/BLEConnector$1;->this$0:Lcom/lp/ble/BLEConnector;

    invoke-virtual {v0}, Lcom/lp/ble/BLEConnector;->g()Ljava/lang/String;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "code"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "uuid"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "ip"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object p1, p0, Lcom/lp/ble/BLEConnector$1;->this$0:Lcom/lp/ble/BLEConnector;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x1006

    invoke-virtual {p1, v1, v0}, Lcom/lp/ble/BLEConnector;->i(ILjava/lang/String;)V

    const/16 p1, 0xa0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    iget-object p0, p0, Lcom/lp/ble/BLEConnector$1;->this$0:Lcom/lp/ble/BLEConnector;

    invoke-virtual {p0}, Lcom/lp/ble/BLEConnector;->g()Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    sget-object p0, Lcom/lp/ble/utils/BLELog;->a:Ljava/util/HashMap;

    :cond_0
    return-void
.end method
