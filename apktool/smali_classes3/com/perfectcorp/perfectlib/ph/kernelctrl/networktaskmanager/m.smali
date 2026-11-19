.class public final synthetic Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$a;


# direct methods
.method public synthetic constructor <init>(Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$a;I)V
    .locals 0

    iput p2, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/m;->a:I

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/m;->b:Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/m;->a:I

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/m;->b:Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$a;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ljava/lang/Throwable;

    sget v0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$a;->J:I

    iget-object p0, p0, Lcom/perfectcorp/common/network/BaseDownloadHandle;->c:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/SettableFuture;

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b;->setException(Ljava/lang/Throwable;)Z

    return-void

    :pswitch_0
    check-cast p1, Lcom/perfectcorp/common/network/DownloadReport$CompleteReport;

    sget v0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$a;->J:I

    iget-object p0, p0, Lcom/perfectcorp/common/network/BaseDownloadHandle;->c:Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/SettableFuture;

    iget-object p1, p1, Lcom/perfectcorp/common/network/DownloadReport;->b:Ljava/lang/Object;

    check-cast p1, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/b;->set(Ljava/lang/Object;)Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
