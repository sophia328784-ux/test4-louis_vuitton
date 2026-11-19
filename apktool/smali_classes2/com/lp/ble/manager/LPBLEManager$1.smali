.class Lcom/lp/ble/manager/LPBLEManager$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lp/ble/manager/LPBLEManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lp/ble/manager/LPBLEManager;


# direct methods
.method public constructor <init>(Lcom/lp/ble/manager/LPBLEManager;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/lp/ble/manager/LPBLEManager$1;->this$0:Lcom/lp/ble/manager/LPBLEManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/lp/ble/manager/LPBLEManager$1;->this$0:Lcom/lp/ble/manager/LPBLEManager;

    invoke-static {p1}, Lcom/lp/ble/manager/LPBLEManager;->n(Lcom/lp/ble/manager/LPBLEManager;)V

    const-wide/32 v1, 0x3a980

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method
