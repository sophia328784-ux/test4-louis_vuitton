.class public final Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/hardware/SensorEventListener;
.implements Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrlInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl$e;,
        Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl$a;,
        Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl$b;,
        Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl$d;,
        Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl$QualityCheckCallback;,
        Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl$PupilAnalysisCallback;,
        Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl$c;
    }
.end annotation


# instance fields
.field public A:I

.field public A1:I

.field public B:I

.field public B1:I

.field public C:Z

.field public C1:I

.field public final D:I

.field public D1:I

.field public final E:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveParameters$Eyebrow;

.field public final E1:[Landroid/graphics/Rect;

.field public final F:[Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveParameters$Reshape;

.field public final G:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;

.field public final H:[Z

.field public final I:[I

.field public final J:[Z

.field public final K:[Lcom/perfectcorp/perfectlib/makeupcam/camera/n;

.field public final L:[Lcom/perfectcorp/perfectlib/makeupcam/camera/n;

.field public final M:[I

.field public final N:[I

.field public final O:[I

.field public final P:[F

.field public final Q:[[Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringChainSettings;

.field public final R:[[Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringJointSettings;

.field public final S:[F

.field public final T:[F

.field public final V:[[Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringConvexColliders;

.field public final W:[[Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringObjectSettings;

.field public final X:[F

.field public Y:I

.field public Z:Lcom/perfectcorp/perfectlib/makeupcam/camera/q;

.field public final b:Landroid/view/WindowManager;

.field public volatile b1:Z

.field public final c:Lcom/perfectcorp/perfectlib/core/BaseVenus;

.field public final c1:Lcom/perfectcorp/perfectlib/makeupcam/camera/i;

.field public final d:Z

.field public final d1:Lcom/perfectcorp/perfectlib/makeupcam/camera/c;

.field public final e:Lcom/cyberlink/clgpuimage/GPUImageRenderer;

.field public final e1:Z

.field public final f:Ljava/lang/Object;

.field public final f1:Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;

.field public final g:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;

.field public final g1:Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;

.field public final h:Lcom/perfectcorp/perfectlib/makeupcam/camera/l;

.field public final h0:[Lcom/perfectcorp/perfectlib/makeupcam/camera/LipShapeParameters;

.field public final h1:Lcom/perfectcorp/perfectlib/internal/NecklaceFilter;

.field public volatile i:Z

.field public final i1:Z

.field public final j:[Landroid/graphics/Rect;

.field public final j1:Lcom/perfectcorp/perfectlib/AccessoryCamWrapper;

.field public volatile k:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl$d;

.field public k1:[Lcom/cyberlink/clgpuimage/CLNecklaceFilter$LiveNecklaceMetadata;

.field public l:Landroid/hardware/SensorManager;

.field public volatile l1:Z

.field public m:Landroid/hardware/Sensor;

.field public volatile m1:Z

.field public final n:[F

.field public n1:Lcom/perfectcorp/perfectlib/makeupcam/camera/g;

.field public final o:Ljava/lang/Object;

.field public final o1:Lcom/perfectcorp/common/debug/PerformanceCounter;

.field public volatile p:I

.field public volatile p1:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl$c;

.field public volatile q:Z

.field public final q1:[Z

.field public volatile r:I

.field public r1:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl$PupilAnalysisCallback;

.field public volatile s:I

.field public volatile s1:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl$PupilAnalysisCallback;

.field public volatile t:I

.field public volatile t0:I

.field public volatile t1:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl$QualityCheckCallback;

.field public final u:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public volatile u1:Z

.field public final v:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;

.field public volatile v1:Z

.field public final w:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;

.field public w1:Z

.field public final x:Ljava/lang/Object;

.field public final x1:Ljava/util/ArrayList;

.field public y:I

.field public final y1:Ljava/lang/Object;

.field public z:I

.field public z1:I


# direct methods
.method public constructor <init>(Lcom/perfectcorp/perfectlib/makeupcam/camera/k;Lcom/perfectcorp/perfectlib/core/BaseVenus;Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;ZLcom/perfectcorp/perfectlib/AccessoryCamWrapper;)V
    .locals 13

    move-object/from16 v1, p3

    move-object/from16 v8, p4

    move/from16 v2, p5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->i:Z

    const/4 v10, 0x3

    new-array v4, v10, [F

    fill-array-data v4, :array_0

    iput-object v4, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->n:[F

    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v4, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->o:Ljava/lang/Object;

    new-instance v4, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v4, v9}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v4, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->u:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v4, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;

    invoke-direct {v4}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;-><init>()V

    iput-object v4, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->v:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;

    new-instance v5, Ljava/lang/Object;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    iput-object v5, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->x:Ljava/lang/Object;

    sget v5, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$a;->a:I

    iput v5, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->y:I

    sget v5, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter$b;->a:I

    iput v5, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->z:I

    iput v5, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->A:I

    const/4 v5, 0x1

    iput v5, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->B:I

    new-instance v6, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveParameters$Eyebrow;

    invoke-direct {v6, v4}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveParameters$Eyebrow;-><init>(Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;)V

    iput-object v6, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->E:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveParameters$Eyebrow;

    const/16 v4, 0x14

    new-array v6, v4, [Lcom/perfectcorp/perfectlib/makeupcam/camera/n;

    iput-object v6, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->K:[Lcom/perfectcorp/perfectlib/makeupcam/camera/n;

    new-array v6, v4, [Lcom/perfectcorp/perfectlib/makeupcam/camera/n;

    iput-object v6, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->L:[Lcom/perfectcorp/perfectlib/makeupcam/camera/n;

    new-array v6, v4, [I

    iput-object v6, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->M:[I

    new-array v6, v4, [I

    iput-object v6, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->N:[I

    new-array v6, v4, [I

    iput-object v6, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->O:[I

    new-array v6, v4, [F

    iput-object v6, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->P:[F

    const/4 v6, 0x2

    new-array v7, v6, [I

    const/16 v11, 0x32

    aput v11, v7, v5

    aput v4, v7, v9

    const-class v12, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringChainSettings;

    invoke-static {v12, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [[Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringChainSettings;

    iput-object v7, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->Q:[[Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringChainSettings;

    new-array v7, v6, [I

    aput v11, v7, v5

    aput v4, v7, v9

    const-class v12, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringJointSettings;

    invoke-static {v12, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [[Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringJointSettings;

    iput-object v7, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->R:[[Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringJointSettings;

    new-array v7, v4, [F

    iput-object v7, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->S:[F

    new-array v7, v4, [F

    iput-object v7, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->T:[F

    new-array v7, v6, [I

    aput v11, v7, v5

    aput v4, v7, v9

    const-class v12, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringConvexColliders;

    invoke-static {v12, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [[Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringConvexColliders;

    iput-object v7, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->V:[[Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringConvexColliders;

    new-array v6, v6, [I

    aput v11, v6, v5

    aput v4, v6, v9

    const-class v4, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringObjectSettings;

    invoke-static {v4, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringObjectSettings;

    iput-object v4, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->W:[[Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringObjectSettings;

    const/16 v4, 0x140

    new-array v4, v4, [F

    iput-object v4, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->X:[F

    const/16 v4, 0x46

    iput v4, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->t0:I

    iput-boolean v9, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->l1:Z

    iput-boolean v9, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->m1:Z

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->n1:Lcom/perfectcorp/perfectlib/makeupcam/camera/g;

    sget-object v4, Lcom/perfectcorp/common/debug/PerformanceCounter;->b:Lcom/perfectcorp/common/debug/PerformanceCounter;

    iput-object v4, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->o1:Lcom/perfectcorp/common/debug/PerformanceCounter;

    new-array v4, v10, [Z

    iput-object v4, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->q1:[Z

    iput-boolean v9, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->u1:Z

    iput-boolean v9, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->v1:Z

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->x1:Ljava/util/ArrayList;

    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v4, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->y1:Ljava/lang/Object;

    invoke-static {}, Lcom/perfectcorp/common/PfCommons;->b()Landroid/content/Context;

    move-result-object v4

    const-string v6, "window"

    invoke-virtual {v4, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    const-string v6, "Can\'t get WINDOW_SERVICE."

    invoke-static {v4, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v4, Landroid/view/WindowManager;

    iput-object v4, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->b:Landroid/view/WindowManager;

    iput-object p2, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->c:Lcom/perfectcorp/perfectlib/core/BaseVenus;

    iput-object v1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->g:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;

    invoke-interface {p1}, Lcom/perfectcorp/perfectlib/makeupcam/camera/k;->a()Lcom/cyberlink/clgpuimage/GPUImageRenderer;

    move-result-object v4

    iput-object v4, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->e:Lcom/cyberlink/clgpuimage/GPUImageRenderer;

    iput-boolean v5, v4, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->l:Z

    iget-object v7, v4, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->k:Ljava/lang/Object;

    iput-object v7, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->f:Ljava/lang/Object;

    iput-boolean v5, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->G6:Z

    iput-boolean v2, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->d:Z

    iget-wide v11, p2, Lcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;->a:J

    invoke-static {v11, v12, p2, v2}, Lcom/perfectcorp/perfectlib/jniproxy/UIMakeupJNI;->CUIMakeupLive_SetTrackingMode(JLcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;Z)Z

    iget-boolean v1, v8, Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;->q:Z

    iput-boolean v1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->e1:Z

    if-eqz v1, :cond_0

    new-instance v4, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;

    invoke-direct {v4, v5, v9}, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;-><init>(ZZ)V

    iput-object v4, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->f1:Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;

    new-instance v5, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;

    invoke-direct {v5, v9, v9}, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;-><init>(ZZ)V

    iput-object v5, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->g1:Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;

    invoke-static {}, Lcom/perfectcorp/common/PfCommons;->b()Landroid/content/Context;

    move-result-object v2

    new-instance v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/c;

    const/4 v6, 0x0

    move-object v3, p2

    invoke-direct/range {v1 .. v7}, Lcom/perfectcorp/perfectlib/makeupcam/camera/c;-><init>(Landroid/content/Context;Lcom/perfectcorp/perfectlib/core/BaseVenus;Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;ZLjava/lang/Object;)V

    iput-object v1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->d1:Lcom/perfectcorp/perfectlib/makeupcam/camera/c;

    :cond_0
    iget-boolean v1, v8, Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;->s:Z

    iput-boolean v1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->i1:Z

    move-object/from16 v1, p6

    iput-object v1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->j1:Lcom/perfectcorp/perfectlib/AccessoryCamWrapper;

    new-array v1, v10, [Lcom/cyberlink/clgpuimage/CLNecklaceFilter$LiveNecklaceMetadata;

    iput-object v1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->k1:[Lcom/cyberlink/clgpuimage/CLNecklaceFilter$LiveNecklaceMetadata;

    move v1, v9

    :goto_0
    if-ge v1, v10, :cond_1

    iget-object v2, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->k1:[Lcom/cyberlink/clgpuimage/CLNecklaceFilter$LiveNecklaceMetadata;

    new-instance v3, Lcom/cyberlink/clgpuimage/CLNecklaceFilter$LiveNecklaceMetadata;

    invoke-direct {v3}, Lcom/cyberlink/clgpuimage/CLNecklaceFilter$LiveNecklaceMetadata;-><init>()V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-boolean v1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->i1:Z

    if-eqz v1, :cond_2

    new-instance v1, Lcom/perfectcorp/perfectlib/internal/NecklaceFilter;

    invoke-direct {v1, v9}, Lcom/perfectcorp/perfectlib/internal/NecklaceFilter;-><init>(I)V

    iput-object v1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->h1:Lcom/perfectcorp/perfectlib/internal/NecklaceFilter;

    :cond_2
    invoke-static {}, Lcom/perfectcorp/perfectlib/jniproxy/UIMakeupJNI;->CUIMakeupLive_GetMaxDetectedFaceCount()I

    move-result v1

    iput v1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->D:I

    new-instance v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;

    sget-object v3, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->H:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;

    invoke-direct {v2, p0, v1, v3, v8}, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;-><init>(Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrlInterface;ILjava/util/Set;Lcom/perfectcorp/perfectlib/core/ApplyEffectParams;)V

    iput-object v2, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->w:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;

    new-instance v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/l;

    iget-object v3, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->c:Lcom/perfectcorp/perfectlib/core/BaseVenus;

    iget-object v4, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->g:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;

    iget-object v5, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->f1:Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;

    invoke-direct {v2, v3, v4, v5}, Lcom/perfectcorp/perfectlib/makeupcam/camera/l;-><init>(Lcom/perfectcorp/perfectlib/core/BaseVenus;Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;)V

    iput-object v2, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->h:Lcom/perfectcorp/perfectlib/makeupcam/camera/l;

    new-array v1, v1, [Landroid/graphics/Rect;

    iput-object v1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->j:[Landroid/graphics/Rect;

    move v1, v9

    :goto_1
    iget v2, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->D:I

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->j:[Landroid/graphics/Rect;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    new-array v1, v2, [Landroid/graphics/Rect;

    iput-object v1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->E1:[Landroid/graphics/Rect;

    move v1, v9

    :goto_2
    iget v2, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->D:I

    if-ge v1, v2, :cond_4

    iget-object v2, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->E1:[Landroid/graphics/Rect;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    new-instance v1, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet$Builder;

    invoke-direct {v1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet$Builder;-><init>()V

    iget-object v2, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->E:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveParameters$Eyebrow;

    invoke-virtual {v1, v2}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet$Builder;->h(Ljava/lang/Object;)V

    iget v2, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->D:I

    new-array v2, v2, [Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveParameters$Reshape;

    iput-object v2, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->F:[Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveParameters$Reshape;

    move v2, v9

    :goto_3
    iget v3, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->D:I

    if-ge v2, v3, :cond_5

    iget-object v3, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->F:[Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveParameters$Reshape;

    new-instance v4, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveParameters$Reshape;

    iget-object v5, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->v:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;

    invoke-direct {v4, v5}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveParameters$Reshape;-><init>(Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;)V

    aput-object v4, v3, v2

    iget-object v3, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->F:[Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveParameters$Reshape;

    aget-object v3, v3, v2

    invoke-virtual {v1, v3}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet$Builder;->h(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_5
    invoke-virtual {v1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet$Builder;->j()Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;

    move-result-object v2

    iput-object v2, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->G:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;

    iget v2, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->D:I

    new-array v3, v2, [Z

    iput-object v3, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->H:[Z

    new-array v3, v2, [I

    iput-object v3, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->I:[I

    new-array v3, v2, [Z

    iput-object v3, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->J:[Z

    new-array v2, v2, [Lcom/perfectcorp/perfectlib/makeupcam/camera/LipShapeParameters;

    iput-object v2, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->h0:[Lcom/perfectcorp/perfectlib/makeupcam/camera/LipShapeParameters;

    :goto_4
    iget v2, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->D:I

    if-ge v9, v2, :cond_6

    iget-object v2, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->h0:[Lcom/perfectcorp/perfectlib/makeupcam/camera/LipShapeParameters;

    new-instance v3, Lcom/perfectcorp/perfectlib/makeupcam/camera/LipShapeParameters;

    invoke-direct {v3}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LipShapeParameters;-><init>()V

    aput-object v3, v2, v9

    iget-object v2, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->F:[Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveParameters$Reshape;

    aget-object v2, v2, v9

    invoke-virtual {v1, v2}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet$Builder;->h(Ljava/lang/Object;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_6
    invoke-static {}, Lcom/perfectcorp/common/PfCommons;->b()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->c:Lcom/perfectcorp/perfectlib/core/BaseVenus;

    iget-object v3, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->g:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;

    iget-object v4, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->f:Ljava/lang/Object;

    new-instance v5, Lcom/perfectcorp/perfectlib/makeupcam/camera/i;

    invoke-direct {v5, v1, v2, v3, v4}, Lcom/perfectcorp/perfectlib/makeupcam/camera/i;-><init>(Landroid/content/Context;Lcom/perfectcorp/perfectlib/core/BaseVenus;Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;Ljava/lang/Object;)V

    iput-object v5, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->c1:Lcom/perfectcorp/perfectlib/makeupcam/camera/i;

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->c:Lcom/perfectcorp/perfectlib/core/BaseVenus;

    iget-boolean v2, v1, Lcom/perfectcorp/perfectlib/core/BaseVenus;->g:Z

    iget-wide v3, v1, Lcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;->a:J

    invoke-static {v3, v4, v1, v2}, Lcom/perfectcorp/perfectlib/jniproxy/UIMakeupJNI;->CUIMakeupLive_EnableCheckForMakeup(JLcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;Z)Z

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->c:Lcom/perfectcorp/perfectlib/core/BaseVenus;

    iget v1, v0, Lcom/perfectcorp/perfectlib/core/BaseVenus;->h:I

    iget-wide v2, v0, Lcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;->a:J

    invoke-static {v2, v3, v0, v1}, Lcom/perfectcorp/perfectlib/jniproxy/UIMakeupJNI;->CUIMakeupLive_SetStricknessForMakeupCheckResult(JLcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;I)Z

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public static e(Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;Lcom/perfectcorp/perfectlib/core/FrameProcessingThread$Frame;)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-boolean v9, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->q:Z

    iget v2, v1, Lcom/perfectcorp/perfectlib/core/FrameProcessingThread$Frame;->g:I

    const/4 v13, 0x0

    const/4 v14, 0x1

    if-gez v2, :cond_6

    iget-object v3, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->o:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v2, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->n:[F

    iget-object v4, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->m:Landroid/hardware/Sensor;

    const/16 v5, 0x5a

    if-nez v4, :cond_0

    :goto_0
    move v2, v5

    goto/16 :goto_2

    :cond_0
    aget v4, v2, v13

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-double v6, v4

    const-wide v10, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v4, v6, v10

    const/4 v6, 0x2

    if-gez v4, :cond_1

    aget v4, v2, v14

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-double v7, v4

    cmpg-double v4, v7, v10

    if-gez v4, :cond_1

    aget v4, v2, v6

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-double v7, v4

    cmpg-double v4, v7, v10

    if-gez v4, :cond_1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_1
    aget v4, v2, v6

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const v6, 0x41133333    # 9.2f

    cmpl-float v4, v4, v6

    if-lez v4, :cond_2

    goto :goto_0

    :cond_2
    aget v4, v2, v13

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    aget v6, v2, v14

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    const/high16 v7, 0x40400000    # 3.0f

    add-float/2addr v6, v7

    cmpl-float v4, v4, v6

    const/4 v6, 0x0

    if-lez v4, :cond_4

    aget v2, v2, v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmpl-float v2, v2, v6

    iget v4, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->p:I

    if-lez v2, :cond_3

    add-int/lit16 v4, v4, 0x10e

    :try_start_1
    rem-int/lit16 v4, v4, 0x168

    :goto_1
    move v2, v4

    goto :goto_2

    :cond_3
    add-int/2addr v4, v5

    rem-int/lit16 v4, v4, 0x168

    goto :goto_1

    :cond_4
    aget v2, v2, v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    cmpl-float v2, v2, v6

    iget v4, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->p:I

    if-lez v2, :cond_5

    goto :goto_1

    :cond_5
    add-int/lit16 v4, v4, 0xb4

    :try_start_2
    rem-int/lit16 v4, v4, 0x168

    goto :goto_1

    :goto_2
    monitor-exit v3

    :cond_6
    move v8, v2

    goto :goto_4

    :goto_3
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :goto_4
    iget-object v2, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->c:Lcom/perfectcorp/perfectlib/core/BaseVenus;

    iget-boolean v3, v2, Lcom/perfectcorp/perfectlib/core/BaseVenus;->e:Z

    if-eqz v3, :cond_9

    iget-boolean v2, v2, Lcom/perfectcorp/perfectlib/core/BaseVenus;->f:Z

    iget-boolean v3, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->l1:Z

    if-eq v2, v3, :cond_9

    iget-object v2, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->c:Lcom/perfectcorp/perfectlib/core/BaseVenus;

    iget-boolean v3, v2, Lcom/perfectcorp/perfectlib/core/BaseVenus;->f:Z

    if-eqz v3, :cond_7

    move v3, v14

    goto :goto_5

    :cond_7
    iget v3, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->D:I

    :goto_5
    if-ltz v3, :cond_8

    const/4 v4, 0x4

    if-ge v3, v4, :cond_8

    goto :goto_6

    :cond_8
    move v3, v14

    :goto_6
    iget-wide v4, v2, Lcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;->a:J

    invoke-static {v4, v5, v2, v3}, Lcom/perfectcorp/perfectlib/jniproxy/UIMakeupJNI;->CUIMakeupLive_SetMaxDetectedFaceNumber(JLcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;I)Z

    iget-object v2, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->c:Lcom/perfectcorp/perfectlib/core/BaseVenus;

    iget-boolean v2, v2, Lcom/perfectcorp/perfectlib/core/BaseVenus;->f:Z

    iput-boolean v2, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->l1:Z

    :cond_9
    iget-object v11, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->x:Ljava/lang/Object;

    monitor-enter v11

    :try_start_3
    iget v15, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->y:I

    iget v10, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->z:I

    iget v12, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->A:I

    iget v2, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->B:I

    sget v3, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$a;->a:I

    if-eq v15, v3, :cond_c

    if-nez v2, :cond_b

    iget-boolean v2, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->C:Z

    if-eqz v2, :cond_a

    iget-object v2, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->c:Lcom/perfectcorp/perfectlib/core/BaseVenus;

    iget-object v3, v1, Lcom/perfectcorp/perfectlib/core/FrameProcessingThread$Frame;->d:[B

    iget v4, v1, Lcom/perfectcorp/perfectlib/core/FrameProcessingThread$Frame;->b:I

    iget v5, v1, Lcom/perfectcorp/perfectlib/core/FrameProcessingThread$Frame;->c:I

    move v6, v8

    iget-boolean v8, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->d:Z

    move v7, v9

    iget-boolean v9, v1, Lcom/perfectcorp/perfectlib/core/FrameProcessingThread$Frame;->f:Z

    iget-boolean v10, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->l1:Z

    iget-wide v0, v2, Lcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;->a:J

    invoke-static/range {v0 .. v10}, Lcom/perfectcorp/perfectlib/jniproxy/UIMakeupJNI;->CUIMakeupLive_TrackYUV420Biplanar(JLcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;[BIIIZZZZ)Z

    goto :goto_7

    :catchall_1
    move-exception v0

    goto/16 :goto_19

    :cond_a
    :goto_7
    monitor-exit v11

    return-void

    :cond_b
    move v6, v8

    move v7, v9

    add-int/lit8 v3, v2, -0x1

    iput v3, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->B:I

    goto :goto_8

    :cond_c
    move v6, v8

    move v7, v9

    :goto_8
    monitor-exit v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    iget-object v3, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->o1:Lcom/perfectcorp/common/debug/PerformanceCounter;

    invoke-virtual {v3}, Lcom/perfectcorp/common/debug/PerformanceCounter;->a()Lcom/perfectcorp/common/debug/PerformanceCounter$Tracer;

    move-result-object v16

    iget-boolean v3, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->d:Z

    if-eqz v3, :cond_e

    iget-boolean v3, v1, Lcom/perfectcorp/perfectlib/core/FrameProcessingThread$Frame;->f:Z

    if-eqz v3, :cond_d

    iget-object v4, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->c:Lcom/perfectcorp/perfectlib/core/BaseVenus;

    iget-object v5, v1, Lcom/perfectcorp/perfectlib/core/FrameProcessingThread$Frame;->d:[B

    move v8, v6

    iget v6, v1, Lcom/perfectcorp/perfectlib/core/FrameProcessingThread$Frame;->b:I

    move v9, v7

    iget v7, v1, Lcom/perfectcorp/perfectlib/core/FrameProcessingThread$Frame;->c:I

    move v11, v2

    iget-wide v2, v4, Lcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;->a:J

    invoke-static/range {v2 .. v9}, Lcom/perfectcorp/perfectlib/jniproxy/UIMakeupJNI;->CUIMakeupLive_AnalyzeFrameYUV420Biplanar(JLcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;[BIIIZ)Z

    move v6, v8

    move v7, v9

    goto :goto_9

    :cond_d
    move v11, v2

    :goto_9
    invoke-virtual {v0}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->q()V

    iget-object v4, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->c:Lcom/perfectcorp/perfectlib/core/BaseVenus;

    iget-object v5, v1, Lcom/perfectcorp/perfectlib/core/FrameProcessingThread$Frame;->d:[B

    move v8, v6

    iget v6, v1, Lcom/perfectcorp/perfectlib/core/FrameProcessingThread$Frame;->b:I

    move v9, v7

    iget v7, v1, Lcom/perfectcorp/perfectlib/core/FrameProcessingThread$Frame;->c:I

    move v2, v12

    const/4 v12, 0x0

    move/from16 v17, v2

    iget-wide v2, v4, Lcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;->a:J

    move/from16 v18, v10

    const/4 v10, 0x1

    move/from16 v19, v11

    const/4 v11, 0x0

    move/from16 v21, v17

    move/from16 v20, v18

    move/from16 v22, v19

    invoke-static/range {v2 .. v12}, Lcom/perfectcorp/perfectlib/jniproxy/UIMakeupJNI;->CUIMakeupLive_TrackYUV420Biplanar(JLcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;[BIIIZZZZ)Z

    :goto_a
    move v6, v8

    move v7, v9

    goto :goto_b

    :cond_e
    move/from16 v22, v2

    move/from16 v20, v10

    move/from16 v21, v12

    invoke-virtual {v0}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->q()V

    iget-object v4, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->c:Lcom/perfectcorp/perfectlib/core/BaseVenus;

    iget-object v5, v1, Lcom/perfectcorp/perfectlib/core/FrameProcessingThread$Frame;->d:[B

    move v8, v6

    iget v6, v1, Lcom/perfectcorp/perfectlib/core/FrameProcessingThread$Frame;->b:I

    move v9, v7

    iget v7, v1, Lcom/perfectcorp/perfectlib/core/FrameProcessingThread$Frame;->c:I

    iget-boolean v11, v1, Lcom/perfectcorp/perfectlib/core/FrameProcessingThread$Frame;->f:Z

    iget-boolean v12, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->l1:Z

    iget-wide v2, v4, Lcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;->a:J

    const/4 v10, 0x0

    invoke-static/range {v2 .. v12}, Lcom/perfectcorp/perfectlib/jniproxy/UIMakeupJNI;->CUIMakeupLive_TrackYUV420Biplanar(JLcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;[BIIIZZZZ)Z

    goto :goto_a

    :goto_b
    iget-object v2, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->c:Lcom/perfectcorp/perfectlib/core/BaseVenus;

    iget-object v3, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->j:[Landroid/graphics/Rect;

    iget-object v4, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->q1:[Z

    iget-wide v8, v2, Lcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;->a:J

    invoke-static {v8, v9, v2, v3, v4}, Lcom/perfectcorp/perfectlib/jniproxy/UIMakeupJNI;->CUIMakeupLive_GetFaceRectangle(JLcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;[Ljava/lang/Object;[Z)Z

    move-result v10

    iget-object v2, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->h:Lcom/perfectcorp/perfectlib/makeupcam/camera/l;

    iget v3, v1, Lcom/perfectcorp/perfectlib/core/FrameProcessingThread$Frame;->b:I

    iget v4, v1, Lcom/perfectcorp/perfectlib/core/FrameProcessingThread$Frame;->c:I

    invoke-virtual {v2, v3, v4}, Lcom/perfectcorp/perfectlib/makeupcam/camera/l;->b(II)Z

    move-result v11

    iget-boolean v2, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->i1:Z

    if-eqz v2, :cond_f

    iget-object v2, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->j1:Lcom/perfectcorp/perfectlib/AccessoryCamWrapper;

    if-eqz v2, :cond_f

    iget-object v3, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->h:Lcom/perfectcorp/perfectlib/makeupcam/camera/l;

    iget-object v4, v3, Lcom/perfectcorp/perfectlib/makeupcam/camera/l;->I:[Ljava/util/List;

    aget-object v8, v4, v13

    iget-object v3, v3, Lcom/perfectcorp/perfectlib/makeupcam/camera/l;->d:[Z

    aget-boolean v9, v3, v13

    iget-object v3, v1, Lcom/perfectcorp/perfectlib/core/FrameProcessingThread$Frame;->d:[B

    iget v4, v1, Lcom/perfectcorp/perfectlib/core/FrameProcessingThread$Frame;->b:I

    iget v5, v1, Lcom/perfectcorp/perfectlib/core/FrameProcessingThread$Frame;->c:I

    invoke-interface/range {v2 .. v9}, Lcom/perfectcorp/perfectlib/AccessoryCamWrapper;->sendCameraFrame([BIIIZLjava/lang/Object;Z)Z

    iget-object v2, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->j1:Lcom/perfectcorp/perfectlib/AccessoryCamWrapper;

    invoke-interface {v2}, Lcom/perfectcorp/perfectlib/AccessoryCamWrapper;->getMetadata()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/cyberlink/clgpuimage/CLNecklaceFilter$LiveNecklaceMetadata;

    iput-object v2, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->k1:[Lcom/cyberlink/clgpuimage/CLNecklaceFilter$LiveNecklaceMetadata;

    :cond_f
    invoke-interface/range {v16 .. v16}, Lcom/perfectcorp/common/debug/PerformanceCounter$Tracer;->J0()J

    if-eqz v10, :cond_10

    if-nez v11, :cond_11

    :cond_10
    move v2, v13

    :goto_c
    iget v3, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->D:I

    if-ge v2, v3, :cond_11

    iget-object v3, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->j:[Landroid/graphics/Rect;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Landroid/graphics/Rect;->setEmpty()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_11
    iget-object v2, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->y1:Ljava/lang/Object;

    monitor-enter v2

    :try_start_4
    iget v3, v1, Lcom/perfectcorp/perfectlib/core/FrameProcessingThread$Frame;->b:I

    iput v3, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->z1:I

    iget v3, v1, Lcom/perfectcorp/perfectlib/core/FrameProcessingThread$Frame;->c:I

    iput v3, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->A1:I

    iput v6, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->B1:I

    iget v3, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->p:I

    iput v3, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->C1:I

    iget-object v3, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->h:Lcom/perfectcorp/perfectlib/makeupcam/camera/l;

    iget-object v3, v3, Lcom/perfectcorp/perfectlib/makeupcam/camera/l;->d:[Z

    move v4, v13

    move v5, v4

    :goto_d
    iget v6, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->D:I

    if-ge v4, v6, :cond_13

    aget-boolean v6, v3, v4

    if-eqz v6, :cond_12

    iget-object v6, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->E1:[Landroid/graphics/Rect;

    aget-object v6, v6, v5

    iget-object v7, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->j:[Landroid/graphics/Rect;

    aget-object v7, v7, v4

    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_e

    :catchall_2
    move-exception v0

    goto/16 :goto_18

    :cond_12
    :goto_e
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    :cond_13
    iput v5, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->D1:I

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    iget-object v2, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->s1:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl$PupilAnalysisCallback;

    iget-boolean v3, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->u1:Z

    iget-object v4, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->r1:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl$PupilAnalysisCallback;

    if-eq v2, v4, :cond_14

    move v4, v14

    goto :goto_f

    :cond_14
    move v4, v13

    :goto_f
    iput-object v2, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->r1:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl$PupilAnalysisCallback;

    iget-object v5, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->c:Lcom/perfectcorp/perfectlib/core/BaseVenus;

    iget-wide v6, v5, Lcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;->a:J

    invoke-static {v6, v7, v5, v3}, Lcom/perfectcorp/perfectlib/jniproxy/UIMakeupJNI;->CUIMakeupLive_EnableTrafficLightForEstimatingPD(JLcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;Z)Z

    move-result v5

    if-nez v5, :cond_15

    const-string v5, "LiveMakeupCtrl"

    const-string v6, "[callbackEstimatedPupilDistance] EnableTrafficLightForEstimatingPD failed"

    invoke-static {v5, v6}, Lcom/perfectcorp/common/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_15
    if-eqz v4, :cond_16

    if-eqz v3, :cond_16

    iget-object v4, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->c:Lcom/perfectcorp/perfectlib/core/BaseVenus;

    iget-wide v5, v4, Lcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;->a:J

    invoke-static {v5, v6, v4, v13}, Lcom/perfectcorp/perfectlib/jniproxy/UIMakeupJNI;->CUIMakeupLive_RestartEstimatingPupilDistance(JLcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;I)Z

    move-result v4

    if-nez v4, :cond_16

    const-string v4, "LiveMakeupCtrl"

    const-string v5, "[callbackEstimatedPupilDistance] RestartEstimatingPupilDistance failed"

    invoke-static {v4, v5}, Lcom/perfectcorp/common/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_16
    if-eqz v2, :cond_1b

    new-instance v4, Lcom/perfectcorp/perfectlib/makeupcam/camera/TrafficLightCheckResult;

    invoke-direct {v4}, Lcom/perfectcorp/perfectlib/makeupcam/camera/TrafficLightCheckResult;-><init>()V

    iget-object v5, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->c:Lcom/perfectcorp/perfectlib/core/BaseVenus;

    iget-wide v6, v5, Lcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;->a:J

    invoke-static {v6, v7, v5, v4}, Lcom/perfectcorp/perfectlib/jniproxy/UIMakeupJNI;->CUIMakeupLive_GetTrafficLightCheckResult(JLcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_17

    const-string v5, "LiveMakeupCtrl"

    const-string v6, "[callbackEstimatedPupilDistance] GetTrafficLightCheckResult failed"

    invoke-static {v5, v6}, Lcom/perfectcorp/common/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_17
    new-instance v5, Lcom/perfectcorp/perfectlib/makeupcam/camera/EstimatedPDInfo;

    invoke-direct {v5}, Lcom/perfectcorp/perfectlib/makeupcam/camera/EstimatedPDInfo;-><init>()V

    if-eqz v3, :cond_18

    iget-boolean v6, v4, Lcom/perfectcorp/perfectlib/makeupcam/camera/TrafficLightCheckResult;->m_is_check_result_valid:Z

    if-eqz v6, :cond_18

    iget-object v6, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->c:Lcom/perfectcorp/perfectlib/core/BaseVenus;

    iget-wide v7, v6, Lcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;->a:J

    invoke-static {v7, v8, v6, v13, v5}, Lcom/perfectcorp/perfectlib/jniproxy/UIMakeupJNI;->CUIMakeupLive_GetEstimatedPupilDistance(JLcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;ILjava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_18

    const-string v6, "LiveMakeupCtrl"

    const-string v7, "[callbackEstimatedPupilDistance] GetEstimatedPupilDistance failed"

    invoke-static {v6, v7}, Lcom/perfectcorp/common/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_18
    new-instance v6, Lcom/perfectcorp/perfectlib/makeupcam/camera/MakeupCheckResult;

    invoke-direct {v6}, Lcom/perfectcorp/perfectlib/makeupcam/camera/MakeupCheckResult;-><init>()V

    iget-object v7, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->c:Lcom/perfectcorp/perfectlib/core/BaseVenus;

    iget-wide v8, v7, Lcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;->a:J

    invoke-static {v8, v9, v7, v6}, Lcom/perfectcorp/perfectlib/jniproxy/UIMakeupJNI;->CUIMakeupLive_GetMakeupCheckResult(JLcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;Ljava/lang/Object;)Z

    iget v7, v6, Lcom/perfectcorp/perfectlib/makeupcam/camera/MakeupCheckResult;->m_lighting_quality:I

    iput v7, v4, Lcom/perfectcorp/perfectlib/makeupcam/camera/TrafficLightCheckResult;->m_lighting_quality:I

    if-eqz v3, :cond_1a

    iget-boolean v3, v4, Lcom/perfectcorp/perfectlib/makeupcam/camera/TrafficLightCheckResult;->m_is_check_result_valid:Z

    if-eqz v3, :cond_19

    iget-boolean v3, v6, Lcom/perfectcorp/perfectlib/makeupcam/camera/MakeupCheckResult;->m_is_check_result_valid:Z

    if-eqz v3, :cond_19

    move v3, v14

    goto :goto_10

    :cond_19
    move v3, v13

    :goto_10
    iput-boolean v3, v4, Lcom/perfectcorp/perfectlib/makeupcam/camera/TrafficLightCheckResult;->m_is_check_result_valid:Z

    goto :goto_11

    :cond_1a
    iget-boolean v3, v6, Lcom/perfectcorp/perfectlib/makeupcam/camera/MakeupCheckResult;->m_is_check_result_valid:Z

    goto :goto_10

    :goto_11
    invoke-interface {v2, v5, v4}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl$PupilAnalysisCallback;->onAnalyze(Lcom/perfectcorp/perfectlib/makeupcam/camera/EstimatedPDInfo;Lcom/perfectcorp/perfectlib/makeupcam/camera/TrafficLightCheckResult;)V

    :cond_1b
    iget-object v2, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->t1:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl$QualityCheckCallback;

    iget-boolean v3, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->v1:Z

    if-eqz v3, :cond_1c

    new-instance v3, Lcom/perfectcorp/perfectlib/makeupcam/camera/MakeupCheckResult;

    invoke-direct {v3}, Lcom/perfectcorp/perfectlib/makeupcam/camera/MakeupCheckResult;-><init>()V

    iget-object v4, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->c:Lcom/perfectcorp/perfectlib/core/BaseVenus;

    iget-wide v5, v4, Lcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;->a:J

    invoke-static {v5, v6, v4, v3}, Lcom/perfectcorp/perfectlib/jniproxy/UIMakeupJNI;->CUIMakeupLive_GetMakeupCheckResult(JLcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;Ljava/lang/Object;)Z

    invoke-interface {v2, v3}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl$QualityCheckCallback;->onAnalyze(Lcom/perfectcorp/perfectlib/makeupcam/camera/MakeupCheckResult;)V

    :cond_1c
    sget v2, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$a;->a:I

    if-eq v15, v2, :cond_1e

    move/from16 v2, v22

    if-ne v2, v14, :cond_1e

    new-instance v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl$c;

    iget-object v3, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->j:[Landroid/graphics/Rect;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    array-length v4, v3

    new-array v4, v4, [Landroid/graphics/Rect;

    move v5, v13

    :goto_12
    array-length v6, v3

    if-ge v5, v6, :cond_1d

    new-instance v6, Landroid/graphics/Rect;

    aget-object v7, v3, v5

    invoke-direct {v6, v7}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    aput-object v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_12

    :cond_1d
    iput-object v2, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->p1:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl$c;

    :cond_1e
    iget-object v3, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->f:Ljava/lang/Object;

    monitor-enter v3

    :try_start_5
    iget-object v2, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->Z:Lcom/perfectcorp/perfectlib/makeupcam/camera/q;

    if-eqz v2, :cond_1f

    invoke-virtual {v2}, Lcom/perfectcorp/perfectlib/makeupcam/camera/q;->run()V

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->Z:Lcom/perfectcorp/perfectlib/makeupcam/camera/q;

    goto :goto_13

    :catchall_3
    move-exception v0

    goto/16 :goto_17

    :cond_1f
    :goto_13
    iget-object v2, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->e:Lcom/cyberlink/clgpuimage/GPUImageRenderer;

    new-instance v4, Lcom/cyberlink/clgpuimage/GPUImageRenderer$YUVBuffer$Builder;

    invoke-direct {v4}, Lcom/cyberlink/clgpuimage/GPUImageRenderer$YUVBuffer$Builder;-><init>()V

    iget-object v5, v1, Lcom/perfectcorp/perfectlib/core/FrameProcessingThread$Frame;->d:[B

    iput-object v5, v4, Lcom/cyberlink/clgpuimage/GPUImageRenderer$YUVBuffer$Builder;->a:[B

    iget v5, v1, Lcom/perfectcorp/perfectlib/core/FrameProcessingThread$Frame;->b:I

    iput v5, v4, Lcom/cyberlink/clgpuimage/GPUImageRenderer$YUVBuffer$Builder;->b:I

    iget v5, v1, Lcom/perfectcorp/perfectlib/core/FrameProcessingThread$Frame;->c:I

    iput v5, v4, Lcom/cyberlink/clgpuimage/GPUImageRenderer$YUVBuffer$Builder;->c:I

    iget-wide v5, v1, Lcom/perfectcorp/perfectlib/core/FrameProcessingThread$Frame;->a:J

    iput-wide v5, v4, Lcom/cyberlink/clgpuimage/GPUImageRenderer$YUVBuffer$Builder;->d:J

    new-instance v5, Lcom/cyberlink/clgpuimage/GPUImageRenderer$YUVBuffer;

    invoke-direct {v5, v4}, Lcom/cyberlink/clgpuimage/GPUImageRenderer$YUVBuffer;-><init>(Lcom/cyberlink/clgpuimage/GPUImageRenderer$YUVBuffer$Builder;)V

    iget-object v1, v1, Lcom/perfectcorp/perfectlib/core/FrameProcessingThread$Frame;->e:Lcom/cyberlink/clgpuimage/GPUImageRenderer$OnFrameAvailableListener;

    invoke-virtual {v2, v5, v1}, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->k(Lcom/cyberlink/clgpuimage/GPUImageRenderer$YUVBuffer;Lcom/cyberlink/clgpuimage/GPUImageRenderer$OnFrameAvailableListener;)V

    iget-boolean v1, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->i1:Z

    if-eqz v1, :cond_20

    iget-object v1, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->h1:Lcom/perfectcorp/perfectlib/internal/NecklaceFilter;

    if-eqz v1, :cond_20

    iget-object v2, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->j1:Lcom/perfectcorp/perfectlib/AccessoryCamWrapper;

    if-eqz v2, :cond_20

    iget-object v2, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->k1:[Lcom/cyberlink/clgpuimage/CLNecklaceFilter$LiveNecklaceMetadata;

    invoke-virtual {v1, v2}, Lcom/perfectcorp/perfectlib/internal/NecklaceFilter;->SetNecklaceMetadata(Ljava/lang/Object;)V

    :cond_20
    iget-object v1, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->h:Lcom/perfectcorp/perfectlib/makeupcam/camera/l;

    iget-object v2, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/l;->d:[Z

    iget-object v4, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/l;->e:[Z

    invoke-virtual {v1, v2, v4}, Lcom/perfectcorp/perfectlib/makeupcam/camera/l;->a([Z[Z)V

    iget-object v1, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->x1:Ljava/util/ArrayList;

    monitor-enter v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :try_start_6
    iget-object v2, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->h:Lcom/perfectcorp/perfectlib/makeupcam/camera/l;

    iget-object v4, v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/l;->G:[Lcom/cyberlink/clgpuimage/cosmetic/CLShowAlignFilter$ShowAlignData;

    iget-object v2, v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/l;->H:[Ljava/util/List;

    iget-object v5, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->x1:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_14
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_21

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl$e;

    invoke-interface {v6, v4, v2}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl$e;->b([Lcom/cyberlink/clgpuimage/cosmetic/CLShowAlignFilter$ShowAlignData;[Ljava/util/List;)V

    goto :goto_14

    :catchall_4
    move-exception v0

    goto :goto_16

    :cond_21
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :try_start_7
    iget-object v1, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->g:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;

    invoke-virtual {v1, v15}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->L(I)V

    const/4 v1, 0x3

    new-array v2, v1, [Lcom/cyberlink/clgpuimage/cosmetic/CLShowAlignFilter$ShowAlignData;

    :goto_15
    if-ge v13, v1, :cond_22

    new-instance v4, Lcom/cyberlink/clgpuimage/cosmetic/CLShowAlignFilter$ShowAlignData;

    invoke-direct {v4}, Lcom/cyberlink/clgpuimage/cosmetic/CLShowAlignFilter$ShowAlignData;-><init>()V

    aput-object v4, v2, v13

    iput v14, v4, Lcom/cyberlink/clgpuimage/cosmetic/CLShowAlignFilter$ShowAlignData;->frame_width:I

    iput v14, v4, Lcom/cyberlink/clgpuimage/cosmetic/CLShowAlignFilter$ShowAlignData;->frame_height:I

    add-int/lit8 v13, v13, 0x1

    goto :goto_15

    :cond_22
    iget-object v1, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->g:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;

    invoke-virtual {v1, v2}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->d0([Lcom/cyberlink/clgpuimage/cosmetic/CLShowAlignFilter$ShowAlignData;)V

    iget-object v1, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->f1:Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;

    if-eqz v1, :cond_23

    move/from16 v2, v21

    invoke-virtual {v1, v2}, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->q(I)V

    iget-object v1, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->f1:Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_23
    iget-object v1, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->g1:Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;

    if-eqz v1, :cond_24

    move/from16 v2, v20

    invoke-virtual {v1, v2}, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->q(I)V

    iget-object v1, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->g1:Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_24
    iget-object v1, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->c1:Lcom/perfectcorp/perfectlib/makeupcam/camera/i;

    iget-object v2, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->h:Lcom/perfectcorp/perfectlib/makeupcam/camera/l;

    iget-object v2, v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/l;->x:[Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter$StickerData;

    invoke-static {v2}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;->v([Ljava/lang/Object;)Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/perfectcorp/perfectlib/makeupcam/camera/i;->a(Ljava/util/List;)V

    iget-object v1, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->d1:Lcom/perfectcorp/perfectlib/makeupcam/camera/c;

    if-eqz v1, :cond_25

    invoke-virtual {v1}, Lcom/perfectcorp/perfectlib/makeupcam/camera/c;->d()V

    :cond_25
    iget-object v1, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->n1:Lcom/perfectcorp/perfectlib/makeupcam/camera/g;

    if-eqz v1, :cond_26

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->e:Lcom/cyberlink/clgpuimage/GPUImageRenderer;

    iget v0, v0, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->I:F

    iput v0, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/g;->e:F

    :cond_26
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    return-void

    :goto_16
    :try_start_8
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :try_start_9
    throw v0

    :goto_17
    monitor-exit v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    throw v0

    :goto_18
    :try_start_a
    monitor-exit v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    throw v0

    :goto_19
    :try_start_b
    monitor-exit v11
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    throw v0
.end method

.method public static i(Landroid/graphics/Bitmap;)[B
    .locals 7

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v2

    mul-int v3, v2, v1

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    shl-int/lit8 v3, v0, 0x2

    if-ne v3, v2, :cond_0

    return-object p0

    :cond_0
    mul-int/2addr v0, v1

    shl-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_1

    mul-int v5, v4, v2

    mul-int v6, v4, v3

    invoke-static {p0, v5, v0, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public final a(I)V
    .locals 0

    .line 483
    iput p1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->t0:I

    return-void
.end method

.method public final a(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/perfectcorp/perfectlib/makeupcam/camera/q;)V
    .locals 20

    move-object/from16 v0, p0

    sget-object v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->L:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    :try_start_0
    invoke-virtual/range {p7 .. p7}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v2, 0x14

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->Y:I

    invoke-virtual/range {p7 .. p7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v4, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v6, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->T:[F

    iget-object v7, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->S:[F

    iget-object v8, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->P:[F

    iget-object v9, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->O:[I

    iget-object v10, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->N:[I

    iget-object v11, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->M:[I

    iget-object v12, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->L:[Lcom/perfectcorp/perfectlib/makeupcam/camera/n;

    iget-object v13, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->K:[Lcom/perfectcorp/perfectlib/makeupcam/camera/n;

    iget-object v14, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->R:[[Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringJointSettings;

    iget-object v15, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->Q:[[Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringChainSettings;

    iget-object v3, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->W:[[Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringObjectSettings;

    const/16 v2, 0x32

    if-eqz v5, :cond_9

    :try_start_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    move-object/from16 v17, v1

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_0

    aget-object v18, v3, v4

    new-instance v19, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringObjectSettings;

    invoke-direct/range {v19 .. v19}, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringObjectSettings;-><init>()V

    aput-object v19, v18, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_2
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    aget-object v2, v3, v4

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringObjectSettings;

    aput-object v19, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1
    move-object/from16 v1, p1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/n;

    aput-object v2, v13, v4

    move-object/from16 v2, p2

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/perfectcorp/perfectlib/makeupcam/camera/n;

    aput-object v3, v12, v4

    move-object/from16 v3, p3

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aput v5, v11, v4

    move-object/from16 v5, p4

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    aput v11, v10, v4

    move-object/from16 v10, p5

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    aput v11, v9, v4

    move-object/from16 v9, p6

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Float;

    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v11

    aput v11, v8, v4

    const/4 v8, 0x0

    :goto_3
    const/16 v11, 0x32

    if-ge v8, v11, :cond_2

    aget-object v11, v15, v4

    new-instance v12, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringChainSettings;

    invoke-direct {v12}, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringChainSettings;-><init>()V

    aput-object v12, v11, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_2
    move-object/from16 v8, p8

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    const/4 v12, 0x0

    :goto_4
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v13

    if-ge v12, v13, :cond_3

    aget-object v13, v15, v4

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringChainSettings;

    aput-object v19, v13, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    :cond_3
    const/4 v11, 0x0

    :goto_5
    const/16 v12, 0x32

    if-ge v11, v12, :cond_4

    aget-object v12, v14, v4

    new-instance v13, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringJointSettings;

    invoke-direct {v13}, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringJointSettings;-><init>()V

    aput-object v13, v12, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    :cond_4
    move-object/from16 v11, p9

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/List;

    const/4 v13, 0x0

    :goto_6
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v15

    if-ge v13, v15, :cond_5

    aget-object v15, v14, v4

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringJointSettings;

    aput-object v19, v15, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_6

    :cond_5
    move-object/from16 v12, p10

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Float;

    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v13

    aput v13, v7, v4

    move-object/from16 v7, p11

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Float;

    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v13

    aput v13, v6, v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v6, 0x0

    :goto_7
    iget-object v13, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->V:[[Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringConvexColliders;

    const/16 v14, 0x32

    if-ge v6, v14, :cond_6

    :try_start_2
    aget-object v13, v13, v4

    new-instance v14, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringConvexColliders;

    invoke-direct {v14}, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringConvexColliders;-><init>()V

    aput-object v14, v13, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    :cond_6
    move-object/from16 v6, p12

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/List;

    const/4 v15, 0x0

    :goto_8
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    if-ge v15, v1, :cond_7

    aget-object v1, v13, v4

    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringConvexColliders;

    aput-object v18, v1, v15

    add-int/lit8 v15, v15, 0x1

    goto :goto_8

    :cond_7
    move-object/from16 v1, p13

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/ArrayList;

    const/4 v14, 0x0

    :goto_9
    const/16 v15, 0x10

    if-ge v14, v15, :cond_8

    iget-object v15, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->X:[F

    shl-int/lit8 v18, v4, 0x4

    add-int v18, v18, v14

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Float;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Float;->floatValue()F

    move-result v19

    aput v19, v15, v18

    add-int/lit8 v14, v14, 0x1

    goto :goto_9

    :cond_8
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v1, v17

    const/16 v2, 0x14

    goto/16 :goto_0

    :cond_9
    :goto_a
    const/16 v1, 0x14

    if-ge v4, v1, :cond_d

    const/4 v2, 0x0

    :goto_b
    const/16 v5, 0x32

    if-ge v2, v5, :cond_a

    aget-object v5, v3, v4

    new-instance v16, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringObjectSettings;

    invoke-direct/range {v16 .. v16}, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringObjectSettings;-><init>()V

    aput-object v16, v5, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_a
    new-instance v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/n;

    invoke-direct {v2}, Lcom/perfectcorp/perfectlib/makeupcam/camera/n;-><init>()V

    aput-object v2, v13, v4

    new-instance v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/n;

    invoke-direct {v2}, Lcom/perfectcorp/perfectlib/makeupcam/camera/n;-><init>()V

    aput-object v2, v12, v4

    const/4 v2, -0x1

    aput v2, v11, v4

    aput v2, v10, v4

    const/4 v2, -0x2

    aput v2, v9, v4

    const/4 v2, 0x0

    aput v2, v8, v4

    const/4 v5, 0x0

    :goto_c
    const/16 v1, 0x32

    if-ge v5, v1, :cond_b

    aget-object v1, v15, v4

    new-instance v17, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringChainSettings;

    invoke-direct/range {v17 .. v17}, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringChainSettings;-><init>()V

    aput-object v17, v1, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_c

    :cond_b
    move v5, v1

    const/4 v1, 0x0

    :goto_d
    if-ge v1, v5, :cond_c

    aget-object v17, v14, v4

    new-instance v18, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringJointSettings;

    invoke-direct/range {v18 .. v18}, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringJointSettings;-><init>()V

    aput-object v18, v17, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_c
    aput v2, v7, v4

    aput v2, v6, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    :cond_d
    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->Z:Lcom/perfectcorp/perfectlib/makeupcam/camera/q;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sget-object v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->L:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    sget-object v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->L:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v0
.end method

.method public final b()I
    .locals 0

    .line 246
    iget p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->s:I

    return p0
.end method

.method public final b(ZZZZLcom/perfectcorp/perfectlib/core/FrameProcessingThread$Frame;)Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl$a;
    .locals 10

    invoke-static {}, Lcom/perfectcorp/common/concurrent/Threads;->b()V

    const-string v2, "PICTURE_TAKEN"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "inside capture image with isCameraFacingBack: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", isPhotoFlipOn: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x3

    invoke-static {v6, v2, v3}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->L:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    :try_start_0
    iget-object v3, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->x:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    if-eqz p4, :cond_0

    :try_start_1
    sget v6, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$a;->d:I

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_8

    :cond_0
    sget v6, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$a;->c:I

    :goto_0
    iput v6, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->y:I

    sget v6, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter$b;->c:I

    iput v6, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->z:I

    sget v6, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter$b;->b:I

    iput v6, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->A:I

    const/4 v6, 0x1

    iput v6, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->B:I

    iput-boolean v6, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->C:Z

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    if-eqz p5, :cond_1

    iget-object v2, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->k:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl$d;

    invoke-virtual {v2, p5}, Lcom/perfectcorp/perfectlib/core/FrameProcessingThread;->sendNewFrame(Lcom/perfectcorp/perfectlib/core/FrameProcessingThread$Frame;)V

    :cond_1
    invoke-static {}, Lcom/perfectcorp/common/PfCommons;->b()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->g:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;

    iget-object v3, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->l0:Lcom/cyberlink/clgpuimage/cosmetic/x;

    const/16 v7, 0x5a

    iput v7, v3, Lcom/cyberlink/clgpuimage/cosmetic/x;->q:I

    iget-object v0, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->m0:Lcom/cyberlink/clgpuimage/cosmetic/x;

    iput v7, v0, Lcom/cyberlink/clgpuimage/cosmetic/x;->q:I

    :cond_2
    const/4 v3, 0x0

    const/4 v7, 0x0

    if-eqz p4, :cond_5

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->g:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-array v2, v2, [Lcom/cyberlink/clgpuimage/cosmetic/x$a;

    :try_start_2
    iget-object v8, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->f1:Ljava/lang/Object;

    monitor-enter v8
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    iget-boolean v9, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->g1:Z

    if-nez v9, :cond_3

    iget-object v9, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->f1:Ljava/lang/Object;

    invoke-virtual {v9}, Ljava/lang/Object;->wait()V

    goto :goto_1

    :catchall_1
    move-exception v0

    goto :goto_4

    :cond_3
    :goto_1
    iput-boolean v7, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->g1:Z

    iget-object v9, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->e1:Lcom/cyberlink/clgpuimage/cosmetic/x$a;

    aput-object v9, v2, v7

    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    iget-object v8, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->i1:Ljava/lang/Object;

    monitor-enter v8
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    :try_start_5
    iget-boolean v9, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->j1:Z

    if-nez v9, :cond_4

    iget-object v9, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->i1:Ljava/lang/Object;

    invoke-virtual {v9}, Ljava/lang/Object;->wait()V

    goto :goto_2

    :catchall_2
    move-exception v0

    goto :goto_3

    :cond_4
    :goto_2
    iput-boolean v7, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->j1:Z

    iget-object v0, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->h1:Lcom/cyberlink/clgpuimage/cosmetic/x$a;

    aput-object v0, v2, v6

    monitor-exit v8

    move-object v3, v2

    goto :goto_5

    :goto_3
    monitor-exit v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    throw v0
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_5

    :goto_4
    :try_start_7
    monitor-exit v8
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v0
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_0

    :goto_5
    move-object v6, v3

    goto :goto_6

    :cond_5
    new-array v0, v2, [Lcom/cyberlink/clgpuimage/cosmetic/x$a;

    aput-object v3, v0, v7

    iget-object v2, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->g:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;

    sget v3, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$a;->c:I

    invoke-virtual {v2, v3}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->D0(I)Lcom/cyberlink/clgpuimage/cosmetic/x$a;

    move-result-object v2

    aput-object v2, v0, v6

    move-object v6, v0

    :goto_6
    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->g:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;

    iput-boolean v7, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->g1:Z

    iput-boolean v7, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->j1:Z

    iget-object v7, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->p1:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl$c;

    if-eqz p3, :cond_6

    iget-object v2, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->x:Ljava/lang/Object;

    monitor-enter v2

    :try_start_9
    sget v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$a;->a:I

    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->y:I

    sget v0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter$b;->a:I

    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->z:I

    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->A:I

    monitor-exit v2

    goto :goto_7

    :catchall_3
    move-exception v0

    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    throw v0

    :cond_6
    :goto_7
    new-instance v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl$b;

    const/4 v4, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v5, p4

    invoke-direct/range {v0 .. v7}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl$b;-><init>(Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;ZZZZ[Lcom/cyberlink/clgpuimage/cosmetic/x$a;Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl$c;)V

    invoke-virtual {v0}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl$b;->a()Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl$a;

    move-result-object v0

    return-object v0

    :goto_8
    :try_start_a
    monitor-exit v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :try_start_b
    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    :catchall_4
    move-exception v0

    sget-object v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->L:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v0
.end method

.method public final c()I
    .locals 0

    .line 47
    iget p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->t:I

    return p0
.end method

.method public final c(II)V
    .locals 3

    iget v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->s:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->t:I

    if-gtz v0, :cond_1

    :cond_0
    iget v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->s:I

    if-ne v0, p1, :cond_1

    iget v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->t:I

    if-eq v0, p2, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->u:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->u:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    iput p1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->s:I

    iput p2, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->t:I

    iget-object p1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->u:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->k:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl$d;

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl$d;->a()V

    :cond_3
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final d()V
    .locals 2

    .line 196
    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->u:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->u:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v0

    :catchall_0
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->u:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_0

    :try_start_1
    iget-object v1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->u:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_0
    :try_start_2
    monitor-exit v0

    goto :goto_1

    :catchall_1
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0

    :cond_1
    :goto_1
    return-void
.end method

.method public final d(Landroid/view/ViewGroup;Z)V
    .locals 11

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->e:Lcom/cyberlink/clgpuimage/GPUImageRenderer;

    iput-boolean p2, v0, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->L:Z

    const/4 v0, 0x0

    if-eqz p2, :cond_4

    if-nez p1, :cond_0

    const-string p1, "viewGroup is null, disabling FPS mode"

    const/4 p2, 0x5

    const-string v1, "LiveMakeupCtrl"

    invoke-static {p2, v1, p1}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    move p2, v0

    goto/16 :goto_1

    :cond_0
    iget-object v1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->n1:Lcom/perfectcorp/perfectlib/makeupcam/camera/g;

    if-nez v1, :cond_1

    new-instance v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/g;

    invoke-direct {v1}, Lcom/perfectcorp/perfectlib/makeupcam/camera/g;-><init>()V

    iput-object v1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->n1:Lcom/perfectcorp/perfectlib/makeupcam/camera/g;

    :cond_1
    iget-object v1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->n1:Lcom/perfectcorp/perfectlib/makeupcam/camera/g;

    iget-boolean v2, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/g;->f:Z

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/g;->f:Z

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/g;->c:Landroid/widget/TextView;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v3, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/g;->c:Landroid/widget/TextView;

    const/high16 v4, -0x1000000

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v3, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/g;->c:Landroid/widget/TextView;

    const/high16 v4, 0x41600000    # 14.0f

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v3, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/g;->c:Landroid/widget/TextView;

    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v3, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/g;->c:Landroid/widget/TextView;

    const-string v4, "FPS: 0.0"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v4, 0x31

    const/4 v5, -0x2

    invoke-direct {v3, v5, v5, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    const/16 v4, 0x32

    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    instance-of v4, p1, Landroid/widget/FrameLayout;

    if-eqz v4, :cond_3

    iget-object v2, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/g;->c:Landroid/widget/TextView;

    invoke-virtual {p1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_3
    new-instance v4, Landroid/widget/FrameLayout;

    invoke-direct {v4, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v5

    invoke-virtual {v2, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    invoke-virtual {v2, v4, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v4, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object p1, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/g;->c:Landroid/widget/TextView;

    invoke-virtual {v4, p1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    new-instance v5, Ljava/util/Timer;

    invoke-direct {v5}, Ljava/util/Timer;-><init>()V

    iput-object v5, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/g;->d:Ljava/util/Timer;

    new-instance v6, Lcom/perfectcorp/perfectlib/makeupcam/camera/h;

    invoke-direct {v6, v1}, Lcom/perfectcorp/perfectlib/makeupcam/camera/h;-><init>(Lcom/perfectcorp/perfectlib/makeupcam/camera/g;)V

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x1f4

    invoke-virtual/range {v5 .. v10}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    :cond_4
    :goto_1
    if-nez p2, :cond_7

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->n1:Lcom/perfectcorp/perfectlib/makeupcam/camera/g;

    if-eqz p0, :cond_7

    iput-boolean v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/g;->f:Z

    iget-object p1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/g;->c:Landroid/widget/TextView;

    const/4 p2, 0x0

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    if-eqz p1, :cond_5

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/g;->c:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_5
    iput-object p2, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/g;->c:Landroid/widget/TextView;

    :cond_6
    iget-object p1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/g;->d:Ljava/util/Timer;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Ljava/util/Timer;->cancel()V

    iput-object p2, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/g;->d:Ljava/util/Timer;

    :cond_7
    return-void
.end method

.method public final e()Z
    .locals 0

    .line 878
    iget-boolean p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->i:Z

    return p0
.end method

.method public final f(Ljava/util/List;)V
    .locals 2

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->x1:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->x1:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->x1:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final f()Z
    .locals 0

    .line 18
    const/4 p0, 0x1

    return p0
.end method

.method public final g()Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->v:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;

    return-object p0
.end method

.method public final getFilter()Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->g:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;

    return-object p0
.end method

.method public final h(Lcom/perfectcorp/perfectlib/makeupcam/camera/BackgroundPayload;)V
    .locals 2

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->d1:Lcom/perfectcorp/perfectlib/makeupcam/camera/c;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Laa0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Laa0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->k:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl$d;

    invoke-virtual {p0, v0}, Lcom/perfectcorp/perfectlib/core/FrameProcessingThread;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final i()Lcom/perfectcorp/perfectlib/internal/NecklaceFilter;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->h1:Lcom/perfectcorp/perfectlib/internal/NecklaceFilter;

    return-object p0
.end method

.method public final j()Lcom/perfectcorp/perfectlib/AccessoryCamWrapper;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->j1:Lcom/perfectcorp/perfectlib/AccessoryCamWrapper;

    return-object p0
.end method

.method public final j(Z)V
    .locals 4

    sget-object v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->L:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    :try_start_0
    iput-boolean p1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->b1:Z

    iget-object p1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->c:Lcom/perfectcorp/perfectlib/core/BaseVenus;

    iget-boolean p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->b1:Z

    const/4 v1, 0x1

    xor-int/2addr p0, v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-ltz p0, :cond_0

    const/4 v2, 0x4

    if-ge p0, v2, :cond_0

    move v1, p0

    :cond_0
    iget-wide v2, p1, Lcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;->a:J

    invoke-static {v2, v3, p1, v1}, Lcom/perfectcorp/perfectlib/jniproxy/UIMakeupJNI;->CUIMakeupLive_SetMaxDetectedFaceNumber(JLcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;I)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "LiveMakeupCtrl"

    const-string p1, "SetMaxDetectedFaceNumber failed."

    invoke-static {p0, p1}, Lcom/perfectcorp/common/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    return-void

    :catchall_0
    move-exception p0

    sget-object p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->L:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw p0
.end method

.method public final k()I
    .locals 0

    iget p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->t0:I

    return p0
.end method

.method public final l(Lcom/perfectcorp/perfectlib/makeupcam/camera/LipShapeParameters;I)V
    .locals 1

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->h0:[Lcom/perfectcorp/perfectlib/makeupcam/camera/LipShapeParameters;

    array-length v0, p0

    if-le v0, p2, :cond_0

    aput-object p1, p0, p2

    :cond_0
    return-void
.end method

.method public final m()Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->c1:Lcom/perfectcorp/perfectlib/makeupcam/camera/i;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/i;->g:Lcom/perfectcorp/perfectlib/makeupcam/camera/i$a;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/i$a;->a:Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate;

    return-object p0
.end method

.method public final n(IZ)V
    .locals 11

    sget-object v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->L:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez p1, :cond_3

    :try_start_0
    iget-object v6, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->c:Lcom/perfectcorp/perfectlib/core/BaseVenus;

    iget-boolean v4, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->m1:Z

    if-nez v4, :cond_0

    if-eqz p2, :cond_0

    move v7, v3

    goto :goto_0

    :cond_0
    move v7, v2

    :goto_0
    iget-boolean v4, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->m1:Z

    if-eqz v4, :cond_1

    move v8, v1

    goto :goto_1

    :cond_1
    iget v4, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->t0:I

    int-to-float v4, v4

    move v8, v4

    :goto_1
    iget-boolean v4, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->m1:Z

    if-eqz v4, :cond_2

    move v9, v1

    goto :goto_2

    :cond_2
    iget v4, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->t0:I

    int-to-float v4, v4

    move v9, v4

    :goto_2
    iget-wide v4, v6, Lcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;->a:J

    invoke-static/range {v4 .. v9}, Lcom/perfectcorp/perfectlib/jniproxy/UIMakeupJNI;->CUIMakeupLive_SetSkinSmoothFilterStatus(JLcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;ZFF)Z

    :cond_3
    iget-object v6, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->c:Lcom/perfectcorp/perfectlib/core/BaseVenus;

    iget-boolean v4, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->m1:Z

    if-eqz v4, :cond_4

    if-eqz p2, :cond_4

    move v7, v3

    goto :goto_3

    :cond_4
    move v7, v2

    :goto_3
    iget-boolean v4, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->m1:Z

    if-eqz v4, :cond_5

    iget v4, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->t0:I

    int-to-float v4, v4

    move v8, v4

    goto :goto_4

    :cond_5
    move v8, v1

    :goto_4
    iget-boolean v4, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->m1:Z

    if-eqz v4, :cond_6

    iget v1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->t0:I

    int-to-float v1, v1

    :cond_6
    move v9, v1

    iget-wide v4, v6, Lcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;->a:J

    move v10, p1

    invoke-static/range {v4 .. v10}, Lcom/perfectcorp/perfectlib/jniproxy/UIMakeupJNI;->CUIMakeupLive_SetSkinSmoothV2FilterStatus(JLcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;ZFFI)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    iget-object p1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->g:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;

    sget-object v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$MakeupLiveFeatures;->SMOOTH:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$MakeupLiveFeatures;

    iget-boolean v1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->m1:Z

    if-nez v1, :cond_7

    if-eqz p2, :cond_7

    move v1, v3

    goto :goto_5

    :cond_7
    move v1, v2

    :goto_5
    invoke-virtual {p1, v0, v1}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->E(Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$MakeupLiveFeatures;Z)V

    iget-object p1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->g:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;

    sget-object v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$MakeupLiveFeatures;->SMOOTH_V2:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$MakeupLiveFeatures;

    iget-boolean p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->m1:Z

    if-eqz p0, :cond_8

    if-eqz p2, :cond_8

    move v2, v3

    :cond_8
    invoke-virtual {p1, v0, v2}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->E(Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$MakeupLiveFeatures;Z)V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    sget-object p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->L:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw p0
.end method

.method public final o()Lcom/perfectcorp/perfectlib/core/BaseVenus;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->c:Lcom/perfectcorp/perfectlib/core/BaseVenus;

    return-object p0
.end method

.method public final onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public final onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 6

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->o:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->b:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_3

    if-eq v1, v4, :cond_2

    if-eq v1, v3, :cond_1

    const/4 v5, 0x3

    if-eq v1, v5, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->n:[F

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, p1, v4

    aput v1, p0, v2

    aget v1, p1, v2

    neg-float v1, v1

    aput v1, p0, v4

    aget p1, p1, v3

    aput p1, p0, v3

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->n:[F

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, p1, v2

    neg-float v1, v1

    aput v1, p0, v2

    aget v1, p1, v4

    neg-float v1, v1

    aput v1, p0, v4

    aget p1, p1, v3

    aput p1, p0, v3

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->n:[F

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, p1, v4

    neg-float v1, v1

    aput v1, p0, v2

    aget v1, p1, v2

    aput v1, p0, v4

    aget p1, p1, v3

    aput p1, p0, v3

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->n:[F

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, p1, v2

    aput v1, p0, v2

    aget v1, p1, v4

    aput v1, p0, v4

    aget p1, p1, v3

    aput p1, p0, v3

    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final p()V
    .locals 2

    new-instance v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl$d;

    invoke-direct {v0, p0}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl$d;-><init>(Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;)V

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->k:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl$d;

    invoke-static {}, Lcom/perfectcorp/common/PfCommons;->b()Landroid/content/Context;

    move-result-object v0

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->l:Landroid/hardware/SensorManager;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->m:Landroid/hardware/Sensor;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->l:Landroid/hardware/SensorManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->m:Landroid/hardware/Sensor;

    :cond_0
    return-void
.end method

.method public final q()V
    .locals 76

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->v:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;

    iget-object v2, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->G:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveParameters;

    invoke-interface {v3}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveParameters;->update()V

    goto :goto_0

    :cond_0
    iget-object v2, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->H:[Z

    sget-object v3, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->SKIN_TONER:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    invoke-virtual {v1, v3}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->o(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)Z

    move-result v4

    invoke-static {v2, v4}, Ljava/util/Arrays;->fill([ZZ)V

    iget-object v2, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->l:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/FoundationPayload;

    iget-object v3, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->I:[I

    const/16 v4, -0x3e8

    const/4 v5, 0x0

    if-eqz v2, :cond_1

    iget v6, v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/FoundationPayload;->a:I

    if-eq v6, v4, :cond_1

    goto :goto_1

    :cond_1
    move v6, v5

    :goto_1
    invoke-static {v3, v6}, Ljava/util/Arrays;->fill([II)V

    if-eqz v2, :cond_2

    iget v2, v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/FoundationPayload;->b:I

    if-eq v2, v4, :cond_2

    :goto_2
    move/from16 v31, v2

    goto :goto_3

    :cond_2
    const/4 v2, -0x1

    goto :goto_2

    :goto_3
    iget-object v2, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->E:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveParameters$Eyebrow;

    iget-object v2, v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveParameters$Eyebrow;->a:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveParameters$Eyebrow$Setting;

    sget-object v3, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->EYE_CONTACT:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    invoke-virtual {v1, v3}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->o(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)Z

    move-result v20

    if-eqz v20, :cond_3

    iget v3, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->o:I

    move/from16 v21, v3

    goto :goto_4

    :cond_3
    move/from16 v21, v5

    :goto_4
    const/4 v3, 0x3

    new-array v4, v3, [Z

    new-array v6, v3, [I

    new-array v3, v3, [F

    sget-object v7, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->BLUSH:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    iget-object v8, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->l:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v8, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/perfectcorp/perfectlib/makeupcam/camera/BlushPayload;

    const/4 v8, 0x1

    if-eqz v7, :cond_5

    iget-object v9, v7, Lcom/perfectcorp/perfectlib/makeupcam/camera/BlushPayload;->a:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    iget-object v10, v7, Lcom/perfectcorp/perfectlib/makeupcam/camera/BlushPayload;->a:Ljava/util/List;

    if-ne v9, v8, :cond_4

    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/perfectcorp/perfectlib/makeupcam/camera/BlushPayload$Setting;

    iget-object v9, v7, Lcom/perfectcorp/perfectlib/makeupcam/camera/BlushPayload$Setting;->f:Ljava/util/ArrayList;

    invoke-static {v9}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v9

    iget v7, v7, Lcom/perfectcorp/perfectlib/makeupcam/camera/BlushPayload$Setting;->d:I

    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;

    iget-object v9, v7, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;->g:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor$ExtraData;

    iget-object v9, v9, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor$ExtraData;->r:Ljava/lang/String;

    invoke-static {v9}, Lcom/perfectcorp/perfectlib/makeupcam/camera/BlushPayload;->b(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/jniproxy/VN_BlushType;

    move-result-object v9

    invoke-virtual {v9}, Lcom/perfectcorp/perfectlib/jniproxy/VN_BlushType;->a()I

    move-result v9

    iget-object v7, v7, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;->g:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor$ExtraData;

    iget v7, v7, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor$ExtraData;->l:I

    int-to-float v7, v7

    move/from16 v58, v8

    move/from16 v59, v9

    :goto_5
    move/from16 v60, v7

    goto :goto_7

    :cond_4
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v9

    if-le v9, v8, :cond_5

    move v9, v5

    :goto_6
    iget-object v10, v7, Lcom/perfectcorp/perfectlib/makeupcam/camera/BlushPayload;->a:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_5

    iget-object v10, v7, Lcom/perfectcorp/perfectlib/makeupcam/camera/BlushPayload;->a:Ljava/util/List;

    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/perfectcorp/perfectlib/makeupcam/camera/BlushPayload$Setting;

    iget-object v11, v10, Lcom/perfectcorp/perfectlib/makeupcam/camera/BlushPayload$Setting;->f:Ljava/util/ArrayList;

    invoke-static {v11}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v11

    iget v10, v10, Lcom/perfectcorp/perfectlib/makeupcam/camera/BlushPayload$Setting;->d:I

    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;

    iget-object v11, v10, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;->g:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor$ExtraData;

    iget-object v11, v11, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor$ExtraData;->r:Ljava/lang/String;

    invoke-static {v11}, Lcom/perfectcorp/perfectlib/makeupcam/camera/BlushPayload;->b(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/jniproxy/VN_BlushType;

    move-result-object v11

    invoke-virtual {v11}, Lcom/perfectcorp/perfectlib/jniproxy/VN_BlushType;->a()I

    move-result v11

    aput v11, v6, v9

    iget-object v10, v10, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;->g:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor$ExtraData;

    iget v10, v10, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor$ExtraData;->l:I

    int-to-float v10, v10

    aput v10, v3, v9

    aput-boolean v8, v4, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    :cond_5
    const/4 v7, 0x0

    move/from16 v58, v5

    move/from16 v59, v58

    goto :goto_5

    :goto_7
    sget-object v7, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->CONCEALER:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    iget-object v9, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->l:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v9, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/perfectcorp/perfectlib/makeupcam/camera/ConcealerPayload;

    invoke-virtual {v1, v7}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->o(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)Z

    move-result v10

    if-eqz v10, :cond_7

    if-eqz v9, :cond_7

    iget-object v10, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->J:[Z

    invoke-static {v10, v8}, Ljava/util/Arrays;->fill([ZZ)V

    invoke-virtual {v1, v7}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->e(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_6

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_6

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;

    goto :goto_8

    :cond_6
    const/4 v7, 0x0

    :goto_8
    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget v10, v7, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;->d:I

    iget v7, v7, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;->e:I

    iget v11, v9, Lcom/perfectcorp/perfectlib/makeupcam/camera/ConcealerPayload;->a:I

    iget v12, v9, Lcom/perfectcorp/perfectlib/makeupcam/camera/ConcealerPayload;->b:I

    iget-object v9, v9, Lcom/perfectcorp/perfectlib/makeupcam/camera/ConcealerPayload;->c:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$ConcealerMode;

    move/from16 v25, v7

    move/from16 v27, v10

    move/from16 v26, v11

    move/from16 v24, v12

    :goto_9
    move-object/from16 v28, v9

    goto :goto_a

    :cond_7
    iget-object v7, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->J:[Z

    invoke-static {v7, v5}, Ljava/util/Arrays;->fill([ZZ)V

    sget-object v9, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$ConcealerMode;->CONCEALER_MODE_SPOT_DARK_CIRCLE:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$ConcealerMode;

    move/from16 v24, v5

    move/from16 v25, v24

    move/from16 v26, v25

    move/from16 v27, v26

    goto :goto_9

    :goto_a
    sget-object v75, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->L:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual/range {v75 .. v75}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    :try_start_0
    sget-object v7, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->EYE_BROW:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    invoke-virtual {v1, v7}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->o(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)Z

    move-result v9

    if-eqz v9, :cond_8

    iget-object v9, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->c:Lcom/perfectcorp/perfectlib/core/BaseVenus;

    iget-boolean v10, v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveParameters$Eyebrow$Setting;->k:Z

    iget-wide v11, v9, Lcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;->a:J

    invoke-static {v11, v12, v9, v10}, Lcom/perfectcorp/perfectlib/jniproxy/UIMakeupJNI;->CUIMakeupLive_SetEnableEyebrowGoldenRatio(JLcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;Z)Z

    iget-object v9, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->c:Lcom/perfectcorp/perfectlib/core/BaseVenus;

    iget-boolean v10, v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveParameters$Eyebrow$Setting;->l:Z

    iget-wide v11, v9, Lcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;->a:J

    invoke-static {v11, v12, v9, v10}, Lcom/perfectcorp/perfectlib/jniproxy/UIMakeupJNI;->CUIMakeupLive_SetEyebrowMatchOriginalThickness(JLcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;Z)Z

    :cond_8
    iget-object v9, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->c:Lcom/perfectcorp/perfectlib/core/BaseVenus;

    invoke-virtual {v1, v7}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->o(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)Z

    move-result v7

    iget v10, v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveParameters$Eyebrow$Setting;->b:I

    iget-object v11, v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveParameters$Eyebrow$Setting;->a:Lcom/perfectcorp/perfectlib/jniproxy/VN_EyebrowMode;

    iget v12, v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveParameters$Eyebrow$Setting;->c:I

    iget v13, v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveParameters$Eyebrow$Setting;->d:I

    iget v14, v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveParameters$Eyebrow$Setting;->e:I

    iget v15, v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveParameters$Eyebrow$Setting;->f:I

    move/from16 v16, v5

    iget v5, v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveParameters$Eyebrow$Setting;->g:I

    iget v8, v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveParameters$Eyebrow$Setting;->h:I

    move-object/from16 v18, v3

    iget v3, v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveParameters$Eyebrow$Setting;->i:I

    iget v2, v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveParameters$Eyebrow$Setting;->j:I

    move/from16 v19, v2

    iget-object v2, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->c1:Lcom/perfectcorp/perfectlib/makeupcam/camera/i;

    invoke-virtual {v2}, Lcom/perfectcorp/perfectlib/makeupcam/camera/i;->b()Z

    move-result v22

    iget-object v2, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->J:[Z

    move-object/from16 v23, v2

    iget-object v2, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->H:[Z

    move-object/from16 v29, v2

    iget-object v2, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->I:[I

    move-object/from16 v30, v2

    iget-object v2, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->c1:Lcom/perfectcorp/perfectlib/makeupcam/camera/i;

    invoke-virtual {v2}, Lcom/perfectcorp/perfectlib/makeupcam/camera/i;->c()[Z

    move-result-object v32

    iget-object v2, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->F:[Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveParameters$Reshape;

    sget-object v33, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->J:Ljava/util/Set;

    invoke-interface/range {v33 .. v33}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v33

    :goto_b
    invoke-interface/range {v33 .. v33}, Ljava/util/Iterator;->hasNext()Z

    move-result v34

    if-eqz v34, :cond_a

    invoke-interface/range {v33 .. v33}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v34

    move-object/from16 v35, v2

    move-object/from16 v2, v34

    check-cast v2, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    invoke-virtual {v1, v2}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->o(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)Z

    move-result v2

    if-eqz v2, :cond_9

    const/16 v34, 0x1

    goto :goto_c

    :cond_9
    move-object/from16 v2, v35

    goto :goto_b

    :cond_a
    move-object/from16 v35, v2

    move/from16 v34, v16

    :goto_c
    sget-object v2, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->FACE_ART:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    invoke-virtual {v1, v2}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->o(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)Z

    move-result v2

    move/from16 v33, v2

    sget-object v2, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->FACE_ART_LAYER_2:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    invoke-virtual {v1, v2}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->o(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)Z

    move-result v36

    sget-object v2, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->HAIR_DYE:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    invoke-virtual {v1, v2}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->o(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)Z

    move-result v37

    sget-object v2, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->FACE_CONTOUR:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    invoke-virtual {v1, v2}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->o(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)Z

    move-result v38

    sget-object v2, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->TEETH_WHITENER:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    invoke-virtual {v1, v2}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->o(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)Z

    move-result v39

    sget-object v2, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->LIP_LINER:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    invoke-virtual {v1, v2}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->o(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)Z

    move-result v40

    sget-object v2, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->BRONZER:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    invoke-virtual {v1, v2}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->o(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)Z

    move-result v41

    sget-object v2, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->CUBE_EYEWEAR:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    invoke-virtual {v1, v2}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->o(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)Z

    move-result v42

    sget-object v2, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->EARRINGS:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    invoke-virtual {v1, v2}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->o(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)Z

    move-result v2

    if-eqz v2, :cond_b

    iget v2, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->Y:I

    if-lez v2, :cond_b

    const/16 v43, 0x1

    goto :goto_d

    :cond_b
    move/from16 v43, v16

    :goto_d
    iget-object v2, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->K:[Lcom/perfectcorp/perfectlib/makeupcam/camera/n;

    move-object/from16 v44, v2

    iget-object v2, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->L:[Lcom/perfectcorp/perfectlib/makeupcam/camera/n;

    move-object/from16 v45, v2

    iget-object v2, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->M:[I

    move-object/from16 v46, v2

    iget-object v2, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->N:[I

    move-object/from16 v47, v2

    iget-object v2, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->O:[I

    move-object/from16 v48, v2

    iget-object v2, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->P:[F

    move-object/from16 v49, v2

    iget-object v2, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->W:[[Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringObjectSettings;

    move-object/from16 v50, v2

    iget-object v2, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->Q:[[Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringChainSettings;

    move-object/from16 v51, v2

    iget-object v2, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->R:[[Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringJointSettings;

    move-object/from16 v52, v2

    iget-object v2, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->S:[F

    move-object/from16 v53, v2

    iget-object v2, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->T:[F

    move-object/from16 v54, v2

    iget-object v2, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->V:[[Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringConvexColliders;

    move-object/from16 v55, v2

    iget-object v2, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->X:[F

    move-object/from16 v56, v2

    iget v2, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->Y:I

    move/from16 v57, v2

    iget-boolean v2, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->e1:Z

    move/from16 v61, v2

    iget-object v2, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->v:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;

    move/from16 v62, v3

    sget-object v3, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->LIP_STICK:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    invoke-virtual {v2, v3}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->o(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)Z

    move-result v2

    if-eqz v2, :cond_c

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->w1:Z

    :cond_c
    iget-boolean v2, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->w1:Z

    aget-boolean v63, v4, v16

    aget v64, v6, v16

    aget v65, v18, v16

    const/16 v17, 0x1

    aget-boolean v66, v4, v17

    aget v67, v6, v17

    aget v68, v18, v17

    const/4 v3, 0x2

    aget-boolean v69, v4, v3

    aget v70, v6, v3

    aget v71, v18, v3

    iget-boolean v3, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->l1:Z

    if-nez v3, :cond_e

    sget-object v3, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->EYE_SHADOW:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    invoke-virtual {v1, v3}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->o(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)Z

    move-result v3

    if-eqz v3, :cond_d

    goto :goto_e

    :cond_d
    move/from16 v72, v16

    goto :goto_f

    :cond_e
    :goto_e
    move/from16 v72, v17

    :goto_f
    iget-boolean v3, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->l1:Z

    if-nez v3, :cond_10

    sget-object v3, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->EYE_LINES:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    invoke-virtual {v1, v3}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;->o(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)Z

    move-result v1

    if-eqz v1, :cond_f

    goto :goto_10

    :cond_f
    move/from16 v73, v16

    goto :goto_11

    :cond_10
    :goto_10
    move/from16 v73, v17

    :goto_11
    iget-object v0, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->h0:[Lcom/perfectcorp/perfectlib/makeupcam/camera/LipShapeParameters;

    move v1, v7

    iget-wide v6, v9, Lcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;->a:J

    invoke-virtual {v11}, Lcom/perfectcorp/perfectlib/jniproxy/VN_EyebrowMode;->a()I

    move-result v11

    move-object/from16 v16, v35

    move/from16 v35, v33

    move-object/from16 v33, v16

    move-object/from16 v74, v0

    move/from16 v16, v5

    move/from16 v17, v8

    move-object v8, v9

    move/from16 v18, v62

    move v9, v1

    move/from16 v62, v2

    invoke-static/range {v6 .. v74}, Lcom/perfectcorp/perfectlib/jniproxy/UIMakeupJNI;->CUIMakeupLive_SetMakeupParameters(JLcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;ZIIIIIIIIIIZIZ[ZIIIILjava/lang/Object;[Z[II[Z[Ljava/lang/Object;ZZZZZZZZZZ[Ljava/lang/Object;[Ljava/lang/Object;[I[I[I[F[Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;[F[F[Ljava/lang/Object;[FIZIFZZZIFZIFZIFZZ[Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual/range {v75 .. v75}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    sget-object v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->L:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v0
.end method
