.class public final synthetic Lcom/perfectcorp/perfectlib/o1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/perfectcorp/perfectlib/MakeupCamInternal;

.field public final synthetic d:Lcom/perfectcorp/perfectlib/VtoApplier$FunStickerActionHintCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/perfectcorp/perfectlib/MakeupCamInternal;Lcom/perfectcorp/perfectlib/VtoApplier$FunStickerActionHintCallback;I)V
    .locals 0

    iput p3, p0, Lcom/perfectcorp/perfectlib/o1;->b:I

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/o1;->c:Lcom/perfectcorp/perfectlib/MakeupCamInternal;

    iput-object p2, p0, Lcom/perfectcorp/perfectlib/o1;->d:Lcom/perfectcorp/perfectlib/VtoApplier$FunStickerActionHintCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 6

    iget v0, p0, Lcom/perfectcorp/perfectlib/o1;->b:I

    const/16 v1, 0xc

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/o1;->c:Lcom/perfectcorp/perfectlib/MakeupCamInternal;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/o1;->d:Lcom/perfectcorp/perfectlib/VtoApplier$FunStickerActionHintCallback;

    iget-object v3, v0, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->m:Lcom/perfectcorp/perfectlib/MakeupCamInternal$Logger;

    iput-object v2, v3, Lcom/perfectcorp/perfectlib/MakeupCamInternal$Logger;->a:Ljava/lang/String;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sget-object v3, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->H:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    sget-object v5, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->SKIN_SMOOTHER:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    if-eq v4, v5, :cond_0

    iget-object v5, v0, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->g:Lcom/perfectcorp/perfectlib/makeupcam/camera/MakeupCam;

    iget-object v5, v5, Lcom/perfectcorp/perfectlib/makeupcam/camera/MakeupCam;->b:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;

    invoke-virtual {v5, v4}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->h(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Configuration;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v3, v0, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->g:Lcom/perfectcorp/perfectlib/makeupcam/camera/MakeupCam;

    new-instance v4, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationWrapper;

    invoke-direct {v4, v2}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationWrapper;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v3, v4}, Lcom/perfectcorp/perfectlib/makeupcam/camera/MakeupCam;->b(Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Configuration;)Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFutureTask;

    move-result-object v2

    sget-object v3, Lcom/perfectcorp/common/concurrent/CallingThread;->ANY:Lcom/perfectcorp/common/concurrent/CallingThread;

    invoke-static {v2, v3}, Lcom/perfectcorp/common/rx/Singles;->a(Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;Lcom/perfectcorp/common/concurrent/CallingThread;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/b;

    move-result-object v2

    sget-object v3, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate;->e:Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate;

    invoke-virtual {v0, v3, p0}, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->s(Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate;Lcom/perfectcorp/perfectlib/VtoApplier$FunStickerActionHintCallback;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/b;

    move-result-object p0

    new-instance v0, Lcom/perfectcorp/perfectlib/y;

    invoke-direct {v0, v1}, Lcom/perfectcorp/perfectlib/y;-><init>(I)V

    invoke-static {v2, p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->m(Lcom/perfectcorp/thirdparty/io/reactivex/Single;Lcom/perfectcorp/thirdparty/io/reactivex/Single;Lcom/perfectcorp/thirdparty/io/reactivex/functions/BiFunction;)Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object v0, p0, Lcom/perfectcorp/perfectlib/o1;->c:Lcom/perfectcorp/perfectlib/MakeupCamInternal;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/o1;->d:Lcom/perfectcorp/perfectlib/VtoApplier$FunStickerActionHintCallback;

    iget-object v3, v0, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->m:Lcom/perfectcorp/perfectlib/MakeupCamInternal$Logger;

    iput-object v2, v3, Lcom/perfectcorp/perfectlib/MakeupCamInternal$Logger;->a:Ljava/lang/String;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sget-object v3, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->H:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    sget-object v5, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->SKIN_SMOOTHER:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    if-eq v4, v5, :cond_2

    invoke-virtual {v4}, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->isReshape()Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, v0, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->g:Lcom/perfectcorp/perfectlib/makeupcam/camera/MakeupCam;

    iget-object v5, v5, Lcom/perfectcorp/perfectlib/makeupcam/camera/MakeupCam;->b:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;

    invoke-virtual {v5, v4}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->h(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Configuration;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    iget-object v3, v0, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->g:Lcom/perfectcorp/perfectlib/makeupcam/camera/MakeupCam;

    new-instance v4, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationWrapper;

    invoke-direct {v4, v2}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationWrapper;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v3, v4}, Lcom/perfectcorp/perfectlib/makeupcam/camera/MakeupCam;->b(Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Configuration;)Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFutureTask;

    move-result-object v2

    sget-object v3, Lcom/perfectcorp/common/concurrent/CallingThread;->ANY:Lcom/perfectcorp/common/concurrent/CallingThread;

    invoke-static {v2, v3}, Lcom/perfectcorp/common/rx/Singles;->a(Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;Lcom/perfectcorp/common/concurrent/CallingThread;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/b;

    move-result-object v2

    sget-object v3, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate;->e:Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate;

    invoke-virtual {v0, v3, p0}, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->s(Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate;Lcom/perfectcorp/perfectlib/VtoApplier$FunStickerActionHintCallback;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/b;

    move-result-object p0

    new-instance v0, Lcom/perfectcorp/perfectlib/y;

    invoke-direct {v0, v1}, Lcom/perfectcorp/perfectlib/y;-><init>(I)V

    invoke-static {v2, p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->m(Lcom/perfectcorp/thirdparty/io/reactivex/Single;Lcom/perfectcorp/thirdparty/io/reactivex/Single;Lcom/perfectcorp/thirdparty/io/reactivex/functions/BiFunction;)Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object p0

    return-object p0

    :pswitch_1
    iget-object v0, p0, Lcom/perfectcorp/perfectlib/o1;->c:Lcom/perfectcorp/perfectlib/MakeupCamInternal;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/o1;->d:Lcom/perfectcorp/perfectlib/VtoApplier$FunStickerActionHintCallback;

    iget-object v3, v0, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->m:Lcom/perfectcorp/perfectlib/MakeupCamInternal$Logger;

    iput-object v2, v3, Lcom/perfectcorp/perfectlib/MakeupCamInternal$Logger;->a:Ljava/lang/String;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sget-object v3, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->H:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    iget-object v5, v0, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->g:Lcom/perfectcorp/perfectlib/makeupcam/camera/MakeupCam;

    iget-object v5, v5, Lcom/perfectcorp/perfectlib/makeupcam/camera/MakeupCam;->b:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;

    invoke-virtual {v5, v4}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->h(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Configuration;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    iget-object v3, v0, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->g:Lcom/perfectcorp/perfectlib/makeupcam/camera/MakeupCam;

    new-instance v4, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationWrapper;

    invoke-direct {v4, v2}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationWrapper;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v3, v4}, Lcom/perfectcorp/perfectlib/makeupcam/camera/MakeupCam;->b(Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Configuration;)Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFutureTask;

    move-result-object v2

    sget-object v3, Lcom/perfectcorp/common/concurrent/CallingThread;->ANY:Lcom/perfectcorp/common/concurrent/CallingThread;

    invoke-static {v2, v3}, Lcom/perfectcorp/common/rx/Singles;->a(Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;Lcom/perfectcorp/common/concurrent/CallingThread;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/b;

    move-result-object v2

    sget-object v3, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate;->e:Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate;

    invoke-virtual {v0, v3, p0}, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->s(Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate;Lcom/perfectcorp/perfectlib/VtoApplier$FunStickerActionHintCallback;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/b;

    move-result-object p0

    new-instance v0, Lcom/perfectcorp/perfectlib/y;

    invoke-direct {v0, v1}, Lcom/perfectcorp/perfectlib/y;-><init>(I)V

    invoke-static {v2, p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->m(Lcom/perfectcorp/thirdparty/io/reactivex/Single;Lcom/perfectcorp/thirdparty/io/reactivex/Single;Lcom/perfectcorp/thirdparty/io/reactivex/functions/BiFunction;)Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
