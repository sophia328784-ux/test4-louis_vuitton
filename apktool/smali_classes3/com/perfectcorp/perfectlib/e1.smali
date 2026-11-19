.class public final synthetic Lcom/perfectcorp/perfectlib/e1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:Lcom/perfectcorp/perfectlib/DownloadCacheStrategy;

.field public final synthetic e:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

.field public final synthetic f:Ljava/lang/Object;

.field public final synthetic g:Ljava/lang/Object;

.field public final synthetic h:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;ILjava/lang/Object;Lcom/perfectcorp/perfectlib/DownloadCacheStrategy;Ljava/lang/Object;Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;I)V
    .locals 0

    iput p7, p0, Lcom/perfectcorp/perfectlib/e1;->b:I

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/e1;->f:Ljava/lang/Object;

    iput p2, p0, Lcom/perfectcorp/perfectlib/e1;->c:I

    iput-object p3, p0, Lcom/perfectcorp/perfectlib/e1;->g:Ljava/lang/Object;

    iput-object p4, p0, Lcom/perfectcorp/perfectlib/e1;->d:Lcom/perfectcorp/perfectlib/DownloadCacheStrategy;

    iput-object p5, p0, Lcom/perfectcorp/perfectlib/e1;->h:Ljava/lang/Object;

    iput-object p6, p0, Lcom/perfectcorp/perfectlib/e1;->e:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 9

    iget v0, p0, Lcom/perfectcorp/perfectlib/e1;->b:I

    const-string v1, "This is not a nail look."

    const/4 v2, 0x0

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/perfectcorp/perfectlib/e1;->e:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    iget-object v5, p0, Lcom/perfectcorp/perfectlib/e1;->h:Ljava/lang/Object;

    iget-object v6, p0, Lcom/perfectcorp/perfectlib/e1;->d:Lcom/perfectcorp/perfectlib/DownloadCacheStrategy;

    iget-object v7, p0, Lcom/perfectcorp/perfectlib/e1;->g:Ljava/lang/Object;

    iget v8, p0, Lcom/perfectcorp/perfectlib/e1;->c:I

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/e1;->f:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;

    check-cast v7, Ljava/lang/String;

    check-cast v5, Lcom/perfectcorp/perfectlib/VtoApplier$DownloadAndApplyCallback;

    sget v0, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->n:I

    invoke-virtual {p0, v8}, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->e(I)V

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->k:Lcom/perfectcorp/perfectlib/Configuration$ImageSource;

    new-instance v0, Ls40;

    invoke-direct {v0, v5, v3}, Ls40;-><init>(Ljava/lang/Object;I)V

    invoke-static {v0, p0, v6, v4, v7}, Lcom/perfectcorp/perfectlib/ApplyEffectUtility;->l(Lcom/perfectcorp/common/network/ProgressCallback;Lcom/perfectcorp/perfectlib/Configuration$ImageSource;Lcom/perfectcorp/perfectlib/DownloadCacheStrategy;Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;Ljava/lang/String;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/c;

    move-result-object p0

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->k()Ljava/util/concurrent/Future;

    move-result-object p0

    invoke-static {p0}, Lcom/perfectcorp/common/guava/MoreFutures;->b(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Look;

    return-object p0

    :pswitch_0
    check-cast p0, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;

    check-cast v7, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;

    check-cast v5, Lcom/perfectcorp/perfectlib/VtoApplier$DownloadAndApplyCallback;

    sget v0, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->n:I

    invoke-virtual {p0, v8}, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->e(I)V

    iget-object v0, v7, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;->d:Ljava/lang/String;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->k:Lcom/perfectcorp/perfectlib/Configuration$ImageSource;

    new-instance v1, Ls40;

    invoke-direct {v1, v5, v3}, Ls40;-><init>(Ljava/lang/Object;I)V

    invoke-static {v1, p0, v6, v4, v0}, Lcom/perfectcorp/perfectlib/ApplyEffectUtility;->l(Lcom/perfectcorp/common/network/ProgressCallback;Lcom/perfectcorp/perfectlib/Configuration$ImageSource;Lcom/perfectcorp/perfectlib/DownloadCacheStrategy;Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;Ljava/lang/String;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/c;

    move-result-object p0

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->k()Ljava/util/concurrent/Future;

    move-result-object p0

    invoke-static {p0}, Lcom/perfectcorp/common/guava/MoreFutures;->b(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Look;

    return-object p0

    :pswitch_1
    check-cast p0, Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;

    check-cast v7, Ljava/lang/String;

    check-cast v5, Lcom/perfectcorp/perfectlib/NailVtoApplier$DownloadAndApplyCallback;

    invoke-virtual {p0, v8}, Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;->s(I)V

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;->i:Lcom/perfectcorp/perfectlib/Configuration$ImageSource;

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ls40;

    const/4 v8, 0x2

    invoke-direct {v0, v5, v8}, Ls40;-><init>(Ljava/lang/Object;I)V

    invoke-static {v0, p0, v6, v4, v7}, Lcom/perfectcorp/perfectlib/ApplyEffectUtility;->l(Lcom/perfectcorp/common/network/ProgressCallback;Lcom/perfectcorp/perfectlib/Configuration$ImageSource;Lcom/perfectcorp/perfectlib/DownloadCacheStrategy;Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;Ljava/lang/String;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/c;

    move-result-object p0

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->k()Ljava/util/concurrent/Future;

    move-result-object p0

    invoke-static {p0}, Lcom/perfectcorp/common/guava/MoreFutures;->b(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Look;

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Look;->g:Ljava/lang/String;

    invoke-static {v0}, Lcom/perfectcorp/perfectlib/ph/database/ymk/look/d$b;->a(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/ph/database/ymk/look/d$b;

    move-result-object v0

    sget-object v4, Lcom/perfectcorp/perfectlib/ph/database/ymk/look/d$b;->b:Lcom/perfectcorp/perfectlib/ph/database/ymk/look/d$b;

    if-ne v0, v4, :cond_0

    move v2, v3

    :cond_0
    invoke-static {v2, v1}, Lcom/perfectcorp/thirdparty/com/google/common/base/Preconditions;->g(ZLjava/lang/String;)V

    return-object p0

    :pswitch_2
    check-cast p0, Lcom/perfectcorp/perfectlib/MakeupCamInternal;

    check-cast v7, Ljava/lang/String;

    check-cast v5, Lcom/perfectcorp/perfectlib/VtoApplier$DownloadAndApplyCallback;

    sget-object v0, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->n:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {p0, v8}, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->w(I)V

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->i:Lcom/perfectcorp/perfectlib/Configuration$ImageSource;

    new-instance v0, Ls40;

    invoke-direct {v0, v5, v3}, Ls40;-><init>(Ljava/lang/Object;I)V

    invoke-static {v0, p0, v6, v4, v7}, Lcom/perfectcorp/perfectlib/ApplyEffectUtility;->l(Lcom/perfectcorp/common/network/ProgressCallback;Lcom/perfectcorp/perfectlib/Configuration$ImageSource;Lcom/perfectcorp/perfectlib/DownloadCacheStrategy;Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;Ljava/lang/String;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/c;

    move-result-object p0

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->k()Ljava/util/concurrent/Future;

    move-result-object p0

    invoke-static {p0}, Lcom/perfectcorp/common/guava/MoreFutures;->b(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Look;

    return-object p0

    :pswitch_3
    check-cast p0, Lcom/perfectcorp/perfectlib/MakeupCamInternal;

    check-cast v7, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;

    check-cast v5, Lcom/perfectcorp/perfectlib/VtoApplier$DownloadAndApplyCallback;

    sget-object v0, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->n:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {p0, v8}, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->w(I)V

    iget-object v0, v7, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;->d:Ljava/lang/String;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->i:Lcom/perfectcorp/perfectlib/Configuration$ImageSource;

    new-instance v1, Ls40;

    invoke-direct {v1, v5, v3}, Ls40;-><init>(Ljava/lang/Object;I)V

    invoke-static {v1, p0, v6, v4, v0}, Lcom/perfectcorp/perfectlib/ApplyEffectUtility;->l(Lcom/perfectcorp/common/network/ProgressCallback;Lcom/perfectcorp/perfectlib/Configuration$ImageSource;Lcom/perfectcorp/perfectlib/DownloadCacheStrategy;Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;Ljava/lang/String;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/c;

    move-result-object p0

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->k()Ljava/util/concurrent/Future;

    move-result-object p0

    invoke-static {p0}, Lcom/perfectcorp/common/guava/MoreFutures;->b(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Look;

    return-object p0

    :pswitch_4
    check-cast p0, Lcom/perfectcorp/perfectlib/JewelryVtoApplierImpl;

    check-cast v7, Ljava/lang/String;

    check-cast v5, Lcom/perfectcorp/perfectlib/JewelryVtoApplier$DownloadAndApplyCallback;

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/JewelryVtoApplierImpl;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-ne v0, v8, :cond_2

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/JewelryVtoApplierImpl;->j:Lcom/perfectcorp/perfectlib/Configuration$ImageSource;

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ls40;

    invoke-direct {v0, v5, v2}, Ls40;-><init>(Ljava/lang/Object;I)V

    invoke-static {v0, p0, v6, v4, v7}, Lcom/perfectcorp/perfectlib/ApplyEffectUtility;->l(Lcom/perfectcorp/common/network/ProgressCallback;Lcom/perfectcorp/perfectlib/Configuration$ImageSource;Lcom/perfectcorp/perfectlib/DownloadCacheStrategy;Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;Ljava/lang/String;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/c;

    move-result-object p0

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->k()Ljava/util/concurrent/Future;

    move-result-object p0

    invoke-static {p0}, Lcom/perfectcorp/common/guava/MoreFutures;->b(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Look;

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Look;->g:Ljava/lang/String;

    invoke-static {v0}, Lcom/perfectcorp/perfectlib/ph/database/ymk/look/d$b;->a(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/ph/database/ymk/look/d$b;

    move-result-object v0

    sget-object v4, Lcom/perfectcorp/perfectlib/ph/database/ymk/look/d$b;->c:Lcom/perfectcorp/perfectlib/ph/database/ymk/look/d$b;

    if-ne v0, v4, :cond_1

    move v2, v3

    :cond_1
    invoke-static {v2, v1}, Lcom/perfectcorp/thirdparty/com/google/common/base/Preconditions;->g(ZLjava/lang/String;)V

    return-object p0

    :cond_2
    new-instance p0, Lcom/perfectcorp/perfectlib/internal/SkipCallbackException;

    const-string v1, ") != expectedDownloadTaskSN("

    const-string v2, ")"

    const-string v3, "currentDownloadTaskSN("

    invoke-static {v0, v8, v3, v1, v2}, Lfc;->f(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/perfectcorp/perfectlib/internal/SkipCallbackException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
