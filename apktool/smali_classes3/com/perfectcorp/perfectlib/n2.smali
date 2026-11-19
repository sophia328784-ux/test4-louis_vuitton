.class public final synthetic Lcom/perfectcorp/perfectlib/n2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic b:Lcom/perfectcorp/perfectlib/MakeupCamInternal;

.field public final synthetic c:Z

.field public final synthetic d:Z

.field public final synthetic e:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

.field public final synthetic f:Lcom/perfectcorp/perfectlib/VtoApplier$FunStickerActionHintCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/perfectcorp/perfectlib/MakeupCamInternal;ZZLcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;Lcom/perfectcorp/perfectlib/VtoApplier$FunStickerActionHintCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/n2;->b:Lcom/perfectcorp/perfectlib/MakeupCamInternal;

    iput-boolean p2, p0, Lcom/perfectcorp/perfectlib/n2;->c:Z

    iput-boolean p3, p0, Lcom/perfectcorp/perfectlib/n2;->d:Z

    iput-object p4, p0, Lcom/perfectcorp/perfectlib/n2;->e:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    iput-object p5, p0, Lcom/perfectcorp/perfectlib/n2;->f:Lcom/perfectcorp/perfectlib/VtoApplier$FunStickerActionHintCallback;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/n2;->b:Lcom/perfectcorp/perfectlib/MakeupCamInternal;

    iget-object v1, v0, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->h:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;

    iget-object v2, v0, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->g:Lcom/perfectcorp/perfectlib/makeupcam/camera/MakeupCam;

    iget-boolean v3, p0, Lcom/perfectcorp/perfectlib/n2;->c:Z

    iget-boolean v4, p0, Lcom/perfectcorp/perfectlib/n2;->d:Z

    iget-object v5, p0, Lcom/perfectcorp/perfectlib/n2;->e:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/n2;->f:Lcom/perfectcorp/perfectlib/VtoApplier$FunStickerActionHintCallback;

    if-eqz v3, :cond_0

    if-eqz v4, :cond_0

    iget-object v3, v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/MakeupCam;->b:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;

    invoke-static {v3, v1, v5}, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->l(Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;Ljava/lang/Iterable;)Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Configuration;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/perfectcorp/perfectlib/makeupcam/camera/MakeupCam;->b(Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Configuration;)Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFutureTask;

    move-result-object v1

    sget-object v2, Lcom/perfectcorp/common/concurrent/CallingThread;->ANY:Lcom/perfectcorp/common/concurrent/CallingThread;

    invoke-static {v1, v2}, Lcom/perfectcorp/common/rx/Singles;->a(Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;Lcom/perfectcorp/common/concurrent/CallingThread;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/b;

    move-result-object v1

    sget-object v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate;->e:Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate;

    invoke-virtual {v0, v2, p0}, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->s(Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate;Lcom/perfectcorp/perfectlib/VtoApplier$FunStickerActionHintCallback;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/b;

    move-result-object p0

    new-instance v0, Lcom/perfectcorp/perfectlib/y;

    const/16 v2, 0xc

    invoke-direct {v0, v2}, Lcom/perfectcorp/perfectlib/y;-><init>(I)V

    invoke-static {v1, p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->m(Lcom/perfectcorp/thirdparty/io/reactivex/Single;Lcom/perfectcorp/thirdparty/io/reactivex/Single;Lcom/perfectcorp/thirdparty/io/reactivex/functions/BiFunction;)Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object p0

    return-object p0

    :cond_0
    if-eqz v3, :cond_1

    iget-object p0, v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/MakeupCam;->b:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;

    invoke-static {p0, v1, v5}, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->l(Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;Ljava/lang/Iterable;)Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Configuration;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/perfectcorp/perfectlib/makeupcam/camera/MakeupCam;->b(Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Configuration;)Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFutureTask;

    move-result-object p0

    sget-object v0, Lcom/perfectcorp/common/concurrent/CallingThread;->ANY:Lcom/perfectcorp/common/concurrent/CallingThread;

    invoke-static {p0, v0}, Lcom/perfectcorp/common/rx/Singles;->a(Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;Lcom/perfectcorp/common/concurrent/CallingThread;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/b;

    move-result-object p0

    return-object p0

    :cond_1
    if-eqz v4, :cond_2

    sget-object v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate;->e:Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate;

    invoke-virtual {v0, v1, p0}, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->s(Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate;Lcom/perfectcorp/perfectlib/VtoApplier$FunStickerActionHintCallback;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/b;

    move-result-object p0

    return-object p0

    :cond_2
    const-string p0, "Should not be here."

    invoke-static {p0}, Lmd;->h(Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0
.end method
