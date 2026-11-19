.class public final Lcom/perfectcorp/perfectlib/PhotoMakeup;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/perfectcorp/perfectlib/ApplierTarget;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/perfectlib/PhotoMakeup$OnLiplinerChangedCallback;,
        Lcom/perfectcorp/perfectlib/PhotoMakeup$SkinSmoothChangedCallback;,
        Lcom/perfectcorp/perfectlib/PhotoMakeup$SwitchFaceIndexCallback;,
        Lcom/perfectcorp/perfectlib/PhotoMakeup$PhotoMakeupFrameProcessingThread;,
        Lcom/perfectcorp/perfectlib/PhotoMakeup$LiveMakeupCtrl;,
        Lcom/perfectcorp/perfectlib/PhotoMakeup$On4SplitScreenIndexSwitchListener;,
        Lcom/perfectcorp/perfectlib/PhotoMakeup$ReleaseCallback;,
        Lcom/perfectcorp/perfectlib/PhotoMakeup$DetectFaceCallback;,
        Lcom/perfectcorp/perfectlib/PhotoMakeup$CreateCallback;
    }
.end annotation


# instance fields
.field public final a:Z

.field public final b:Ljava/util/Set;

.field public final c:Lcom/perfectcorp/perfectlib/core/BaseVenus;

.field public final d:Lcom/perfectcorp/perfectlib/PhotoMakeup$LiveMakeupCtrl;

.field public final e:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;

.field public final f:Lcom/perfectcorp/perfectlib/PhotoMakeup$PhotoMakeupFrameProcessingThread;

.field public final g:Landroid/graphics/Bitmap;

.field public final h:Lcom/perfectcorp/perfectlib/core/FrameProcessingThread$Frame;

.field public final i:Ljava/util/concurrent/atomic/AtomicReference;

.field public j:Z

.field public volatile k:Z

.field public final l:Ljava/util/List;

.field public volatile m:Lcom/perfectcorp/perfectlib/FaceData;

.field public final n:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;

.field public volatile o:Lcom/perfectcorp/perfectlib/PhotoMakeup$On4SplitScreenIndexSwitchListener;

.field public volatile p:I

.field public volatile q:Z


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;ZLcom/perfectcorp/perfectlib/AccessoryCamWrapper;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v4, Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;

    invoke-direct {v4}, Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;-><init>()V

    new-instance v2, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v2, v0, Lcom/perfectcorp/perfectlib/PhotoMakeup;->i:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {}, Lpq0;->v()Ljava/util/List;

    move-result-object v2

    iput-object v2, v0, Lcom/perfectcorp/perfectlib/PhotoMakeup;->l:Ljava/util/List;

    new-instance v2, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;

    invoke-direct {v2}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;-><init>()V

    iput-object v2, v0, Lcom/perfectcorp/perfectlib/PhotoMakeup;->n:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;

    sget-object v2, Lcom/perfectcorp/perfectlib/PhotoMakeup$On4SplitScreenIndexSwitchListener;->NOP:Lcom/perfectcorp/perfectlib/PhotoMakeup$On4SplitScreenIndexSwitchListener;

    iput-object v2, v0, Lcom/perfectcorp/perfectlib/PhotoMakeup;->o:Lcom/perfectcorp/perfectlib/PhotoMakeup$On4SplitScreenIndexSwitchListener;

    sget-object v2, Lcom/perfectcorp/perfectlib/PerfectLib;->d:Ljava/util/Set;

    sget-object v3, Lcom/perfectcorp/perfectlib/Functionality;->MAKEUP:Lcom/perfectcorp/perfectlib/Functionality;

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    const/4 v8, 0x0

    if-nez v3, :cond_1

    sget-object v3, Lcom/perfectcorp/perfectlib/Functionality;->HAIR_COLOR:Lcom/perfectcorp/perfectlib/Functionality;

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    sget-object v3, Lcom/perfectcorp/perfectlib/Functionality;->RESHAPE:Lcom/perfectcorp/perfectlib/Functionality;

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    sget-object v3, Lcom/perfectcorp/perfectlib/Functionality;->EYEWEAR:Lcom/perfectcorp/perfectlib/Functionality;

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    sget-object v3, Lcom/perfectcorp/perfectlib/Functionality;->EYEWEAR_3D:Lcom/perfectcorp/perfectlib/Functionality;

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    sget-object v3, Lcom/perfectcorp/perfectlib/Functionality;->EARRINGS:Lcom/perfectcorp/perfectlib/Functionality;

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    sget-object v3, Lcom/perfectcorp/perfectlib/Functionality;->BACKGROUND:Lcom/perfectcorp/perfectlib/Functionality;

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "Doesn\'t have a valid license."

    invoke-static {v0}, Lmt;->i(Ljava/lang/String;)V

    throw v8

    :cond_1
    :goto_0
    sget-boolean v3, Lcom/perfectcorp/perfectlib/internal/ModuleConfig;->p:Z

    if-eqz v3, :cond_3

    sget-object v3, Lcom/perfectcorp/perfectlib/PerfectLib;->b:Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;

    invoke-virtual {v4, v3}, Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;->a(Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;)V

    invoke-static {}, Lcom/perfectcorp/common/PfCommons;->b()Landroid/content/Context;

    move-result-object v3

    const-string v5, "PFMNN"

    invoke-static {v3, v5}, Lcom/perfectcorp/thirdparty/com/getkeepsafe/relinker/ReLinker;->a(Landroid/content/Context;Ljava/lang/String;)V

    const-string v5, "venus_tracking"

    invoke-static {v3, v5}, Lcom/perfectcorp/thirdparty/com/getkeepsafe/relinker/ReLinker;->a(Landroid/content/Context;Ljava/lang/String;)V

    const-string v5, "venus"

    invoke-static {v3, v5}, Lcom/perfectcorp/thirdparty/com/getkeepsafe/relinker/ReLinker;->a(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v3, Lcom/perfectcorp/perfectlib/core/BaseVenus;

    invoke-direct {v3}, Lcom/perfectcorp/perfectlib/core/BaseVenus;-><init>()V

    iput-object v3, v0, Lcom/perfectcorp/perfectlib/PhotoMakeup;->c:Lcom/perfectcorp/perfectlib/core/BaseVenus;

    new-instance v7, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v7}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    const/4 v5, 0x0

    move-object/from16 v6, p3

    invoke-static/range {v2 .. v7}, Lcom/perfectcorp/perfectlib/MakeupCam;->a(Ljava/util/Set;Lcom/perfectcorp/perfectlib/core/BaseVenus;Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;ZLcom/perfectcorp/perfectlib/AccessoryCamWrapper;Ljava/util/concurrent/atomic/AtomicBoolean;)Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;

    move-result-object v2

    iget-wide v5, v3, Lcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;->a:J

    const/4 v15, 0x1

    invoke-static {v5, v6, v3, v15}, Lcom/perfectcorp/perfectlib/jniproxy/UIMakeupJNI;->CUIMakeupLive_SetTrackingMode(JLcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;Z)Z

    move-result v5

    invoke-static {v5}, Lcom/perfectcorp/thirdparty/com/google/common/base/Preconditions;->i(Z)V

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v5, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    iget-object v5, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    iput-boolean v11, v0, Lcom/perfectcorp/perfectlib/PhotoMakeup;->a:Z

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/util/Set;

    iput-object v2, v0, Lcom/perfectcorp/perfectlib/PhotoMakeup;->b:Ljava/util/Set;

    new-instance v9, Lcom/perfectcorp/perfectlib/PhotoMakeup$LiveMakeupCtrl;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v13

    move/from16 v12, p2

    move-object/from16 v14, p3

    move-object v10, v3

    invoke-direct/range {v9 .. v14}, Lcom/perfectcorp/perfectlib/PhotoMakeup$LiveMakeupCtrl;-><init>(Lcom/perfectcorp/perfectlib/core/BaseVenus;ZZILcom/perfectcorp/perfectlib/AccessoryCamWrapper;)V

    iput-object v9, v0, Lcom/perfectcorp/perfectlib/PhotoMakeup;->d:Lcom/perfectcorp/perfectlib/PhotoMakeup$LiveMakeupCtrl;

    const/4 v2, 0x0

    iput v2, v9, Lcom/perfectcorp/perfectlib/PhotoMakeup$LiveMakeupCtrl;->S:I

    iget v2, v0, Lcom/perfectcorp/perfectlib/PhotoMakeup;->p:I

    invoke-virtual {v9, v2, v15}, Lcom/perfectcorp/perfectlib/PhotoMakeup$LiveMakeupCtrl;->n(IZ)V

    new-instance v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;

    iget v3, v9, Lcom/perfectcorp/perfectlib/PhotoMakeup$LiveMakeupCtrl;->d:I

    sget-object v5, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->I:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;

    invoke-direct {v2, v9, v3, v5, v4}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;-><init>(Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrlInterface;ILjava/util/Set;Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;)V

    iput-object v2, v0, Lcom/perfectcorp/perfectlib/PhotoMakeup;->e:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;

    new-instance v2, Lcom/perfectcorp/perfectlib/PhotoMakeup$PhotoMakeupFrameProcessingThread;

    invoke-direct {v2, v9}, Lcom/perfectcorp/perfectlib/PhotoMakeup$PhotoMakeupFrameProcessingThread;-><init>(Lcom/perfectcorp/perfectlib/PhotoMakeup$LiveMakeupCtrl;)V

    iput-object v2, v0, Lcom/perfectcorp/perfectlib/PhotoMakeup;->f:Lcom/perfectcorp/perfectlib/PhotoMakeup$PhotoMakeupFrameProcessingThread;

    sget v3, Lcom/perfectcorp/common/opengl/GLInfo;->a:I

    const-string v4, "[<init>] maxTextureSize="

    const-string v5, ", bitmap="

    invoke-static {v3, v4, v5}, Lfc;->q(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v4, 0x78

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    const-string v5, "PhotoMakeup"

    invoke-static {v4, v5, v3}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    and-int/lit8 v3, v3, -0x4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    and-int/lit8 v4, v4, -0x2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    if-ne v5, v3, :cond_2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    if-ne v5, v4, :cond_2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v1, v3, v15}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v3

    goto :goto_1

    :cond_2
    invoke-static {v1, v3, v4, v15}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    :goto_1
    iput-object v3, v0, Lcom/perfectcorp/perfectlib/PhotoMakeup;->g:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-static {v3}, Lcom/perfectcorp/perfectlib/makeupcam/utility/CameraUtils$PictureTaken;->a(Landroid/graphics/Bitmap;)[B

    move-result-object v3

    new-instance v7, Lcom/perfectcorp/perfectlib/core/FrameProcessingThread$Frame;

    invoke-direct {v7}, Lcom/perfectcorp/perfectlib/core/FrameProcessingThread$Frame;-><init>()V

    iput-object v3, v7, Lcom/perfectcorp/perfectlib/core/FrameProcessingThread$Frame;->d:[B

    iput v5, v7, Lcom/perfectcorp/perfectlib/core/FrameProcessingThread$Frame;->b:I

    iput v6, v7, Lcom/perfectcorp/perfectlib/core/FrameProcessingThread$Frame;->c:I

    iput-object v8, v7, Lcom/perfectcorp/perfectlib/core/FrameProcessingThread$Frame;->e:Lcom/cyberlink/clgpuimage/GPUImageRenderer$OnFrameAvailableListener;

    const-wide/16 v5, -0x1

    iput-wide v5, v7, Lcom/perfectcorp/perfectlib/core/FrameProcessingThread$Frame;->a:J

    iput-object v7, v0, Lcom/perfectcorp/perfectlib/PhotoMakeup;->h:Lcom/perfectcorp/perfectlib/core/FrameProcessingThread$Frame;

    invoke-virtual {v2, v7, v4, v1}, Lcom/perfectcorp/perfectlib/PhotoMakeup$PhotoMakeupFrameProcessingThread;->a(Lcom/perfectcorp/perfectlib/core/FrameProcessingThread$Frame;II)V

    iget v0, v7, Lcom/perfectcorp/perfectlib/core/FrameProcessingThread$Frame;->b:I

    iput v0, v9, Lcom/perfectcorp/perfectlib/PhotoMakeup$LiveMakeupCtrl;->Q:I

    iget v0, v7, Lcom/perfectcorp/perfectlib/core/FrameProcessingThread$Frame;->c:I

    iput v0, v9, Lcom/perfectcorp/perfectlib/PhotoMakeup$LiveMakeupCtrl;->R:I

    return-void

    :cond_3
    new-instance v0, Lcom/perfectcorp/perfectlib/exceptions/ModuleLoadFailedException;

    const-string v1, "Module \'PerfectLibFaceTracking\' is missing."

    invoke-direct {v0, v1}, Lcom/perfectcorp/perfectlib/exceptions/ModuleLoadFailedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static create(Landroid/graphics/Bitmap;Lcom/perfectcorp/perfectlib/PhotoMakeup$CreateCallback;)V
    .locals 2

    .line 92
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, p1}, Lcom/perfectcorp/perfectlib/PhotoMakeup;->create(Landroid/graphics/Bitmap;ZLcom/perfectcorp/perfectlib/AccessoryCamWrapper;Lcom/perfectcorp/perfectlib/PhotoMakeup$CreateCallback;)V

    return-void
.end method

.method public static create(Landroid/graphics/Bitmap;ZLcom/perfectcorp/perfectlib/AccessoryCamWrapper;Lcom/perfectcorp/perfectlib/PhotoMakeup$CreateCallback;)V
    .locals 2

    invoke-static {}, Lcom/perfectcorp/common/concurrent/Threads;->a()V

    invoke-static {}, Lcom/perfectcorp/perfectlib/PerfectLib;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "image can\'t be null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "createCallback can\'t be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-class v0, Lcom/perfectcorp/perfectlib/PhotoMakeup$CreateCallback;

    invoke-static {v0, p3}, Lcom/perfectcorp/common/reflect/Proxies;->a(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/perfectcorp/perfectlib/PhotoMakeup$CreateCallback;

    new-instance v0, Lho0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lho0;-><init>(Ljava/lang/Object;ZLjava/lang/Object;I)V

    new-instance p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/p;

    invoke-direct {p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/p;-><init>(Ljava/util/concurrent/Callable;)V

    new-instance p1, Ld8;

    const/16 p2, 0x10

    invoke-direct {p1, p2}, Ld8;-><init>(I)V

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->f(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/j;

    move-result-object p0

    sget-object p1, Lcom/perfectcorp/thirdparty/io/reactivex/schedulers/Schedulers;->c:Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->j(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/x;

    move-result-object p0

    invoke-static {}, Lcom/perfectcorp/thirdparty/io/reactivex/android/schedulers/AndroidSchedulers;->a()Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->i(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/u;

    move-result-object p0

    new-instance p1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Ldo0;

    invoke-direct {p2, p3, v1}, Ldo0;-><init>(Lcom/perfectcorp/perfectlib/PhotoMakeup$CreateCallback;I)V

    new-instance v0, Ldo0;

    const/4 v1, 0x1

    invoke-direct {v0, p3, v1}, Ldo0;-><init>(Lcom/perfectcorp/perfectlib/PhotoMakeup$CreateCallback;I)V

    invoke-direct {p1, p2, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)V

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->a(Lcom/perfectcorp/thirdparty/io/reactivex/f;)V

    return-void

    :cond_0
    const-string p0, "PerfectLib.init() must be called first."

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-void
.end method

.method public static create(Landroid/graphics/Bitmap;ZLcom/perfectcorp/perfectlib/PhotoMakeup$CreateCallback;)V
    .locals 1

    .line 93
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lcom/perfectcorp/perfectlib/PhotoMakeup;->create(Landroid/graphics/Bitmap;ZLcom/perfectcorp/perfectlib/AccessoryCamWrapper;Lcom/perfectcorp/perfectlib/PhotoMakeup$CreateCallback;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/PhotoMakeup;->i:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    const-string p0, "Instance is already released."

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-void
.end method

.method public final currentFaceIndex(ILcom/perfectcorp/perfectlib/PhotoMakeup$SwitchFaceIndexCallback;)V
    .locals 3

    invoke-static {}, Lcom/perfectcorp/common/concurrent/Threads;->a()V

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/PhotoMakeup;->a()V

    const-string v0, "callback can\'t be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "[switchFaceIndex] start"

    const/4 v1, 0x3

    const-string v2, "PhotoMakeup"

    invoke-static {v1, v2, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    const-class v0, Lcom/perfectcorp/perfectlib/PhotoMakeup$SwitchFaceIndexCallback;

    invoke-static {v0, p2}, Lcom/perfectcorp/common/reflect/Proxies;->a(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/perfectcorp/perfectlib/PhotoMakeup$SwitchFaceIndexCallback;

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/PhotoMakeup;->o:Lcom/perfectcorp/perfectlib/PhotoMakeup$On4SplitScreenIndexSwitchListener;

    invoke-interface {v0, p1}, Lcom/perfectcorp/perfectlib/PhotoMakeup$On4SplitScreenIndexSwitchListener;->onIndexSwitched(I)Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object p1

    invoke-static {}, Lcom/perfectcorp/thirdparty/io/reactivex/android/schedulers/AndroidSchedulers;->a()Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->i(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/u;

    move-result-object p1

    new-instance v0, Lco0;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p2}, Lco0;-><init>(ILcom/perfectcorp/perfectlib/PhotoMakeup$SwitchFaceIndexCallback;)V

    new-instance v1, Lco0;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p2}, Lco0;-><init>(ILcom/perfectcorp/perfectlib/PhotoMakeup$SwitchFaceIndexCallback;)V

    new-instance p2, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;

    invoke-direct {p2, v0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)V

    invoke-virtual {p1, p2}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->a(Lcom/perfectcorp/thirdparty/io/reactivex/f;)V

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/PhotoMakeup;->n:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;

    invoke-virtual {p0, p2}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;->b(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method public final detectFace(Lcom/perfectcorp/perfectlib/PhotoMakeup$DetectFaceCallback;)V
    .locals 4

    invoke-static {}, Lcom/perfectcorp/common/concurrent/Threads;->a()V

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/PhotoMakeup;->a()V

    const-string v0, "callback can\'t be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "[detectFace] start"

    const/4 v1, 0x3

    const-string v2, "PhotoMakeup"

    invoke-static {v1, v2, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    const-class v0, Lcom/perfectcorp/perfectlib/PhotoMakeup$DetectFaceCallback;

    invoke-static {v0, p1}, Lcom/perfectcorp/common/reflect/Proxies;->a(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perfectcorp/perfectlib/PhotoMakeup$DetectFaceCallback;

    new-instance v0, Ln2;

    const/16 v1, 0xa

    invoke-direct {v0, p0, v1}, Ln2;-><init>(Ljava/lang/Object;I)V

    new-instance v1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/p;

    invoke-direct {v1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/p;-><init>(Ljava/util/concurrent/Callable;)V

    sget-object v0, Lcom/perfectcorp/thirdparty/io/reactivex/schedulers/Schedulers;->c:Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    invoke-virtual {v1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->i(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/u;

    move-result-object v0

    new-instance v1, Lln0;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lln0;-><init>(Ljava/lang/Object;I)V

    new-instance v2, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/m;

    invoke-direct {v2, v0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/m;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    invoke-static {}, Lcom/perfectcorp/thirdparty/io/reactivex/android/schedulers/AndroidSchedulers;->a()Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->i(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/u;

    move-result-object v0

    new-instance v1, Lfo0;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lfo0;-><init>(Lcom/perfectcorp/perfectlib/PhotoMakeup;Lcom/perfectcorp/perfectlib/PhotoMakeup$DetectFaceCallback;I)V

    new-instance v2, Lfo0;

    const/4 v3, 0x1

    invoke-direct {v2, p0, p1, v3}, Lfo0;-><init>(Lcom/perfectcorp/perfectlib/PhotoMakeup;Lcom/perfectcorp/perfectlib/PhotoMakeup$DetectFaceCallback;I)V

    new-instance p1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;

    invoke-direct {p1, v1, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)V

    invoke-virtual {v0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->a(Lcom/perfectcorp/thirdparty/io/reactivex/f;)V

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/PhotoMakeup;->n:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;->b(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method public final enable4SplitScreen(ZLcom/perfectcorp/perfectlib/PhotoMakeup$SwitchFaceIndexCallback;)V
    .locals 3

    invoke-static {}, Lcom/perfectcorp/common/concurrent/Threads;->a()V

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/PhotoMakeup;->a()V

    const-string v0, "callback can\'t be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x3

    const-string v1, "PhotoMakeup"

    const-string v2, "[enable4SplitScreen] start"

    invoke-static {v0, v1, v2}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    const-class v1, Lcom/perfectcorp/perfectlib/PhotoMakeup$SwitchFaceIndexCallback;

    invoke-static {v1, p2}, Lcom/perfectcorp/common/reflect/Proxies;->a(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/perfectcorp/perfectlib/PhotoMakeup$SwitchFaceIndexCallback;

    iput-boolean p1, p0, Lcom/perfectcorp/perfectlib/PhotoMakeup;->q:Z

    iget-object p1, p0, Lcom/perfectcorp/perfectlib/PhotoMakeup;->o:Lcom/perfectcorp/perfectlib/PhotoMakeup$On4SplitScreenIndexSwitchListener;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Lcom/perfectcorp/perfectlib/PhotoMakeup$On4SplitScreenIndexSwitchListener;->onIndexSwitched(I)Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object p1

    invoke-static {}, Lcom/perfectcorp/thirdparty/io/reactivex/android/schedulers/AndroidSchedulers;->a()Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->i(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/u;

    move-result-object p1

    new-instance v1, Lco0;

    const/4 v2, 0x2

    invoke-direct {v1, v2, p2}, Lco0;-><init>(ILcom/perfectcorp/perfectlib/PhotoMakeup$SwitchFaceIndexCallback;)V

    new-instance v2, Lco0;

    invoke-direct {v2, v0, p2}, Lco0;-><init>(ILcom/perfectcorp/perfectlib/PhotoMakeup$SwitchFaceIndexCallback;)V

    new-instance p2, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;

    invoke-direct {p2, v1, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)V

    invoke-virtual {p1, p2}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->a(Lcom/perfectcorp/thirdparty/io/reactivex/f;)V

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/PhotoMakeup;->n:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;

    invoke-virtual {p0, p2}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;->b(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method public final enableLiplinerOnTop(ZLcom/perfectcorp/perfectlib/PhotoMakeup$OnLiplinerChangedCallback;)V
    .locals 3

    invoke-static {}, Lcom/perfectcorp/common/concurrent/Threads;->a()V

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/PhotoMakeup;->a()V

    const-string v0, "callback can\'t be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "[enableLiplinerOnTop] start"

    const/4 v1, 0x3

    const-string v2, "PhotoMakeup"

    invoke-static {v1, v2, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/PhotoMakeup;->d:Lcom/perfectcorp/perfectlib/PhotoMakeup$LiveMakeupCtrl;

    iput-boolean p1, v0, Lcom/perfectcorp/perfectlib/PhotoMakeup$LiveMakeupCtrl;->P:Z

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/PhotoMakeup$LiveMakeupCtrl;->e:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;

    const/4 v1, -0x1

    invoke-virtual {v0, v1, p1}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->Q(IZ)V

    const-class p1, Lcom/perfectcorp/perfectlib/PhotoMakeup$OnLiplinerChangedCallback;

    invoke-static {p1, p2}, Lcom/perfectcorp/common/reflect/Proxies;->a(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perfectcorp/perfectlib/PhotoMakeup$OnLiplinerChangedCallback;

    iget-object p2, p0, Lcom/perfectcorp/perfectlib/PhotoMakeup;->o:Lcom/perfectcorp/perfectlib/PhotoMakeup$On4SplitScreenIndexSwitchListener;

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/PhotoMakeup;->isEnable4SplitScreen()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/perfectcorp/perfectlib/PhotoMakeup;->p:I

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-interface {p2, v0}, Lcom/perfectcorp/perfectlib/PhotoMakeup$On4SplitScreenIndexSwitchListener;->onIndexSwitched(I)Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object p2

    invoke-static {}, Lcom/perfectcorp/thirdparty/io/reactivex/android/schedulers/AndroidSchedulers;->a()Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->i(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/u;

    move-result-object p2

    new-instance v0, Lgo0;

    invoke-direct {v0, p1, v1}, Lgo0;-><init>(Lcom/perfectcorp/perfectlib/PhotoMakeup$OnLiplinerChangedCallback;I)V

    new-instance v1, Lgo0;

    const/4 v2, 0x1

    invoke-direct {v1, p1, v2}, Lgo0;-><init>(Lcom/perfectcorp/perfectlib/PhotoMakeup$OnLiplinerChangedCallback;I)V

    new-instance p1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;

    invoke-direct {p1, v0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)V

    invoke-virtual {p2, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->a(Lcom/perfectcorp/thirdparty/io/reactivex/f;)V

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/PhotoMakeup;->n:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;->b(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method public final enableSkinSmoothFaceOnly(ZLcom/perfectcorp/perfectlib/PhotoMakeup$SkinSmoothChangedCallback;)V
    .locals 3

    invoke-static {}, Lcom/perfectcorp/common/concurrent/Threads;->a()V

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/PhotoMakeup;->a()V

    const-string v0, "callback can\'t be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "[enableSkinSmoothFaceOnly] start"

    const/4 v1, 0x3

    const-string v2, "PhotoMakeup"

    invoke-static {v1, v2, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    const-class v0, Lcom/perfectcorp/perfectlib/PhotoMakeup$SkinSmoothChangedCallback;

    invoke-static {v0, p2}, Lcom/perfectcorp/common/reflect/Proxies;->a(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/perfectcorp/perfectlib/PhotoMakeup$SkinSmoothChangedCallback;

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/PhotoMakeup;->d:Lcom/perfectcorp/perfectlib/PhotoMakeup$LiveMakeupCtrl;

    iput-boolean p1, v0, Lcom/perfectcorp/perfectlib/PhotoMakeup$LiveMakeupCtrl;->O:Z

    iget-object p1, p0, Lcom/perfectcorp/perfectlib/PhotoMakeup;->d:Lcom/perfectcorp/perfectlib/PhotoMakeup$LiveMakeupCtrl;

    iget v0, p0, Lcom/perfectcorp/perfectlib/PhotoMakeup;->p:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/perfectcorp/perfectlib/PhotoMakeup$LiveMakeupCtrl;->n(IZ)V

    iget-object p1, p0, Lcom/perfectcorp/perfectlib/PhotoMakeup;->o:Lcom/perfectcorp/perfectlib/PhotoMakeup$On4SplitScreenIndexSwitchListener;

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/PhotoMakeup;->isEnable4SplitScreen()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/perfectcorp/perfectlib/PhotoMakeup;->p:I

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-interface {p1, v0}, Lcom/perfectcorp/perfectlib/PhotoMakeup$On4SplitScreenIndexSwitchListener;->onIndexSwitched(I)Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object p1

    invoke-static {}, Lcom/perfectcorp/thirdparty/io/reactivex/android/schedulers/AndroidSchedulers;->a()Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->i(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/u;

    move-result-object p1

    new-instance v0, Leo0;

    invoke-direct {v0, p2, v2}, Leo0;-><init>(Lcom/perfectcorp/perfectlib/PhotoMakeup$SkinSmoothChangedCallback;I)V

    new-instance v2, Leo0;

    invoke-direct {v2, p2, v1}, Leo0;-><init>(Lcom/perfectcorp/perfectlib/PhotoMakeup$SkinSmoothChangedCallback;I)V

    new-instance p2, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;

    invoke-direct {p2, v0, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)V

    invoke-virtual {p1, p2}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->a(Lcom/perfectcorp/thirdparty/io/reactivex/f;)V

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/PhotoMakeup;->n:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;

    invoke-virtual {p0, p2}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;->b(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method public final getAvailableFunctionalities()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/perfectcorp/perfectlib/Functionality;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/PhotoMakeup;->b:Ljava/util/Set;

    return-object p0
.end method

.method public final isEnable4SplitScreen()Z
    .locals 0

    iget-boolean p0, p0, Lcom/perfectcorp/perfectlib/PhotoMakeup;->q:Z

    return p0
.end method

.method public final release(Lcom/perfectcorp/perfectlib/PhotoMakeup$ReleaseCallback;)V
    .locals 6

    invoke-static {}, Lcom/perfectcorp/common/concurrent/Threads;->a()V

    const-string v0, "releaseCallback can\'t be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x3

    const-string v1, "PhotoMakeup"

    const-string v2, "release"

    invoke-static {v0, v1, v2}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    const-class v2, Lcom/perfectcorp/perfectlib/PhotoMakeup$ReleaseCallback;

    invoke-static {v2, p1}, Lcom/perfectcorp/common/reflect/Proxies;->a(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perfectcorp/perfectlib/PhotoMakeup$ReleaseCallback;

    invoke-static {}, Lcom/perfectcorp/common/concurrent/Threads;->a()V

    iget-object v2, p0, Lcom/perfectcorp/perfectlib/PhotoMakeup;->i:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string p0, "Listen to existed release task."

    :goto_0
    invoke-static {v0, v1, p0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    new-instance v3, Lcom/perfectcorp/perfectlib/i;

    const/4 v4, 0x7

    invoke-direct {v3, p0, v4}, Lcom/perfectcorp/perfectlib/i;-><init>(Ljava/lang/Object;I)V

    new-instance p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/p;

    invoke-direct {p0, v3}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/p;-><init>(Ljava/util/concurrent/Callable;)V

    sget-object v3, Lcom/perfectcorp/thirdparty/io/reactivex/schedulers/Schedulers;->c:Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    invoke-virtual {p0, v3}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->j(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/x;

    move-result-object p0

    new-instance v3, Ltg0;

    const/16 v4, 0x1d

    invoke-direct {v3, v4}, Ltg0;-><init>(I)V

    new-instance v4, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/v;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v3, v5}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/v;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;Ljava/lang/Object;)V

    new-instance p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/a;

    invoke-direct {p0, v4}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/a;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;)V

    :cond_1
    invoke-virtual {v2, v5, p0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string p0, "Ready to release instance."

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    const-string p0, "Already has release task"

    goto :goto_0

    :goto_1
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    invoke-static {}, Lcom/perfectcorp/thirdparty/io/reactivex/android/schedulers/AndroidSchedulers;->a()Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->i(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/u;

    move-result-object p0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lxw;

    const/4 v1, 0x5

    invoke-direct {v0, p1, v1}, Lxw;-><init>(Ljava/lang/Object;I)V

    new-instance p1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/k;

    invoke-direct {p1, p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/k;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;)V

    new-instance p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;

    new-instance v0, Ld8;

    const/16 v1, 0xe

    invoke-direct {v0, v1}, Ld8;-><init>(I)V

    new-instance v1, Ld8;

    const/16 v2, 0xf

    invoke-direct {v1, v2}, Ld8;-><init>(I)V

    invoke-direct {p0, v0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)V

    invoke-virtual {p1, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->a(Lcom/perfectcorp/thirdparty/io/reactivex/f;)V

    return-void
.end method

.method public final setFace(Lcom/perfectcorp/perfectlib/FaceData;)Z
    .locals 4

    invoke-static {}, Lcom/perfectcorp/common/concurrent/Threads;->a()V

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/PhotoMakeup;->a()V

    const-string v0, "faceData can\'t be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x3

    const-string v1, "PhotoMakeup"

    const-string v2, "setFace"

    invoke-static {v0, v1, v2}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/perfectcorp/perfectlib/PhotoMakeup;->m:Lcom/perfectcorp/perfectlib/FaceData;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    const-string p0, "Face already set."

    :goto_0
    invoke-static {v1, p0}, Lcom/perfectcorp/common/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_0
    iget-object v2, p0, Lcom/perfectcorp/perfectlib/PhotoMakeup;->l:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/PhotoMakeup;->m:Lcom/perfectcorp/perfectlib/FaceData;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/PhotoMakeup;->d:Lcom/perfectcorp/perfectlib/PhotoMakeup$LiveMakeupCtrl;

    iget p1, p1, Lcom/perfectcorp/perfectlib/FaceData;->b:I

    iput p1, p0, Lcom/perfectcorp/perfectlib/PhotoMakeup$LiveMakeupCtrl;->N:I

    const-string p0, "Face set."

    invoke-static {v0, v1, p0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_1
    const-string p0, "Unknown face data."

    goto :goto_0
.end method

.method public final setPupilDistance(F)V
    .locals 3

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "pupilDistance shouldn\'t be NaN"

    invoke-static {v0, v2}, Lcom/perfectcorp/thirdparty/com/google/common/base/Preconditions;->g(ZLjava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v0, "pupilDistance shouldn\'t be less than 0"

    invoke-static {v1, v0}, Lcom/perfectcorp/thirdparty/com/google/common/base/Preconditions;->g(ZLjava/lang/String;)V

    const-string v0, "setPupilDistance"

    const/4 v1, 0x3

    const-string v2, "PhotoMakeup"

    invoke-static {v1, v2, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/PhotoMakeup;->f:Lcom/perfectcorp/perfectlib/PhotoMakeup$PhotoMakeupFrameProcessingThread;

    invoke-virtual {p0, p1}, Lcom/perfectcorp/perfectlib/PhotoMakeup$PhotoMakeupFrameProcessingThread;->a(F)V

    return-void
.end method
