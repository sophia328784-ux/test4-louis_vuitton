.class Lcom/lp/ble/BLEConnector$1$3;
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
.field public final synthetic a:I

.field public final synthetic b:[B

.field public final synthetic c:Lcom/lp/ble/BLEConnector$1;


# direct methods
.method public constructor <init>(ILcom/lp/ble/BLEConnector$1;[B)V
    .locals 0

    iput-object p2, p0, Lcom/lp/ble/BLEConnector$1$3;->c:Lcom/lp/ble/BLEConnector$1;

    iput p1, p0, Lcom/lp/ble/BLEConnector$1$3;->a:I

    iput-object p3, p0, Lcom/lp/ble/BLEConnector$1$3;->b:[B

    invoke-direct {p0}, Lcom/clj/fastble/callback/BleWriteCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onWriteFailure(Lcom/clj/fastble/exception/BleException;)V
    .locals 0

    iget-object p0, p0, Lcom/lp/ble/BLEConnector$1$3;->c:Lcom/lp/ble/BLEConnector$1;

    iget-object p0, p0, Lcom/lp/ble/BLEConnector$1;->this$0:Lcom/lp/ble/BLEConnector;

    invoke-virtual {p0}, Lcom/lp/ble/BLEConnector;->g()Ljava/lang/String;

    sget-object p0, Lcom/lp/ble/utils/BLELog;->a:Ljava/util/HashMap;

    return-void
.end method

.method public final onWriteSuccess(II[B)V
    .locals 0

    iget-object p1, p0, Lcom/lp/ble/BLEConnector$1$3;->c:Lcom/lp/ble/BLEConnector$1;

    iget-object p2, p1, Lcom/lp/ble/BLEConnector$1;->this$0:Lcom/lp/ble/BLEConnector;

    invoke-virtual {p2}, Lcom/lp/ble/BLEConnector;->g()Ljava/lang/String;

    sget-object p2, Lcom/lp/ble/utils/BLELog;->a:Ljava/util/HashMap;

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    iget p3, p0, Lcom/lp/ble/BLEConnector$1$3;->a:I

    iput p3, p2, Landroid/os/Message;->arg1:I

    iget-object p0, p0, Lcom/lp/ble/BLEConnector$1$3;->b:[B

    iput-object p0, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
