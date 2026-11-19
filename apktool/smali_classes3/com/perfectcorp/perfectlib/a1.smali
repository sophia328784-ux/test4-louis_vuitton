.class public final synthetic Lcom/perfectcorp/perfectlib/a1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;


# direct methods
.method public synthetic constructor <init>(Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;I)V
    .locals 0

    iput p2, p0, Lcom/perfectcorp/perfectlib/a1;->b:I

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/a1;->c:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/perfectcorp/perfectlib/a1;->b:I

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/a1;->c:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;->c()V

    invoke-static {}, Lcom/perfectcorp/perfectlib/ymk/utility/SettingHelper;->d()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/perfectcorp/perfectlib/NailLookHandler;->clearAllCompletable()Lcom/perfectcorp/thirdparty/io/reactivex/Completable;

    move-result-object p0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/g;->b:Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/g;

    :goto_0
    return-object p0

    :pswitch_0
    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;->c()V

    invoke-static {}, Lcom/perfectcorp/perfectlib/ymk/utility/SettingHelper;->b()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/perfectcorp/perfectlib/JewelryLookHandler;->clearAllCompletable()Lcom/perfectcorp/thirdparty/io/reactivex/Completable;

    move-result-object p0

    goto :goto_1

    :cond_1
    sget-object p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/g;->b:Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/g;

    :goto_1
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
