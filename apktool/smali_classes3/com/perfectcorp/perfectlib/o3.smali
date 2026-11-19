.class public final synthetic Lcom/perfectcorp/perfectlib/o3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/perfectcorp/thirdparty/io/reactivex/SingleTransformer;
.implements Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;


# instance fields
.field public final synthetic b:Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;I)V
    .locals 0

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/o3;->b:Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;

    iput p2, p0, Lcom/perfectcorp/perfectlib/o3;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/perfectcorp/thirdparty/io/reactivex/Single;)Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;
    .locals 2

    sget v0, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->n:I

    new-instance v0, Lcom/perfectcorp/perfectlib/o3;

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/o3;->b:Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;

    iget p0, p0, Lcom/perfectcorp/perfectlib/o3;->c:I

    invoke-direct {v0, v1, p0}, Lcom/perfectcorp/perfectlib/o3;-><init>(Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;I)V

    new-instance p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/m;

    invoke-direct {p0, p1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/m;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    return-object p0
.end method

.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Lcom/perfectcorp/perfectlib/MakeupCamInternal$ConfigureData;

    sget v0, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->n:I

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/o3;->b:Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;

    iget p0, p0, Lcom/perfectcorp/perfectlib/o3;->c:I

    invoke-virtual {v0, p0}, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->g(I)V

    iget-object p0, v0, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->i:Lcom/perfectcorp/perfectlib/PhotoMakeup$PhotoMakeupFrameProcessingThread;

    iget-object v1, p1, Lcom/perfectcorp/perfectlib/MakeupCamInternal$ConfigureData;->b:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Configuration;

    invoke-virtual {p0, v1}, Lcom/perfectcorp/perfectlib/PhotoMakeup$PhotoMakeupFrameProcessingThread;->applyConfiguration(Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Configuration;)Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    sget-object v1, Lcom/perfectcorp/common/concurrent/CallingThread;->ANY:Lcom/perfectcorp/common/concurrent/CallingThread;

    invoke-static {p0, v1}, Lcom/perfectcorp/common/rx/Singles;->a(Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;Lcom/perfectcorp/common/concurrent/CallingThread;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/b;

    move-result-object p0

    sget-object v1, Lcom/perfectcorp/thirdparty/io/reactivex/schedulers/Schedulers;->c:Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    invoke-virtual {p0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->i(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/u;

    move-result-object p0

    new-instance v1, Lcom/perfectcorp/perfectlib/a0;

    const/4 v2, 0x5

    invoke-direct {v1, v0, p1, v2}, Lcom/perfectcorp/perfectlib/a0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    new-instance p1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/m;

    invoke-direct {p1, p0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/m;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    return-object p1
.end method
