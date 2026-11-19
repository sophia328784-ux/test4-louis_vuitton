.class Lcom/lp/ble/BLEConnector$1$4;
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
.field public final synthetic a:[B

.field public final synthetic b:I

.field public final synthetic c:Lcom/lp/ble/BLEConnector$1;


# direct methods
.method public constructor <init>(ILcom/lp/ble/BLEConnector$1;[B)V
    .locals 0

    iput-object p2, p0, Lcom/lp/ble/BLEConnector$1$4;->c:Lcom/lp/ble/BLEConnector$1;

    iput-object p3, p0, Lcom/lp/ble/BLEConnector$1$4;->a:[B

    iput p1, p0, Lcom/lp/ble/BLEConnector$1$4;->b:I

    invoke-direct {p0}, Lcom/clj/fastble/callback/BleReadCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/clj/fastble/exception/BleException;)V
    .locals 0

    iget-object p0, p0, Lcom/lp/ble/BLEConnector$1$4;->c:Lcom/lp/ble/BLEConnector$1;

    iget-object p0, p0, Lcom/lp/ble/BLEConnector$1;->this$0:Lcom/lp/ble/BLEConnector;

    invoke-virtual {p0}, Lcom/lp/ble/BLEConnector;->g()Ljava/lang/String;

    sget-object p0, Lcom/lp/ble/utils/BLELog;->a:Ljava/util/HashMap;

    return-void
.end method

.method public final b([B)V
    .locals 6

    iget-object v0, p0, Lcom/lp/ble/BLEConnector$1$4;->a:[B

    iget-object v1, p0, Lcom/lp/ble/BLEConnector$1$4;->c:Lcom/lp/ble/BLEConnector$1;

    if-eqz p1, :cond_2

    array-length v2, p1

    if-lez v2, :cond_2

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    array-length v3, v0

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    array-length v4, p1

    add-int/2addr v4, v3

    new-array v4, v4, [B

    if-lez v3, :cond_1

    array-length v5, v0

    invoke-static {v0, v2, v4, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, p1

    invoke-static {p1, v2, v4, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    :cond_1
    array-length v0, p1

    invoke-static {p1, v2, v4, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_1
    iget-object p1, v1, Lcom/lp/ble/BLEConnector$1;->this$0:Lcom/lp/ble/BLEConnector;

    invoke-virtual {p1}, Lcom/lp/ble/BLEConnector;->g()Ljava/lang/String;

    invoke-static {v4}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    sget-object p1, Lcom/lp/ble/utils/BLELog;->a:Ljava/util/HashMap;

    const/4 p1, 0x2

    invoke-virtual {v1, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    iget p0, p0, Lcom/lp/ble/BLEConnector$1$4;->b:I

    add-int/lit8 p0, p0, 0x1

    iput p0, p1, Landroid/os/Message;->arg1:I

    iput-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_2
    invoke-static {v0}, Lcom/lp/ble/utils/BLEUtil;->i([B)Ljava/lang/String;

    move-result-object p0

    iget-object p1, v1, Lcom/lp/ble/BLEConnector$1;->this$0:Lcom/lp/ble/BLEConnector;

    invoke-virtual {p1}, Lcom/lp/ble/BLEConnector;->g()Ljava/lang/String;

    sget-object p1, Lcom/lp/ble/utils/BLELog;->a:Ljava/util/HashMap;

    iget-object p1, v1, Lcom/lp/ble/BLEConnector$1;->this$0:Lcom/lp/ble/BLEConnector;

    const/16 v0, 0x1007

    invoke-virtual {p1, v0, p0}, Lcom/lp/ble/BLEConnector;->i(ILjava/lang/String;)V

    return-void
.end method
