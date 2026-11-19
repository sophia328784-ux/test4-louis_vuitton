.class public final synthetic Lcom/perfectcorp/perfectlib/v1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p4, p0, Lcom/perfectcorp/perfectlib/v1;->b:I

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/v1;->c:Ljava/lang/Object;

    iput-object p2, p0, Lcom/perfectcorp/perfectlib/v1;->d:Ljava/lang/Object;

    iput-object p3, p0, Lcom/perfectcorp/perfectlib/v1;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 10

    iget v0, p0, Lcom/perfectcorp/perfectlib/v1;->b:I

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/v1;->e:Ljava/lang/Object;

    iget-object v2, p0, Lcom/perfectcorp/perfectlib/v1;->d:Ljava/lang/Object;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/v1;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;

    check-cast v2, Ljava/lang/Runnable;

    check-cast v1, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->i:Lcom/perfectcorp/perfectlib/PhotoMakeup$PhotoMakeupFrameProcessingThread;

    invoke-virtual {p0, v2}, Lcom/perfectcorp/perfectlib/PhotoMakeup$PhotoMakeupFrameProcessingThread;->runOnGLThread(Ljava/lang/Runnable;)V

    sget-object p0, Lcom/perfectcorp/common/concurrent/CallingThread;->ANY:Lcom/perfectcorp/common/concurrent/CallingThread;

    invoke-static {v1, p0}, Lcom/perfectcorp/common/rx/Singles;->a(Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;Lcom/perfectcorp/common/concurrent/CallingThread;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/b;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p0, Lcom/perfectcorp/perfectlib/MakeupCamInternal;

    check-cast v2, Ljava/lang/Runnable;

    check-cast v1, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->g:Lcom/perfectcorp/perfectlib/makeupcam/camera/MakeupCam;

    invoke-virtual {p0, v2}, Lcom/perfectcorp/perfectlib/makeupcam/camera/MakeupCam;->d(Ljava/lang/Runnable;)V

    sget-object p0, Lcom/perfectcorp/common/concurrent/CallingThread;->ANY:Lcom/perfectcorp/common/concurrent/CallingThread;

    invoke-static {v1, p0}, Lcom/perfectcorp/common/rx/Singles;->a(Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;Lcom/perfectcorp/common/concurrent/CallingThread;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/b;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p0, Ljava/util/Set;

    check-cast v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;

    check-cast v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrlInterface;

    sget-object v0, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->n:Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;->c:Lcom/perfectcorp/thirdparty/com/google/common/collect/bz;

    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;

    invoke-direct {v0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;-><init>()V

    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    invoke-static {}, Lcom/perfectcorp/perfectlib/PerfectEffect;->values()[Lcom/perfectcorp/perfectlib/PerfectEffect;

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_6

    aget-object v7, v4, v6

    iget-object v8, v7, Lcom/perfectcorp/perfectlib/PerfectEffect;->beautyMode:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    invoke-interface {p0, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    sget-object v8, Lcom/perfectcorp/perfectlib/ApplyEffectUtility;->a:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;

    iget-object v9, v7, Lcom/perfectcorp/perfectlib/PerfectEffect;->beautyMode:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    invoke-interface {v8, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    iget-object v8, v7, Lcom/perfectcorp/perfectlib/PerfectEffect;->beautyMode:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    sget-object v9, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->EYE_WEAR:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    if-ne v8, v9, :cond_2

    sget-object v8, Lcom/perfectcorp/perfectlib/PerfectEffect;->EYEWEAR:Lcom/perfectcorp/perfectlib/PerfectEffect;

    if-ne v7, v8, :cond_1

    sget-object v8, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->CUBE_EYEWEAR:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    invoke-virtual {v2, v8}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->o(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)Z

    move-result v9

    if-eqz v9, :cond_1

    :cond_0
    :goto_1
    invoke-static {v2, v7, v8}, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->v(Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;Lcom/perfectcorp/perfectlib/PerfectEffect;Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)Ljava/util/List;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-virtual {v0, v7}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;->g(Ljava/util/List;)V

    goto :goto_2

    :cond_1
    sget-object v8, Lcom/perfectcorp/perfectlib/PerfectEffect;->EYEWEAR_3D:Lcom/perfectcorp/perfectlib/PerfectEffect;

    if-ne v7, v8, :cond_2

    sget-object v8, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->REAL_3D_EYEWEAR:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    invoke-virtual {v2, v8}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->o(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)Z

    move-result v9

    if-eqz v9, :cond_2

    goto :goto_1

    :cond_2
    iget-object v8, v7, Lcom/perfectcorp/perfectlib/PerfectEffect;->beautyMode:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    sget-object v9, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->FACE_ART:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    if-ne v8, v9, :cond_4

    invoke-virtual {v2, v9}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->o(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-static {v2, v7, v9}, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->v(Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;Lcom/perfectcorp/perfectlib/PerfectEffect;Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)Ljava/util/List;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-virtual {v0, v8}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;->g(Ljava/util/List;)V

    :cond_3
    sget-object v8, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->FACE_ART_LAYER_2:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    invoke-virtual {v2, v8}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->o(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)Z

    move-result v9

    if-eqz v9, :cond_5

    goto :goto_1

    :cond_4
    iget-object v9, v7, Lcom/perfectcorp/perfectlib/PerfectEffect;->itemSubType:Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;

    invoke-virtual {v2, v8, v9}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->p(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;Lcom/perfectcorp/perfectlib/ymk/model/ItemSubType;)Z

    move-result v8

    if-eqz v8, :cond_5

    iget-object v8, v7, Lcom/perfectcorp/perfectlib/PerfectEffect;->beautyMode:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    sget-object v9, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->FACE_CONTOUR:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    if-ne v8, v9, :cond_0

    invoke-static {v2, v7, v8}, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->v(Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;Lcom/perfectcorp/perfectlib/PerfectEffect;Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)Ljava/util/List;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    :cond_5
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_6
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_7

    new-instance p0, Lcom/perfectcorp/perfectlib/z1;

    invoke-direct {p0, v2}, Lcom/perfectcorp/perfectlib/z1;-><init>(Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;)V

    invoke-static {v3, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {v0, v3}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;->g(Ljava/util/List;)V

    :cond_7
    invoke-interface {v1}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrlInterface;->k()I

    move-result p0

    if-lez p0, :cond_8

    new-instance v3, Lcom/perfectcorp/perfectlib/EffectId;

    sget-object v4, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->SKIN_SMOOTHER:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v3, v4, p0}, Lcom/perfectcorp/perfectlib/EffectId;-><init>(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;Ljava/util/List;)V

    invoke-virtual {v0, v3}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;->f(Ljava/lang/Object;)V

    :cond_8
    sget-object p0, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->TEETH_WHITENER:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    iget-object v2, v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->l:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-eqz v2, :cond_9

    new-instance v3, Lcom/perfectcorp/perfectlib/EffectId;

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v3, p0, v2}, Lcom/perfectcorp/perfectlib/EffectId;-><init>(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;Ljava/util/List;)V

    invoke-virtual {v0, v3}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;->f(Ljava/lang/Object;)V

    :cond_9
    invoke-interface {v1}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrlInterface;->m()Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate;

    move-result-object p0

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate;->p()Z

    move-result v1

    if-eqz v1, :cond_a

    sget-object v1, Lcom/perfectcorp/perfectlib/PerfectEffect;->FUN_STICKER:Lcom/perfectcorp/perfectlib/PerfectEffect;

    new-instance v2, Lcom/perfectcorp/perfectlib/EffectId$Builder;

    invoke-direct {v2, v1}, Lcom/perfectcorp/perfectlib/EffectId$Builder;-><init>(Lcom/perfectcorp/perfectlib/PerfectEffect;)V

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate;->l()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/perfectcorp/perfectlib/EffectId;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v2, Lcom/perfectcorp/perfectlib/EffectId$Builder;->g:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/perfectcorp/perfectlib/EffectId$Builder;->a()Lcom/perfectcorp/perfectlib/EffectId;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;->f(Ljava/lang/Object;)V

    :cond_a
    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;->i()Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
