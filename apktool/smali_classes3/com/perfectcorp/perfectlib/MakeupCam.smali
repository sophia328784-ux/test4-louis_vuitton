.class public final Lcom/perfectcorp/perfectlib/MakeupCam;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/perfectcorp/perfectlib/ApplierTarget;
.implements Lcom/perfectcorp/perfectlib/CameraOperator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/perfectlib/MakeupCam$Preferences;,
        Lcom/perfectcorp/perfectlib/MakeupCam$MakeupPluginFilter;,
        Lcom/perfectcorp/perfectlib/MakeupCam$GpuFilterNotReadyException;,
        Lcom/perfectcorp/perfectlib/MakeupCam$OnFrameAvailableListenerWrapper;,
        Lcom/perfectcorp/perfectlib/MakeupCam$OnPictureTakenListener;,
        Lcom/perfectcorp/perfectlib/MakeupCam$ReleaseCallback;,
        Lcom/perfectcorp/perfectlib/MakeupCam$QualityCheckCallback;,
        Lcom/perfectcorp/perfectlib/MakeupCam$PupilAnalysisCallback;,
        Lcom/perfectcorp/perfectlib/MakeupCam$FrameInfo;,
        Lcom/perfectcorp/perfectlib/MakeupCam$VideoCallback;,
        Lcom/perfectcorp/perfectlib/MakeupCam$PictureCallback;,
        Lcom/perfectcorp/perfectlib/MakeupCam$CreateCallback2;,
        Lcom/perfectcorp/perfectlib/MakeupCam$CreateCallback;
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Object;

.field public final b:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;

.field public final c:Lcom/perfectcorp/perfectlib/core/BaseVenus;

.field public final d:Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;

.field public final e:Lcom/perfectcorp/perfectlib/makeupcam/camera/MakeupCam;

.field public final f:Lcom/perfectcorp/perfectlib/makeupcam/video/e;

.field public final g:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;

.field public volatile h:Lcom/perfectcorp/perfectlib/MakeupCam$OnPictureTakenListener;

.field public final i:Lcom/perfectcorp/perfectlib/MakeupCam$OnFrameAvailableListenerWrapper;

.field public final j:Ljava/util/concurrent/atomic/AtomicReference;

.field public final k:Lcom/perfectcorp/perfectlib/VideoCaptureSourceImpl;

.field public l:Lcom/perfectcorp/perfectlib/CameraView;

.field public final m:Ljava/util/EnumMap;


# direct methods
.method public constructor <init>(Lcom/cyberlink/clgpuimage/GPUImageRenderer;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;ZLcom/perfectcorp/perfectlib/AccessoryCamWrapper;)V
    .locals 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;

    invoke-direct {v2}, Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;-><init>()V

    iput-object v2, p0, Lcom/perfectcorp/perfectlib/MakeupCam;->d:Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;

    invoke-direct {v0}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/MakeupCam;->g:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;

    sget-object v0, Lcom/perfectcorp/perfectlib/MakeupCam$OnPictureTakenListener;->NOP:Lcom/perfectcorp/perfectlib/MakeupCam$OnPictureTakenListener;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/MakeupCam;->h:Lcom/perfectcorp/perfectlib/MakeupCam$OnPictureTakenListener;

    new-instance v8, Lcom/perfectcorp/perfectlib/MakeupCam$OnFrameAvailableListenerWrapper;

    invoke-direct {v8}, Lcom/perfectcorp/perfectlib/MakeupCam$OnFrameAvailableListenerWrapper;-><init>()V

    iput-object v8, p0, Lcom/perfectcorp/perfectlib/MakeupCam;->i:Lcom/perfectcorp/perfectlib/MakeupCam$OnFrameAvailableListenerWrapper;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/MakeupCam;->j:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/perfectcorp/perfectlib/PluginPosition;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/MakeupCam;->m:Ljava/util/EnumMap;

    sget-object v0, Lcom/perfectcorp/perfectlib/PerfectLib;->d:Ljava/util/Set;

    sget-object v1, Lcom/perfectcorp/perfectlib/Functionality;->MAKEUP:Lcom/perfectcorp/perfectlib/Functionality;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v9, 0x0

    if-nez v1, :cond_1

    sget-object v1, Lcom/perfectcorp/perfectlib/Functionality;->HAIR_COLOR:Lcom/perfectcorp/perfectlib/Functionality;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/perfectcorp/perfectlib/Functionality;->FUN_STICKER:Lcom/perfectcorp/perfectlib/Functionality;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/perfectcorp/perfectlib/Functionality;->RESHAPE:Lcom/perfectcorp/perfectlib/Functionality;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/perfectcorp/perfectlib/Functionality;->EYEWEAR:Lcom/perfectcorp/perfectlib/Functionality;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/perfectcorp/perfectlib/Functionality;->EYEWEAR_3D:Lcom/perfectcorp/perfectlib/Functionality;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/perfectcorp/perfectlib/Functionality;->EARRINGS:Lcom/perfectcorp/perfectlib/Functionality;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/perfectcorp/perfectlib/Functionality;->BACKGROUND:Lcom/perfectcorp/perfectlib/Functionality;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/perfectcorp/perfectlib/Functionality;->NECKLACE:Lcom/perfectcorp/perfectlib/Functionality;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "Doesn\'t have a valid license."

    invoke-static {p0}, Lmt;->i(Ljava/lang/String;)V

    throw v9

    :cond_1
    :goto_0
    sget-boolean v1, Lcom/perfectcorp/perfectlib/internal/ModuleConfig;->p:Z

    if-eqz v1, :cond_8

    sget-object v1, Lcom/perfectcorp/perfectlib/PerfectLib;->a:Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;

    invoke-virtual {v2, v1}, Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;->a(Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;)V

    invoke-static {}, Lcom/perfectcorp/common/PfCommons;->b()Landroid/content/Context;

    move-result-object v1

    const-string v3, "PFMNN"

    invoke-static {v1, v3}, Lcom/perfectcorp/thirdparty/com/getkeepsafe/relinker/ReLinker;->a(Landroid/content/Context;Ljava/lang/String;)V

    const-string v3, "venus_tracking"

    invoke-static {v1, v3}, Lcom/perfectcorp/thirdparty/com/getkeepsafe/relinker/ReLinker;->a(Landroid/content/Context;Ljava/lang/String;)V

    const-string v3, "venus"

    invoke-static {v1, v3}, Lcom/perfectcorp/thirdparty/com/getkeepsafe/relinker/ReLinker;->a(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v1, Lcom/perfectcorp/perfectlib/core/BaseVenus;

    invoke-direct {v1}, Lcom/perfectcorp/perfectlib/core/BaseVenus;-><init>()V

    iput-object v1, p0, Lcom/perfectcorp/perfectlib/MakeupCam;->c:Lcom/perfectcorp/perfectlib/core/BaseVenus;

    new-instance v5, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    const/4 v3, 0x1

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/perfectcorp/perfectlib/MakeupCam;->a(Ljava/util/Set;Lcom/perfectcorp/perfectlib/core/BaseVenus;Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;ZLcom/perfectcorp/perfectlib/AccessoryCamWrapper;Ljava/util/concurrent/atomic/AtomicBoolean;)Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;

    move-result-object p4

    iput-object p4, p0, Lcom/perfectcorp/perfectlib/MakeupCam;->b:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;

    new-instance v0, Lcom/perfectcorp/perfectlib/MakeupCam$1;

    const/4 p4, 0x2

    const/4 v10, 0x0

    invoke-static {p4, v10}, Lcom/perfectcorp/perfectlib/makeupcam/camera/GPUImageFilterBuilder;->a(II)Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;

    move-result-object p4

    move-object v3, p1

    move-object v7, p2

    move-object v5, v2

    move-object v6, v4

    move-object v4, p4

    move-object v2, v1

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/perfectcorp/perfectlib/MakeupCam$1;-><init>(Lcom/perfectcorp/perfectlib/MakeupCam;Lcom/perfectcorp/perfectlib/core/BaseVenus;Lcom/cyberlink/clgpuimage/GPUImageRenderer;Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;Lcom/perfectcorp/perfectlib/AccessoryCamWrapper;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)V

    move-object v2, v5

    iput-object v0, v1, Lcom/perfectcorp/perfectlib/MakeupCam;->e:Lcom/perfectcorp/perfectlib/makeupcam/camera/MakeupCam;

    iget-object p0, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/MakeupCam;->a:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;

    iget-boolean p1, v2, Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;->i:Z

    if-eqz p1, :cond_2

    const/16 p1, 0x46

    goto :goto_1

    :cond_2
    move p1, v10

    :goto_1
    iput p1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->t0:I

    iget-object p0, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/MakeupCam;->a:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;

    const/4 p1, 0x1

    invoke-virtual {p0, v10, p1}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->n(IZ)V

    new-instance p0, Lcom/perfectcorp/perfectlib/makeupcam/video/e;

    sget-object p1, Lcom/perfectcorp/perfectlib/PerfectLib;->a:Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;

    invoke-direct {p0, v9}, Lcom/perfectcorp/perfectlib/makeupcam/video/e;-><init>(Ljava/io/File;)V

    iput-object p0, v1, Lcom/perfectcorp/perfectlib/MakeupCam;->f:Lcom/perfectcorp/perfectlib/makeupcam/video/e;

    new-instance p1, Lcom/perfectcorp/perfectlib/MakeupCam$2;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p1, Lcom/perfectcorp/perfectlib/MakeupCam$2;->b:Lcom/perfectcorp/perfectlib/MakeupCam;

    iget-object p2, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/e;->a:Lcom/perfectcorp/perfectlib/makeupcam/video/d;

    iget-object p2, p2, Lcom/perfectcorp/perfectlib/makeupcam/video/d;->a:Lcom/perfectcorp/perfectlib/makeupcam/video/a;

    iput-object p2, p1, Lcom/perfectcorp/perfectlib/MakeupCam$2;->a:Lcom/perfectcorp/perfectlib/makeupcam/video/a;

    iget-object p2, v8, Lcom/perfectcorp/perfectlib/MakeupCam$OnFrameAvailableListenerWrapper;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    iget-object p1, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/MakeupCam;->a:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;

    iget-object p1, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->g:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iget-object p4, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/MakeupCam;->a:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;

    iget-boolean v2, p4, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->i1:Z

    if-eqz v2, :cond_3

    iget-object p4, p4, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->h1:Lcom/perfectcorp/perfectlib/internal/NecklaceFilter;

    if-eqz p4, :cond_3

    invoke-virtual {p2, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    iget-object p4, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/MakeupCam;->a:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;

    iget-boolean v2, p4, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->e1:Z

    if-eqz v2, :cond_4

    iget-object p4, p4, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->g1:Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;

    invoke-virtual {p2, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p4

    if-nez p4, :cond_5

    invoke-virtual {p1, p2}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->k0(Ljava/util/List;)V

    :cond_5
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/e;->a:Lcom/perfectcorp/perfectlib/makeupcam/video/d;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/d;->a:Lcom/perfectcorp/perfectlib/makeupcam/video/a;

    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p3, :cond_6

    new-instance p0, Lcom/perfectcorp/perfectlib/VideoCaptureSourceImpl;

    invoke-direct {p0}, Lcom/perfectcorp/perfectlib/VideoCaptureSourceImpl;-><init>()V

    iput-object p0, v1, Lcom/perfectcorp/perfectlib/MakeupCam;->k:Lcom/perfectcorp/perfectlib/VideoCaptureSourceImpl;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/VideoCaptureSourceImpl;->a:Lcom/perfectcorp/videoconsultsdk/streaming/a;

    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    invoke-virtual {p1, p2}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->A0(Ljava/util/ArrayList;)V

    iget-object p0, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/MakeupCam;->a:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;

    iget-boolean p2, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->e1:Z

    if-eqz p2, :cond_7

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->f1:Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->r0(Ljava/util/List;)V

    :cond_7
    invoke-virtual {v3, p1}, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->h(Lcom/cyberlink/clgpuimage/GPUImageFilter;)V

    return-void

    :cond_8
    new-instance p0, Lcom/perfectcorp/perfectlib/exceptions/ModuleLoadFailedException;

    const-string p1, "Module \'PerfectLibFaceTracking\' is missing."

    invoke-direct {p0, p1}, Lcom/perfectcorp/perfectlib/exceptions/ModuleLoadFailedException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Lcom/perfectcorp/perfectlib/CameraView;ZLcom/perfectcorp/perfectlib/AccessoryCamWrapper;)V
    .locals 3

    invoke-virtual {p1}, Lcom/perfectcorp/perfectlib/CameraView;->getGPUImage()Lcom/cyberlink/clgpuimage/GPUImage;

    move-result-object v0

    .line 338
    iget-object v0, v0, Lcom/cyberlink/clgpuimage/GPUImage;->a:Lcom/cyberlink/clgpuimage/GPUImageRenderer;

    .line 339
    new-instance v1, Lo2;

    const/16 v2, 0x8

    invoke-direct {v1, p1, v2}, Lo2;-><init>(Ljava/lang/Object;I)V

    invoke-direct {p0, v0, v1, p2, p3}, Lcom/perfectcorp/perfectlib/MakeupCam;-><init>(Lcom/cyberlink/clgpuimage/GPUImageRenderer;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;ZLcom/perfectcorp/perfectlib/AccessoryCamWrapper;)V

    invoke-virtual {p1}, Landroid/opengl/GLSurfaceView;->requestRender()V

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/MakeupCam;->l:Lcom/perfectcorp/perfectlib/CameraView;

    return-void
.end method

.method public static a(Ljava/util/Set;Lcom/perfectcorp/perfectlib/core/BaseVenus;Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;ZLcom/perfectcorp/perfectlib/AccessoryCamWrapper;Ljava/util/concurrent/atomic/AtomicBoolean;)Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;
    .locals 25

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p5

    const-string v5, ", "

    const-string v6, "MakeupCam"

    invoke-static {}, Lcom/perfectcorp/common/PfCommons;->b()Landroid/content/Context;

    move-result-object v7

    sget-object v0, Lcom/perfectcorp/perfectlib/PerfectLib;->g:Lcom/perfectcorp/perfectlib/Configuration;

    iget-object v8, v0, Lcom/perfectcorp/perfectlib/Configuration;->a:Lcom/perfectcorp/perfectlib/PerfectLib$ModelPath;

    :try_start_0
    new-instance v0, Ln2;

    const/16 v9, 0x8

    invoke-direct {v0, v2, v9}, Ln2;-><init>(Ljava/lang/Object;I)V

    invoke-static {v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->e(Ljava/util/concurrent/Callable;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/c;

    move-result-object v0

    invoke-static {}, Lcom/perfectcorp/thirdparty/io/reactivex/schedulers/Schedulers;->b()Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->j(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networktaskmanager/makeup/a$a;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Custom feature applied: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networktaskmanager/makeup/a$a;->brand:Ljava/lang/String;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/perfectcorp/common/utility/Log;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v9, "Error applying custom feature"

    invoke-static {v6, v9, v0}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v2}, Lcom/perfectcorp/perfectlib/MakeupCam;->d(Lcom/perfectcorp/perfectlib/core/BaseVenus;)V

    :goto_0
    :try_start_1
    invoke-static {}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;->s()Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet$Builder;

    move-result-object v0

    const/4 v9, 0x0

    invoke-virtual {v4, v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-boolean v10, v3, Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;->i:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v11, ".mnn"

    const-string v12, " ms"

    if-nez v10, :cond_1

    :try_start_2
    iget-boolean v10, v3, Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;->k:Z

    if-nez v10, :cond_1

    iget-boolean v10, v3, Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;->l:Z

    if-nez v10, :cond_1

    iget-boolean v10, v3, Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;->m:Z

    if-nez v10, :cond_1

    iget-boolean v10, v3, Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;->n:Z

    if-nez v10, :cond_1

    iget-boolean v10, v3, Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;->o:Z

    if-nez v10, :cond_1

    iget-boolean v10, v3, Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;->p:Z

    if-eqz v10, :cond_0

    goto :goto_1

    :cond_0
    move/from16 v16, v9

    move-object v14, v11

    const-wide/32 v18, 0xf4240

    goto/16 :goto_a

    :catchall_0
    move-exception v0

    goto/16 :goto_22

    :cond_1
    :goto_1
    iget-boolean v10, v2, Lcom/perfectcorp/perfectlib/core/BaseVenus;->d:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move/from16 v16, v9

    const-string v9, "No face tracking model(s) found."

    const-string v17, "No second step eye model found."

    const-wide/32 v18, 0xf4240

    const/4 v13, 0x4

    const/16 v20, 0x2

    if-eqz v10, :cond_b

    :try_start_3
    new-array v10, v13, [Ljava/lang/String;

    invoke-virtual {v2, v10}, Lcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;->g([Ljava/lang/Object;)Z

    move-result v13

    invoke-static {v13}, Lcom/perfectcorp/thirdparty/com/google/common/base/Preconditions;->i(Z)V

    new-instance v13, Ljava/lang/StringBuilder;

    const/16 v21, 0x3

    const-string v14, "internal LV model versions="

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v10}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/perfectcorp/common/utility/Log;->b(Ljava/lang/String;)V

    iget-boolean v13, v8, Lcom/perfectcorp/perfectlib/PerfectLib$ModelPath;->a:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iget-object v14, v8, Lcom/perfectcorp/perfectlib/PerfectLib$ModelPath;->b:Ljava/lang/String;

    if-eqz v13, :cond_2

    :try_start_4
    new-instance v13, Lcom/perfectcorp/perfectlib/core/VenusModel$Assets;

    const/16 v22, 0x1

    aget-object v15, v10, v16

    invoke-direct {v13, v15}, Lcom/perfectcorp/perfectlib/core/VenusModel$Assets;-><init>(Ljava/lang/String;)V

    invoke-static {v7, v14, v13}, Lcom/perfectcorp/perfectlib/core/VenusModel$Assets;->e(Landroid/content/Context;Ljava/lang/String;Lcom/perfectcorp/perfectlib/core/VenusModel$Assets;)Ljava/lang/String;

    move-result-object v13

    goto :goto_2

    :cond_2
    const/16 v22, 0x1

    new-instance v13, Lcom/perfectcorp/perfectlib/core/VenusModel$Files;

    aget-object v15, v10, v16

    invoke-direct {v13, v15}, Lcom/perfectcorp/perfectlib/core/VenusModel$Files;-><init>(Ljava/lang/String;)V

    invoke-static {v14, v13}, Lcom/perfectcorp/perfectlib/core/VenusModel$Files;->b(Ljava/lang/String;Lcom/perfectcorp/perfectlib/core/VenusModel$Files;)Ljava/lang/String;

    move-result-object v13

    :goto_2
    iget-boolean v14, v8, Lcom/perfectcorp/perfectlib/PerfectLib$ModelPath;->a:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    iget-object v15, v8, Lcom/perfectcorp/perfectlib/PerfectLib$ModelPath;->b:Ljava/lang/String;

    if-eqz v14, :cond_3

    :try_start_5
    new-instance v14, Lcom/perfectcorp/perfectlib/core/VenusModel$Assets;

    move-object/from16 v23, v10

    aget-object v10, v23, v22

    invoke-direct {v14, v10}, Lcom/perfectcorp/perfectlib/core/VenusModel$Assets;-><init>(Ljava/lang/String;)V

    invoke-static {v7, v15, v14}, Lcom/perfectcorp/perfectlib/core/VenusModel$Assets;->e(Landroid/content/Context;Ljava/lang/String;Lcom/perfectcorp/perfectlib/core/VenusModel$Assets;)Ljava/lang/String;

    move-result-object v10

    goto :goto_3

    :cond_3
    move-object/from16 v23, v10

    new-instance v10, Lcom/perfectcorp/perfectlib/core/VenusModel$Files;

    aget-object v14, v23, v22

    invoke-direct {v10, v14}, Lcom/perfectcorp/perfectlib/core/VenusModel$Files;-><init>(Ljava/lang/String;)V

    invoke-static {v15, v10}, Lcom/perfectcorp/perfectlib/core/VenusModel$Files;->b(Ljava/lang/String;Lcom/perfectcorp/perfectlib/core/VenusModel$Files;)Ljava/lang/String;

    move-result-object v10

    :goto_3
    iget-boolean v14, v8, Lcom/perfectcorp/perfectlib/PerfectLib$ModelPath;->a:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    iget-object v15, v8, Lcom/perfectcorp/perfectlib/PerfectLib$ModelPath;->b:Ljava/lang/String;

    if-eqz v14, :cond_4

    :try_start_6
    new-instance v14, Lcom/perfectcorp/perfectlib/core/VenusModel$Assets;

    aget-object v3, v23, v20

    invoke-direct {v14, v3}, Lcom/perfectcorp/perfectlib/core/VenusModel$Assets;-><init>(Ljava/lang/String;)V

    invoke-static {v7, v15, v14}, Lcom/perfectcorp/perfectlib/core/VenusModel$Assets;->e(Landroid/content/Context;Ljava/lang/String;Lcom/perfectcorp/perfectlib/core/VenusModel$Assets;)Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    :cond_4
    new-instance v3, Lcom/perfectcorp/perfectlib/core/VenusModel$Files;

    aget-object v14, v23, v20

    invoke-direct {v3, v14}, Lcom/perfectcorp/perfectlib/core/VenusModel$Files;-><init>(Ljava/lang/String;)V

    invoke-static {v15, v3}, Lcom/perfectcorp/perfectlib/core/VenusModel$Files;->b(Ljava/lang/String;Lcom/perfectcorp/perfectlib/core/VenusModel$Files;)Ljava/lang/String;

    move-result-object v3

    :goto_4
    iget-boolean v14, v8, Lcom/perfectcorp/perfectlib/PerfectLib$ModelPath;->a:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    iget-object v15, v8, Lcom/perfectcorp/perfectlib/PerfectLib$ModelPath;->b:Ljava/lang/String;

    if-eqz v14, :cond_5

    :try_start_7
    new-instance v14, Lcom/perfectcorp/perfectlib/core/VenusModel$Assets;

    move-object/from16 v24, v11

    aget-object v11, v23, v21

    invoke-direct {v14, v11}, Lcom/perfectcorp/perfectlib/core/VenusModel$Assets;-><init>(Ljava/lang/String;)V

    invoke-static {v7, v15, v14}, Lcom/perfectcorp/perfectlib/core/VenusModel$Assets;->e(Landroid/content/Context;Ljava/lang/String;Lcom/perfectcorp/perfectlib/core/VenusModel$Assets;)Ljava/lang/String;

    move-result-object v11

    goto :goto_5

    :cond_5
    move-object/from16 v24, v11

    new-instance v11, Lcom/perfectcorp/perfectlib/core/VenusModel$Files;

    aget-object v14, v23, v21

    invoke-direct {v11, v14}, Lcom/perfectcorp/perfectlib/core/VenusModel$Files;-><init>(Ljava/lang/String;)V

    invoke-static {v15, v11}, Lcom/perfectcorp/perfectlib/core/VenusModel$Files;->b(Ljava/lang/String;Lcom/perfectcorp/perfectlib/core/VenusModel$Files;)Ljava/lang/String;

    move-result-object v11

    :goto_5
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_a

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_a

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_a

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-static/range {v17 .. v17}, Lcom/perfectcorp/common/utility/Log;->h(Ljava/lang/String;)V

    :cond_6
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v14

    invoke-virtual {v2, v13, v10, v3, v11}, Lcom/perfectcorp/perfectlib/core/BaseVenus;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "SetInternalLVModelPaths in "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v9

    sub-long/2addr v9, v14

    div-long v9, v9, v18

    invoke-virtual {v3, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/perfectcorp/common/utility/Log;->b(Ljava/lang/String;)V

    iget-wide v9, v2, Lcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;->a:J

    invoke-static {v9, v10, v2}, Lcom/perfectcorp/perfectlib/jniproxy/UIMakeupJNI;->CUIMakeupLive_IsModelLoaded(JLcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;)Z

    move-result v3

    invoke-static {v3}, Lcom/perfectcorp/thirdparty/com/google/common/base/Preconditions;->i(Z)V

    move/from16 v3, v22

    invoke-virtual {v4, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-virtual {v2}, Lcom/perfectcorp/perfectlib/core/BaseVenus;->o()Z

    sget-object v3, Lcom/perfectcorp/perfectlib/Functionality;->MAKEUP:Lcom/perfectcorp/perfectlib/Functionality;

    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {v0, v3}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet$Builder;->h(Ljava/lang/Object;)V

    :cond_7
    sget-object v3, Lcom/perfectcorp/perfectlib/Functionality;->RESHAPE:Lcom/perfectcorp/perfectlib/Functionality;

    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-virtual {v0, v3}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet$Builder;->h(Ljava/lang/Object;)V

    :cond_8
    if-eqz p3, :cond_9

    sget-object v3, Lcom/perfectcorp/perfectlib/Functionality;->FUN_STICKER:Lcom/perfectcorp/perfectlib/Functionality;

    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-virtual {v0, v3}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet$Builder;->h(Ljava/lang/Object;)V

    :cond_9
    move-object/from16 v14, v24

    goto/16 :goto_a

    :cond_a
    invoke-static {v6, v9}, Lcom/perfectcorp/common/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Please take the models from CSM : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/perfectcorp/common/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/perfectcorp/perfectlib/exceptions/ModuleLoadFailedException;

    const-string v1, "Makeup module load failed. Please take the models from CSM."

    invoke-direct {v0, v1}, Lcom/perfectcorp/perfectlib/exceptions/ModuleLoadFailedException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    move-object/from16 v24, v11

    const/16 v21, 0x3

    new-array v3, v13, [Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;->f([Ljava/lang/Object;)Z

    move-result v5

    invoke-static {v5}, Lcom/perfectcorp/thirdparty/com/google/common/base/Preconditions;->i(Z)V

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v10, "internal model versions="

    invoke-direct {v5, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/perfectcorp/common/utility/Log;->b(Ljava/lang/String;)V

    iget-boolean v5, v8, Lcom/perfectcorp/perfectlib/PerfectLib$ModelPath;->a:Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    iget-object v10, v8, Lcom/perfectcorp/perfectlib/PerfectLib$ModelPath;->b:Ljava/lang/String;

    if-eqz v5, :cond_c

    :try_start_8
    new-instance v5, Lcom/perfectcorp/perfectlib/core/VenusModel$Assets;

    const-string v11, "YMK_Davinci_"

    aget-object v13, v3, v16

    move-object/from16 v14, v24

    invoke-direct {v5, v11, v14, v13}, Lcom/perfectcorp/perfectlib/core/VenusModel$Assets;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v7, v10, v5}, Lcom/perfectcorp/perfectlib/core/VenusModel$Assets;->e(Landroid/content/Context;Ljava/lang/String;Lcom/perfectcorp/perfectlib/core/VenusModel$Assets;)Ljava/lang/String;

    move-result-object v5

    goto :goto_6

    :cond_c
    move-object/from16 v14, v24

    new-instance v5, Lcom/perfectcorp/perfectlib/core/VenusModel$Files;

    aget-object v11, v3, v16

    invoke-direct {v5, v11}, Lcom/perfectcorp/perfectlib/core/VenusModel$Files;-><init>(Ljava/lang/String;)V

    invoke-static {v10, v5}, Lcom/perfectcorp/perfectlib/core/VenusModel$Files;->b(Ljava/lang/String;Lcom/perfectcorp/perfectlib/core/VenusModel$Files;)Ljava/lang/String;

    move-result-object v5

    :goto_6
    iget-boolean v10, v8, Lcom/perfectcorp/perfectlib/PerfectLib$ModelPath;->a:Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    iget-object v11, v8, Lcom/perfectcorp/perfectlib/PerfectLib$ModelPath;->b:Ljava/lang/String;

    if-eqz v10, :cond_d

    :try_start_9
    new-instance v10, Lcom/perfectcorp/perfectlib/core/VenusModel$Assets;

    const-string v13, "YMK_Venus_"

    const/16 v22, 0x1

    aget-object v15, v3, v22

    invoke-direct {v10, v13, v14, v15}, Lcom/perfectcorp/perfectlib/core/VenusModel$Assets;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v7, v11, v10}, Lcom/perfectcorp/perfectlib/core/VenusModel$Assets;->e(Landroid/content/Context;Ljava/lang/String;Lcom/perfectcorp/perfectlib/core/VenusModel$Assets;)Ljava/lang/String;

    move-result-object v10

    goto :goto_7

    :cond_d
    new-instance v10, Lcom/perfectcorp/perfectlib/core/VenusModel$Files;

    const/16 v22, 0x1

    aget-object v13, v3, v22

    invoke-direct {v10, v13}, Lcom/perfectcorp/perfectlib/core/VenusModel$Files;-><init>(Ljava/lang/String;)V

    invoke-static {v11, v10}, Lcom/perfectcorp/perfectlib/core/VenusModel$Files;->b(Ljava/lang/String;Lcom/perfectcorp/perfectlib/core/VenusModel$Files;)Ljava/lang/String;

    move-result-object v10

    :goto_7
    iget-boolean v11, v8, Lcom/perfectcorp/perfectlib/PerfectLib$ModelPath;->a:Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    iget-object v13, v8, Lcom/perfectcorp/perfectlib/PerfectLib$ModelPath;->b:Ljava/lang/String;

    if-eqz v11, :cond_e

    :try_start_a
    new-instance v11, Lcom/perfectcorp/perfectlib/core/VenusModel$Assets;

    const-string v15, "second_step_eye_model_"

    move-object/from16 v23, v3

    aget-object v3, v23, v20

    invoke-direct {v11, v15, v14, v3}, Lcom/perfectcorp/perfectlib/core/VenusModel$Assets;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v7, v13, v11}, Lcom/perfectcorp/perfectlib/core/VenusModel$Assets;->e(Landroid/content/Context;Ljava/lang/String;Lcom/perfectcorp/perfectlib/core/VenusModel$Assets;)Ljava/lang/String;

    move-result-object v3

    goto :goto_8

    :cond_e
    move-object/from16 v23, v3

    new-instance v3, Lcom/perfectcorp/perfectlib/core/VenusModel$Files;

    aget-object v11, v23, v20

    invoke-direct {v3, v11}, Lcom/perfectcorp/perfectlib/core/VenusModel$Files;-><init>(Ljava/lang/String;)V

    invoke-static {v13, v3}, Lcom/perfectcorp/perfectlib/core/VenusModel$Files;->b(Ljava/lang/String;Lcom/perfectcorp/perfectlib/core/VenusModel$Files;)Ljava/lang/String;

    move-result-object v3

    :goto_8
    iget-boolean v11, v8, Lcom/perfectcorp/perfectlib/PerfectLib$ModelPath;->a:Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    iget-object v13, v8, Lcom/perfectcorp/perfectlib/PerfectLib$ModelPath;->b:Ljava/lang/String;

    if-eqz v11, :cond_f

    :try_start_b
    new-instance v11, Lcom/perfectcorp/perfectlib/core/VenusModel$Assets;

    const-string v15, "second_step_mouth_model_"

    move-object/from16 v20, v9

    aget-object v9, v23, v21

    invoke-direct {v11, v15, v14, v9}, Lcom/perfectcorp/perfectlib/core/VenusModel$Assets;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v7, v13, v11}, Lcom/perfectcorp/perfectlib/core/VenusModel$Assets;->e(Landroid/content/Context;Ljava/lang/String;Lcom/perfectcorp/perfectlib/core/VenusModel$Assets;)Ljava/lang/String;

    move-result-object v9

    goto :goto_9

    :cond_f
    move-object/from16 v20, v9

    new-instance v9, Lcom/perfectcorp/perfectlib/core/VenusModel$Files;

    aget-object v11, v23, v21

    invoke-direct {v9, v11}, Lcom/perfectcorp/perfectlib/core/VenusModel$Files;-><init>(Ljava/lang/String;)V

    invoke-static {v13, v9}, Lcom/perfectcorp/perfectlib/core/VenusModel$Files;->b(Ljava/lang/String;Lcom/perfectcorp/perfectlib/core/VenusModel$Files;)Ljava/lang/String;

    move-result-object v9

    :goto_9
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_14

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_14

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_10

    invoke-static/range {v17 .. v17}, Lcom/perfectcorp/common/utility/Log;->h(Ljava/lang/String;)V

    :cond_10
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_11

    const-string v11, "No second step mouth model found."

    invoke-static {v11}, Lcom/perfectcorp/common/utility/Log;->h(Ljava/lang/String;)V

    :cond_11
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v20

    invoke-virtual {v2, v5, v10, v3, v9}, Lcom/perfectcorp/perfectlib/core/BaseVenus;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "SetInternalModelPaths in "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v9

    sub-long v9, v9, v20

    div-long v9, v9, v18

    invoke-virtual {v3, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/perfectcorp/common/utility/Log;->b(Ljava/lang/String;)V

    iget-wide v9, v2, Lcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;->a:J

    invoke-static {v9, v10, v2}, Lcom/perfectcorp/perfectlib/jniproxy/UIMakeupJNI;->CUIMakeupLive_IsModelLoaded(JLcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;)Z

    move-result v3

    invoke-static {v3}, Lcom/perfectcorp/thirdparty/com/google/common/base/Preconditions;->i(Z)V

    const/4 v3, 0x1

    invoke-virtual {v4, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    sget-object v3, Lcom/perfectcorp/perfectlib/Functionality;->MAKEUP:Lcom/perfectcorp/perfectlib/Functionality;

    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    invoke-virtual {v0, v3}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet$Builder;->h(Ljava/lang/Object;)V

    :cond_12
    sget-object v3, Lcom/perfectcorp/perfectlib/Functionality;->RESHAPE:Lcom/perfectcorp/perfectlib/Functionality;

    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    invoke-virtual {v0, v3}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet$Builder;->h(Ljava/lang/Object;)V

    :cond_13
    if-eqz p3, :cond_15

    sget-object v3, Lcom/perfectcorp/perfectlib/Functionality;->FUN_STICKER:Lcom/perfectcorp/perfectlib/Functionality;

    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    invoke-virtual {v0, v3}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet$Builder;->h(Ljava/lang/Object;)V

    goto :goto_a

    :cond_14
    invoke-static/range {v20 .. v20}, Lcom/perfectcorp/common/utility/Log;->h(Ljava/lang/String;)V

    :cond_15
    :goto_a
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "hasFaceTrackingModels="

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/perfectcorp/common/utility/Log;->b(Ljava/lang/String;)V

    move-object/from16 v3, p2

    iget-boolean v5, v3, Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;->j:Z

    if-eqz v5, :cond_18

    const/4 v5, 0x1

    new-array v9, v5, [Ljava/lang/String;

    invoke-virtual {v2, v9}, Lcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;->e([Ljava/lang/Object;)Z

    move-result v5

    invoke-static {v5}, Lcom/perfectcorp/thirdparty/com/google/common/base/Preconditions;->i(Z)V

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v10, "hair color model versions="

    invoke-direct {v5, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v9}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/perfectcorp/common/utility/Log;->b(Ljava/lang/String;)V

    iget-boolean v5, v8, Lcom/perfectcorp/perfectlib/PerfectLib$ModelPath;->a:Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    iget-object v10, v8, Lcom/perfectcorp/perfectlib/PerfectLib$ModelPath;->b:Ljava/lang/String;

    if-eqz v5, :cond_16

    :try_start_c
    new-instance v5, Lcom/perfectcorp/perfectlib/core/VenusModel$Assets;

    const-string v11, "seg_init_net_"

    aget-object v9, v9, v16

    invoke-direct {v5, v11, v14, v9}, Lcom/perfectcorp/perfectlib/core/VenusModel$Assets;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v7, v10, v5}, Lcom/perfectcorp/perfectlib/core/VenusModel$Assets;->e(Landroid/content/Context;Ljava/lang/String;Lcom/perfectcorp/perfectlib/core/VenusModel$Assets;)Ljava/lang/String;

    move-result-object v5

    goto :goto_b

    :cond_16
    new-instance v5, Lcom/perfectcorp/perfectlib/core/VenusModel$Files;

    aget-object v9, v9, v16

    invoke-direct {v5, v9}, Lcom/perfectcorp/perfectlib/core/VenusModel$Files;-><init>(Ljava/lang/String;)V

    invoke-static {v10, v5}, Lcom/perfectcorp/perfectlib/core/VenusModel$Files;->b(Ljava/lang/String;Lcom/perfectcorp/perfectlib/core/VenusModel$Files;)Ljava/lang/String;

    move-result-object v5

    :goto_b
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_17

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v9

    invoke-virtual {v2, v5}, Lcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;->l(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Lcom/perfectcorp/thirdparty/com/google/common/base/Preconditions;->i(Z)V

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v11, "SetHairColorModelPath in "

    invoke-direct {v5, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v13

    sub-long/2addr v13, v9

    div-long v13, v13, v18

    invoke-virtual {v5, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/perfectcorp/common/utility/Log;->b(Ljava/lang/String;)V

    sget-object v5, Lcom/perfectcorp/perfectlib/Functionality;->HAIR_COLOR:Lcom/perfectcorp/perfectlib/Functionality;

    invoke-virtual {v0, v5}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet$Builder;->h(Ljava/lang/Object;)V

    goto :goto_c

    :cond_17
    const-string v5, "No hair color model found."

    invoke-static {v5}, Lcom/perfectcorp/common/utility/Log;->h(Ljava/lang/String;)V

    :cond_18
    :goto_c
    iget-boolean v5, v3, Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;->q:Z

    if-eqz v5, :cond_1b

    const/4 v5, 0x1

    new-array v9, v5, [Ljava/lang/String;

    invoke-virtual {v2, v9}, Lcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;->c([Ljava/lang/Object;)Z

    move-result v5

    invoke-static {v5}, Lcom/perfectcorp/thirdparty/com/google/common/base/Preconditions;->i(Z)V

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v10, "background model versions="

    invoke-direct {v5, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v9}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/perfectcorp/common/utility/Log;->b(Ljava/lang/String;)V

    iget-boolean v5, v8, Lcom/perfectcorp/perfectlib/PerfectLib$ModelPath;->a:Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    iget-object v10, v8, Lcom/perfectcorp/perfectlib/PerfectLib$ModelPath;->b:Ljava/lang/String;

    if-eqz v5, :cond_19

    :try_start_d
    new-instance v5, Lcom/perfectcorp/perfectlib/core/VenusModel$Assets;

    aget-object v9, v9, v16

    invoke-direct {v5, v9}, Lcom/perfectcorp/perfectlib/core/VenusModel$Assets;-><init>(Ljava/lang/String;)V

    invoke-static {v7, v10, v5}, Lcom/perfectcorp/perfectlib/core/VenusModel$Assets;->e(Landroid/content/Context;Ljava/lang/String;Lcom/perfectcorp/perfectlib/core/VenusModel$Assets;)Ljava/lang/String;

    move-result-object v5

    goto :goto_d

    :cond_19
    new-instance v5, Lcom/perfectcorp/perfectlib/core/VenusModel$Files;

    aget-object v9, v9, v16

    invoke-direct {v5, v9}, Lcom/perfectcorp/perfectlib/core/VenusModel$Files;-><init>(Ljava/lang/String;)V

    invoke-static {v10, v5}, Lcom/perfectcorp/perfectlib/core/VenusModel$Files;->b(Ljava/lang/String;Lcom/perfectcorp/perfectlib/core/VenusModel$Files;)Ljava/lang/String;

    move-result-object v5

    :goto_d
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1a

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v9

    invoke-virtual {v2, v5}, Lcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;->j(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Lcom/perfectcorp/thirdparty/com/google/common/base/Preconditions;->i(Z)V

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v11, "SetBackgroundModelPath in "

    invoke-direct {v5, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v13

    sub-long/2addr v13, v9

    div-long v13, v13, v18

    invoke-virtual {v5, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/perfectcorp/common/utility/Log;->b(Ljava/lang/String;)V

    sget-object v5, Lcom/perfectcorp/perfectlib/Functionality;->BACKGROUND:Lcom/perfectcorp/perfectlib/Functionality;

    invoke-virtual {v0, v5}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet$Builder;->h(Ljava/lang/Object;)V

    goto :goto_e

    :cond_1a
    const-string v5, "No Background model found."

    invoke-static {v5}, Lcom/perfectcorp/common/utility/Log;->h(Ljava/lang/String;)V

    :cond_1b
    :goto_e
    iget-boolean v5, v3, Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;->i:Z

    if-nez v5, :cond_1c

    iget-boolean v5, v3, Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;->k:Z

    if-nez v5, :cond_1c

    iget-boolean v5, v3, Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;->n:Z

    if-nez v5, :cond_1c

    iget-boolean v5, v3, Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;->o:Z

    if-nez v5, :cond_1c

    iget-boolean v5, v3, Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;->p:Z

    if-eqz v5, :cond_21

    :cond_1c
    const/4 v5, 0x1

    new-array v9, v5, [Ljava/lang/String;

    invoke-virtual {v2, v9}, Lcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;->d([Ljava/lang/Object;)Z

    move-result v5

    invoke-static {v5}, Lcom/perfectcorp/thirdparty/com/google/common/base/Preconditions;->i(Z)V

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v10, "face 3D pose model versions="

    invoke-direct {v5, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v9}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/perfectcorp/common/utility/Log;->b(Ljava/lang/String;)V

    iget-boolean v5, v8, Lcom/perfectcorp/perfectlib/PerfectLib$ModelPath;->a:Z
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    iget-object v10, v8, Lcom/perfectcorp/perfectlib/PerfectLib$ModelPath;->b:Ljava/lang/String;

    if-eqz v5, :cond_1d

    :try_start_e
    new-instance v5, Lcom/perfectcorp/perfectlib/core/VenusModel$Assets;

    const-string v11, "pose_"

    const-string v13, ".mtnet"

    aget-object v9, v9, v16

    invoke-direct {v5, v11, v13, v9}, Lcom/perfectcorp/perfectlib/core/VenusModel$Assets;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v7, v10, v5}, Lcom/perfectcorp/perfectlib/core/VenusModel$Assets;->e(Landroid/content/Context;Ljava/lang/String;Lcom/perfectcorp/perfectlib/core/VenusModel$Assets;)Ljava/lang/String;

    move-result-object v5

    goto :goto_f

    :cond_1d
    new-instance v5, Lcom/perfectcorp/perfectlib/core/VenusModel$Files;

    aget-object v9, v9, v16

    invoke-direct {v5, v9}, Lcom/perfectcorp/perfectlib/core/VenusModel$Files;-><init>(Ljava/lang/String;)V

    invoke-static {v10, v5}, Lcom/perfectcorp/perfectlib/core/VenusModel$Files;->b(Ljava/lang/String;Lcom/perfectcorp/perfectlib/core/VenusModel$Files;)Ljava/lang/String;

    move-result-object v5

    :goto_f
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_20

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v9

    invoke-virtual {v2, v5}, Lcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;->k(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Lcom/perfectcorp/thirdparty/com/google/common/base/Preconditions;->i(Z)V

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v11, "SetFace3DPoseModelPath in "

    invoke-direct {v5, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v13

    sub-long/2addr v13, v9

    div-long v13, v13, v18

    invoke-virtual {v5, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/perfectcorp/common/utility/Log;->b(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-eqz v4, :cond_1f

    sget-object v4, Lcom/perfectcorp/perfectlib/Functionality;->EYEWEAR:Lcom/perfectcorp/perfectlib/Functionality;

    invoke-interface {v1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1e

    invoke-virtual {v0, v4}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet$Builder;->h(Ljava/lang/Object;)V

    :cond_1e
    sget-object v4, Lcom/perfectcorp/perfectlib/Functionality;->EYEWEAR_3D:Lcom/perfectcorp/perfectlib/Functionality;

    invoke-interface {v1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1f

    invoke-virtual {v0, v4}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet$Builder;->h(Ljava/lang/Object;)V

    :cond_1f
    const/4 v4, 0x1

    goto :goto_10

    :cond_20
    const-string v4, "No face pose model found."

    invoke-static {v4}, Lcom/perfectcorp/common/utility/Log;->h(Ljava/lang/String;)V

    :cond_21
    move/from16 v4, v16

    :goto_10
    iget-boolean v5, v3, Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;->i:Z
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    const-string v9, ".model"

    if-nez v5, :cond_22

    :try_start_f
    iget-boolean v5, v3, Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;->k:Z

    if-eqz v5, :cond_25

    :cond_22
    const/4 v5, 0x1

    new-array v10, v5, [Ljava/lang/String;

    invoke-virtual {v2, v10}, Lcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;->a([Ljava/lang/Object;)Z

    move-result v5

    invoke-static {v5}, Lcom/perfectcorp/thirdparty/com/google/common/base/Preconditions;->i(Z)V

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v11, "eyebrow 3D model versions="

    invoke-direct {v5, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v10}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/perfectcorp/common/utility/Log;->b(Ljava/lang/String;)V

    iget-boolean v5, v8, Lcom/perfectcorp/perfectlib/PerfectLib$ModelPath;->a:Z
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    iget-object v11, v8, Lcom/perfectcorp/perfectlib/PerfectLib$ModelPath;->b:Ljava/lang/String;

    if-eqz v5, :cond_23

    :try_start_10
    new-instance v5, Lcom/perfectcorp/perfectlib/core/VenusModel$Assets;

    const-string v13, "eyebrow_"

    aget-object v10, v10, v16

    invoke-direct {v5, v13, v9, v10}, Lcom/perfectcorp/perfectlib/core/VenusModel$Assets;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v7, v11, v5}, Lcom/perfectcorp/perfectlib/core/VenusModel$Assets;->e(Landroid/content/Context;Ljava/lang/String;Lcom/perfectcorp/perfectlib/core/VenusModel$Assets;)Ljava/lang/String;

    move-result-object v5

    goto :goto_11

    :cond_23
    new-instance v5, Lcom/perfectcorp/perfectlib/core/VenusModel$Files;

    aget-object v10, v10, v16

    invoke-direct {v5, v10}, Lcom/perfectcorp/perfectlib/core/VenusModel$Files;-><init>(Ljava/lang/String;)V

    invoke-static {v11, v5}, Lcom/perfectcorp/perfectlib/core/VenusModel$Files;->b(Ljava/lang/String;Lcom/perfectcorp/perfectlib/core/VenusModel$Files;)Ljava/lang/String;

    move-result-object v5

    :goto_11
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_24

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v10

    invoke-virtual {v2, v5}, Lcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;->h(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Lcom/perfectcorp/thirdparty/com/google/common/base/Preconditions;->i(Z)V

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v13, "Set3DEyebrowModelPath in "

    invoke-direct {v5, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v13

    sub-long/2addr v13, v10

    div-long v13, v13, v18

    invoke-virtual {v5, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/perfectcorp/common/utility/Log;->b(Ljava/lang/String;)V

    goto :goto_12

    :cond_24
    const-string v5, "No eyebrow model found."

    invoke-static {v5}, Lcom/perfectcorp/common/utility/Log;->h(Ljava/lang/String;)V

    :cond_25
    :goto_12
    iget-boolean v5, v3, Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;->i:Z

    if-nez v5, :cond_26

    iget-boolean v5, v3, Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;->k:Z

    if-nez v5, :cond_26

    iget-boolean v5, v3, Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;->p:Z

    if-eqz v5, :cond_29

    :cond_26
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {v2, v5}, Lcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;->b([Ljava/lang/Object;)Z

    move-result v10

    invoke-static {v10}, Lcom/perfectcorp/thirdparty/com/google/common/base/Preconditions;->i(Z)V

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "face art 3D model versions="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/perfectcorp/common/utility/Log;->b(Ljava/lang/String;)V

    iget-boolean v10, v8, Lcom/perfectcorp/perfectlib/PerfectLib$ModelPath;->a:Z
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    iget-object v11, v8, Lcom/perfectcorp/perfectlib/PerfectLib$ModelPath;->b:Ljava/lang/String;

    if-eqz v10, :cond_27

    :try_start_11
    new-instance v10, Lcom/perfectcorp/perfectlib/core/VenusModel$Assets;

    const-string v13, "faceart_"

    aget-object v5, v5, v16

    invoke-direct {v10, v13, v9, v5}, Lcom/perfectcorp/perfectlib/core/VenusModel$Assets;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v7, v11, v10}, Lcom/perfectcorp/perfectlib/core/VenusModel$Assets;->e(Landroid/content/Context;Ljava/lang/String;Lcom/perfectcorp/perfectlib/core/VenusModel$Assets;)Ljava/lang/String;

    move-result-object v5

    goto :goto_13

    :cond_27
    new-instance v9, Lcom/perfectcorp/perfectlib/core/VenusModel$Files;

    aget-object v5, v5, v16

    invoke-direct {v9, v5}, Lcom/perfectcorp/perfectlib/core/VenusModel$Files;-><init>(Ljava/lang/String;)V

    invoke-static {v11, v9}, Lcom/perfectcorp/perfectlib/core/VenusModel$Files;->b(Ljava/lang/String;Lcom/perfectcorp/perfectlib/core/VenusModel$Files;)Ljava/lang/String;

    move-result-object v5

    :goto_13
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_28

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v9

    invoke-virtual {v2, v5}, Lcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;->i(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Lcom/perfectcorp/thirdparty/com/google/common/base/Preconditions;->i(Z)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "Set3DFaceartModelPath in "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v13

    sub-long/2addr v13, v9

    div-long v13, v13, v18

    invoke-virtual {v2, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/perfectcorp/common/utility/Log;->b(Ljava/lang/String;)V

    if-eqz v4, :cond_29

    sget-object v2, Lcom/perfectcorp/perfectlib/Functionality;->EARRINGS:Lcom/perfectcorp/perfectlib/Functionality;

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-virtual {v0, v2}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet$Builder;->h(Ljava/lang/Object;)V

    goto :goto_14

    :cond_28
    const-string v1, "No face art model found."

    invoke-static {v1}, Lcom/perfectcorp/common/utility/Log;->h(Ljava/lang/String;)V

    :cond_29
    :goto_14
    iget-boolean v1, v3, Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;->i:Z

    if-eqz v1, :cond_2e

    iget-boolean v1, v8, Lcom/perfectcorp/perfectlib/PerfectLib$ModelPath;->a:Z
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    iget-object v2, v8, Lcom/perfectcorp/perfectlib/PerfectLib$ModelPath;->b:Ljava/lang/String;

    const-string v4, "eye_ibl.hdr"

    if-eqz v1, :cond_2a

    :try_start_12
    new-instance v1, Lcom/perfectcorp/perfectlib/core/VenusModel$Assets;

    invoke-direct {v1, v4}, Lcom/perfectcorp/perfectlib/core/VenusModel$Assets;-><init>(Ljava/lang/String;)V

    invoke-static {v7, v2, v1}, Lcom/perfectcorp/perfectlib/core/VenusModel$Assets;->e(Landroid/content/Context;Ljava/lang/String;Lcom/perfectcorp/perfectlib/core/VenusModel$Assets;)Ljava/lang/String;

    move-result-object v1

    goto :goto_15

    :cond_2a
    new-instance v1, Lcom/perfectcorp/perfectlib/core/VenusModel$Files;

    invoke-direct {v1, v4}, Lcom/perfectcorp/perfectlib/core/VenusModel$Files;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v1}, Lcom/perfectcorp/perfectlib/core/VenusModel$Files;->b(Ljava/lang/String;Lcom/perfectcorp/perfectlib/core/VenusModel$Files;)Ljava/lang/String;

    move-result-object v1

    :goto_15
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2b

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "eyeshadow & eyeliner HDR model path="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/perfectcorp/common/utility/Log;->b(Ljava/lang/String;)V

    goto :goto_16

    :cond_2b
    const-string v2, "No eyeshadow & eyeliner HDR model. EyeShadow & eyeliner function may not work."

    invoke-static {v2}, Lcom/perfectcorp/common/utility/Log;->h(Ljava/lang/String;)V

    :goto_16
    iget-boolean v2, v8, Lcom/perfectcorp/perfectlib/PerfectLib$ModelPath;->a:Z
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    iget-object v4, v8, Lcom/perfectcorp/perfectlib/PerfectLib$ModelPath;->b:Ljava/lang/String;

    const-string v5, "eye_normal.png"

    if-eqz v2, :cond_2c

    :try_start_13
    new-instance v2, Lcom/perfectcorp/perfectlib/core/VenusModel$Assets;

    invoke-direct {v2, v5}, Lcom/perfectcorp/perfectlib/core/VenusModel$Assets;-><init>(Ljava/lang/String;)V

    invoke-static {v7, v4, v2}, Lcom/perfectcorp/perfectlib/core/VenusModel$Assets;->e(Landroid/content/Context;Ljava/lang/String;Lcom/perfectcorp/perfectlib/core/VenusModel$Assets;)Ljava/lang/String;

    move-result-object v2

    goto :goto_17

    :cond_2c
    new-instance v2, Lcom/perfectcorp/perfectlib/core/VenusModel$Files;

    invoke-direct {v2, v5}, Lcom/perfectcorp/perfectlib/core/VenusModel$Files;-><init>(Ljava/lang/String;)V

    invoke-static {v4, v2}, Lcom/perfectcorp/perfectlib/core/VenusModel$Files;->b(Ljava/lang/String;Lcom/perfectcorp/perfectlib/core/VenusModel$Files;)Ljava/lang/String;

    move-result-object v2

    :goto_17
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2d

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "eyeshadow & eyeliner PNG model path="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/perfectcorp/common/utility/Log;->b(Ljava/lang/String;)V

    goto :goto_18

    :cond_2d
    const-string v4, "No eyeshadow & eyeliner PNG model. EyeShadow & eyeliner function may not work."

    invoke-static {v4}, Lcom/perfectcorp/common/utility/Log;->h(Ljava/lang/String;)V

    :goto_18
    invoke-static {v1}, Lcom/perfectcorp/perfectlib/ymk/utility/Nulls;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;->e:Ljava/lang/String;

    invoke-static {v2}, Lcom/perfectcorp/perfectlib/ymk/utility/Nulls;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;->f:Ljava/lang/String;

    :cond_2e
    iget-boolean v1, v3, Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;->n:Z
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    const-string v2, ".obb"

    if-eqz v1, :cond_31

    :try_start_14
    iget-boolean v1, v8, Lcom/perfectcorp/perfectlib/PerfectLib$ModelPath;->a:Z
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    iget-object v4, v8, Lcom/perfectcorp/perfectlib/PerfectLib$ModelPath;->b:Ljava/lang/String;

    const-string v5, "eyewear_mean_face_occluder.obb"

    if-eqz v1, :cond_2f

    :try_start_15
    new-instance v1, Lcom/perfectcorp/perfectlib/core/VenusModel$Assets;

    const-string v9, "eyewear_mean_face_occluder"

    invoke-direct {v1, v9, v2, v5}, Lcom/perfectcorp/perfectlib/core/VenusModel$Assets;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v7, v4, v1}, Lcom/perfectcorp/perfectlib/core/VenusModel$Assets;->e(Landroid/content/Context;Ljava/lang/String;Lcom/perfectcorp/perfectlib/core/VenusModel$Assets;)Ljava/lang/String;

    move-result-object v1

    goto :goto_19

    :cond_2f
    new-instance v1, Lcom/perfectcorp/perfectlib/core/VenusModel$Files;

    invoke-direct {v1, v5}, Lcom/perfectcorp/perfectlib/core/VenusModel$Files;-><init>(Ljava/lang/String;)V

    invoke-static {v4, v1}, Lcom/perfectcorp/perfectlib/core/VenusModel$Files;->b(Ljava/lang/String;Lcom/perfectcorp/perfectlib/core/VenusModel$Files;)Ljava/lang/String;

    move-result-object v1

    :goto_19
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_30

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "eyewear occluder model path="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/perfectcorp/common/utility/Log;->b(Ljava/lang/String;)V

    goto :goto_1a

    :cond_30
    const-string v4, "No eyewear occluder model. Eyewear function may not work."

    invoke-static {v4}, Lcom/perfectcorp/common/utility/Log;->h(Ljava/lang/String;)V

    :goto_1a
    invoke-static {v1}, Lcom/perfectcorp/perfectlib/ymk/utility/Nulls;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;->b:Ljava/lang/String;

    :cond_31
    iget-boolean v1, v3, Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;->o:Z
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    const-string v4, "occluder model path="

    if-eqz v1, :cond_34

    :try_start_16
    iget-boolean v1, v8, Lcom/perfectcorp/perfectlib/PerfectLib$ModelPath;->a:Z
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    iget-object v5, v8, Lcom/perfectcorp/perfectlib/PerfectLib$ModelPath;->b:Ljava/lang/String;

    const-string v9, "mean_face_occluder.obb"

    if-eqz v1, :cond_32

    :try_start_17
    new-instance v1, Lcom/perfectcorp/perfectlib/core/VenusModel$Assets;

    const-string v10, "mean_face_occluder"

    invoke-direct {v1, v10, v2, v9}, Lcom/perfectcorp/perfectlib/core/VenusModel$Assets;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v7, v5, v1}, Lcom/perfectcorp/perfectlib/core/VenusModel$Assets;->e(Landroid/content/Context;Ljava/lang/String;Lcom/perfectcorp/perfectlib/core/VenusModel$Assets;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1b

    :cond_32
    new-instance v1, Lcom/perfectcorp/perfectlib/core/VenusModel$Files;

    invoke-direct {v1, v9}, Lcom/perfectcorp/perfectlib/core/VenusModel$Files;-><init>(Ljava/lang/String;)V

    invoke-static {v5, v1}, Lcom/perfectcorp/perfectlib/core/VenusModel$Files;->b(Ljava/lang/String;Lcom/perfectcorp/perfectlib/core/VenusModel$Files;)Ljava/lang/String;

    move-result-object v1

    :goto_1b
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_33

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/perfectcorp/common/utility/Log;->b(Ljava/lang/String;)V

    goto :goto_1c

    :cond_33
    const-string v5, "No occluder model. Eyewear function may not work."

    invoke-static {v5}, Lcom/perfectcorp/common/utility/Log;->h(Ljava/lang/String;)V

    :goto_1c
    invoke-static {v1}, Lcom/perfectcorp/perfectlib/ymk/utility/Nulls;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;->a:Ljava/lang/String;

    :cond_34
    iget-boolean v1, v3, Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;->s:Z

    if-eqz v1, :cond_3a

    if-eqz p4, :cond_39

    invoke-interface/range {p4 .. p4}, Lcom/perfectcorp/perfectlib/AccessoryCamWrapper;->initAr()Ljava/lang/String;

    const-string v1, "necklace_occluder_1.obb"

    iget-boolean v5, v8, Lcom/perfectcorp/perfectlib/PerfectLib$ModelPath;->a:Z
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    iget-object v9, v8, Lcom/perfectcorp/perfectlib/PerfectLib$ModelPath;->b:Ljava/lang/String;

    if-eqz v5, :cond_35

    :try_start_18
    new-instance v5, Lcom/perfectcorp/perfectlib/core/VenusModel$Assets;

    const-string v10, "necklace_occluder_1"

    invoke-direct {v5, v10, v2, v1}, Lcom/perfectcorp/perfectlib/core/VenusModel$Assets;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v7, v9, v5}, Lcom/perfectcorp/perfectlib/core/VenusModel$Assets;->e(Landroid/content/Context;Ljava/lang/String;Lcom/perfectcorp/perfectlib/core/VenusModel$Assets;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1d

    :cond_35
    new-instance v5, Lcom/perfectcorp/perfectlib/core/VenusModel$Files;

    invoke-direct {v5, v1}, Lcom/perfectcorp/perfectlib/core/VenusModel$Files;-><init>(Ljava/lang/String;)V

    invoke-static {v9, v5}, Lcom/perfectcorp/perfectlib/core/VenusModel$Files;->b(Ljava/lang/String;Lcom/perfectcorp/perfectlib/core/VenusModel$Files;)Ljava/lang/String;

    move-result-object v1

    :goto_1d
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_36

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/perfectcorp/common/utility/Log;->b(Ljava/lang/String;)V

    goto :goto_1e

    :cond_36
    const-string v5, "No occluder model 1. Necklace function may not work."

    invoke-static {v5}, Lcom/perfectcorp/common/utility/Log;->h(Ljava/lang/String;)V

    :goto_1e
    invoke-static {v1}, Lcom/perfectcorp/perfectlib/ymk/utility/Nulls;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;->c:Ljava/lang/String;

    const-string v1, "necklace_occluder_2.obb"

    iget-boolean v5, v8, Lcom/perfectcorp/perfectlib/PerfectLib$ModelPath;->a:Z
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    iget-object v8, v8, Lcom/perfectcorp/perfectlib/PerfectLib$ModelPath;->b:Ljava/lang/String;

    if-eqz v5, :cond_37

    :try_start_19
    new-instance v5, Lcom/perfectcorp/perfectlib/core/VenusModel$Assets;

    const-string v9, "necklace_occluder_2"

    invoke-direct {v5, v9, v2, v1}, Lcom/perfectcorp/perfectlib/core/VenusModel$Assets;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v7, v8, v5}, Lcom/perfectcorp/perfectlib/core/VenusModel$Assets;->e(Landroid/content/Context;Ljava/lang/String;Lcom/perfectcorp/perfectlib/core/VenusModel$Assets;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1f

    :cond_37
    new-instance v2, Lcom/perfectcorp/perfectlib/core/VenusModel$Files;

    invoke-direct {v2, v1}, Lcom/perfectcorp/perfectlib/core/VenusModel$Files;-><init>(Ljava/lang/String;)V

    invoke-static {v8, v2}, Lcom/perfectcorp/perfectlib/core/VenusModel$Files;->b(Ljava/lang/String;Lcom/perfectcorp/perfectlib/core/VenusModel$Files;)Ljava/lang/String;

    move-result-object v1

    :goto_1f
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_38

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/perfectcorp/common/utility/Log;->b(Ljava/lang/String;)V

    goto :goto_20

    :cond_38
    const-string v2, "No occluder model 2. Necklace function may not work."

    invoke-static {v2}, Lcom/perfectcorp/common/utility/Log;->h(Ljava/lang/String;)V

    :goto_20
    invoke-static {v1}, Lcom/perfectcorp/perfectlib/ymk/utility/Nulls;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;->d:Ljava/lang/String;

    sget-object v1, Lcom/perfectcorp/perfectlib/Functionality;->NECKLACE:Lcom/perfectcorp/perfectlib/Functionality;

    invoke-virtual {v0, v1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet$Builder;->h(Ljava/lang/Object;)V

    goto :goto_21

    :cond_39
    const-string v1, "Missing necklace wrapper. Necklace function is disabled."

    invoke-static {v1}, Lcom/perfectcorp/common/utility/Log;->h(Ljava/lang/String;)V

    :cond_3a
    :goto_21
    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet$Builder;->j()Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;

    move-result-object v0
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_0

    return-object v0

    :goto_22
    const-string v1, "Module load failed"

    invoke-static {v6, v1, v0}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v1, Lcom/perfectcorp/perfectlib/exceptions/ModuleLoadFailedException;

    invoke-direct {v1, v0}, Lcom/perfectcorp/perfectlib/exceptions/ModuleLoadFailedException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static c(Lcom/perfectcorp/perfectlib/AccessoryCamWrapper;Lcom/perfectcorp/perfectlib/MakeupCam$CreateCallback2;)V
    .locals 4

    invoke-static {}, Lcom/perfectcorp/common/concurrent/Threads;->a()V

    invoke-static {}, Lcom/perfectcorp/perfectlib/PerfectLib;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "createCallback can\'t be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-class v0, Lcom/perfectcorp/perfectlib/MakeupCam$CreateCallback2;

    invoke-static {v0, p1}, Lcom/perfectcorp/common/reflect/Proxies;->a(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perfectcorp/perfectlib/MakeupCam$CreateCallback2;

    new-instance v0, Ln2;

    const/4 v1, 0x7

    invoke-direct {v0, p0, v1}, Ln2;-><init>(Ljava/lang/Object;I)V

    new-instance p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/p;

    invoke-direct {p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/p;-><init>(Ljava/util/concurrent/Callable;)V

    sget-object v0, Lcom/perfectcorp/thirdparty/io/reactivex/schedulers/Schedulers;->c:Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    invoke-virtual {p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->j(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/x;

    move-result-object p0

    invoke-static {}, Lcom/perfectcorp/thirdparty/io/reactivex/android/schedulers/AndroidSchedulers;->a()Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->i(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/u;

    move-result-object p0

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;

    new-instance v1, Lec0;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lec0;-><init>(Lcom/perfectcorp/perfectlib/MakeupCam$CreateCallback2;I)V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lec0;

    const/4 v3, 0x1

    invoke-direct {v2, p1, v3}, Lec0;-><init>(Lcom/perfectcorp/perfectlib/MakeupCam$CreateCallback2;I)V

    invoke-direct {v0, v1, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)V

    invoke-virtual {p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->a(Lcom/perfectcorp/thirdparty/io/reactivex/f;)V

    return-void

    :cond_0
    const-string p0, "PerfectLib.init() must be called first."

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-void
.end method

.method public static create(Lcom/perfectcorp/perfectlib/AccessoryCamWrapper;Lcom/perfectcorp/perfectlib/MakeupCam$CreateCallback2;)V
    .locals 0

    .line 93
    invoke-static {p0, p1}, Lcom/perfectcorp/perfectlib/MakeupCam;->c(Lcom/perfectcorp/perfectlib/AccessoryCamWrapper;Lcom/perfectcorp/perfectlib/MakeupCam$CreateCallback2;)V

    return-void
.end method

.method public static create(Lcom/perfectcorp/perfectlib/CameraView;Lcom/perfectcorp/perfectlib/AccessoryCamWrapper;Lcom/perfectcorp/perfectlib/MakeupCam$CreateCallback;)V
    .locals 3

    invoke-static {}, Lcom/perfectcorp/common/concurrent/Threads;->a()V

    invoke-static {}, Lcom/perfectcorp/perfectlib/PerfectLib;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "cameraView can\'t be null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "createCallback can\'t be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-class v0, Lcom/perfectcorp/perfectlib/MakeupCam$CreateCallback;

    invoke-static {v0, p2}, Lcom/perfectcorp/common/reflect/Proxies;->a(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/perfectcorp/perfectlib/MakeupCam$CreateCallback;

    new-instance v0, Lo7;

    const/4 v1, 0x6

    invoke-direct {v0, p0, p1, v1}, Lo7;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    new-instance p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/p;

    invoke-direct {p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/p;-><init>(Ljava/util/concurrent/Callable;)V

    new-instance p1, Ld8;

    const/16 v0, 0x9

    invoke-direct {p1, v0}, Ld8;-><init>(I)V

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

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcc0;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1}, Lcc0;-><init>(Lcom/perfectcorp/perfectlib/MakeupCam$CreateCallback;I)V

    new-instance v1, Lcc0;

    const/4 v2, 0x1

    invoke-direct {v1, p2, v2}, Lcc0;-><init>(Lcom/perfectcorp/perfectlib/MakeupCam$CreateCallback;I)V

    invoke-direct {p1, v0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)V

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->a(Lcom/perfectcorp/thirdparty/io/reactivex/f;)V

    return-void

    :cond_0
    const-string p0, "PerfectLib.init() must be called first."

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-void
.end method

.method public static create(Lcom/perfectcorp/perfectlib/CameraView;Lcom/perfectcorp/perfectlib/MakeupCam$CreateCallback;)V
    .locals 1

    .line 94
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/perfectcorp/perfectlib/MakeupCam;->create(Lcom/perfectcorp/perfectlib/CameraView;ZLcom/perfectcorp/perfectlib/MakeupCam$CreateCallback;)V

    return-void
.end method

.method public static create(Lcom/perfectcorp/perfectlib/CameraView;ZLcom/perfectcorp/perfectlib/MakeupCam$CreateCallback;)V
    .locals 3

    invoke-static {}, Lcom/perfectcorp/common/concurrent/Threads;->a()V

    invoke-static {}, Lcom/perfectcorp/perfectlib/PerfectLib;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "cameraView can\'t be null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "createCallback can\'t be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-class v0, Lcom/perfectcorp/perfectlib/MakeupCam$CreateCallback;

    invoke-static {v0, p2}, Lcom/perfectcorp/common/reflect/Proxies;->a(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/perfectcorp/perfectlib/MakeupCam$CreateCallback;

    new-instance v0, Ls7;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Ls7;-><init>(Ljava/lang/Object;ZI)V

    .line 95
    new-instance p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/p;

    invoke-direct {p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/p;-><init>(Ljava/util/concurrent/Callable;)V

    .line 96
    new-instance p1, Ld8;

    const/16 v0, 0x8

    invoke-direct {p1, v0}, Ld8;-><init>(I)V

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->f(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/j;

    move-result-object p0

    .line 97
    sget-object p1, Lcom/perfectcorp/thirdparty/io/reactivex/schedulers/Schedulers;->c:Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    .line 98
    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->j(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/x;

    move-result-object p0

    invoke-static {}, Lcom/perfectcorp/thirdparty/io/reactivex/android/schedulers/AndroidSchedulers;->a()Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->i(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/u;

    move-result-object p0

    new-instance p1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcc0;

    const/4 v2, 0x0

    invoke-direct {v0, p2, v2}, Lcc0;-><init>(Lcom/perfectcorp/perfectlib/MakeupCam$CreateCallback;I)V

    new-instance v2, Lcc0;

    invoke-direct {v2, p2, v1}, Lcc0;-><init>(Lcom/perfectcorp/perfectlib/MakeupCam$CreateCallback;I)V

    invoke-direct {p1, v0, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)V

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->a(Lcom/perfectcorp/thirdparty/io/reactivex/f;)V

    return-void

    :cond_0
    const-string p0, "PerfectLib.init() must be called first."

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-void
.end method

.method public static create(Lcom/perfectcorp/perfectlib/MakeupCam$CreateCallback2;)V
    .locals 1

    .line 99
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/perfectcorp/perfectlib/MakeupCam;->c(Lcom/perfectcorp/perfectlib/AccessoryCamWrapper;Lcom/perfectcorp/perfectlib/MakeupCam$CreateCallback2;)V

    return-void
.end method

.method public static d(Lcom/perfectcorp/perfectlib/core/BaseVenus;)V
    .locals 8

    sget-object v0, Lcom/perfectcorp/perfectlib/MakeupCam$Preferences;->a:Lcom/perfectcorp/common/utility/BasicPreferences;

    const-string v1, "CUSTOM_FEATURE_BRAND"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/perfectcorp/common/utility/j;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "CUSTOM_FEATURE_BAD_LIGHTING_LV"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/perfectcorp/common/utility/j;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const-string v4, "CUSTOM_FEATURE_SKINSMOOTH_LV"

    invoke-virtual {v0, v4, v3}, Lcom/perfectcorp/common/utility/j;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    const-string v5, "CUSTOM_FEATURE_LOOK_COMPARISON_LV"

    invoke-virtual {v0, v5, v3}, Lcom/perfectcorp/common/utility/j;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const-string v5, "LV"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/16 v6, 0x32

    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/perfectcorp/perfectlib/core/BaseVenus;->g:Z

    if-eqz v5, :cond_4

    if-eqz v2, :cond_0

    const/16 v6, 0x28

    :cond_0
    iput v6, p0, Lcom/perfectcorp/perfectlib/core/BaseVenus;->h:I

    iput-boolean v4, p0, Lcom/perfectcorp/perfectlib/core/BaseVenus;->d:Z

    iput-boolean v0, p0, Lcom/perfectcorp/perfectlib/core/BaseVenus;->e:Z

    const-string p0, "Brand "

    const-string v3, ", LV Lighting: "

    invoke-static {p0, v1, v3}, Lpq0;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, "OFF"

    const-string v3, "ON"

    if-eqz v2, :cond_1

    move-object v2, v3

    goto :goto_0

    :cond_1
    move-object v2, v1

    :goto_0
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", LV Skinsmooth: "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v4, :cond_2

    move-object v2, v3

    goto :goto_1

    :cond_2
    move-object v2, v1

    :goto_1
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", LV Look Comparison: "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_3

    move-object v1, v3

    :cond_3
    const/4 v0, 0x4

    const-string v2, "MakeupCam"

    invoke-static {p0, v1, v0, v2}, La;->A(Ljava/lang/StringBuilder;Ljava/lang/String;ILjava/lang/String;)V

    return-void

    :cond_4
    iput v6, p0, Lcom/perfectcorp/perfectlib/core/BaseVenus;->h:I

    iput-boolean v3, p0, Lcom/perfectcorp/perfectlib/core/BaseVenus;->d:Z

    iput-boolean v3, p0, Lcom/perfectcorp/perfectlib/core/BaseVenus;->e:Z

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 3

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/MakeupCam;->e:Lcom/perfectcorp/perfectlib/makeupcam/camera/MakeupCam;

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/MakeupCam;->a:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->v:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;

    invoke-virtual {v0}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->d()Ljava/util/EnumSet;

    move-result-object v0

    sget-object v1, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->SKIN_SMOOTHER:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    sget-object v1, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->HAIR_DYE:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/MakeupCam;->d:Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;

    iget-boolean v0, v0, Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;->l:Z

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v1, Lbc0;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2}, Lbc0;-><init>(Lcom/perfectcorp/perfectlib/MakeupCam;I)V

    :goto_0
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v1, Lbc0;

    const/4 v2, 0x4

    invoke-direct {v1, p0, v2}, Lbc0;-><init>(Lcom/perfectcorp/perfectlib/MakeupCam;I)V

    goto :goto_0
.end method

.method public final e()V
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/MakeupCam;->j:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    const-string p0, "Instance is already released."

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-void
.end method

.method public final enableComparison(Z)V
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "enableComparison::enabled="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    const-string v2, "MakeupCam"

    invoke-static {v1, v2, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/MakeupCam;->e()V

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/MakeupCam;->e:Lcom/perfectcorp/perfectlib/makeupcam/camera/MakeupCam;

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/MakeupCam;->a:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;

    iget-object v3, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->c:Lcom/perfectcorp/perfectlib/core/BaseVenus;

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->g:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;

    iput-boolean p1, v3, Lcom/perfectcorp/perfectlib/core/BaseVenus;->f:Z

    iget-boolean v3, v3, Lcom/perfectcorp/perfectlib/core/BaseVenus;->e:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/perfectcorp/perfectlib/MakeupCam;->a:Ljava/lang/Object;

    if-eqz v3, :cond_0

    :try_start_0
    const-class v3, Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    filled-new-array {v3}, [Ljava/lang/Class;

    move-result-object v5

    new-instance v6, Lgc0;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    invoke-static {v4, v5, v6}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v4

    if-eqz p1, :cond_0

    iget-object v5, p0, Lcom/perfectcorp/perfectlib/MakeupCam;->a:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "clearAllEffectsExceptSkinSmooth"

    filled-new-array {v3}, [Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v5, v6, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/MakeupCam;->a:Ljava/lang/Object;

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/perfectcorp/common/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    const-string p0, "clearAllEffects not available on this applier"

    invoke-static {v1, v2, p0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    const/high16 p0, 0x3f000000    # 0.5f

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    iput p0, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->l1:F

    return-void

    :cond_2
    invoke-virtual {v0, p1}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->s0(Z)V

    return-void
.end method

.method public final enableFPSMode(Z)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "enableFPSMode:enabled="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    const-string v2, "MakeupCam"

    invoke-static {v1, v2, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/MakeupCam;->l:Lcom/perfectcorp/perfectlib/CameraView;

    if-eqz v1, :cond_2

    :try_start_0
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    :goto_0
    instance-of v3, v1, Landroid/content/ContextWrapper;

    if-eqz v3, :cond_1

    instance-of v3, v1, Landroid/app/Activity;

    if-eqz v3, :cond_0

    check-cast v1, Landroid/app/Activity;

    const v3, 0x1020002

    invoke-virtual {v1, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    move-object v0, v1

    goto :goto_1

    :cond_0
    check-cast v1, Landroid/content/ContextWrapper;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "View is not attached to an Activity"

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    const-string v1, "Unable to get Activity root view, disabling FPS Mode"

    invoke-static {v2, v1, p1}, Lcom/perfectcorp/common/utility/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    :cond_2
    :goto_1
    iget-object p0, p0, Lcom/perfectcorp/perfectlib/MakeupCam;->e:Lcom/perfectcorp/perfectlib/makeupcam/camera/MakeupCam;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/MakeupCam;->a:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;

    invoke-virtual {p0, v0, p1}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->d(Landroid/view/ViewGroup;Z)V

    return-void
.end method

.method public final enableLiplinerOnTop(Z)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "enableLiplinerOnTop:enabled="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    const-string v2, "MakeupCam"

    invoke-static {v1, v2, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/MakeupCam;->e()V

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/MakeupCam;->e:Lcom/perfectcorp/perfectlib/makeupcam/camera/MakeupCam;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/MakeupCam;->a:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;

    iput-boolean p1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->i:Z

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->g:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;

    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->Q(IZ)V

    return-void
.end method

.method public final enableSkinSmoothFaceOnly(Z)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "enableSkinSmoothFaceOnly:enabled="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    const-string v2, "MakeupCam"

    invoke-static {v1, v2, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/MakeupCam;->e()V

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/MakeupCam;->e:Lcom/perfectcorp/perfectlib/makeupcam/camera/MakeupCam;

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/MakeupCam;->a:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;

    iput-boolean p1, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->m1:Z

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/MakeupCam;->e:Lcom/perfectcorp/perfectlib/makeupcam/camera/MakeupCam;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/MakeupCam;->a:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;

    const/4 p1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->n(IZ)V

    return-void
.end method

.method public final f()V
    .locals 4

    invoke-static {}, Lcom/perfectcorp/common/concurrent/Threads;->b()V

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/MakeupCam;->f:Lcom/perfectcorp/perfectlib/makeupcam/video/e;

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/e;->a:Lcom/perfectcorp/perfectlib/makeupcam/video/d;

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/makeupcam/video/d;->b:Lcom/perfectcorp/perfectlib/makeupcam/video/d$a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/perfectcorp/perfectlib/makeupcam/video/d$a;->e:Lcom/perfectcorp/perfectlib/makeupcam/video/d$a;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/e;->a:Lcom/perfectcorp/perfectlib/makeupcam/video/d;

    iget-object v2, v0, Lcom/perfectcorp/perfectlib/makeupcam/video/d;->b:Lcom/perfectcorp/perfectlib/makeupcam/video/d$a;

    sget-object v3, Lcom/perfectcorp/perfectlib/makeupcam/video/d$a;->a:Lcom/perfectcorp/perfectlib/makeupcam/video/d$a;

    if-eq v2, v3, :cond_1

    sget-object v3, Lcom/perfectcorp/perfectlib/makeupcam/video/d$a;->c:Lcom/perfectcorp/perfectlib/makeupcam/video/d$a;

    if-ne v2, v3, :cond_2

    :cond_1
    invoke-virtual {v0}, Lcom/perfectcorp/perfectlib/makeupcam/video/d;->a()V

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/e;->b:Z

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/e;->a:Lcom/perfectcorp/perfectlib/makeupcam/video/d;

    invoke-virtual {v0}, Lcom/perfectcorp/perfectlib/makeupcam/video/d;->b()V

    iput-object v1, v0, Lcom/perfectcorp/perfectlib/makeupcam/video/d;->b:Lcom/perfectcorp/perfectlib/makeupcam/video/d$a;

    sget-object v0, Lcom/perfectcorp/perfectlib/makeupcam/video/e$a;->a:Lcom/perfectcorp/perfectlib/makeupcam/video/e$a;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/e;->c:Lcom/perfectcorp/perfectlib/makeupcam/video/e$a;

    :goto_0
    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/e;->a:Lcom/perfectcorp/perfectlib/makeupcam/video/d;

    invoke-virtual {v0}, Lcom/perfectcorp/perfectlib/makeupcam/video/d;->b()V

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/e;->a:Lcom/perfectcorp/perfectlib/makeupcam/video/d;

    iput-object v1, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/d;->b:Lcom/perfectcorp/perfectlib/makeupcam/video/d$a;

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

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/MakeupCam;->b:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;

    return-object p0
.end method

.method public final getCurrentFrameInfo(I)Lcom/perfectcorp/perfectlib/MakeupCam$FrameInfo;
    .locals 12

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/MakeupCam;->e()V

    new-instance v0, Lcom/perfectcorp/perfectlib/MakeupCam$FrameInfo;

    invoke-direct {v0}, Lcom/perfectcorp/perfectlib/MakeupCam$FrameInfo;-><init>()V

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/MakeupCam;->e:Lcom/perfectcorp/perfectlib/makeupcam/camera/MakeupCam;

    iget-object v1, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/MakeupCam;->a:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;

    iget-object v2, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->y1:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget v1, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->D1:I

    iput v1, v0, Lcom/perfectcorp/perfectlib/MakeupCam$FrameInfo;->faceCount:I

    const/4 v1, 0x1

    and-int/2addr p1, v1

    if-ne p1, v1, :cond_4

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/MakeupCam;->e:Lcom/perfectcorp/perfectlib/makeupcam/camera/MakeupCam;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/MakeupCam;->a:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;

    iget p1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->D1:I

    new-array v1, p1, [Landroid/graphics/RectF;

    iput-object v1, v0, Lcom/perfectcorp/perfectlib/MakeupCam$FrameInfo;->faceRect:[Landroid/graphics/RectF;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_4

    iget v3, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->B1:I

    const/16 v4, 0xb4

    rem-int/2addr v3, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v5, v0, Lcom/perfectcorp/perfectlib/MakeupCam$FrameInfo;->faceRect:[Landroid/graphics/RectF;

    if-nez v3, :cond_0

    :try_start_1
    new-instance v3, Landroid/graphics/RectF;

    iget-object v6, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->E1:[Landroid/graphics/Rect;

    aget-object v6, v6, v1

    iget v7, v6, Landroid/graphics/Rect;->left:I

    int-to-float v7, v7

    iget v8, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->z1:I

    int-to-float v8, v8

    div-float/2addr v7, v8

    iget v9, v6, Landroid/graphics/Rect;->top:I

    int-to-float v9, v9

    iget v10, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->A1:I

    int-to-float v10, v10

    div-float/2addr v9, v10

    iget v11, v6, Landroid/graphics/Rect;->right:I

    int-to-float v11, v11

    div-float/2addr v11, v8

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v6

    div-float/2addr v6, v10

    invoke-direct {v3, v7, v9, v11, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    aput-object v3, v5, v1

    goto :goto_1

    :catchall_0
    move-exception p0

    goto/16 :goto_3

    :cond_0
    new-instance v3, Landroid/graphics/RectF;

    iget-object v6, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->E1:[Landroid/graphics/Rect;

    aget-object v6, v6, v1

    iget v7, v6, Landroid/graphics/Rect;->left:I

    int-to-float v7, v7

    iget v8, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->A1:I

    int-to-float v8, v8

    div-float/2addr v7, v8

    iget v9, v6, Landroid/graphics/Rect;->top:I

    int-to-float v9, v9

    iget v10, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->z1:I

    int-to-float v10, v10

    div-float/2addr v9, v10

    iget v11, v6, Landroid/graphics/Rect;->right:I

    int-to-float v11, v11

    div-float/2addr v11, v8

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v6

    div-float/2addr v6, v10

    invoke-direct {v3, v7, v9, v11, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    aput-object v3, v5, v1

    :goto_1
    iget v3, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->B1:I

    iget v5, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->C1:I

    sub-int/2addr v3, v5

    const/16 v5, -0x10e

    const/high16 v6, 0x3f800000    # 1.0f

    if-eq v3, v5, :cond_3

    const/16 v5, -0xb4

    if-eq v3, v5, :cond_2

    const/16 v5, -0x5a

    if-eq v3, v5, :cond_1

    const/16 v5, 0x5a

    if-eq v3, v5, :cond_3

    if-eq v3, v4, :cond_2

    const/16 v4, 0x10e

    if-eq v3, v4, :cond_1

    goto :goto_2

    :cond_1
    iget-object v3, v0, Lcom/perfectcorp/perfectlib/MakeupCam$FrameInfo;->faceRect:[Landroid/graphics/RectF;

    new-instance v4, Landroid/graphics/RectF;

    iget-object v5, v0, Lcom/perfectcorp/perfectlib/MakeupCam$FrameInfo;->faceRect:[Landroid/graphics/RectF;

    aget-object v5, v5, v1

    iget v7, v5, Landroid/graphics/RectF;->bottom:F

    sub-float v7, v6, v7

    iget v8, v5, Landroid/graphics/RectF;->left:F

    iget v9, v5, Landroid/graphics/RectF;->top:F

    sub-float/2addr v6, v9

    iget v5, v5, Landroid/graphics/RectF;->right:F

    invoke-direct {v4, v7, v8, v6, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    aput-object v4, v3, v1

    goto :goto_2

    :cond_2
    iget-object v3, v0, Lcom/perfectcorp/perfectlib/MakeupCam$FrameInfo;->faceRect:[Landroid/graphics/RectF;

    new-instance v4, Landroid/graphics/RectF;

    iget-object v5, v0, Lcom/perfectcorp/perfectlib/MakeupCam$FrameInfo;->faceRect:[Landroid/graphics/RectF;

    aget-object v5, v5, v1

    iget v7, v5, Landroid/graphics/RectF;->right:F

    sub-float v7, v6, v7

    iget v8, v5, Landroid/graphics/RectF;->bottom:F

    sub-float v8, v6, v8

    iget v9, v5, Landroid/graphics/RectF;->left:F

    sub-float v9, v6, v9

    iget v5, v5, Landroid/graphics/RectF;->top:F

    sub-float/2addr v6, v5

    invoke-direct {v4, v7, v8, v9, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    aput-object v4, v3, v1

    goto :goto_2

    :cond_3
    iget-object v3, v0, Lcom/perfectcorp/perfectlib/MakeupCam$FrameInfo;->faceRect:[Landroid/graphics/RectF;

    new-instance v4, Landroid/graphics/RectF;

    iget-object v5, v0, Lcom/perfectcorp/perfectlib/MakeupCam$FrameInfo;->faceRect:[Landroid/graphics/RectF;

    aget-object v5, v5, v1

    iget v7, v5, Landroid/graphics/RectF;->top:F

    iget v8, v5, Landroid/graphics/RectF;->right:F

    sub-float v8, v6, v8

    iget v9, v5, Landroid/graphics/RectF;->bottom:F

    iget v5, v5, Landroid/graphics/RectF;->left:F

    sub-float/2addr v6, v5

    invoke-direct {v4, v7, v8, v9, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    aput-object v4, v3, v1

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_4
    monitor-exit v2

    return-object v0

    :goto_3
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final getVideoCaptureSource()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/MakeupCam;->k:Lcom/perfectcorp/perfectlib/VideoCaptureSourceImpl;

    return-object p0
.end method

.method public final onCameraOpened(ZIII)V
    .locals 3

    invoke-static {}, Lcom/perfectcorp/common/concurrent/Threads;->b()V

    const-string v0, "MakeupCam"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onCameraOpened::isFront="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", cameraOrientation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", previewWidth="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", previewHeight="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v2, v0, v1}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/MakeupCam;->e:Lcom/perfectcorp/perfectlib/makeupcam/camera/MakeupCam;

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/MakeupCam;->a:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;

    invoke-virtual {v0, p3, p4}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->c(II)V

    iget-object p3, p0, Lcom/perfectcorp/perfectlib/MakeupCam;->e:Lcom/perfectcorp/perfectlib/makeupcam/camera/MakeupCam;

    iget-object p3, p3, Lcom/perfectcorp/perfectlib/makeupcam/camera/MakeupCam;->a:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;

    iput-boolean p1, p3, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->q:Z

    const/4 p1, 0x0

    if-eqz p2, :cond_0

    const/16 p4, 0x5a

    if-eq p2, p4, :cond_0

    const/16 p4, 0xb4

    if-eq p2, p4, :cond_0

    const/16 p4, 0x10e

    if-eq p2, p4, :cond_0

    const-string p4, "LiveMakeupCtrl"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid camera orientation="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p4, p2}, Lcom/perfectcorp/common/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move p2, p1

    :cond_0
    iput p2, p3, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->r:I

    iget-object p2, p3, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->x:Ljava/lang/Object;

    monitor-enter p2

    :try_start_0
    sget p4, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$a;->a:I

    iput p4, p3, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->y:I

    sget p4, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter$b;->a:I

    iput p4, p3, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->z:I

    iput p4, p3, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->A:I

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p2, p0, Lcom/perfectcorp/perfectlib/MakeupCam;->e:Lcom/perfectcorp/perfectlib/makeupcam/camera/MakeupCam;

    new-instance p3, Lbc0;

    invoke-direct {p3, p0, p1}, Lbc0;-><init>(Lcom/perfectcorp/perfectlib/MakeupCam;I)V

    invoke-virtual {p2, p3}, Lcom/perfectcorp/perfectlib/makeupcam/camera/MakeupCam;->d(Ljava/lang/Runnable;)V

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/MakeupCam;->k:Lcom/perfectcorp/perfectlib/VideoCaptureSourceImpl;

    if-eqz p0, :cond_1

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/VideoCaptureSourceImpl;->a:Lcom/perfectcorp/videoconsultsdk/streaming/a;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final onCreated()V
    .locals 3

    invoke-static {}, Lcom/perfectcorp/common/concurrent/Threads;->a()V

    const-string v0, "onCreated"

    const/4 v1, 0x3

    const-string v2, "MakeupCam"

    invoke-static {v1, v2, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/MakeupCam;->e:Lcom/perfectcorp/perfectlib/makeupcam/camera/MakeupCam;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/MakeupCam;->a:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->p()V

    return-void
.end method

.method public final onDestroyed()V
    .locals 4

    invoke-static {}, Lcom/perfectcorp/common/concurrent/Threads;->a()V

    const-string v0, "onDestroyed"

    const/4 v1, 0x3

    const-string v2, "MakeupCam"

    invoke-static {v1, v2, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/MakeupCam;->g:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;->dispose()V

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/MakeupCam;->e:Lcom/perfectcorp/perfectlib/makeupcam/camera/MakeupCam;

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/MakeupCam;->a:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/q;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v3}, Lcom/perfectcorp/perfectlib/makeupcam/camera/q;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/MakeupCam;->l:Lcom/perfectcorp/perfectlib/CameraView;

    return-void
.end method

.method public final onPaused()V
    .locals 3

    invoke-static {}, Lcom/perfectcorp/common/concurrent/Threads;->a()V

    const-string v0, "onPaused"

    const/4 v1, 0x3

    const-string v2, "MakeupCam"

    invoke-static {v1, v2, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/MakeupCam;->e:Lcom/perfectcorp/perfectlib/makeupcam/camera/MakeupCam;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/MakeupCam;->a:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->l:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string v0, "LiveMakeupCtrl"

    const-string v1, "onPause"

    invoke-static {v0, v1, p0}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onResumed()V
    .locals 3

    invoke-static {}, Lcom/perfectcorp/common/concurrent/Threads;->a()V

    const-string v0, "onResumed"

    const/4 v1, 0x3

    const-string v2, "MakeupCam"

    invoke-static {v1, v2, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/MakeupCam;->e:Lcom/perfectcorp/perfectlib/makeupcam/camera/MakeupCam;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/MakeupCam;->a:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->l:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->m:Landroid/hardware/Sensor;

    const/4 v2, 0x2

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    return-void
.end method

.method public final onStarted()V
    .locals 2

    invoke-static {}, Lcom/perfectcorp/common/concurrent/Threads;->a()V

    const-string p0, "onStarted"

    const/4 v0, 0x3

    const-string v1, "MakeupCam"

    invoke-static {v0, v1, p0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onStopped()V
    .locals 2

    invoke-static {}, Lcom/perfectcorp/common/concurrent/Threads;->a()V

    const-string p0, "onStopped"

    const/4 v0, 0x3

    const-string v1, "MakeupCam"

    invoke-static {v0, v1, p0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final release(Lcom/perfectcorp/perfectlib/MakeupCam$ReleaseCallback;)V
    .locals 6

    invoke-static {}, Lcom/perfectcorp/common/concurrent/Threads;->a()V

    const-string v0, "releaseCallback can\'t be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x3

    const-string v1, "MakeupCam"

    const-string v2, "release"

    invoke-static {v0, v1, v2}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    const-class v2, Lcom/perfectcorp/perfectlib/MakeupCam$ReleaseCallback;

    invoke-static {v2, p1}, Lcom/perfectcorp/common/reflect/Proxies;->a(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perfectcorp/perfectlib/MakeupCam$ReleaseCallback;

    invoke-static {}, Lcom/perfectcorp/common/concurrent/Threads;->a()V

    iget-object v2, p0, Lcom/perfectcorp/perfectlib/MakeupCam;->j:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string p0, "Listen to existed release task."

    :goto_0
    invoke-static {v0, v1, p0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    new-instance v3, Ln2;

    const/16 v4, 0x9

    invoke-direct {v3, p0, v4}, Ln2;-><init>(Ljava/lang/Object;I)V

    new-instance v4, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/p;

    invoke-direct {v4, v3}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/p;-><init>(Ljava/util/concurrent/Callable;)V

    sget-object v3, Lcom/perfectcorp/thirdparty/io/reactivex/schedulers/Schedulers;->c:Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    invoke-virtual {v4, v3}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->i(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/u;

    move-result-object v3

    new-instance v4, Lfw;

    const/16 v5, 0x14

    invoke-direct {v4, p0, v5}, Lfw;-><init>(Ljava/lang/Object;I)V

    new-instance p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;

    invoke-direct {p0, v3, v4}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    new-instance v3, Lv40;

    const/16 v4, 0x15

    invoke-direct {v3, v4}, Lv40;-><init>(I)V

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

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->i(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/u;

    move-result-object p0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lxw;

    invoke-direct {v1, p1, v0}, Lxw;-><init>(Ljava/lang/Object;I)V

    new-instance p1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/k;

    invoke-direct {p1, p0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/k;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;)V

    new-instance p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;

    new-instance v0, Ld8;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ld8;-><init>(I)V

    new-instance v1, Ld8;

    const/16 v2, 0xb

    invoke-direct {v1, v2}, Ld8;-><init>(I)V

    invoke-direct {p0, v0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)V

    invoke-virtual {p1, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->a(Lcom/perfectcorp/thirdparty/io/reactivex/f;)V

    return-void
.end method

.method public final removeApplier()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/MakeupCam;->a:Ljava/lang/Object;

    return-void
.end method

.method public final sendCameraBuffer(Lcom/perfectcorp/perfectlib/CameraFrame;)V
    .locals 5

    invoke-static {}, Lcom/perfectcorp/common/concurrent/Threads;->b()V

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/MakeupCam;->e()V

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/MakeupCam;->f:Lcom/perfectcorp/perfectlib/makeupcam/video/e;

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/makeupcam/video/e;->a:Lcom/perfectcorp/perfectlib/makeupcam/video/d;

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/makeupcam/video/d;->a:Lcom/perfectcorp/perfectlib/makeupcam/video/a;

    iget-object v1, v0, Lcom/perfectcorp/perfectlib/makeupcam/video/a;->A:Ljava/util/concurrent/atomic/AtomicInteger;

    monitor-enter v1

    :try_start_0
    iget-object v2, v0, Lcom/perfectcorp/perfectlib/makeupcam/video/a;->A:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "LiveRecordingFilter"

    const-string v3, "onPreviewStarted"

    const/4 v4, 0x2

    invoke-static {v4, v2, v3}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/perfectcorp/perfectlib/makeupcam/video/a;->F:Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    new-instance v2, Lcom/perfectcorp/perfectlib/core/FrameProcessingThread$Frame;

    invoke-direct {v2}, Lcom/perfectcorp/perfectlib/core/FrameProcessingThread$Frame;-><init>()V

    iget-object v3, p1, Lcom/perfectcorp/perfectlib/CameraFrame;->a:[B

    iput-object v3, v2, Lcom/perfectcorp/perfectlib/core/FrameProcessingThread$Frame;->d:[B

    iget v3, p1, Lcom/perfectcorp/perfectlib/CameraFrame;->b:I

    iput v3, v2, Lcom/perfectcorp/perfectlib/core/FrameProcessingThread$Frame;->b:I

    iget v3, p1, Lcom/perfectcorp/perfectlib/CameraFrame;->c:I

    iput v3, v2, Lcom/perfectcorp/perfectlib/core/FrameProcessingThread$Frame;->c:I

    iget-object v3, p0, Lcom/perfectcorp/perfectlib/MakeupCam;->i:Lcom/perfectcorp/perfectlib/MakeupCam$OnFrameAvailableListenerWrapper;

    iput-object v3, v2, Lcom/perfectcorp/perfectlib/core/FrameProcessingThread$Frame;->e:Lcom/cyberlink/clgpuimage/GPUImageRenderer$OnFrameAvailableListener;

    iput-wide v0, v2, Lcom/perfectcorp/perfectlib/core/FrameProcessingThread$Frame;->a:J

    iget-boolean v0, p1, Lcom/perfectcorp/perfectlib/CameraFrame;->d:Z

    iput-boolean v0, v2, Lcom/perfectcorp/perfectlib/core/FrameProcessingThread$Frame;->f:Z

    iget-boolean v0, p1, Lcom/perfectcorp/perfectlib/CameraFrame;->e:Z

    if-eqz v0, :cond_2

    iget p1, p1, Lcom/perfectcorp/perfectlib/CameraFrame;->f:I

    if-eqz p1, :cond_1

    const/16 v0, 0x5a

    if-eq p1, v0, :cond_1

    const/16 v0, 0xb4

    if-eq p1, v0, :cond_1

    const/16 v0, 0x10e

    if-eq p1, v0, :cond_1

    const/4 p1, 0x0

    :cond_1
    iput p1, v2, Lcom/perfectcorp/perfectlib/core/FrameProcessingThread$Frame;->g:I

    :cond_2
    iget-object p0, p0, Lcom/perfectcorp/perfectlib/MakeupCam;->e:Lcom/perfectcorp/perfectlib/makeupcam/camera/MakeupCam;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/MakeupCam;->a:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->k:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl$d;

    invoke-virtual {p0, v2}, Lcom/perfectcorp/perfectlib/core/FrameProcessingThread;->sendNewFrame(Lcom/perfectcorp/perfectlib/core/FrameProcessingThread$Frame;)V

    return-void

    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final setApplier(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/MakeupCam;->a:Ljava/lang/Object;

    return-void
.end method

.method public final setComparisonPosition(F)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setComparisonPosition::position="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    const-string v2, "MakeupCam"

    invoke-static {v1, v2, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/MakeupCam;->e()V

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/MakeupCam;->e:Lcom/perfectcorp/perfectlib/makeupcam/camera/MakeupCam;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/MakeupCam;->a:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->c:Lcom/perfectcorp/perfectlib/core/BaseVenus;

    iget-boolean v0, v0, Lcom/perfectcorp/perfectlib/core/BaseVenus;->e:Z

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->g:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->l1:F

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->E0(F)V

    return-void
.end method

.method public final setPlugin(Lcom/perfectcorp/perfectlib/MakeupPlugin;Lcom/perfectcorp/perfectlib/PluginPosition;)V
    .locals 6

    const-string v0, "pluginPosition can\'t be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/MakeupCam;->m:Ljava/util/EnumMap;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/perfectcorp/perfectlib/MakeupCam$4;->a:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v1, v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v2, v4, :cond_1

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/perfectcorp/perfectlib/MakeupCam;->e:Lcom/perfectcorp/perfectlib/makeupcam/camera/MakeupCam;

    iget-object v2, v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/MakeupCam;->a:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;

    iget-object v2, v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->g:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;

    invoke-virtual {v2}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->w0()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    iget-object v2, p0, Lcom/perfectcorp/perfectlib/MakeupCam;->e:Lcom/perfectcorp/perfectlib/makeupcam/camera/MakeupCam;

    iget-object v2, v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/MakeupCam;->a:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;

    iget-object v2, v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->g:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;

    invoke-virtual {v2}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->x0()V

    :goto_0
    iget-object v2, p0, Lcom/perfectcorp/perfectlib/MakeupCam;->e:Lcom/perfectcorp/perfectlib/makeupcam/camera/MakeupCam;

    iget-object v2, v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/MakeupCam;->a:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;

    sget-object v5, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-virtual {v2, v5}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->f(Ljava/util/List;)V

    iget-object v2, p0, Lcom/perfectcorp/perfectlib/MakeupCam;->m:Ljava/util/EnumMap;

    invoke-virtual {v2, p2}, Ljava/util/EnumMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perfectcorp/perfectlib/MakeupCam$MakeupPluginFilter;

    iget-object v5, p0, Lcom/perfectcorp/perfectlib/MakeupCam;->i:Lcom/perfectcorp/perfectlib/MakeupCam$OnFrameAvailableListenerWrapper;

    iget-object v5, v5, Lcom/perfectcorp/perfectlib/MakeupCam$OnFrameAvailableListenerWrapper;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v5, v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    if-eqz p1, :cond_4

    new-instance v2, Lcom/perfectcorp/perfectlib/MakeupCam$MakeupPluginFilter;

    invoke-direct {v2, p1}, Lcom/perfectcorp/perfectlib/MakeupCam$MakeupPluginFilter;-><init>(Lcom/perfectcorp/perfectlib/MakeupPlugin;)V

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    if-eq p1, v4, :cond_3

    if-eq p1, v3, :cond_2

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/perfectcorp/perfectlib/MakeupCam;->e:Lcom/perfectcorp/perfectlib/makeupcam/camera/MakeupCam;

    iget-object p1, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/MakeupCam;->a:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;

    iget-object p1, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->g:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->v0(Ljava/util/List;)V

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/perfectcorp/perfectlib/MakeupCam;->e:Lcom/perfectcorp/perfectlib/makeupcam/camera/MakeupCam;

    iget-object p1, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/MakeupCam;->a:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;

    iget-object p1, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->g:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->F0(Ljava/util/List;)V

    :goto_1
    iget-object p1, p0, Lcom/perfectcorp/perfectlib/MakeupCam;->e:Lcom/perfectcorp/perfectlib/makeupcam/camera/MakeupCam;

    iget-object p1, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/MakeupCam;->a:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->f(Ljava/util/List;)V

    iget-object p1, p0, Lcom/perfectcorp/perfectlib/MakeupCam;->m:Ljava/util/EnumMap;

    invoke-virtual {p1, p2, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/MakeupCam;->i:Lcom/perfectcorp/perfectlib/MakeupCam$OnFrameAvailableListenerWrapper;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/MakeupCam$OnFrameAvailableListenerWrapper;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p0, v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    :cond_4
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final setPupilAnalysisCallback(Lcom/perfectcorp/perfectlib/MakeupCam$PupilAnalysisCallback;)V
    .locals 4

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/MakeupCam;->e:Lcom/perfectcorp/perfectlib/makeupcam/camera/MakeupCam;

    const-string v1, "setPupilAnalysisCallback"

    const/4 v2, 0x3

    const-string v3, "MakeupCam"

    invoke-static {v2, v3, v1}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v2, Lbc0;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3}, Lbc0;-><init>(Lcom/perfectcorp/perfectlib/MakeupCam;I)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    iget-object p0, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/MakeupCam;->a:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;

    new-instance v0, Lfw;

    const/16 v1, 0x12

    invoke-direct {v0, p1, v1}, Lfw;-><init>(Ljava/lang/Object;I)V

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->s1:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl$PupilAnalysisCallback;

    iput-boolean v3, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->u1:Z

    return-void

    :cond_0
    iget-object p1, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/MakeupCam;->a:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;

    const/4 v1, 0x0

    iput-object v1, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->s1:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl$PupilAnalysisCallback;

    const/4 v1, 0x0

    iput-boolean v1, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->u1:Z

    new-instance p1, Lbc0;

    const/4 v1, 0x2

    invoke-direct {p1, p0, v1}, Lbc0;-><init>(Lcom/perfectcorp/perfectlib/MakeupCam;I)V

    invoke-virtual {v0, p1}, Lcom/perfectcorp/perfectlib/makeupcam/camera/MakeupCam;->d(Ljava/lang/Runnable;)V

    return-void
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

    const-string v2, "MakeupCam"

    invoke-static {v1, v2, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ldc0;

    invoke-direct {v0, p0, p1}, Ldc0;-><init>(Lcom/perfectcorp/perfectlib/MakeupCam;F)V

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/MakeupCam;->e:Lcom/perfectcorp/perfectlib/makeupcam/camera/MakeupCam;

    invoke-virtual {p0, v0}, Lcom/perfectcorp/perfectlib/makeupcam/camera/MakeupCam;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final setQualityCheckCallback(Lcom/perfectcorp/perfectlib/MakeupCam$QualityCheckCallback;)V
    .locals 3

    const-string v0, "setQualityCheckCallback"

    const/4 v1, 0x3

    const-string v2, "MakeupCam"

    invoke-static {v1, v2, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/MakeupCam;->e:Lcom/perfectcorp/perfectlib/makeupcam/camera/MakeupCam;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/MakeupCam;->a:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;

    new-instance v0, Lfw;

    const/16 v1, 0x11

    invoke-direct {v0, p1, v1}, Lfw;-><init>(Ljava/lang/Object;I)V

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->t1:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl$QualityCheckCallback;

    const/4 p1, 0x1

    :goto_0
    iput-boolean p1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->v1:Z

    return-void

    :cond_0
    iget-object p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/MakeupCam;->a:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->t1:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl$QualityCheckCallback;

    const/4 p1, 0x0

    goto :goto_0
.end method

.method public final startRecording(Ljava/lang/String;IIIILcom/perfectcorp/perfectlib/MakeupCam$VideoCallback;)V
    .locals 10

    move-object/from16 v0, p6

    invoke-static {}, Lcom/perfectcorp/common/concurrent/Threads;->b()V

    const/4 v1, 0x3

    const-string v2, "MakeupCam"

    const-string v3, "startRecording"

    invoke-static {v1, v2, v3}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/perfectcorp/common/concurrent/Threads;->b()V

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/MakeupCam;->e()V

    const-string v2, "videoCallback can\'t be null."

    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {}, Lcom/perfectcorp/common/PfCommons;->b()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x2

    if-ne v2, v5, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    invoke-static {}, Lcom/perfectcorp/common/PfCommons;->b()Landroid/content/Context;

    move-result-object v6

    const-string v7, "window"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    const-string v7, "Can\'t get WINDOW_SERVICE."

    invoke-static {v6, v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v6, Landroid/view/WindowManager;

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Display;->getRotation()I

    move-result v6

    const/16 v7, 0xb4

    if-eq v6, v4, :cond_3

    if-eq v6, v5, :cond_2

    if-eq v6, v1, :cond_1

    goto :goto_1

    :cond_1
    const/16 v3, 0x10e

    goto :goto_1

    :cond_2
    move v3, v7

    goto :goto_1

    :cond_3
    const/16 v3, 0x5a

    :goto_1
    iget-object v1, p0, Lcom/perfectcorp/perfectlib/MakeupCam;->e:Lcom/perfectcorp/perfectlib/makeupcam/camera/MakeupCam;

    iget-object v1, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/MakeupCam;->a:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;

    iget v1, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->r:I

    add-int/2addr v1, v3

    rem-int/2addr v1, v7

    if-eqz v2, :cond_4

    if-eqz v1, :cond_5

    :cond_4
    if-nez v2, :cond_7

    if-eqz v1, :cond_7

    :cond_5
    iget-object v3, p0, Lcom/perfectcorp/perfectlib/MakeupCam;->f:Lcom/perfectcorp/perfectlib/makeupcam/video/e;

    move-object v4, p1

    if-eqz v2, :cond_6

    move v6, p2

    move v5, p3

    :goto_2
    move v7, p4

    move v8, p5

    invoke-virtual/range {v3 .. v8}, Lcom/perfectcorp/perfectlib/makeupcam/video/e;->f(Ljava/lang/String;IIII)V

    goto :goto_4

    :cond_6
    move v5, p2

    move v6, p3

    goto :goto_2

    :cond_7
    iget-object v4, p0, Lcom/perfectcorp/perfectlib/MakeupCam;->f:Lcom/perfectcorp/perfectlib/makeupcam/video/e;

    move-object v5, p1

    if-nez v2, :cond_8

    move v7, p2

    move v6, p3

    :goto_3
    move v8, p4

    move v9, p5

    invoke-virtual/range {v4 .. v9}, Lcom/perfectcorp/perfectlib/makeupcam/video/e;->f(Ljava/lang/String;IIII)V

    goto :goto_4

    :cond_8
    move v6, p2

    move v7, p3

    goto :goto_3

    :goto_4
    iget-object p0, p0, Lcom/perfectcorp/perfectlib/MakeupCam;->f:Lcom/perfectcorp/perfectlib/makeupcam/video/e;

    new-instance p1, Lcom/perfectcorp/perfectlib/MakeupCam$3;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object v0, p1, Lcom/perfectcorp/perfectlib/MakeupCam$3;->b:Lcom/perfectcorp/perfectlib/MakeupCam$VideoCallback;

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/e;->c:Lcom/perfectcorp/perfectlib/makeupcam/video/e$a;

    iget-object p1, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/e;->a:Lcom/perfectcorp/perfectlib/makeupcam/video/d;

    iget-object p1, p1, Lcom/perfectcorp/perfectlib/makeupcam/video/d;->b:Lcom/perfectcorp/perfectlib/makeupcam/video/d$a;

    sget-object p2, Lcom/perfectcorp/perfectlib/makeupcam/video/d$a;->d:Lcom/perfectcorp/perfectlib/makeupcam/video/d$a;

    if-eq p1, p2, :cond_9

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p2, Lcom/perfectcorp/perfectlib/makeupcam/video/d$a;->e:Lcom/perfectcorp/perfectlib/makeupcam/video/d$a;

    if-ne p1, p2, :cond_a

    :cond_9
    iget-object p1, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/e;->a:Lcom/perfectcorp/perfectlib/makeupcam/video/d;

    invoke-virtual {p1}, Lcom/perfectcorp/perfectlib/makeupcam/video/d;->b()V

    :cond_a
    iget-object p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/e;->a:Lcom/perfectcorp/perfectlib/makeupcam/video/d;

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/makeupcam/video/d;->a()V

    return-void
.end method

.method public final stopRecording()V
    .locals 3

    invoke-static {}, Lcom/perfectcorp/common/concurrent/Threads;->b()V

    const-string v0, "stopRecording"

    const/4 v1, 0x3

    const-string v2, "MakeupCam"

    invoke-static {v1, v2, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/perfectcorp/common/concurrent/Threads;->b()V

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/MakeupCam;->e()V

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/MakeupCam;->f()V

    return-void
.end method

.method public final takePicture(ZZZZLcom/perfectcorp/perfectlib/MakeupCam$PictureCallback;)V
    .locals 10

    invoke-static {}, Lcom/perfectcorp/common/concurrent/Threads;->a()V

    const/4 v0, 0x3

    const-string v1, "MakeupCam"

    const-string v2, "takePicture"

    invoke-static {v0, v1, v2}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    const-class v3, Lcom/perfectcorp/perfectlib/MakeupCam$PictureCallback;

    invoke-static {v3, p5}, Lcom/perfectcorp/common/reflect/Proxies;->a(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/perfectcorp/perfectlib/MakeupCam$PictureCallback;

    invoke-static {}, Lcom/perfectcorp/common/concurrent/Threads;->a()V

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/MakeupCam;->e()V

    const-string v3, "pictureCallback can\'t be null"

    invoke-static {p5, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    new-instance v4, Lcom/perfectcorp/perfectlib/i1;

    move-object v5, p0

    move v6, p1

    move v7, p2

    move v8, p3

    move v9, p4

    invoke-direct/range {v4 .. v9}, Lcom/perfectcorp/perfectlib/i1;-><init>(Lcom/perfectcorp/perfectlib/MakeupCam;ZZZZ)V

    new-instance p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/p;

    invoke-direct {p0, v4}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/p;-><init>(Ljava/util/concurrent/Callable;)V

    sget-object p1, Lcom/perfectcorp/thirdparty/io/reactivex/schedulers/Schedulers;->c:Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->j(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/x;

    move-result-object p0

    invoke-static {}, Lcom/perfectcorp/thirdparty/io/reactivex/android/schedulers/AndroidSchedulers;->a()Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->i(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/u;

    move-result-object p0

    new-instance p1, Lac0;

    invoke-direct {p1, p5, v0}, Lac0;-><init>(Lcom/perfectcorp/perfectlib/MakeupCam$PictureCallback;I)V

    new-instance p2, Lac0;

    const/4 p3, 0x0

    invoke-direct {p2, p5, p3}, Lac0;-><init>(Lcom/perfectcorp/perfectlib/MakeupCam$PictureCallback;I)V

    new-instance p3, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;

    invoke-direct {p3, p1, p2}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)V

    invoke-virtual {p0, p3}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->a(Lcom/perfectcorp/thirdparty/io/reactivex/f;)V

    iget-object p0, v5, Lcom/perfectcorp/perfectlib/MakeupCam;->g:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;

    invoke-virtual {p0, p3}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;->b(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method public final takePictureByBuffer(ZZZZ[BIILcom/perfectcorp/perfectlib/MakeupCam$PictureCallback;)V
    .locals 14

    invoke-static {}, Lcom/perfectcorp/common/concurrent/Threads;->a()V

    const/4 v0, 0x3

    const-string v1, "MakeupCam"

    const-string v2, "takePictureByBuffer"

    invoke-static {v0, v1, v2}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    const-class v3, Lcom/perfectcorp/perfectlib/MakeupCam$PictureCallback;

    move-object/from16 v4, p8

    invoke-static {v3, v4}, Lcom/perfectcorp/common/reflect/Proxies;->a(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/perfectcorp/perfectlib/MakeupCam$PictureCallback;

    invoke-static {}, Lcom/perfectcorp/common/concurrent/Threads;->a()V

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/MakeupCam;->e()V

    const-string v4, "nv21Buffer can\'t be null"

    move-object/from16 v11, p5

    invoke-static {v11, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v4, "pictureCallback can\'t be null"

    invoke-static {v3, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    new-instance v5, Lcom/perfectcorp/perfectlib/h1;

    move-object v6, p0

    move v7, p1

    move/from16 v8, p2

    move/from16 v9, p3

    move/from16 v10, p4

    move/from16 v12, p6

    move/from16 v13, p7

    invoke-direct/range {v5 .. v13}, Lcom/perfectcorp/perfectlib/h1;-><init>(Lcom/perfectcorp/perfectlib/MakeupCam;ZZZZ[BII)V

    new-instance p1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/p;

    invoke-direct {p1, v5}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/p;-><init>(Ljava/util/concurrent/Callable;)V

    sget-object v0, Lcom/perfectcorp/thirdparty/io/reactivex/schedulers/Schedulers;->c:Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    invoke-virtual {p1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->j(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/x;

    move-result-object p1

    invoke-static {}, Lcom/perfectcorp/thirdparty/io/reactivex/android/schedulers/AndroidSchedulers;->a()Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->i(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/u;

    move-result-object p1

    new-instance v0, Lac0;

    const/4 v1, 0x1

    invoke-direct {v0, v3, v1}, Lac0;-><init>(Lcom/perfectcorp/perfectlib/MakeupCam$PictureCallback;I)V

    new-instance v1, Lac0;

    const/4 v2, 0x2

    invoke-direct {v1, v3, v2}, Lac0;-><init>(Lcom/perfectcorp/perfectlib/MakeupCam$PictureCallback;I)V

    new-instance v2, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;

    invoke-direct {v2, v0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)V

    invoke-virtual {p1, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->a(Lcom/perfectcorp/thirdparty/io/reactivex/f;)V

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/MakeupCam;->g:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;

    invoke-virtual {p0, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/CompositeDisposable;->b(Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;)Z

    return-void
.end method
