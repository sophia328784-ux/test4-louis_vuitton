.class public final synthetic Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/d0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/perfectcorp/thirdparty/com/google/common/base/Function;


# instance fields
.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/d0;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget p0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/d0;->b:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b;

    sget-object p0, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;->e:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    new-instance p0, Let;

    const/4 v0, 0x5

    invoke-direct {p0, p1, v0}, Let;-><init>(Ljava/lang/Object;I)V

    invoke-static {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposables;->b(Ljava/lang/Runnable;)Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p1, Lcom/perfectcorp/common/network/DownloadReport$CompleteReport;

    sget-object p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b;->z:Ljava/util/concurrent/ExecutorService;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p1, Lcom/perfectcorp/common/network/DownloadReport;->b:Ljava/lang/Object;

    check-cast p0, Ljava/io/File;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
