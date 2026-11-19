.class final Lcom/perfectcorp/perfectlib/PhotoMakeup$LiveMakeupCtrl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrlInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/PhotoMakeup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LiveMakeupCtrl"
.end annotation


# instance fields
.field public final A:[F

.field public final B:[F

.field public final C:[[Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringConvexColliders;

.field public final D:[F

.field public E:I

.field public F:Lcom/perfectcorp/perfectlib/makeupcam/camera/q;

.field public final G:[Lcom/perfectcorp/perfectlib/makeupcam/camera/LipShapeParameters;

.field public final H:Lcom/perfectcorp/perfectlib/makeupcam/camera/i;

.field public final I:Lcom/perfectcorp/perfectlib/makeupcam/camera/c;

.field public final J:Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;

.field public final K:Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;

.field public final L:Lcom/perfectcorp/perfectlib/internal/NecklaceFilter;

.field public final M:Lcom/perfectcorp/perfectlib/AccessoryCamWrapper;

.field public volatile N:I

.field public volatile O:Z

.field public volatile P:Z

.field public volatile Q:I

.field public volatile R:I

.field public volatile S:I

.field public final b:Lcom/perfectcorp/perfectlib/core/BaseVenus;

.field public final c:Z

.field public final d:I

.field public final e:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;

.field public final f:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;

.field public final g:Lcom/perfectcorp/perfectlib/makeupcam/camera/l;

.field public final h:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final i:[Z

.field public final j:[Z

.field public final k:[Landroid/graphics/Rect;

.field public final l:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveParameters$Eyebrow;

.field public final m:[Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveParameters$Reshape;

.field public final n:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;

.field public final o:[Z

.field public final p:[I

.field public final q:[Z

.field public final r:[Lcom/perfectcorp/perfectlib/makeupcam/camera/n;

.field public final s:[Lcom/perfectcorp/perfectlib/makeupcam/camera/n;

.field public final t:[I

.field public final u:[I

.field public final v:[I

.field public final w:[F

.field public final x:[[Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringObjectSettings;

.field public final y:[[Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringChainSettings;

.field public final z:[[Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringJointSettings;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/perfectlib/core/BaseVenus;ZZILcom/perfectcorp/perfectlib/AccessoryCamWrapper;)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/perfectcorp/perfectlib/jniproxy/UIMakeupJNI;->CUIMakeupLive_GetMaxDetectedFaceCount()I

    move-result v0

    iput v0, p0, Lcom/perfectcorp/perfectlib/PhotoMakeup$LiveMakeupCtrl;->d:I

    new-instance v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;

    invoke-direct {v1}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;-><init>()V

    iput-object v1, p0, Lcom/perfectcorp/perfectlib/PhotoMakeup$LiveMakeupCtrl;->f:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;

    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Lcom/perfectcorp/perfectlib/PhotoMakeup$LiveMakeupCtrl;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-array v2, v0, [Z

    iput-object v2, p0, Lcom/perfectcorp/perfectlib/PhotoMakeup$LiveMakeupCtrl;->i:[Z

    new-array v2, v0, [Z

    iput-object v2, p0, Lcom/perfectcorp/perfectlib/PhotoMakeup$LiveMakeupCtrl;->j:[Z

    new-instance v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveParameters$Eyebrow;

    invoke-direct {v2, v1}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveParameters$Eyebrow;-><init>(Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;)V

    iput-object v2, p0, Lcom/perfectcorp/perfectlib/PhotoMakeup$LiveMakeupCtrl;->l:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveParameters$Eyebrow;

    const/16 v1, 0x14

    new-array v2, v1, [Lcom/perfectcorp/perfectlib/makeupcam/camera/n;

    iput-object v2, p0, Lcom/perfectcorp/perfectlib/PhotoMakeup$LiveMakeupCtrl;->r:[Lcom/perfectcorp/perfectlib/makeupcam/camera/n;

    new-array v2, v1, [Lcom/perfectcorp/perfectlib/makeupcam/camera/n;

    iput-object v2, p0, Lcom/perfectcorp/perfectlib/PhotoMakeup$LiveMakeupCtrl;->s:[Lcom/perfectcorp/perfectlib/makeupcam/camera/n;

    new-array v2, v1, [I

    iput-object v2, p0, Lcom/perfectcorp/perfectlib/PhotoMakeup$LiveMakeupCtrl;->t:[I

    new-array v2, v1, [I

    iput-object v2, p0, Lcom/perfectcorp/perfectlib/PhotoMakeup$LiveMakeupCtrl;->u:[I

    new-array v2, v1, [I

    iput-object v2, p0, Lcom/perfectcorp/perfectlib/PhotoMakeup$LiveMakeupCtrl;->v:[I

    new-array v2, v1, [F

    iput-object v2, p0, Lcom/perfectcorp/perfectlib/PhotoMakeup$LiveMakeupCtrl;->w:[F

    const/4 v2, 0x2

    new-array v4, v2, [I

    const/4 v5, 0x1

    const/16 v6, 0x32

    aput v6, v4, v5

    aput v1, v4, v3

    const-class v7, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringObjectSettings;

    invoke-static {v7, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringObjectSettings;

    iput-object v4, p0, Lcom/perfectcorp/perfectlib/PhotoMakeup$LiveMakeupCtrl;->x:[[Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringObjectSettings;

    new-array v4, v2, [I

    aput v6, v4, v5

    aput v1, v4, v3

    const-class v7, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringChainSettings;

    invoke-static {v7, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringChainSettings;

    iput-object v4, p0, Lcom/perfectcorp/perfectlib/PhotoMakeup$LiveMakeupCtrl;->y:[[Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringChainSettings;

    new-array v4, v2, [I

    aput v6, v4, v5

    aput v1, v4, v3

    const-class v7, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringJointSettings;

    invoke-static {v7, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringJointSettings;

    iput-object v4, p0, Lcom/perfectcorp/perfectlib/PhotoMakeup$LiveMakeupCtrl;->z:[[Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringJointSettings;

    new-array v4, v1, [F

    iput-object v4, p0, Lcom/perfectcorp/perfectlib/PhotoMakeup$LiveMakeupCtrl;->A:[F

    new-array v4, v1, [F

    iput-object v4, p0, Lcom/perfectcorp/perfectlib/PhotoMakeup$LiveMakeupCtrl;->B:[F

    new-array v2, v2, [I

    aput v6, v2, v5

    aput v1, v2, v3

    const-class v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringConvexColliders;

    invoke-static {v1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringConvexColliders;

    iput-object v1, p0, Lcom/perfectcorp/perfectlib/PhotoMakeup$LiveMakeupCtrl;->C:[[Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringConvexColliders;

    const/16 v1, 0x140

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/perfectcorp/perfectlib/PhotoMakeup$LiveMakeupCtrl;->D:[F

    new-array v1, v0, [Lcom/perfectcorp/perfectlib/makeupcam/camera/LipShapeParameters;

    iput-object v1, p0, Lcom/perfectcorp/perfectlib/PhotoMakeup$LiveMakeupCtrl;->G:[Lcom/perfectcorp/perfectlib/makeupcam/camera/LipShapeParameters;

    const/4 v1, -0x1

    iput v1, p0, Lcom/perfectcorp/perfectlib/PhotoMakeup$LiveMakeupCtrl;->N:I

    iput-boolean v3, p0, Lcom/perfectcorp/perfectlib/PhotoMakeup$LiveMakeupCtrl;->O:Z

    iput-boolean v3, p0, Lcom/perfectcorp/perfectlib/PhotoMakeup$LiveMakeupCtrl;->P:Z

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/PhotoMakeup$LiveMakeupCtrl;->b:Lcom/perfectcorp/perfectlib/core/BaseVenus;

    if-ltz v0, :cond_0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    move v1, v5

    :goto_0
    iget-wide v6, p1, Lcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;->a:J

    invoke-static {v6, v7, p1, v1}, Lcom/perfectcorp/perfectlib/jniproxy/UIMakeupJNI;->CUIMakeupLive_SetMaxDetectedFaceNumber(JLcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;I)Z

    iput-boolean p2, p0, Lcom/perfectcorp/perfectlib/PhotoMakeup$LiveMakeupCtrl;->c:Z

    new-instance p2, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;

    invoke-direct {p2, v5, v3}, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;-><init>(ZZ)V

    iput-object p2, p0, Lcom/perfectcorp/perfectlib/PhotoMakeup$LiveMakeupCtrl;->J:Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;

    new-instance v1, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;

    invoke-direct {v1, v3, v3}, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;-><init>(ZZ)V

    iput-object v1, p0, Lcom/perfectcorp/perfectlib/PhotoMakeup$LiveMakeupCtrl;->K:Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;

    const/4 v1, 0x3

    invoke-static {v1, p4}, Lcom/perfectcorp/perfectlib/makeupcam/camera/GPUImageFilterBuilder;->a(II)Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;

    move-result-object v1

    iput-object v1, p0, Lcom/perfectcorp/perfectlib/PhotoMakeup$LiveMakeupCtrl;->e:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;

    iput-boolean p3, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->G6:Z

    new-instance p3, Lcom/perfectcorp/perfectlib/internal/NecklaceFilter;

    invoke-direct {p3, p4}, Lcom/perfectcorp/perfectlib/internal/NecklaceFilter;-><init>(I)V

    iput-object p3, p0, Lcom/perfectcorp/perfectlib/PhotoMakeup$LiveMakeupCtrl;->L:Lcom/perfectcorp/perfectlib/internal/NecklaceFilter;

    iput-object p5, p0, Lcom/perfectcorp/perfectlib/PhotoMakeup$LiveMakeupCtrl;->M:Lcom/perfectcorp/perfectlib/AccessoryCamWrapper;

    new-instance p3, Lcom/perfectcorp/perfectlib/makeupcam/camera/l;

    invoke-direct {p3, p1, v1, p2}, Lcom/perfectcorp/perfectlib/makeupcam/camera/l;-><init>(Lcom/perfectcorp/perfectlib/core/BaseVenus;Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;)V

    iput-object p3, p0, Lcom/perfectcorp/perfectlib/PhotoMakeup$LiveMakeupCtrl;->g:Lcom/perfectcorp/perfectlib/makeupcam/camera/l;

    new-array p2, v0, [Landroid/graphics/Rect;

    iput-object p2, p0, Lcom/perfectcorp/perfectlib/PhotoMakeup$LiveMakeupCtrl;->k:[Landroid/graphics/Rect;

    move p2, v3

    :goto_1
    iget p3, p0, Lcom/perfectcorp/perfectlib/PhotoMakeup$LiveMakeupCtrl;->d:I

    if-ge p2, p3, :cond_1

    iget-object p3, p0, Lcom/perfectcorp/perfectlib/PhotoMakeup$LiveMakeupCtrl;->k:[Landroid/graphics/Rect;

    new-instance p4, Landroid/graphics/Rect;

    invoke-direct {p4}, Landroid/graphics/Rect;-><init>()V

    aput-object p4, p3, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_1
    sget p2, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;->d:I

    new-instance p2, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet$Builder;

    invoke-direct {p2}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet$Builder;-><init>()V

    iget-object p3, p0, Lcom/perfectcorp/perfectlib/PhotoMakeup$LiveMakeupCtrl;->l:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveParameters$Eyebrow;

    invoke-virtual {p2, p3}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet$Builder;->h(Ljava/lang/Object;)V

    iget p3, p0, Lcom/perfectcorp/perfectlib/PhotoMakeup$LiveMakeupCtrl;->d:I

    new-array p3, p3, [Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveParameters$Reshape;

    iput-object p3, p0, Lcom/perfectcorp/perfectlib/PhotoMakeup$LiveMakeupCtrl;->m:[Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveParameters$Reshape;

    :goto_2
    iget p3, p0, Lcom/perfectcorp/perfectlib/PhotoMakeup$LiveMakeupCtrl;->d:I

    if-ge v3, p3, :cond_2

    iget-object p3, p0, Lcom/perfectcorp/perfectlib/PhotoMakeup$LiveMakeupCtrl;->m:[Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveParameters$Reshape;

    new-instance p4, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveParameters$Reshape;

    iget-object p5, p0, Lcom/perfectcorp/perfectlib/PhotoMakeup$LiveMakeupCtrl;->f:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;

    invoke-direct {p4, p5}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveParameters$Reshape;-><init>(Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;)V

    aput-object p4, p3, v3

    iget-object p3, p0, Lcom/perfectcorp/perfectlib/PhotoMakeup$LiveMakeupCtrl;->G:[Lcom/perfectcorp/perfectlib/makeupcam/camera/LipShapeParameters;

    new-instance p4, Lcom/perfectcorp/perfectlib/makeupcam/camera/LipShapeParameters;

    invoke-direct {p4}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LipShapeParameters;-><init>()V

    aput-object p4, p3, v3

    iget-object p3, p0, Lcom/perfectcorp/perfectlib/PhotoMakeup$LiveMakeupCtrl;->m:[Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveParameters$Reshape;

    aget-object p3, p3, v3

    invoke-virtual {p2, p3}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet$Builder;->h(Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {p2}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet$Builder;->j()Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;

    move-result-object p2

    iput-object p2, p0, Lcom/perfectcorp/perfectlib/PhotoMakeup$LiveMakeupCtrl;->n:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;

    iget p2, p0, Lcom/perfectcorp/perfectlib/PhotoMakeup$LiveMakeupCtrl;->d:I

    new-array p3, p2, [Z

    iput-object p3, p0, Lcom/perfectcorp/perfectlib/PhotoMakeup$LiveMakeupCtrl;->o:[Z

    new-array p3, p2, [I

    iput-object p3, p0, Lcom/perfectcorp/perfectlib/PhotoMakeup$LiveMakeupCtrl;->p:[I

    new-array p2, p2, [Z

    iput-object p2, p0, Lcom/perfectcorp/perfectlib/PhotoMakeup$LiveMakeupCtrl;->q:[Z

    invoke-static {}, Lcom/perfectcorp/common/PfCommons;->b()Landroid/content/Context;

    move-result-object p2

    iget-object p3, p0, Lcom/perfectcorp/perfectlib/PhotoMakeup$LiveMakeupCtrl;->e:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;

    new-instance p4, Ljava/lang/Object;

    invoke-direct {p4}, Ljava/lang/Object;-><init>()V

    new-instance p5, Lcom/perfectcorp/perfectlib/makeupcam/camera/i;

    invoke-direct {p5, p2, p1, p3, p4}, Lcom/perfectcorp/perfectlib/makeupcam/camera/i;-><init>(Landroid/content/Context;Lcom/perfectcorp/perfectlib/core/BaseVenus;Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;Ljava/lang/Object;)V

    iput-object p5, p0, Lcom/perfectcorp/perfectlib/PhotoMakeup$LiveMakeupCtrl;->H:Lcom/perfectcorp/perfectlib/makeupcam/camera/i;

    invoke-static {}, Lcom/perfectcorp/common/PfCommons;->b()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/perfectcorp/perfectlib/PhotoMakeup$LiveMakeupCtrl;->J:Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;

    iget-object v4, p0, Lcom/perfectcorp/perfectlib/PhotoMakeup$LiveMakeupCtrl;->K:Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;

    new-instance v6, Ljava/lang/Object;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/c;

    const/4 v5, 0x1

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/perfectcorp/perfectlib/makeupcam/camera/c;-><init>(Landroid/content/Context;Lcom/perfectcorp/perfectlib/core/BaseVenus;Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;ZLjava/lang/Object;)V

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/PhotoMakeup$LiveMakeupCtrl;->I:Lcom/perfectcorp/perfectlib/makeupcam/camera/c;

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 0

    .line 502
    iput p1, p0, Lcom/perfectcorp/perfectlib/PhotoMakeup$LiveMakeupCtrl;->S:I

    return-void
.end method

.method public final a(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/perfectcorp/perfectlib/makeupcam/camera/q;)V
    .locals 22

    move-object/from16 v0, p0

    sget-object v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->L:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    :try_start_0
    invoke-virtual/range {p7 .. p7}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v2, 0x14

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Lcom/perfectcorp/perfectlib/PhotoMakeup$LiveMakeupCtrl;->E:I

    invoke-virtual/range {p7 .. p7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v4, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v6, v0, Lcom/perfectcorp/perfectlib/PhotoMakeup$LiveMakeupCtrl;->D:[F

    iget-object v8, v0, Lcom/perfectcorp/perfectlib/PhotoMakeup$LiveMakeupCtrl;->B:[F

    iget-object v9, v0, Lcom/perfectcorp/perfectlib/PhotoMakeup$LiveMakeupCtrl;->A:[F

    iget-object v10, v0, Lcom/perfectcorp/perfectlib/PhotoMakeup$LiveMakeupCtrl;->w:[F

    iget-object v11, v0, Lcom/perfectcorp/perfectlib/PhotoMakeup$LiveMakeupCtrl;->v:[I

    iget-object v12, v0, Lcom/perfectcorp/perfectlib/PhotoMakeup$LiveMakeupCtrl;->u:[I

    iget-object v13, v0, Lcom/perfectcorp/perfectlib/PhotoMakeup$LiveMakeupCtrl;->t:[I

    iget-object v14, v0, Lcom/perfectcorp/perfectlib/PhotoMakeup$LiveMakeupCtrl;->s:[Lcom/perfectcorp/perfectlib/makeupcam/camera/n;

    iget-object v15, v0, Lcom/perfectcorp/perfectlib/PhotoMakeup$LiveMakeupCtrl;->r:[Lcom/perfectcorp/perfectlib/makeupcam/camera/n;

    iget-object v3, v0, Lcom/perfectcorp/perfectlib/PhotoMakeup$LiveMakeupCtrl;->z:[[Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringJointSettings;

    iget-object v2, v0, Lcom/perfectcorp/perfectlib/PhotoMakeup$LiveMakeupCtrl;->y:[[Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringChainSettings;

    iget-object v7, v0, Lcom/perfectcorp/perfectlib/PhotoMakeup$LiveMakeupCtrl;->x:[[Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringObjectSettings;

    move-object/from16 v18, v1

    const/16 v1, 0x32

    if-eqz v5, :cond_9

    :try_start_1
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    move-object/from16 v19, v2

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_0

    aget-object v20, v7, v4

    new-instance v21, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringObjectSettings;

    invoke-direct/range {v21 .. v21}, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringObjectSettings;-><init>()V

    aput-object v21, v20, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_2
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_1

    aget-object v1, v7, v4

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringObjectSettings;

    aput-object v21, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_1
    move-object/from16 v1, p1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/n;

    aput-object v2, v15, v4

    move-object/from16 v2, p2

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/perfectcorp/perfectlib/makeupcam/camera/n;

    aput-object v5, v14, v4

    move-object/from16 v5, p3

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aput v7, v13, v4

    move-object/from16 v7, p4

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    aput v13, v12, v4

    move-object/from16 v12, p5

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    aput v13, v11, v4

    move-object/from16 v11, p6

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Float;

    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v13

    aput v13, v10, v4

    const/4 v10, 0x0

    :goto_3
    const/16 v13, 0x32

    if-ge v10, v13, :cond_2

    aget-object v13, v19, v4

    new-instance v14, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringChainSettings;

    invoke-direct {v14}, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringChainSettings;-><init>()V

    aput-object v14, v13, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_2
    move-object/from16 v10, p8

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    const/4 v14, 0x0

    :goto_4
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v15

    if-ge v14, v15, :cond_3

    aget-object v15, v19, v4

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringChainSettings;

    aput-object v21, v15, v14

    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    :cond_3
    const/4 v13, 0x0

    :goto_5
    const/16 v14, 0x32

    if-ge v13, v14, :cond_4

    aget-object v14, v3, v4

    new-instance v15, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringJointSettings;

    invoke-direct {v15}, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringJointSettings;-><init>()V

    aput-object v15, v14, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    :cond_4
    move-object/from16 v13, p9

    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/List;

    const/4 v15, 0x0

    :goto_6
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    if-ge v15, v1, :cond_5

    aget-object v1, v3, v4

    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringJointSettings;

    aput-object v19, v1, v15

    add-int/lit8 v15, v15, 0x1

    goto :goto_6

    :cond_5
    move-object/from16 v1, p10

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    aput v3, v9, v4

    move-object/from16 v3, p11

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Float;

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v9

    aput v9, v8, v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v8, 0x0

    :goto_7
    iget-object v9, v0, Lcom/perfectcorp/perfectlib/PhotoMakeup$LiveMakeupCtrl;->C:[[Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringConvexColliders;

    const/16 v14, 0x32

    if-ge v8, v14, :cond_6

    :try_start_2
    aget-object v9, v9, v4

    new-instance v14, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringConvexColliders;

    invoke-direct {v14}, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringConvexColliders;-><init>()V

    aput-object v14, v9, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    :cond_6
    move-object/from16 v8, p12

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/List;

    const/4 v15, 0x0

    :goto_8
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    if-ge v15, v1, :cond_7

    aget-object v1, v9, v4

    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringConvexColliders;

    aput-object v19, v1, v15

    add-int/lit8 v15, v15, 0x1

    goto :goto_8

    :cond_7
    move-object/from16 v1, p13

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    const/4 v14, 0x0

    :goto_9
    const/16 v15, 0x10

    if-ge v14, v15, :cond_8

    shl-int/lit8 v15, v4, 0x4

    add-int/2addr v15, v14

    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Float;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Float;->floatValue()F

    move-result v19

    aput v19, v6, v15

    add-int/lit8 v14, v14, 0x1

    goto :goto_9

    :cond_8
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v1, v18

    const/16 v2, 0x14

    goto/16 :goto_0

    :cond_9
    move-object/from16 v19, v2

    :goto_a
    const/16 v1, 0x14

    if-ge v4, v1, :cond_e

    const/4 v2, 0x0

    :goto_b
    const/16 v5, 0x32

    if-ge v2, v5, :cond_a

    aget-object v5, v7, v4

    new-instance v16, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringObjectSettings;

    invoke-direct/range {v16 .. v16}, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringObjectSettings;-><init>()V

    aput-object v16, v5, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_a
    new-instance v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/n;

    invoke-direct {v2}, Lcom/perfectcorp/perfectlib/makeupcam/camera/n;-><init>()V

    aput-object v2, v15, v4

    new-instance v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/n;

    invoke-direct {v2}, Lcom/perfectcorp/perfectlib/makeupcam/camera/n;-><init>()V

    aput-object v2, v14, v4

    const/4 v2, -0x1

    aput v2, v13, v4

    aput v2, v12, v4

    const/4 v2, -0x2

    aput v2, v11, v4

    const/4 v2, 0x0

    aput v2, v10, v4

    const/4 v5, 0x0

    :goto_c
    const/16 v1, 0x32

    if-ge v5, v1, :cond_b

    aget-object v1, v19, v4

    new-instance v18, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringChainSettings;

    invoke-direct/range {v18 .. v18}, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringChainSettings;-><init>()V

    aput-object v18, v1, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_c

    :cond_b
    move v5, v1

    const/4 v1, 0x0

    :goto_d
    if-ge v1, v5, :cond_c

    aget-object v18, v3, v4

    new-instance v20, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringJointSettings;

    invoke-direct/range {v20 .. v20}, Lcom/perfectcorp/perfectlib/makeupcam/camera/EarringJointSettings;-><init>()V

    aput-object v20, v18, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_c
    aput v2, v9, v4

    aput v2, v8, v4

    move/from16 p1, v2

    const/4 v1, 0x0

    const/16 v2, 0x10

    :goto_e
    if-ge v1, v2, :cond_d

    shl-int/lit8 v17, v4, 0x4

    add-int v17, v17, v1

    aput p1, v6, v17

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_d
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    :cond_e
    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/perfectcorp/perfectlib/PhotoMakeup$LiveMakeupCtrl;->F:Lcom/perfectcorp/perfectlib/makeupcam/camera/q;
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

    iget p0, p0, Lcom/perfectcorp/perfectlib/PhotoMakeup$LiveMakeupCtrl;->Q:I

    return p0
.end method

.method public final c()I
    .locals 0

    iget p0, p0, Lcom/perfectcorp/perfectlib/PhotoMakeup$LiveMakeupCtrl;->R:I

    return p0
.end method

.method public final d()V
    .locals 2

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/PhotoMakeup$LiveMakeupCtrl;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/PhotoMakeup$LiveMakeupCtrl;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v0

    :catchall_0
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/perfectcorp/perfectlib/PhotoMakeup$LiveMakeupCtrl;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_0

    :try_start_1
    iget-object v1, p0, Lcom/perfectcorp/perfectlib/PhotoMakeup$LiveMakeupCtrl;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

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

.method public final e()Z
    .locals 0

    iget-boolean p0, p0, Lcom/perfectcorp/perfectlib/PhotoMakeup$LiveMakeupCtrl;->P:Z

    return p0
.end method

.method public final f()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final g()Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/PhotoMakeup$LiveMakeupCtrl;->f:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveSettingCtrl;

    return-object p0
.end method

.method public final getFilter()Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/PhotoMakeup$LiveMakeupCtrl;->e:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;

    return-object p0
.end method

.method public final h(Lcom/perfectcorp/perfectlib/makeupcam/camera/BackgroundPayload;)V
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/PhotoMakeup$LiveMakeupCtrl;->I:Lcom/perfectcorp/perfectlib/makeupcam/camera/c;

    invoke-virtual {p0, p1}, Lcom/perfectcorp/perfectlib/makeupcam/camera/c;->b(Lcom/perfectcorp/perfectlib/makeupcam/camera/BackgroundPayload;)V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/makeupcam/camera/c;->a()V

    :cond_0
    return-void
.end method

.method public final i()Lcom/perfectcorp/perfectlib/internal/NecklaceFilter;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/PhotoMakeup$LiveMakeupCtrl;->L:Lcom/perfectcorp/perfectlib/internal/NecklaceFilter;

    return-object p0
.end method

.method public final j()Lcom/perfectcorp/perfectlib/AccessoryCamWrapper;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/PhotoMakeup$LiveMakeupCtrl;->M:Lcom/perfectcorp/perfectlib/AccessoryCamWrapper;

    return-object p0
.end method

.method public final k()I
    .locals 0

    iget p0, p0, Lcom/perfectcorp/perfectlib/PhotoMakeup$LiveMakeupCtrl;->S:I

    return p0
.end method

.method public final l(Lcom/perfectcorp/perfectlib/makeupcam/camera/LipShapeParameters;I)V
    .locals 1

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/PhotoMakeup$LiveMakeupCtrl;->G:[Lcom/perfectcorp/perfectlib/makeupcam/camera/LipShapeParameters;

    array-length v0, p0

    if-le v0, p2, :cond_0

    aput-object p1, p0, p2

    :cond_0
    return-void
.end method

.method public final m()Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate;
    .locals 0

    sget-object p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate;->e:Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate;

    return-object p0
.end method

.method public final n(IZ)V
    .locals 12

    sget-object v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->L:Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/PhotoMakeup$LiveMakeupCtrl;->e:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;

    iget-boolean v2, p0, Lcom/perfectcorp/perfectlib/PhotoMakeup$LiveMakeupCtrl;->O:Z

    if-nez v2, :cond_0

    sget-object v2, Lcom/cyberlink/clgpuimage/IBeautyFilter2$FilterType;->ENABLE_SMOOTH:Lcom/cyberlink/clgpuimage/IBeautyFilter2$FilterType;

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/cyberlink/clgpuimage/IBeautyFilter2$FilterType;->LIVE_SMOOTH:Lcom/cyberlink/clgpuimage/IBeautyFilter2$FilterType;

    :goto_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lcom/cyberlink/clgpuimage/IBeautyFilter2$FilterType;->LIVE_SMOOTH:Lcom/cyberlink/clgpuimage/IBeautyFilter2$FilterType;

    if-eq v3, v2, :cond_1

    sget-object v3, Lcom/cyberlink/clgpuimage/IBeautyFilter2$FilterType;->ENABLE_SMOOTH:Lcom/cyberlink/clgpuimage/IBeautyFilter2$FilterType;

    if-eq v3, v2, :cond_1

    goto :goto_1

    :cond_1
    iput-object v2, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->H6:Lcom/cyberlink/clgpuimage/IBeautyFilter2$FilterType;

    :goto_1
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez p1, :cond_5

    :try_start_0
    iget-object v6, p0, Lcom/perfectcorp/perfectlib/PhotoMakeup$LiveMakeupCtrl;->b:Lcom/perfectcorp/perfectlib/core/BaseVenus;

    iget-boolean v4, p0, Lcom/perfectcorp/perfectlib/PhotoMakeup$LiveMakeupCtrl;->O:Z

    if-nez v4, :cond_2

    if-eqz p2, :cond_2

    move v7, v3

    goto :goto_2

    :cond_2
    move v7, v2

    :goto_2
    iget-boolean v4, p0, Lcom/perfectcorp/perfectlib/PhotoMakeup$LiveMakeupCtrl;->O:Z

    if-eqz v4, :cond_3

    move v8, v1

    goto :goto_3

    :cond_3
    iget v4, p0, Lcom/perfectcorp/perfectlib/PhotoMakeup$LiveMakeupCtrl;->S:I

    int-to-float v4, v4

    move v8, v4

    :goto_3
    iget-boolean v4, p0, Lcom/perfectcorp/perfectlib/PhotoMakeup$LiveMakeupCtrl;->O:Z

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/perfectcorp/perfectlib/PhotoMakeup$LiveMakeupCtrl;->e:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;

    iget-boolean v4, v4, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->G6:Z

    if-eqz v4, :cond_4

    iget v4, p0, Lcom/perfectcorp/perfectlib/PhotoMakeup$LiveMakeupCtrl;->S:I

    int-to-float v4, v4

    move v9, v4

    goto :goto_4

    :cond_4
    move v9, v1

    :goto_4
    iget-wide v4, v6, Lcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;->a:J

    invoke-static/range {v4 .. v9}, Lcom/perfectcorp/perfectlib/jniproxy/UIMakeupJNI;->CUIMakeupLive_SetSkinSmoothFilterStatus(JLcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;ZFF)Z

    :cond_5
    iget v4, p0, Lcom/perfectcorp/perfectlib/PhotoMakeup$LiveMakeupCtrl;->N:I

    if-ne v4, p1, :cond_9

    iget-object v7, p0, Lcom/perfectcorp/perfectlib/PhotoMakeup$LiveMakeupCtrl;->b:Lcom/perfectcorp/perfectlib/core/BaseVenus;

    iget-boolean v4, p0, Lcom/perfectcorp/perfectlib/PhotoMakeup$LiveMakeupCtrl;->O:Z

    if-eqz v4, :cond_6

    if-eqz p2, :cond_6

    move v8, v3

    goto :goto_5

    :cond_6
    move v8, v2

    :goto_5
    iget-boolean v4, p0, Lcom/perfectcorp/perfectlib/PhotoMakeup$LiveMakeupCtrl;->O:Z

    if-eqz v4, :cond_7

    iget v4, p0, Lcom/perfectcorp/perfectlib/PhotoMakeup$LiveMakeupCtrl;->S:I

    int-to-float v4, v4

    move v9, v4

    goto :goto_6

    :cond_7
    move v9, v1

    :goto_6
    iget-object v4, p0, Lcom/perfectcorp/perfectlib/PhotoMakeup$LiveMakeupCtrl;->e:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;

    iget-boolean v4, v4, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->G6:Z

    if-eqz v4, :cond_8

    iget v1, p0, Lcom/perfectcorp/perfectlib/PhotoMakeup$LiveMakeupCtrl;->S:I

    int-to-float v1, v1

    :cond_8
    move v10, v1

    iget-wide v5, v7, Lcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;->a:J

    move v11, p1

    invoke-static/range {v5 .. v11}, Lcom/perfectcorp/perfectlib/jniproxy/UIMakeupJNI;->CUIMakeupLive_SetSkinSmoothV2FilterStatus(JLcom/perfectcorp/perfectlib/jniproxy/CUIMakeupLive;ZFFI)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_9
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    iget-object p1, p0, Lcom/perfectcorp/perfectlib/PhotoMakeup$LiveMakeupCtrl;->e:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;

    sget-object v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$MakeupLiveFeatures;->SMOOTH:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$MakeupLiveFeatures;

    iget-boolean v1, p0, Lcom/perfectcorp/perfectlib/PhotoMakeup$LiveMakeupCtrl;->O:Z

    if-nez v1, :cond_a

    if-eqz p2, :cond_a

    move v1, v3

    goto :goto_7

    :cond_a
    move v1, v2

    :goto_7
    invoke-virtual {p1, v0, v1}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->E(Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$MakeupLiveFeatures;Z)V

    iget-object p1, p0, Lcom/perfectcorp/perfectlib/PhotoMakeup$LiveMakeupCtrl;->e:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;

    sget-object v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$MakeupLiveFeatures;->SMOOTH_V2:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$MakeupLiveFeatures;

    iget-boolean p0, p0, Lcom/perfectcorp/perfectlib/PhotoMakeup$LiveMakeupCtrl;->O:Z

    if-eqz p0, :cond_b

    if-eqz p2, :cond_b

    move v2, v3

    :cond_b
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

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/PhotoMakeup$LiveMakeupCtrl;->b:Lcom/perfectcorp/perfectlib/core/BaseVenus;

    return-object p0
.end method
