.class public final synthetic Lcom/perfectcorp/perfectlib/l1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/perfectcorp/thirdparty/io/reactivex/SingleTransformer;
.implements Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;


# instance fields
.field public final synthetic b:Lcom/perfectcorp/perfectlib/MakeupCamInternal;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/perfectcorp/perfectlib/MakeupCamInternal;I)V
    .locals 0

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/l1;->b:Lcom/perfectcorp/perfectlib/MakeupCamInternal;

    iput p2, p0, Lcom/perfectcorp/perfectlib/l1;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/perfectcorp/thirdparty/io/reactivex/Single;)Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;
    .locals 2

    sget-object v0, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->n:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v0, Lcom/perfectcorp/perfectlib/l1;

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/l1;->b:Lcom/perfectcorp/perfectlib/MakeupCamInternal;

    iget p0, p0, Lcom/perfectcorp/perfectlib/l1;->c:I

    invoke-direct {v0, v1, p0}, Lcom/perfectcorp/perfectlib/l1;-><init>(Lcom/perfectcorp/perfectlib/MakeupCamInternal;I)V

    new-instance p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/m;

    invoke-direct {p0, p1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/m;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    return-object p0
.end method

.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Lcom/perfectcorp/perfectlib/MakeupCamInternal$ConfigureData;

    sget-object v0, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->n:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/l1;->b:Lcom/perfectcorp/perfectlib/MakeupCamInternal;

    iget p0, p0, Lcom/perfectcorp/perfectlib/l1;->c:I

    invoke-virtual {v0, p0}, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->A(I)V

    iget-object p0, v0, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->g:Lcom/perfectcorp/perfectlib/makeupcam/camera/MakeupCam;

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/MakeupCamInternal$ConfigureData;->b:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Configuration;

    invoke-virtual {p0, v0}, Lcom/perfectcorp/perfectlib/makeupcam/camera/MakeupCam;->b(Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Configuration;)Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFutureTask;

    move-result-object p0

    sget-object v0, Lcom/perfectcorp/common/concurrent/CallingThread;->ANY:Lcom/perfectcorp/common/concurrent/CallingThread;

    invoke-static {p0, v0}, Lcom/perfectcorp/common/rx/Singles;->a(Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;Lcom/perfectcorp/common/concurrent/CallingThread;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/b;

    move-result-object p0

    new-instance v0, Lcom/perfectcorp/perfectlib/z0;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lcom/perfectcorp/perfectlib/z0;-><init>(Ljava/lang/Object;I)V

    new-instance p1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;

    invoke-direct {p1, p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    return-object p1
.end method
