.class public final synthetic Lcom/perfectcorp/perfectlib/t3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;


# direct methods
.method public synthetic constructor <init>(Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;I)V
    .locals 0

    iput p2, p0, Lcom/perfectcorp/perfectlib/t3;->b:I

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/t3;->c:Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 8

    iget v0, p0, Lcom/perfectcorp/perfectlib/t3;->b:I

    const/4 v1, 0x0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/t3;->c:Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->l:Lcom/perfectcorp/perfectlib/MakeupCamInternal$Logger;

    iput-object v1, v0, Lcom/perfectcorp/perfectlib/MakeupCamInternal$Logger;->a:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->I:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    iget-object v3, p0, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->h:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;

    invoke-virtual {v3, v2}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->h(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Configuration;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->i:Lcom/perfectcorp/perfectlib/PhotoMakeup$PhotoMakeupFrameProcessingThread;

    new-instance v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationWrapper;

    invoke-direct {v1, v0}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationWrapper;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, v1}, Lcom/perfectcorp/perfectlib/PhotoMakeup$PhotoMakeupFrameProcessingThread;->applyConfiguration(Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Configuration;)Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    sget-object v0, Lcom/perfectcorp/common/concurrent/CallingThread;->ANY:Lcom/perfectcorp/common/concurrent/CallingThread;

    invoke-static {p0, v0}, Lcom/perfectcorp/common/rx/Singles;->a(Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;Lcom/perfectcorp/common/concurrent/CallingThread;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/b;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object p0, p0, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->j:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;

    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableMap$Builder;

    invoke-direct {v0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableMap$Builder;-><init>()V

    invoke-static {}, Lcom/perfectcorp/perfectlib/ReshapeEffect;->values()[Lcom/perfectcorp/perfectlib/ReshapeEffect;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_1
    if-ge v4, v2, :cond_2

    aget-object v5, v1, v4

    iget-object v6, v5, Lcom/perfectcorp/perfectlib/ReshapeEffect;->beautyMode:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    invoke-virtual {p0, v6}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->o(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {p0, v6}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->k(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)I

    move-result v6

    :try_start_0
    const-string v7, "intensity"

    invoke-virtual {v5, v6, v7}, Lcom/perfectcorp/perfectlib/ReshapeEffect;->a(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move v6, v3

    :goto_2
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableMap$Builder;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableMap$Builder;->a()Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableMap;

    move-result-object p0

    return-object p0

    :pswitch_1
    iget-object v0, p0, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->l:Lcom/perfectcorp/perfectlib/MakeupCamInternal$Logger;

    iput-object v1, v0, Lcom/perfectcorp/perfectlib/MakeupCamInternal$Logger;->a:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->I:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    sget-object v3, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->SKIN_SMOOTHER:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    if-eq v2, v3, :cond_3

    invoke-virtual {v2}, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->isReshape()Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->h:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;

    invoke-virtual {v3, v2}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->h(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Configuration;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_4
    iget-object p0, p0, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->i:Lcom/perfectcorp/perfectlib/PhotoMakeup$PhotoMakeupFrameProcessingThread;

    new-instance v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationWrapper;

    invoke-direct {v1, v0}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$ConfigurationWrapper;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, v1}, Lcom/perfectcorp/perfectlib/PhotoMakeup$PhotoMakeupFrameProcessingThread;->applyConfiguration(Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$Configuration;)Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    sget-object v0, Lcom/perfectcorp/common/concurrent/CallingThread;->ANY:Lcom/perfectcorp/common/concurrent/CallingThread;

    invoke-static {p0, v0}, Lcom/perfectcorp/common/rx/Singles;->a(Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;Lcom/perfectcorp/common/concurrent/CallingThread;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/b;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
