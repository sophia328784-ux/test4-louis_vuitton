.class Lcom/linkplay/core/service/nsd/NSDMultiServiceTypeManager$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/linkplay/core/service/nsd/NSDMultiServiceTypeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/linkplay/core/service/nsd/NSDMultiServiceTypeManager;


# direct methods
.method public constructor <init>(Lcom/linkplay/core/service/nsd/NSDMultiServiceTypeManager;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/linkplay/core/service/nsd/NSDMultiServiceTypeManager$1;->this$0:Lcom/linkplay/core/service/nsd/NSDMultiServiceTypeManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, p1, Landroid/net/nsd/NsdServiceInfo;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/net/nsd/NsdServiceInfo;

    iget-object p0, p0, Lcom/linkplay/core/service/nsd/NSDMultiServiceTypeManager$1;->this$0:Lcom/linkplay/core/service/nsd/NSDMultiServiceTypeManager;

    invoke-static {p0, p1}, Lcom/linkplay/core/service/nsd/NSDMultiServiceTypeManager;->f(Lcom/linkplay/core/service/nsd/NSDMultiServiceTypeManager;Landroid/net/nsd/NsdServiceInfo;)V

    :cond_0
    return-void
.end method
