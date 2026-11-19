.class public final synthetic Lky0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/perfectcorp/perfectlib/PerfectEffect;

.field public final synthetic d:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;


# direct methods
.method public synthetic constructor <init>(Lcom/perfectcorp/perfectlib/PerfectEffect;Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;I)V
    .locals 0

    iput p3, p0, Lky0;->b:I

    iput-object p1, p0, Lky0;->c:Lcom/perfectcorp/perfectlib/PerfectEffect;

    iput-object p2, p0, Lky0;->d:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lky0;->b:I

    iget-object v1, p0, Lky0;->d:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    iget-object p0, p0, Lky0;->c:Lcom/perfectcorp/perfectlib/PerfectEffect;

    packed-switch v0, :pswitch_data_0

    invoke-static {}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/h;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/PerfectEffect;->beautyMode:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    invoke-static {p0}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/h;->c(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    invoke-static {v1, p0}, Lcom/perfectcorp/perfectlib/ph/unit/sku/a;->b(Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;Z)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/f;

    move-result-object p0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/g;->b:Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/g;

    :goto_0
    return-object p0

    :pswitch_0
    invoke-static {}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/h;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/PerfectEffect;->beautyMode:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    invoke-static {p0}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/sku/h;->c(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    invoke-static {v1, p0}, Lcom/perfectcorp/perfectlib/ph/unit/sku/a;->b(Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;Z)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/f;

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
