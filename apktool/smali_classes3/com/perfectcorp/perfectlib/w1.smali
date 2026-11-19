.class public final synthetic Lcom/perfectcorp/perfectlib/w1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/perfectcorp/perfectlib/MakeupCamInternal;

.field public final synthetic d:I

.field public final synthetic e:Lcom/perfectcorp/perfectlib/VtoApplier$FunStickerActionHintCallback;

.field public final synthetic f:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/perfectcorp/perfectlib/MakeupCamInternal;ILcom/perfectcorp/perfectlib/VtoApplier$FunStickerActionHintCallback;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/perfectcorp/perfectlib/w1;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/w1;->c:Lcom/perfectcorp/perfectlib/MakeupCamInternal;

    iput p2, p0, Lcom/perfectcorp/perfectlib/w1;->d:I

    iput-object p3, p0, Lcom/perfectcorp/perfectlib/w1;->e:Lcom/perfectcorp/perfectlib/VtoApplier$FunStickerActionHintCallback;

    iput-object p4, p0, Lcom/perfectcorp/perfectlib/w1;->f:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/perfectcorp/perfectlib/MakeupCamInternal;ILjava/lang/String;Lcom/perfectcorp/perfectlib/VtoApplier$FunStickerActionHintCallback;)V
    .locals 1

    .line 15
    const/4 v0, 0x0

    iput v0, p0, Lcom/perfectcorp/perfectlib/w1;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/w1;->c:Lcom/perfectcorp/perfectlib/MakeupCamInternal;

    iput p2, p0, Lcom/perfectcorp/perfectlib/w1;->d:I

    iput-object p3, p0, Lcom/perfectcorp/perfectlib/w1;->f:Ljava/lang/String;

    iput-object p4, p0, Lcom/perfectcorp/perfectlib/w1;->e:Lcom/perfectcorp/perfectlib/VtoApplier$FunStickerActionHintCallback;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    iget v0, p0, Lcom/perfectcorp/perfectlib/w1;->b:I

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/w1;->f:Ljava/lang/String;

    iget-object v2, p0, Lcom/perfectcorp/perfectlib/w1;->e:Lcom/perfectcorp/perfectlib/VtoApplier$FunStickerActionHintCallback;

    iget v3, p0, Lcom/perfectcorp/perfectlib/w1;->d:I

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/w1;->c:Lcom/perfectcorp/perfectlib/MakeupCamInternal;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;

    sget-object v0, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->n:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/perfectcorp/perfectlib/ApplyEffectUtility;->F(Ljava/lang/String;)Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    move-result-object v0

    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->d()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Look;

    invoke-static {v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->h(Ljava/lang/Object;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/s;

    move-result-object v0

    iget-object p1, p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;->d:Ljava/lang/String;

    sget-object v1, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->n:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/perfectcorp/perfectlib/w1;

    invoke-direct {v1, p0, v3, p1, v2}, Lcom/perfectcorp/perfectlib/w1;-><init>(Lcom/perfectcorp/perfectlib/MakeupCamInternal;ILjava/lang/String;Lcom/perfectcorp/perfectlib/VtoApplier$FunStickerActionHintCallback;)V

    new-instance v2, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/m;

    invoke-direct {v2, v0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/m;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    sget-object v0, Lcom/perfectcorp/thirdparty/io/reactivex/schedulers/Schedulers;->c:Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    invoke-virtual {v2, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->i(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/u;

    move-result-object v0

    new-instance v1, Lcom/perfectcorp/perfectlib/a0;

    const/4 v2, 0x4

    invoke-direct {v1, p0, p1, v2}, Lcom/perfectcorp/perfectlib/a0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    new-instance p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;

    invoke-direct {p0, v0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/perfectcorp/perfectlib/exceptions/LookNotFoundException;

    const-string p1, "Can\'t find look="

    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/perfectcorp/perfectlib/exceptions/LookNotFoundException;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->g(Ljava/lang/Throwable;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/l;

    move-result-object p0

    :goto_0
    return-object p0

    :pswitch_0
    move-object v4, p1

    check-cast v4, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Look;

    sget-object p1, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->n:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {p0, v3}, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->A(I)V

    const/4 p1, 0x3

    const-string v0, "[applyLookTransform] Start apply. lookGuid="

    const-string v3, "MakeupCamInternal"

    invoke-static {p1, v0, v1, v3}, La;->v(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->g:Lcom/perfectcorp/perfectlib/makeupcam/camera/MakeupCam;

    iget-object v6, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/MakeupCam;->b:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;

    iget-object v3, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/MakeupCam;->a:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;

    iget-object v5, v3, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->v:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;

    iget v7, p0, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->k:I

    iget v8, p0, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->l:I

    new-instance v3, Lcom/perfectcorp/perfectlib/d2;

    invoke-direct/range {v3 .. v8}, Lcom/perfectcorp/perfectlib/d2;-><init>(Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Look;Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;II)V

    invoke-static {v3}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFutureTask;->create(Ljava/util/concurrent/Callable;)Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFutureTask;

    move-result-object v3

    sget-object v4, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->n:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    new-instance v4, Lhc0;

    invoke-direct {v4, v0}, Lhc0;-><init>(Lcom/perfectcorp/perfectlib/makeupcam/camera/MakeupCam;)V

    sget-object v0, Lcom/perfectcorp/common/concurrent/CallingThread;->ANY:Lcom/perfectcorp/common/concurrent/CallingThread;

    invoke-static {v3, v4, v0}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/Futures;->i(Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/i;Ljava/util/concurrent/Executor;)Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;

    move-result-object v3

    iget-boolean v4, p0, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->j:Z

    if-eqz v4, :cond_3

    sget-object v4, Lcom/perfectcorp/perfectlib/ph/template/e;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[queryFunStickerTemplateByLookGuid] lookId="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "PanelDataCenter"

    invoke-static {p1, v5, v4}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/perfectcorp/perfectlib/hc/YMKDatabase;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/perfectcorp/perfectlib/ph/database/ymk/look/e;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Lcom/perfectcorp/perfectlib/ph/database/ymk/look/d;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/look/d;->l:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x1

    invoke-static {p1, v1}, Lcom/perfectcorp/perfectlib/ph/template/e;->a(Ljava/lang/String;Z)Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate;

    move-result-object p1

    goto :goto_2

    :cond_2
    :goto_1
    sget-object p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate;->e:Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate;

    goto :goto_2

    :cond_3
    sget-object p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate;->e:Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate;

    :goto_2
    invoke-static {v3, v0}, Lcom/perfectcorp/common/rx/Singles;->a(Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;Lcom/perfectcorp/common/concurrent/CallingThread;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/b;

    move-result-object v0

    invoke-virtual {p0, p1, v2}, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->s(Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate;Lcom/perfectcorp/perfectlib/VtoApplier$FunStickerActionHintCallback;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/b;

    move-result-object p0

    new-instance p1, Lcom/perfectcorp/perfectlib/y;

    const/16 v1, 0xc

    invoke-direct {p1, v1}, Lcom/perfectcorp/perfectlib/y;-><init>(I)V

    invoke-static {v0, p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->m(Lcom/perfectcorp/thirdparty/io/reactivex/Single;Lcom/perfectcorp/thirdparty/io/reactivex/Single;Lcom/perfectcorp/thirdparty/io/reactivex/functions/BiFunction;)Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
