.class public final synthetic Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c;->b:I

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c;->b:I

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Ljava/lang/String;

    check-cast p1, Ljava/lang/Throwable;

    sget-object v0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b;->z:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "download sku failed, GUID="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DownloadMakeupHandle"

    invoke-static {v1, v0, p1}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object p0

    :pswitch_0
    check-cast p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$a;

    check-cast p1, Ljava/util/List;

    iget-boolean v0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$a;->D:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/perfectcorp/perfectlib/ph/utility/networkcache/c$g;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lcom/perfectcorp/perfectlib/ph/utility/networkcache/c$g;-><init>(Ljava/util/Collection;Z)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/perfectcorp/perfectlib/ph/utility/networkcache/c$g;

    invoke-direct {v0, p1}, Lcom/perfectcorp/perfectlib/ph/utility/networkcache/c$g;-><init>(Ljava/util/Collection;)V

    :goto_0
    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b;->f:Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;

    iput-object p0, v0, Lcom/perfectcorp/perfectlib/ymk/utility/networkcache/Factory$Builder;->a:Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;

    invoke-virtual {v0}, Lcom/perfectcorp/perfectlib/ph/utility/networkcache/c$g;->c()Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
