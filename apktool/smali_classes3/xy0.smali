.class public final synthetic Lxy0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;


# direct methods
.method public synthetic constructor <init>(Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;I)V
    .locals 0

    iput p2, p0, Lxy0;->a:I

    iput-object p1, p0, Lxy0;->b:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget v0, p0, Lxy0;->a:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-object p0, p0, Lxy0;->b:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    check-cast p1, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;

    packed-switch v0, :pswitch_data_0

    new-array v0, v2, [Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;->b([Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)V

    return-void

    :pswitch_0
    new-array v0, v2, [Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;->b([Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)V

    return-void

    :pswitch_1
    new-array v0, v2, [Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;->b([Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
