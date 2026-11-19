.class public final synthetic Lva0;
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

    iput p2, p0, Lva0;->b:I

    iput-object p1, p0, Lva0;->c:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lva0;->b:I

    const/4 v1, 0x0

    iget-object p0, p0, Lva0;->c:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    packed-switch v0, :pswitch_data_0

    invoke-static {}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/h;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/perfectcorp/perfectlib/ph/unit/sku/a;->b(Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;Z)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/f;

    move-result-object p0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/g;->b:Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/g;

    :goto_0
    return-object p0

    :pswitch_0
    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;->c()V

    invoke-static {}, Lcom/perfectcorp/perfectlib/ymk/utility/SettingHelper;->e()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/perfectcorp/perfectlib/SkuHandler;->clearAllCompletable()Lcom/perfectcorp/thirdparty/io/reactivex/Completable;

    move-result-object p0

    goto :goto_1

    :cond_1
    sget-object p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/g;->b:Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/g;

    :goto_1
    return-object p0

    :pswitch_1
    invoke-static {}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/h;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0, v1}, Lcom/perfectcorp/perfectlib/ph/unit/sku/a;->b(Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;Z)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/f;

    move-result-object p0

    goto :goto_2

    :cond_2
    sget-object p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/g;->b:Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/g;

    :goto_2
    return-object p0

    :pswitch_2
    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;->c()V

    sget-object p0, Lcom/perfectcorp/perfectlib/hc/preferences/LookHandlerPreferences;->a:Lcom/perfectcorp/common/utility/BasicPreferences;

    const-string v0, "LOOK_LIST_MESSAGE_DIGEST"

    const-string v2, ""

    invoke-virtual {p0, v0, v2}, Lcom/perfectcorp/common/utility/j;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Lcom/perfectcorp/perfectlib/ph/utility/networkcache/c$f;

    invoke-direct {v0, p0, v1}, Lcom/perfectcorp/perfectlib/ph/utility/networkcache/c$f;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0}, Lcom/perfectcorp/perfectlib/ph/utility/networkcache/c$f;->c()Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object p0

    new-instance v0, Lv40;

    const/16 v1, 0xf

    invoke-direct {v0, v1}, Lv40;-><init>(I)V

    new-instance v1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/m;

    invoke-direct {v1, p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/m;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    return-object v1

    :pswitch_3
    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;->c()V

    invoke-static {}, Lcom/perfectcorp/perfectlib/ymk/utility/SettingHelper;->c()Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-static {}, Lcom/perfectcorp/perfectlib/LookHandler;->clearAllCompletable()Lcom/perfectcorp/thirdparty/io/reactivex/Completable;

    move-result-object p0

    goto :goto_3

    :cond_3
    sget-object p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/g;->b:Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/g;

    :goto_3
    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
