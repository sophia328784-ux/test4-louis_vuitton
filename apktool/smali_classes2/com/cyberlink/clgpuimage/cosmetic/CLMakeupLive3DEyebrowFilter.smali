.class public final Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;
.super Lcom/cyberlink/clgpuimage/GPUImageFilter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter$d;,
        Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter$c;,
        Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter$e;,
        Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter$f;,
        Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter$g;,
        Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter$a;,
        Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter$b;,
        Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter$LiveEyebrow3DMetadata;,
        Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter$EyebrowMode;
    }
.end annotation


# static fields
.field public static final n1:[F


# instance fields
.field public A:I

.field public A0:[Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;

.field public B:I

.field public B0:Z

.field public C:I

.field public C0:I

.field public D:I

.field public D0:I

.field public E:I

.field public E0:Landroid/graphics/Bitmap;

.field public F:I

.field public F0:I

.field public G:I

.field public final G0:[F

.field public H:I

.field public final H0:[F

.field public I:I

.field public final I0:[F

.field public J:I

.field public final J0:F

.field public K:I

.field public K0:Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;

.field public L:I

.field public final L0:Ljava/lang/Object;

.field public M:I

.field public final M0:[F

.field public N:I

.field public final N0:[F

.field public O:I

.field public O0:F

.field public P:I

.field public P0:F

.field public Q:I

.field public final Q0:[F

.field public R:I

.field public final R0:[F

.field public S:I

.field public final S0:[F

.field public T:I

.field public T0:F

.field public U:I

.field public final U0:[F

.field public V:I

.field public final V0:[F

.field public W:I

.field public final W0:[F

.field public X:I

.field public final X0:[F

.field public Y:I

.field public final Y0:[F

.field public Z:I

.field public final Z0:[F

.field public a0:I

.field public final a1:[F

.field public b0:I

.field public final b1:[F

.field public c0:I

.field public final c1:[F

.field public d0:I

.field public final d1:[F

.field public e0:I

.field public final e1:[F

.field public f0:I

.field public final f1:[F

.field public g0:I

.field public final g1:[F

.field public h0:I

.field public final h1:[F

.field public i0:I

.field public final i1:[F

.field public j0:I

.field public j1:I

.field public k0:I

.field public k1:F

.field public l0:I

.field public l1:F

.field public m0:I

.field public final m1:Ljava/nio/FloatBuffer;

.field public n0:I

.field public final o:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveDynamicRangeMetadata;

.field public o0:I

.field public p:I

.field public p0:I

.field public q:I

.field public q0:I

.field public r:I

.field public r0:I

.field public s:I

.field public s0:I

.field public t:I

.field public t0:I

.field public u:I

.field public u0:I

.field public v:I

.field public final v0:[F

.field public w:I

.field public final w0:[F

.field public x:I

.field public final x0:[F

.field public y:I

.field public y0:[Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;

.field public z:Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;

.field public final z0:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->n1:[F

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 5

    sget-object v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter$e;->a:[C

    invoke-static {v0}, Lcom/cyberlink/clgpuimage/CLMakeupLiveDecode;->a([C)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter$c;->a:[C

    invoke-static {v1}, Lcom/cyberlink/clgpuimage/CLMakeupLiveDecode;->a([C)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter$d;->a:[C

    invoke-static {v2}, Lcom/cyberlink/clgpuimage/CLMakeupLiveDecode;->a([C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/cyberlink/clgpuimage/GPUImageFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveDynamicRangeMetadata;

    invoke-direct {v0}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveDynamicRangeMetadata;-><init>()V

    iput-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->o:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveDynamicRangeMetadata;

    new-instance v0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;

    invoke-direct {v0}, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;-><init>()V

    iput-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->z:Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;

    const/16 v0, 0xc

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->v0:[F

    const/16 v0, 0x9

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->w0:[F

    const/16 v1, 0x10

    new-array v2, v1, [F

    iput-object v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->x0:[F

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->z0:Ljava/lang/Object;

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->B0:Z

    const/16 v3, 0x5a

    iput v3, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->C0:I

    iput v3, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->D0:I

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->E0:Landroid/graphics/Bitmap;

    const/4 v4, -0x1

    iput v4, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->F0:I

    new-array v4, v1, [F

    iput-object v4, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->G0:[F

    new-array v4, v1, [F

    iput-object v4, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->H0:[F

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->I0:[F

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->J0:F

    iput-object v3, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->K0:Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->L0:Ljava/lang/Object;

    const/4 v1, 0x3

    new-array v3, v1, [F

    fill-array-data v3, :array_0

    iput-object v3, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->M0:[F

    new-array v3, v1, [F

    fill-array-data v3, :array_1

    iput-object v3, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->N0:[F

    const/high16 v3, 0x42480000    # 50.0f

    iput v3, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->O0:F

    const/4 v3, 0x0

    iput v3, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->P0:F

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->Q0:[F

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->R0:[F

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->S0:[F

    const/4 v0, 0x6

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->U0:[F

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->V0:[F

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->W0:[F

    const/4 v1, 0x4

    new-array v3, v1, [F

    iput-object v3, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->X0:[F

    const/4 v3, 0x2

    new-array v4, v3, [F

    iput-object v4, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->Y0:[F

    new-array v4, v0, [F

    iput-object v4, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->Z0:[F

    new-array v4, v1, [F

    iput-object v4, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->a1:[F

    new-array v4, v3, [F

    iput-object v4, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->b1:[F

    new-array v4, v0, [F

    iput-object v4, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->c1:[F

    new-array v4, v1, [F

    iput-object v4, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->d1:[F

    new-array v4, v3, [F

    iput-object v4, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->e1:[F

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->f1:[F

    new-array v0, v1, [F

    iput-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->g1:[F

    new-array v0, v3, [F

    iput-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->h1:[F

    new-array v0, v3, [F

    iput-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->i1:[F

    const/16 v0, 0x8

    shl-int/2addr v0, v3

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    sget-object v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->n1:[F

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iput-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->m1:Ljava/nio/FloatBuffer;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public static j(II[F)V
    .locals 2

    aget v0, p2, p1

    add-int/lit8 v1, p1, 0x1

    aget v1, p2, v1

    add-int/lit8 p1, p1, 0x2

    aget p1, p2, p1

    invoke-static {p0, v0, v1, p1}, Landroid/opengl/GLES20;->glUniform3f(IFFF)V

    return-void
.end method

.method public static m([FI)V
    .locals 4

    and-int/lit16 v0, p1, 0xff

    shr-int/lit8 v1, p1, 0x8

    and-int/lit16 v1, v1, 0xff

    shr-int/lit8 p1, p1, 0x10

    and-int/lit16 p1, p1, 0xff

    int-to-float p1, p1

    const/high16 v2, 0x437f0000    # 255.0f

    div-float/2addr p1, v2

    const/4 v3, 0x0

    aput p1, p0, v3

    int-to-float p1, v1

    div-float/2addr p1, v2

    const/4 v1, 0x1

    aput p1, p0, v1

    int-to-float p1, v0

    div-float/2addr p1, v2

    const/4 v0, 0x2

    aput p1, p0, v0

    return-void
.end method

.method public static n([F[F[F)V
    .locals 11

    const/4 v0, 0x0

    aget v1, p0, v0

    aget v2, p1, v0

    mul-float/2addr v1, v2

    const/4 v2, 0x1

    aget v3, p0, v2

    const/4 v4, 0x3

    aget v5, p1, v4

    mul-float v6, v3, v5

    add-float/2addr v6, v1

    aput v6, p2, v0

    aget v1, p0, v0

    aget v6, p1, v2

    mul-float/2addr v6, v1

    const/4 v7, 0x4

    aget v8, p1, v7

    mul-float/2addr v3, v8

    add-float/2addr v3, v6

    aput v3, p2, v2

    const/4 v3, 0x2

    aget v6, p1, v3

    mul-float/2addr v1, v6

    aget v6, p0, v2

    const/4 v9, 0x5

    aget v10, p1, v9

    mul-float/2addr v6, v10

    add-float/2addr v6, v1

    aget v1, p0, v3

    add-float/2addr v6, v1

    aput v6, p2, v3

    aget v1, p0, v4

    aget v0, p1, v0

    mul-float/2addr v1, v0

    aget v0, p0, v7

    mul-float/2addr v5, v0

    add-float/2addr v5, v1

    aput v5, p2, v4

    aget v1, p0, v4

    aget v2, p1, v2

    mul-float/2addr v2, v1

    mul-float/2addr v0, v8

    add-float/2addr v0, v2

    aput v0, p2, v7

    aget p1, p1, v3

    mul-float/2addr v1, p1

    aget p1, p0, v7

    mul-float/2addr p1, v10

    add-float/2addr p1, v1

    aget p0, p0, v9

    add-float/2addr p1, p0

    aput p1, p2, v9

    return-void
.end method

.method public static r([FI)V
    .locals 4

    const/4 v0, 0x0

    aget v0, p0, v0

    const/4 v1, 0x1

    aget v1, p0, v1

    const/4 v2, 0x2

    aget v2, p0, v2

    const/4 v3, 0x3

    aget p0, p0, v3

    invoke-static {p1, v0, v1, v2, p0}, Landroid/opengl/GLES20;->glUniform4f(IFFFF)V

    return-void
.end method


# virtual methods
.method public final k(Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;)V
    .locals 1

    iget-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->L0:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->K0:Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;

    iput-object p2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->z:Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final l(Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter$LiveEyebrow3DMetadata;Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveDynamicRangeMetadata;F)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->z0:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->o:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveDynamicRangeMetadata;

    move-object/from16 v4, p2

    invoke-virtual {v3, v4}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveDynamicRangeMetadata;->Copy(Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveDynamicRangeMetadata;)V

    iget-boolean v3, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter$LiveEyebrow3DMetadata;->is_valid:Z

    iput-boolean v3, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->B0:Z

    if-nez v3, :cond_0

    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    goto/16 :goto_c

    :cond_0
    iget v3, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter$LiveEyebrow3DMetadata;->rotation:I

    iput v3, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->C0:I

    iget v3, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter$LiveEyebrow3DMetadata;->analyzing_frame_width:I

    iget v4, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter$LiveEyebrow3DMetadata;->analyzing_frame_height:I

    mul-int/2addr v3, v4

    int-to-float v3, v3

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    const-wide/high16 v5, 0x4069000000000000L    # 200.0

    div-double/2addr v3, v5

    const-wide/high16 v5, 0x4010000000000000L    # 4.0

    sub-double/2addr v3, v5

    const-wide/16 v5, 0x0

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(DD)D

    move-result-wide v3

    const-wide/high16 v5, 0x4022000000000000L    # 9.0

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(DD)D

    move-result-wide v3

    double-to-float v3, v3

    iput v3, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->k1:F

    move/from16 v3, p3

    iput v3, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->l1:F

    iget-object v3, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter$LiveEyebrow3DMetadata;->pnp_matrix:[F

    iget-object v4, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->v0:[F

    const/16 v5, 0xc

    const/4 v6, 0x0

    invoke-static {v3, v6, v4, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter$LiveEyebrow3DMetadata;->camera_matrix:[F

    iget-object v4, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->w0:[F

    const/16 v5, 0x9

    invoke-static {v3, v6, v4, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter$LiveEyebrow3DMetadata;->normal_pnp_matrix:[F

    iget-object v4, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->x0:[F

    const/16 v5, 0x10

    invoke-static {v3, v6, v4, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->o:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveDynamicRangeMetadata;

    iget-object v4, v3, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveDynamicRangeMetadata;->left_min_rgb:[F

    iget-object v3, v3, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveDynamicRangeMetadata;->left_max_rgb:[F

    const/4 v5, 0x3

    new-array v7, v5, [F

    move v8, v6

    :goto_0
    if-ge v8, v5, :cond_1

    aget v9, v4, v8

    aget v10, v3, v8

    sub-float/2addr v10, v9

    iget-object v11, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->M0:[F

    aget v11, v11, v8

    mul-float/2addr v10, v11

    add-float/2addr v10, v9

    aput v10, v7, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_1
    iget-object v3, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->o:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveDynamicRangeMetadata;

    iget-object v4, v3, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveDynamicRangeMetadata;->right_min_rgb:[F

    iget-object v3, v3, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveDynamicRangeMetadata;->right_max_rgb:[F

    new-array v8, v5, [F

    move v9, v6

    :goto_1
    if-ge v9, v5, :cond_2

    aget v10, v4, v9

    aget v11, v3, v9

    sub-float/2addr v11, v10

    iget-object v12, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->M0:[F

    aget v12, v12, v9

    mul-float/2addr v11, v12

    add-float/2addr v11, v10

    aput v11, v8, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_2
    move v3, v6

    :goto_2
    const/high16 v4, 0x40000000    # 2.0f

    if-ge v3, v5, :cond_3

    iget-object v9, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->Q0:[F

    aget v10, v7, v3

    aget v11, v8, v3

    add-float/2addr v10, v11

    div-float/2addr v10, v4

    aput v10, v9, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    iget v3, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter$LiveEyebrow3DMetadata;->intensity:I

    int-to-float v3, v3

    const/high16 v7, 0x42c80000    # 100.0f

    div-float/2addr v3, v7

    mul-float/2addr v3, v4

    iput v3, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->O0:F

    new-array v3, v5, [F

    fill-array-data v3, :array_0

    const/4 v7, 0x0

    move v8, v6

    move v9, v7

    move v10, v9

    :goto_3
    const/4 v11, 0x2

    const/4 v12, 0x1

    if-ge v8, v5, :cond_5

    new-array v13, v5, [F

    fill-array-data v13, :array_1

    new-array v14, v5, [F

    fill-array-data v14, :array_2

    iget-object v15, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter$LiveEyebrow3DMetadata;->left_brow_color:[I

    aget v15, v15, v8

    invoke-static {v13, v15}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->m([FI)V

    iget-object v15, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter$LiveEyebrow3DMetadata;->right_brow_color:[I

    aget v15, v15, v8

    invoke-static {v14, v15}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->m([FI)V

    move v15, v6

    :goto_4
    move/from16 p2, v4

    if-ge v15, v5, :cond_4

    iget-object v4, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->R0:[F

    mul-int/lit8 v16, v8, 0x3

    add-int v16, v16, v15

    aget v17, v13, v15

    aput v17, v4, v16

    iget-object v4, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->S0:[F

    aget v17, v14, v15

    aput v17, v4, v16

    add-int/lit8 v15, v15, 0x1

    move/from16 v4, p2

    goto :goto_4

    :cond_4
    aget v4, v13, v6

    const/high16 v15, 0x40a00000    # 5.0f

    mul-float/2addr v4, v15

    aget v16, v13, v12

    const/high16 v17, 0x40c00000    # 6.0f

    mul-float v16, v16, v17

    add-float v16, v16, v4

    aget v4, v13, v11

    mul-float/2addr v4, v15

    add-float v4, v4, v16

    const/high16 v13, 0x41800000    # 16.0f

    div-float/2addr v4, v13

    aget v16, v3, v8

    mul-float v4, v4, v16

    add-float/2addr v9, v4

    aget v4, v14, v6

    mul-float/2addr v4, v15

    aget v12, v14, v12

    mul-float v12, v12, v17

    add-float/2addr v12, v4

    aget v4, v14, v11

    mul-float/2addr v4, v15

    add-float/2addr v4, v12

    div-float/2addr v4, v13

    mul-float v4, v4, v16

    add-float/2addr v10, v4

    add-int/lit8 v8, v8, 0x1

    move/from16 v4, p2

    goto :goto_3

    :cond_5
    move/from16 p2, v4

    add-float/2addr v9, v10

    div-float v9, v9, p2

    iput v9, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->T0:F

    move v3, v6

    :goto_5
    const/high16 v4, 0x437f0000    # 255.0f

    if-ge v3, v5, :cond_6

    iget-object v8, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->R0:[F

    mul-int/lit8 v9, v3, 0x3

    aget v8, v8, v9

    mul-float/2addr v8, v4

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    iget-object v10, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->R0:[F

    add-int/lit8 v13, v9, 0x1

    aget v10, v10, v13

    mul-float/2addr v10, v4

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v10

    iget-object v14, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->R0:[F

    add-int/lit8 v15, v9, 0x2

    aget v14, v14, v15

    mul-float/2addr v14, v4

    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v14

    move/from16 p2, v4

    const/16 v4, 0xff

    invoke-static {v4, v8, v10, v14}, Landroid/graphics/Color;->argb(IIII)I

    move-result v8

    iget-object v10, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->E0:Landroid/graphics/Bitmap;

    invoke-virtual {v10, v3, v6, v8}, Landroid/graphics/Bitmap;->setPixel(III)V

    iget-object v8, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->S0:[F

    aget v8, v8, v9

    mul-float v8, v8, p2

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    iget-object v9, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->S0:[F

    aget v9, v9, v13

    mul-float v9, v9, p2

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    iget-object v10, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->S0:[F

    aget v10, v10, v15

    mul-float v10, v10, p2

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v10

    invoke-static {v4, v8, v9, v10}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    iget-object v8, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->E0:Landroid/graphics/Bitmap;

    invoke-virtual {v8, v3, v12, v4}, Landroid/graphics/Bitmap;->setPixel(III)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_6
    move/from16 p2, v4

    move v3, v6

    :goto_6
    const/4 v4, 0x6

    if-ge v3, v4, :cond_7

    iget-object v4, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->U0:[F

    iget-object v8, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter$LiveEyebrow3DMetadata;->left_skin_color_luma:[F

    aget v8, v8, v3

    div-float v8, v8, p2

    aput v8, v4, v3

    iget-object v4, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->V0:[F

    iget-object v8, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter$LiveEyebrow3DMetadata;->right_skin_color_luma:[F

    aget v8, v8, v3

    div-float v8, v8, p2

    aput v8, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_7
    iget v3, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->C0:I

    const/16 v8, 0x10e

    const/16 v9, 0xb4

    const/16 v10, 0x5a

    if-eqz v3, :cond_9

    if-eq v3, v10, :cond_9

    if-eq v3, v9, :cond_9

    if-ne v3, v8, :cond_8

    goto :goto_7

    :cond_8
    move v3, v6

    goto :goto_8

    :cond_9
    :goto_7
    iget v13, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->D0:I

    sub-int/2addr v3, v13

    if-gez v3, :cond_a

    add-int/lit16 v3, v3, 0x168

    :cond_a
    :goto_8
    new-array v13, v4, [F

    aput v7, v13, v6

    aput v7, v13, v12

    aput v7, v13, v11

    aput v7, v13, v5

    const/4 v14, 0x4

    aput v7, v13, v14

    const/4 v15, 0x5

    aput v7, v13, v15

    const/high16 v16, -0x40800000    # -1.0f

    const/high16 v17, 0x3f800000    # 1.0f

    if-ne v3, v10, :cond_b

    aput v16, v13, v12

    aput v17, v13, v11

    aput v17, v13, v5

    goto :goto_9

    :cond_b
    if-ne v3, v9, :cond_c

    aput v16, v13, v6

    aput v17, v13, v11

    aput v16, v13, v14

    aput v17, v13, v15

    goto :goto_9

    :cond_c
    if-ne v3, v8, :cond_d

    aput v17, v13, v12

    aput v16, v13, v5

    aput v17, v13, v15

    goto :goto_9

    :cond_d
    aput v17, v13, v6

    aput v17, v13, v14

    :goto_9
    new-array v3, v4, [F

    aput v7, v3, v6

    aput v7, v3, v12

    aput v7, v3, v11

    aput v7, v3, v5

    aput v7, v3, v14

    aput v7, v3, v15

    iget v5, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->J0:F

    cmpl-float v5, v5, v7

    if-lez v5, :cond_e

    aput v17, v3, v6

    aput v16, v3, v14

    aput v17, v3, v15

    goto :goto_a

    :cond_e
    aput v17, v3, v6

    aput v17, v3, v14

    :goto_a
    new-array v4, v4, [F

    fill-array-data v4, :array_3

    invoke-static {v13, v3, v4}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->n([F[F[F)V

    iget-object v3, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter$LiveEyebrow3DMetadata;->left_upper_transform_factors:[F

    iget-object v5, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->W0:[F

    invoke-static {v3, v4, v5}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->n([F[F[F)V

    iget-object v3, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter$LiveEyebrow3DMetadata;->left_lower_transform_factors:[F

    iget-object v5, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->Z0:[F

    invoke-static {v3, v4, v5}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->n([F[F[F)V

    iget-object v3, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter$LiveEyebrow3DMetadata;->right_upper_transform_factors:[F

    iget-object v5, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->c1:[F

    invoke-static {v3, v4, v5}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->n([F[F[F)V

    iget-object v3, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter$LiveEyebrow3DMetadata;->right_lower_transform_factors:[F

    iget-object v5, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->f1:[F

    invoke-static {v3, v4, v5}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->n([F[F[F)V

    iget-object v3, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter$LiveEyebrow3DMetadata;->left_upper_parabola_side_coords:[F

    iget-object v4, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->X0:[F

    invoke-static {v3, v6, v4, v6, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter$LiveEyebrow3DMetadata;->left_upper_parabola_inter_factors:[F

    iget-object v4, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->Y0:[F

    invoke-static {v3, v6, v4, v6, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter$LiveEyebrow3DMetadata;->left_lower_parabola_side_coords:[F

    iget-object v4, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->a1:[F

    invoke-static {v3, v6, v4, v6, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter$LiveEyebrow3DMetadata;->left_lower_parabola_inter_factors:[F

    iget-object v4, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->b1:[F

    invoke-static {v3, v6, v4, v6, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter$LiveEyebrow3DMetadata;->right_upper_parabola_side_coords:[F

    iget-object v4, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->d1:[F

    invoke-static {v3, v6, v4, v6, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter$LiveEyebrow3DMetadata;->right_upper_parabola_inter_factors:[F

    iget-object v4, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->e1:[F

    invoke-static {v3, v6, v4, v6, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter$LiveEyebrow3DMetadata;->right_lower_parabola_side_coords:[F

    iget-object v4, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->g1:[F

    invoke-static {v3, v6, v4, v6, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter$LiveEyebrow3DMetadata;->right_lower_parabola_inter_factors:[F

    iget-object v4, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->h1:[F

    invoke-static {v3, v6, v4, v6, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter$LiveEyebrow3DMetadata;->left_right_brow_thickness:[F

    iget-object v4, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->i1:[F

    invoke-static {v3, v6, v4, v6, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter$LiveEyebrow3DMetadata;->eyebrow_mode:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter$EyebrowMode;

    sget-object v4, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter$EyebrowMode;->EYEBROW_ORIGINAL_MODE:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter$EyebrowMode;

    if-ne v3, v4, :cond_f

    iput v12, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->j1:I

    goto :goto_b

    :cond_f
    iput v6, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->j1:I

    :goto_b
    iget-object v3, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->y0:[Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;

    if-eqz v3, :cond_10

    iget-object v4, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter$LiveEyebrow3DMetadata;->texcoord_array:[F

    aget-object v3, v3, v6

    iget-object v5, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter$LiveEyebrow3DMetadata;->vertex_array:[F

    iget-object v7, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter$LiveEyebrow3DMetadata;->normal_array:[F

    invoke-virtual {v3, v5, v7, v4}, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->UpdateCoordinates([F[F[F)V

    :cond_10
    iget-object v0, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->A0:[Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;

    if-eqz v0, :cond_11

    iget-object v3, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter$LiveEyebrow3DMetadata;->texcoord_array:[F

    aget-object v0, v0, v6

    iget-object v4, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter$LiveEyebrow3DMetadata;->vertex_array:[F

    iget-object v1, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter$LiveEyebrow3DMetadata;->normal_array:[F

    invoke-virtual {v0, v4, v1, v3}, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->UpdateCoordinates([F[F[F)V

    :cond_11
    monitor-exit v2

    return-void

    :goto_c
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :array_0
    .array-data 4
        0x3e4ccccd    # 0.2f
        0x3f000000    # 0.5f
        0x3e99999a    # 0.3f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public final o()V
    .locals 27

    move-object/from16 v0, p0

    iget v1, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->C0:I

    iget v2, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->D0:I

    sub-int/2addr v1, v2

    if-gez v1, :cond_0

    add-int/lit16 v1, v1, 0x168

    :cond_0
    const/4 v2, 0x0

    move v3, v2

    :goto_0
    iget-object v4, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->G0:[F

    const/4 v5, 0x4

    const/4 v6, 0x3

    if-ge v3, v5, :cond_2

    move v5, v2

    :goto_1
    if-ge v5, v6, :cond_1

    shl-int/lit8 v7, v3, 0x2

    add-int/2addr v7, v5

    shl-int/lit8 v8, v5, 0x2

    add-int/2addr v8, v3

    iget-object v9, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->v0:[F

    aget v8, v9, v8

    aput v8, v4, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const/16 v3, 0xb

    const/4 v7, 0x0

    aput v7, v4, v3

    const/4 v8, 0x7

    aput v7, v4, v8

    aput v7, v4, v6

    const/16 v9, 0xf

    const/high16 v10, 0x3f800000    # 1.0f

    aput v10, v4, v9

    move v4, v2

    :goto_2
    if-ge v4, v5, :cond_4

    move v11, v2

    :goto_3
    if-ge v11, v5, :cond_3

    shl-int/lit8 v12, v4, 0x2

    add-int/2addr v12, v11

    shl-int/lit8 v13, v11, 0x2

    add-int/2addr v13, v4

    iget-object v14, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->x0:[F

    aget v13, v14, v13

    iget-object v14, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->H0:[F

    aput v13, v14, v12

    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_4
    const/16 v4, 0x9

    new-array v11, v4, [F

    new-array v12, v4, [F

    aput v10, v12, v2

    const/4 v13, 0x1

    aput v7, v12, v13

    const/4 v14, 0x2

    aput v7, v12, v14

    aput v7, v12, v6

    aput v10, v12, v5

    const/4 v15, 0x5

    aput v7, v12, v15

    const/16 v16, 0x6

    aput v7, v12, v16

    aput v7, v12, v8

    const/16 v17, 0x8

    aput v10, v12, v17

    move/from16 v18, v3

    const/16 v3, 0x5a

    move/from16 v19, v3

    if-eq v1, v3, :cond_5

    const/16 v3, 0x10e

    if-ne v1, v3, :cond_6

    :cond_5
    aput v7, v12, v5

    aput v7, v12, v2

    aput v10, v12, v6

    aput v10, v12, v13

    :cond_6
    move v3, v2

    :goto_4
    if-ge v3, v4, :cond_7

    aput v7, v11, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_7
    move v3, v2

    :goto_5
    move/from16 v20, v7

    if-ge v3, v6, :cond_a

    move v7, v2

    :goto_6
    move/from16 v21, v8

    if-ge v7, v6, :cond_9

    move v8, v2

    :goto_7
    if-ge v8, v6, :cond_8

    mul-int/lit8 v22, v3, 0x3

    add-int v22, v22, v7

    aget v23, v11, v22

    mul-int/lit8 v24, v8, 0x3

    add-int v25, v3, v24

    move/from16 v26, v9

    iget-object v9, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->w0:[F

    aget v9, v9, v25

    add-int v24, v24, v7

    aget v24, v12, v24

    mul-float v9, v9, v24

    add-float v9, v9, v23

    aput v9, v11, v22

    add-int/lit8 v8, v8, 0x1

    move/from16 v9, v26

    goto :goto_7

    :cond_8
    move/from16 v26, v9

    add-int/lit8 v7, v7, 0x1

    move/from16 v8, v21

    goto :goto_6

    :cond_9
    move/from16 v26, v9

    add-int/lit8 v3, v3, 0x1

    move/from16 v7, v20

    goto :goto_5

    :cond_a
    move/from16 v21, v8

    move/from16 v26, v9

    iget v3, v0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->g:I

    int-to-float v3, v3

    const/high16 v7, 0x40000000    # 2.0f

    div-float v3, v7, v3

    iget v8, v0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->h:I

    int-to-float v8, v8

    div-float/2addr v7, v8

    new-array v8, v4, [F

    aput v3, v8, v2

    aput v20, v8, v13

    aput v20, v8, v14

    aput v20, v8, v6

    aput v7, v8, v5

    aput v20, v8, v15

    const/high16 v3, -0x40800000    # -1.0f

    aput v3, v8, v16

    aput v3, v8, v21

    aput v10, v8, v17

    new-array v3, v4, [F

    move v7, v2

    :goto_8
    if-ge v7, v6, :cond_d

    move v9, v2

    :goto_9
    if-ge v9, v6, :cond_c

    mul-int/lit8 v10, v7, 0x3

    add-int v12, v10, v9

    aput v20, v3, v12

    move/from16 v22, v13

    move v13, v2

    :goto_a
    if-ge v13, v6, :cond_b

    aget v23, v3, v12

    add-int v24, v10, v13

    aget v24, v11, v24

    mul-int/lit8 v25, v13, 0x3

    add-int v25, v25, v9

    aget v25, v8, v25

    mul-float v24, v24, v25

    add-float v24, v24, v23

    aput v24, v3, v12

    add-int/lit8 v13, v13, 0x1

    goto :goto_a

    :cond_b
    add-int/lit8 v9, v9, 0x1

    move/from16 v13, v22

    goto :goto_9

    :cond_c
    move/from16 v22, v13

    add-int/lit8 v7, v7, 0x1

    goto :goto_8

    :cond_d
    move/from16 v22, v13

    new-array v7, v4, [F

    new-array v8, v5, [F

    fill-array-data v8, :array_0

    new-array v9, v5, [F

    fill-array-data v9, :array_1

    div-int/lit8 v1, v1, 0x5a

    add-int/2addr v1, v6

    rem-int/2addr v1, v5

    invoke-static {v3, v2, v7, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v3, v2

    :goto_b
    if-ge v3, v14, :cond_10

    if-nez v3, :cond_e

    aget v10, v8, v1

    goto :goto_c

    :cond_e
    aget v10, v9, v1

    :goto_c
    move v11, v2

    :goto_d
    if-ge v11, v6, :cond_f

    mul-int/lit8 v12, v11, 0x3

    add-int/2addr v12, v3

    aget v13, v7, v12

    mul-float/2addr v13, v10

    aput v13, v7, v12

    add-int/lit8 v11, v11, 0x1

    goto :goto_d

    :cond_f
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :cond_10
    aget v1, v7, v2

    iget-object v0, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->I0:[F

    aput v1, v0, v2

    aget v1, v7, v22

    aput v1, v0, v22

    aput v20, v0, v14

    aget v1, v7, v14

    aput v1, v0, v6

    aget v1, v7, v6

    aput v1, v0, v5

    aget v1, v7, v5

    aput v1, v0, v15

    aput v20, v0, v16

    aget v1, v7, v15

    aput v1, v0, v21

    aget v1, v7, v16

    aput v1, v0, v17

    aget v1, v7, v21

    aput v1, v0, v4

    const/16 v1, 0xa

    const v2, -0x407ff973    # -1.0001999f

    aput v2, v0, v1

    aget v1, v7, v17

    aput v1, v0, v18

    const/16 v1, 0xc

    aput v20, v0, v1

    const/16 v1, 0xd

    aput v20, v0, v1

    const/16 v1, 0xe

    const v2, -0x41b32a80    # -0.20003319f

    aput v2, v0, v1

    aput v20, v0, v26

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final onDestroy()V
    .locals 3

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->p:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->F0:I

    filled-new-array {v0}, [I

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->F0:I

    iget-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->z0:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->y0:[Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;

    iput-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->A0:[Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->z:Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;

    invoke-virtual {v0}, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;->DestroyData()V

    iget p0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->A:I

    invoke-static {p0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final onDraw(ILjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V
    .locals 9

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->L0:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->K0:Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;

    if-nez v0, :cond_1

    goto/16 :goto_2

    :cond_1
    iget-object v2, v0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;->frame_buffer:[I

    if-eqz v2, :cond_c

    iget-object v2, v0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;->frame_buffer_texture:[I

    if-eqz v2, :cond_c

    iget-object v2, v0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;->depth_buffer:[I

    if-nez v2, :cond_2

    goto/16 :goto_2

    :cond_2
    iget v2, v0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;->width:I

    if-lez v2, :cond_c

    iget v0, v0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;->height:I

    if-gtz v0, :cond_3

    goto/16 :goto_2

    :cond_3
    iget-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->z:Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;

    if-nez v0, :cond_4

    goto/16 :goto_2

    :cond_4
    iget-object v2, v0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;->frame_buffer:[I

    if-eqz v2, :cond_c

    iget-object v2, v0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;->frame_buffer_texture:[I

    if-eqz v2, :cond_c

    iget-object v2, v0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;->depth_buffer:[I

    if-nez v2, :cond_5

    goto/16 :goto_2

    :cond_5
    iget v2, v0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;->width:I

    if-lez v2, :cond_c

    iget v0, v0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;->height:I

    if-gtz v0, :cond_6

    goto/16 :goto_2

    :cond_6
    invoke-super {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->f()V

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->p()Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->K0:Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;

    iget v3, v0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;->width:I

    shr-int/2addr v3, v2

    iget v4, v0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;->height:I

    shr-int/2addr v4, v2

    invoke-virtual {v0}, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;->DestroyData()V

    iget-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->K0:Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;

    invoke-virtual {v0, v3, v4}, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;->CreateData(II)Z

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->p()Z

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto/16 :goto_4

    :cond_7
    :goto_0
    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->q()V

    iget v0, p0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->mGLProgId:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget v3, p0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->d:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x2

    const/16 v5, 0x1406

    move-object v8, p2

    invoke-static/range {v3 .. v8}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget p2, p0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->d:I

    invoke-static {p2}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget-object p2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->m1:Ljava/nio/FloatBuffer;

    invoke-virtual {p2, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget v3, p0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->f:I

    iget-object v8, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->m1:Ljava/nio/FloatBuffer;

    const/4 v4, 0x2

    const/16 v5, 0x1406

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v3 .. v8}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget p2, p0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->f:I

    invoke-static {p2}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    invoke-virtual {p3, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget v3, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->L:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x2

    const/16 v5, 0x1406

    move-object v8, p3

    invoke-static/range {v3 .. v8}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget p2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->L:I

    invoke-static {p2}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget-object p2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->K0:Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;

    iget-object p2, p2, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;->frame_buffer_texture:[I

    aget p2, p2, v0

    const/4 p3, -0x1

    const/16 v3, 0xde1

    if-eq p2, p3, :cond_8

    const p2, 0x84c6

    invoke-static {p2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    iget-object p2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->K0:Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;

    iget-object p2, p2, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;->frame_buffer_texture:[I

    aget p2, p2, v0

    invoke-static {v3, p2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget p2, p0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->e:I

    const/4 v4, 0x6

    invoke-static {p2, v4}, Landroid/opengl/GLES20;->glUniform1i(II)V

    :cond_8
    if-eq p1, p3, :cond_9

    const p2, 0x84c0

    invoke-static {p2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    invoke-static {v3, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->M:I

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glUniform1i(II)V

    :cond_9
    iget-object p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->z:Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;

    iget-object p1, p1, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;->frame_buffer_texture:[I

    aget p1, p1, v0

    const/4 p2, 0x4

    if-eq p1, p3, :cond_a

    const p1, 0x84c4

    invoke-static {p1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    iget-object p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->z:Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;

    iget-object p1, p1, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;->frame_buffer_texture:[I

    aget p1, p1, v0

    invoke-static {v3, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->O:I

    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    :cond_a
    iget-object p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->z0:Ljava/lang/Object;

    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget v4, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->P:I

    iget-object v5, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->W0:[F

    invoke-static {v4, v0, v5}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->j(II[F)V

    iget v4, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->Q:I

    iget-object v5, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->W0:[F

    const/4 v6, 0x3

    invoke-static {v4, v6, v5}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->j(II[F)V

    iget v4, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->R:I

    iget-object v5, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->Z0:[F

    invoke-static {v4, v0, v5}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->j(II[F)V

    iget v4, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->S:I

    iget-object v5, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->Z0:[F

    invoke-static {v4, v6, v5}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->j(II[F)V

    iget v4, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->T:I

    iget-object v5, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->c1:[F

    invoke-static {v4, v0, v5}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->j(II[F)V

    iget v4, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->U:I

    iget-object v5, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->c1:[F

    invoke-static {v4, v6, v5}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->j(II[F)V

    iget v4, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->V:I

    iget-object v5, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->f1:[F

    invoke-static {v4, v0, v5}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->j(II[F)V

    iget v4, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->W:I

    iget-object v5, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->f1:[F

    invoke-static {v4, v6, v5}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->j(II[F)V

    iget v4, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->X:I

    iget v5, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->O0:F

    invoke-static {v4, v5}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget v4, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->Y:I

    iget v5, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->P0:F

    const/high16 v7, 0x42c80000    # 100.0f

    div-float/2addr v5, v7

    invoke-static {v4, v5}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget v4, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->Z:I

    iget-object v5, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->N0:[F

    invoke-static {v4, v0, v5}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->j(II[F)V

    iget v4, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->a0:I

    iget-object v5, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->Q0:[F

    invoke-static {v4, v0, v5}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->j(II[F)V

    iget v4, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->b0:I

    iget v5, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->T0:F

    invoke-static {v4, v5}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget v4, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->c0:I

    iget-object v5, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->U0:[F

    invoke-static {v4, v0, v5}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->j(II[F)V

    iget v4, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->d0:I

    iget-object v5, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->U0:[F

    invoke-static {v4, v6, v5}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->j(II[F)V

    iget v4, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->e0:I

    iget-object v5, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->V0:[F

    invoke-static {v4, v0, v5}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->j(II[F)V

    iget v4, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->f0:I

    iget-object v5, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->V0:[F

    invoke-static {v4, v6, v5}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->j(II[F)V

    iget v4, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->g0:I

    iget-object v5, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->X0:[F

    invoke-static {v5, v4}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->r([FI)V

    iget v4, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->h0:I

    iget-object v5, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->Y0:[F

    aget v6, v5, v0

    aget v5, v5, v2

    invoke-static {v4, v6, v5}, Landroid/opengl/GLES20;->glUniform2f(IFF)V

    iget v4, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->i0:I

    iget-object v5, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->a1:[F

    invoke-static {v5, v4}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->r([FI)V

    iget v4, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->j0:I

    iget-object v5, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->b1:[F

    aget v6, v5, v0

    aget v5, v5, v2

    invoke-static {v4, v6, v5}, Landroid/opengl/GLES20;->glUniform2f(IFF)V

    iget v4, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->k0:I

    iget-object v5, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->d1:[F

    invoke-static {v5, v4}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->r([FI)V

    iget v4, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->l0:I

    iget-object v5, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->e1:[F

    aget v6, v5, v0

    aget v5, v5, v2

    invoke-static {v4, v6, v5}, Landroid/opengl/GLES20;->glUniform2f(IFF)V

    iget v4, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->m0:I

    iget-object v5, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->g1:[F

    invoke-static {v5, v4}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->r([FI)V

    iget v4, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->n0:I

    iget-object v5, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->h1:[F

    aget v6, v5, v0

    aget v5, v5, v2

    invoke-static {v4, v6, v5}, Landroid/opengl/GLES20;->glUniform2f(IFF)V

    iget v4, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->o0:I

    iget-object v5, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->i1:[F

    aget v6, v5, v0

    aget v5, v5, v2

    invoke-static {v4, v6, v5}, Landroid/opengl/GLES20;->glUniform2f(IFF)V

    iget v4, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->p0:I

    iget v5, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->j1:I

    invoke-static {v4, v5}, Landroid/opengl/GLES20;->glUniform1i(II)V

    iget v4, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->q0:I

    iget-object v5, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->o:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveDynamicRangeMetadata;

    iget v5, v5, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveDynamicRangeMetadata;->min_luma:F

    invoke-static {v4, v5}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget v4, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->r0:I

    iget-object v5, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->o:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveDynamicRangeMetadata;

    iget v5, v5, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveDynamicRangeMetadata;->max_luma:F

    invoke-static {v4, v5}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget v4, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->u0:I

    invoke-static {v4, v0}, Landroid/opengl/GLES20;->glUniform1i(II)V

    iget v4, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->s0:I

    iget-object v5, p0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->m:[F

    invoke-static {v4, v2, v5, v0}, Landroid/opengl/GLES20;->glUniform2fv(II[FI)V

    iget v4, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->t0:I

    iget-object v5, p0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->n:[F

    invoke-static {v4, v2, v5, v0}, Landroid/opengl/GLES20;->glUniform2fv(II[FI)V

    iget v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->F0:I

    if-eq v2, p3, :cond_b

    const p3, 0x84c2

    invoke-static {p3}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    iget p3, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->F0:I

    invoke-static {v3, p3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget-object p3, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->E0:Landroid/graphics/Bitmap;

    invoke-static {v3, v0, p3, v0}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    iget p3, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->N:I

    const/4 v2, 0x2

    invoke-static {p3, v2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object p0, v0

    goto :goto_3

    :cond_b
    :goto_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 p1, 0x5

    :try_start_2
    invoke-static {p1, v0, p2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    iget p1, p0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->d:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    iget p1, p0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->f:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    iget p0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->L:I

    invoke-static {p0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    invoke-static {v3, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    :cond_c
    :goto_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :goto_3
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw p0

    :goto_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0
.end method

.method public final onInit()V
    .locals 8

    invoke-super {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->onInit()V

    sget-object v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter$b;->a:[C

    invoke-static {v0}, Lcom/cyberlink/clgpuimage/CLMakeupLiveDecode;->a([C)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter$a;->a:[C

    invoke-static {v1}, Lcom/cyberlink/clgpuimage/CLMakeupLiveDecode;->a([C)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cyberlink/clgpuimage/OpenGlUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->p:I

    const-string v1, "position"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->q:I

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->p:I

    const-string v2, "normal"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->r:I

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->p:I

    const-string v3, "inputTextureCoordinate"

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->s:I

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->p:I

    const-string v4, "modelViewProjMatrix"

    invoke-static {v0, v4}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->t:I

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->p:I

    const-string v5, "normalTransformMatrix"

    invoke-static {v0, v5}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->u:I

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->p:I

    const-string v6, "projectMatrix"

    invoke-static {v0, v6}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->v:I

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->p:I

    const-string v7, "lightingAngleLowerbound"

    invoke-static {v0, v7}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->w:I

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->p:I

    const-string v7, "diffuseTexture"

    invoke-static {v0, v7}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->x:I

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->p:I

    const-string v7, "is_eyebrow_texture_valid"

    invoke-static {v0, v7}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->y:I

    sget-object v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter$g;->a:[C

    invoke-static {v0}, Lcom/cyberlink/clgpuimage/CLMakeupLiveDecode;->a([C)Ljava/lang/String;

    move-result-object v0

    sget-object v7, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter$f;->a:[C

    invoke-static {v7}, Lcom/cyberlink/clgpuimage/CLMakeupLiveDecode;->a([C)Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/cyberlink/clgpuimage/OpenGlUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->A:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->B:I

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->A:I

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->C:I

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->A:I

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->D:I

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->A:I

    invoke-static {v0, v4}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->E:I

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->A:I

    invoke-static {v0, v5}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->F:I

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->A:I

    invoke-static {v0, v6}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->G:I

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->A:I

    const-string v1, "inputImageTexture"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->H:I

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->A:I

    const-string v1, "eyebrow_shimmer_intensity"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->I:I

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->A:I

    const-string v2, "yaw_degree"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->J:I

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->A:I

    const-string v2, "glitter_factor"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->K:I

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v2, "inputImageTexture2"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->M:I

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v2, "inputTextureCoordinate2"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->L:I

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v2, "brow_color_texture"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->N:I

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v2, "shimmerPassTexture"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->O:I

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v2, "left_upper_transform_factor_x"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->P:I

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v2, "left_upper_transform_factor_y"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->Q:I

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v2, "left_lower_transform_factor_x"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->R:I

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v2, "left_lower_transform_factor_y"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->S:I

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v2, "right_upper_transform_factor_x"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->T:I

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v2, "right_upper_transform_factor_y"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->U:I

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v2, "right_lower_transform_factor_x"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->V:I

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v2, "right_lower_transform_factor_y"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->W:I

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v2, "eyebrow_strength"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->X:I

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->Y:I

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v1, "eyebrow_shimmer_color"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->Z:I

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v1, "target_color"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->a0:I

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v1, "global_brow_luma"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->b0:I

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v1, "left_upper_skin_luma"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->c0:I

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v1, "left_lower_skin_luma"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->d0:I

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v1, "right_upper_skin_luma"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->e0:I

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v1, "right_lower_skin_luma"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->f0:I

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v1, "left_upper_parabola_side_coords"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->g0:I

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v1, "left_upper_parabola_inter_factors"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->h0:I

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v1, "left_lower_parabola_side_coords"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->i0:I

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v1, "left_lower_parabola_inter_factors"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->j0:I

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v1, "right_upper_parabola_side_coords"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->k0:I

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v1, "right_upper_parabola_inter_factors"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->l0:I

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v1, "right_lower_parabola_side_coords"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->m0:I

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v1, "right_lower_parabola_inter_factors"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->n0:I

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v1, "left_right_brow_thickness"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->o0:I

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v1, "draw_pure_color"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->p0:I

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v1, "dynamic_range_max_luma"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->r0:I

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v1, "dynamic_range_min_luma"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->q0:I

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v1, "grid_roi_start"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->s0:I

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v1, "grid_roi_end"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->t0:I

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v1, "algorithm_index"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->u0:I

    const/16 v0, 0x5a

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->C0:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->k1:F

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->l1:F

    const/4 v0, 0x2

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v2, 0x3

    invoke-static {v2, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->E0:Landroid/graphics/Bitmap;

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    aget v0, v1, v2

    const/16 v3, 0xde1

    invoke-static {v3, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v0, 0x2800

    const v4, 0x46180400    # 9729.0f

    invoke-static {v3, v0, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v0, 0x2801

    invoke-static {v3, v0, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v0, 0x2802

    const v4, 0x47012f00    # 33071.0f

    invoke-static {v3, v0, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v0, 0x2803

    invoke-static {v3, v0, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    aget v0, v1, v2

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->F0:I

    return-void
.end method

.method public final onOutputSizeChanged(II)V
    .locals 0

    iput p1, p0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->g:I

    iput p2, p0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->h:I

    return-void
.end method

.method public final p()Z
    .locals 25

    move-object/from16 v0, p0

    :cond_0
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x400

    invoke-static {v1}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v1

    const v2, 0x8ca6

    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glGetIntegerv(ILjava/nio/IntBuffer;)V

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v3

    const/16 v4, 0xba2

    invoke-static {v4, v3}, Landroid/opengl/GLES20;->glGetIntegerv(ILjava/nio/IntBuffer;)V

    iget v4, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->p:I

    invoke-static {v4}, Landroid/opengl/GLES20;->glUseProgram(I)V

    iget-object v4, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->K0:Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;

    iget v5, v4, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;->width:I

    iget v4, v4, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;->height:I

    const/4 v6, 0x0

    invoke-static {v6, v6, v5, v4}, Landroid/opengl/GLES20;->glViewport(IIII)V

    iget-object v4, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->K0:Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;

    iget-object v4, v4, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;->frame_buffer:[I

    aget v4, v4, v6

    const v5, 0x8d40

    invoke-static {v5, v4}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    const/4 v4, 0x0

    invoke-static {v4, v4, v4, v4}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/16 v7, 0x4100

    invoke-static {v7}, Landroid/opengl/GLES20;->glClear(I)V

    const/16 v7, 0xb71

    invoke-static {v7}, Landroid/opengl/GLES20;->glEnable(I)V

    const/16 v8, 0xbe2

    invoke-static {v8}, Landroid/opengl/GLES20;->glEnable(I)V

    const/4 v9, 0x1

    invoke-static {v9, v6}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    const/16 v10, 0xb44

    invoke-static {v10}, Landroid/opengl/GLES20;->glEnable(I)V

    const/16 v11, 0x900

    invoke-static {v11}, Landroid/opengl/GLES20;->glFrontFace(I)V

    const/16 v11, 0x405

    invoke-static {v11}, Landroid/opengl/GLES20;->glCullFace(I)V

    iget v11, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->q:I

    invoke-static {v11}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget v11, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->r:I

    invoke-static {v11}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget v11, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->s:I

    invoke-static {v11}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget-object v11, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->z0:Ljava/lang/Object;

    monitor-enter v11

    :try_start_0
    iget-boolean v12, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->B0:Z

    const/16 v13, 0xde1

    const/4 v14, 0x2

    const/4 v15, 0x3

    if-eqz v12, :cond_8

    iget-object v12, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->y0:[Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;

    if-eqz v12, :cond_1

    array-length v12, v12

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_6

    :cond_1
    move v12, v6

    :goto_0
    move v4, v6

    :goto_1
    if-ge v4, v12, :cond_8

    move/from16 v16, v7

    iget-object v7, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->y0:[Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;

    aget-object v7, v7, v4

    if-eqz v7, :cond_6

    move/from16 v17, v8

    iget-object v8, v7, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->vertex_buffer:Ljava/nio/FloatBuffer;

    if-eqz v8, :cond_5

    move/from16 v18, v10

    iget-object v10, v7, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->normal_buffer:Ljava/nio/FloatBuffer;

    if-eqz v10, :cond_7

    iget-object v10, v7, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->texcoord_buffer:Ljava/nio/FloatBuffer;

    if-eqz v10, :cond_7

    invoke-virtual {v8}, Ljava/nio/Buffer;->capacity()I

    move-result v8

    div-int/2addr v8, v15

    iget-object v10, v7, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->normal_buffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v10}, Ljava/nio/Buffer;->capacity()I

    move-result v10

    div-int/2addr v10, v15

    invoke-static {v8, v10}, Ljava/lang/Math;->min(II)I

    move-result v8

    iget-object v10, v7, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->texcoord_buffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v10}, Ljava/nio/Buffer;->capacity()I

    move-result v10

    div-int/2addr v10, v14

    invoke-static {v8, v10}, Ljava/lang/Math;->min(II)I

    move-result v8

    iget-object v10, v7, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->vertex_buffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v10, v6}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget v10, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->q:I

    iget-object v14, v7, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->vertex_buffer:Ljava/nio/FloatBuffer;

    const/16 v20, 0x3

    const/16 v21, 0x1406

    const/16 v22, 0x0

    const/16 v23, 0x0

    move/from16 v19, v10

    move-object/from16 v24, v14

    invoke-static/range {v19 .. v24}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget-object v10, v7, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->normal_buffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v10, v6}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget v10, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->r:I

    iget-object v14, v7, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->normal_buffer:Ljava/nio/FloatBuffer;

    const/16 v20, 0x3

    const/16 v21, 0x1406

    const/16 v22, 0x0

    const/16 v23, 0x0

    move/from16 v19, v10

    move-object/from16 v24, v14

    invoke-static/range {v19 .. v24}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget-object v10, v7, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->texcoord_buffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v10, v6}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget v10, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->s:I

    iget-object v14, v7, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->texcoord_buffer:Ljava/nio/FloatBuffer;

    const/16 v20, 0x2

    const/16 v21, 0x1406

    const/16 v22, 0x0

    const/16 v23, 0x0

    move/from16 v19, v10

    move-object/from16 v24, v14

    invoke-static/range {v19 .. v24}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    invoke-virtual {v0}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->o()V

    iget v10, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->t:I

    iget-object v14, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->G0:[F

    invoke-static {v10, v9, v6, v14, v6}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    iget v10, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->u:I

    iget-object v14, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->H0:[F

    invoke-static {v10, v9, v6, v14, v6}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    iget v10, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->v:I

    iget-object v14, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->I0:[F

    invoke-static {v10, v9, v6, v14, v6}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    iget v10, v7, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->diffuse_texture_id:I

    const/4 v14, -0x1

    if-eq v10, v14, :cond_2

    const v10, 0x84c3

    invoke-static {v10}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    iget v10, v7, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->diffuse_texture_id:I

    invoke-static {v13, v10}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget v10, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->x:I

    invoke-static {v10, v15}, Landroid/opengl/GLES20;->glUniform1i(II)V

    :cond_2
    iget v10, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->w:I

    const v15, 0x3f4ccccd    # 0.8f

    invoke-static {v10, v15}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget v7, v7, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->diffuse_texture_id:I

    if-eq v7, v14, :cond_3

    move v7, v9

    goto :goto_2

    :cond_3
    move v7, v6

    :goto_2
    iget v10, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->y:I

    if-eqz v7, :cond_4

    const/high16 v7, 0x3f800000    # 1.0f

    goto :goto_3

    :cond_4
    const/4 v7, 0x0

    :goto_3
    invoke-static {v10, v7}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    invoke-static {v2, v6, v8}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    goto :goto_5

    :cond_5
    :goto_4
    move/from16 v18, v10

    goto :goto_5

    :cond_6
    move/from16 v17, v8

    goto :goto_4

    :cond_7
    :goto_5
    add-int/lit8 v4, v4, 0x1

    move/from16 v7, v16

    move/from16 v8, v17

    move/from16 v10, v18

    const/4 v14, 0x2

    const/4 v15, 0x3

    goto/16 :goto_1

    :cond_8
    move/from16 v16, v7

    move/from16 v17, v8

    move/from16 v18, v10

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static/range {v16 .. v16}, Landroid/opengl/GLES20;->glDisable(I)V

    invoke-static/range {v17 .. v17}, Landroid/opengl/GLES20;->glDisable(I)V

    invoke-static/range {v18 .. v18}, Landroid/opengl/GLES20;->glDisable(I)V

    const/16 v2, 0x901

    invoke-static {v2}, Landroid/opengl/GLES20;->glFrontFace(I)V

    iget v2, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->q:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    iget v2, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->r:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    iget v0, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->s:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    invoke-static {v13, v6}, Landroid/opengl/GLES20;->glBindTexture(II)V

    invoke-virtual {v1, v6}, Ljava/nio/IntBuffer;->get(I)I

    move-result v0

    invoke-static {v5, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    invoke-virtual {v3, v6}, Ljava/nio/IntBuffer;->get(I)I

    move-result v0

    invoke-virtual {v3, v9}, Ljava/nio/IntBuffer;->get(I)I

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {v3, v2}, Ljava/nio/IntBuffer;->get(I)I

    move-result v2

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Ljava/nio/IntBuffer;->get(I)I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    :cond_9
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    if-eqz v0, :cond_b

    const/16 v1, 0x505

    if-eq v0, v1, :cond_a

    const/16 v1, 0x506

    if-ne v0, v1, :cond_9

    :cond_a
    return v6

    :cond_b
    return v9

    :goto_6
    :try_start_1
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final q()V
    .locals 25

    move-object/from16 v0, p0

    :cond_0
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x400

    invoke-static {v1}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v1

    const v2, 0x8ca6

    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glGetIntegerv(ILjava/nio/IntBuffer;)V

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v3

    const/16 v4, 0xba2

    invoke-static {v4, v3}, Landroid/opengl/GLES20;->glGetIntegerv(ILjava/nio/IntBuffer;)V

    iget v4, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->A:I

    invoke-static {v4}, Landroid/opengl/GLES20;->glUseProgram(I)V

    iget v4, v0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->g:I

    iget v5, v0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->h:I

    const/4 v6, 0x0

    invoke-static {v6, v6, v4, v5}, Landroid/opengl/GLES20;->glViewport(IIII)V

    iget-object v4, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->z:Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;

    iget-object v4, v4, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;->frame_buffer:[I

    aget v4, v4, v6

    const v5, 0x8d40

    invoke-static {v5, v4}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    const/4 v4, 0x0

    invoke-static {v4, v4, v4, v4}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/16 v4, 0x4100

    invoke-static {v4}, Landroid/opengl/GLES20;->glClear(I)V

    const/16 v4, 0xb71

    invoke-static {v4}, Landroid/opengl/GLES20;->glEnable(I)V

    const/16 v7, 0xbe2

    invoke-static {v7}, Landroid/opengl/GLES20;->glEnable(I)V

    const/4 v8, 0x1

    invoke-static {v8, v6}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    const/16 v9, 0xb44

    invoke-static {v9}, Landroid/opengl/GLES20;->glEnable(I)V

    const/16 v10, 0x900

    invoke-static {v10}, Landroid/opengl/GLES20;->glFrontFace(I)V

    const/16 v10, 0x405

    invoke-static {v10}, Landroid/opengl/GLES20;->glCullFace(I)V

    iget v10, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->B:I

    invoke-static {v10}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget v10, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->C:I

    invoke-static {v10}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget v10, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->D:I

    invoke-static {v10}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget-object v10, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->z0:Ljava/lang/Object;

    monitor-enter v10

    :try_start_0
    iget-boolean v11, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->B0:Z

    const/16 v12, 0xde1

    const/4 v13, 0x2

    const/4 v14, 0x3

    if-eqz v11, :cond_6

    iget-object v11, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->A0:[Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;

    if-eqz v11, :cond_1

    array-length v11, v11

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_4

    :cond_1
    move v11, v6

    :goto_0
    move v15, v6

    :goto_1
    if-ge v15, v11, :cond_6

    move/from16 v16, v4

    iget-object v4, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->A0:[Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;

    aget-object v4, v4, v15

    if-eqz v4, :cond_4

    move/from16 v17, v7

    iget-object v7, v4, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->vertex_buffer:Ljava/nio/FloatBuffer;

    if-eqz v7, :cond_3

    move/from16 v18, v9

    iget-object v9, v4, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->normal_buffer:Ljava/nio/FloatBuffer;

    if-eqz v9, :cond_5

    iget-object v9, v4, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->texcoord_buffer:Ljava/nio/FloatBuffer;

    if-eqz v9, :cond_5

    invoke-virtual {v7}, Ljava/nio/Buffer;->capacity()I

    move-result v7

    div-int/2addr v7, v14

    iget-object v9, v4, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->normal_buffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v9}, Ljava/nio/Buffer;->capacity()I

    move-result v9

    div-int/2addr v9, v14

    invoke-static {v7, v9}, Ljava/lang/Math;->min(II)I

    move-result v7

    iget-object v9, v4, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->texcoord_buffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v9}, Ljava/nio/Buffer;->capacity()I

    move-result v9

    div-int/2addr v9, v13

    invoke-static {v7, v9}, Ljava/lang/Math;->min(II)I

    move-result v7

    iget-object v9, v4, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->vertex_buffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v9, v6}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget v9, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->B:I

    iget-object v13, v4, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->vertex_buffer:Ljava/nio/FloatBuffer;

    const/16 v20, 0x3

    const/16 v21, 0x1406

    const/16 v22, 0x0

    const/16 v23, 0x0

    move/from16 v19, v9

    move-object/from16 v24, v13

    invoke-static/range {v19 .. v24}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget-object v9, v4, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->normal_buffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v9, v6}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget v9, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->C:I

    iget-object v13, v4, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->normal_buffer:Ljava/nio/FloatBuffer;

    const/16 v20, 0x3

    const/16 v21, 0x1406

    const/16 v22, 0x0

    const/16 v23, 0x0

    move/from16 v19, v9

    move-object/from16 v24, v13

    invoke-static/range {v19 .. v24}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget-object v9, v4, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->texcoord_buffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v9, v6}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget v9, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->D:I

    iget-object v13, v4, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->texcoord_buffer:Ljava/nio/FloatBuffer;

    const/16 v20, 0x2

    const/16 v21, 0x1406

    const/16 v22, 0x0

    const/16 v23, 0x0

    move/from16 v19, v9

    move-object/from16 v24, v13

    invoke-static/range {v19 .. v24}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    invoke-virtual {v0}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->o()V

    iget v9, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->E:I

    iget-object v13, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->G0:[F

    invoke-static {v9, v8, v6, v13, v6}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    iget v9, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->F:I

    iget-object v13, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->H0:[F

    invoke-static {v9, v8, v6, v13, v6}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    iget v9, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->G:I

    iget-object v13, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->I0:[F

    invoke-static {v9, v8, v6, v13, v6}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    iget v9, v4, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->diffuse_texture_id:I

    const/4 v13, -0x1

    if-eq v9, v13, :cond_2

    const v9, 0x84c3

    invoke-static {v9}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    iget v4, v4, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->diffuse_texture_id:I

    invoke-static {v12, v4}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget v4, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->H:I

    invoke-static {v4, v14}, Landroid/opengl/GLES20;->glUniform1i(II)V

    :cond_2
    iget v4, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->I:I

    iget v9, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->P0:F

    const/high16 v13, 0x42c80000    # 100.0f

    div-float/2addr v9, v13

    invoke-static {v4, v9}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget v4, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->K:I

    iget v9, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->k1:F

    invoke-static {v4, v9}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget v4, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->J:I

    iget v9, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->l1:F

    invoke-static {v4, v9}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    invoke-static {v2, v6, v7}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    goto :goto_3

    :cond_3
    :goto_2
    move/from16 v18, v9

    goto :goto_3

    :cond_4
    move/from16 v17, v7

    goto :goto_2

    :cond_5
    :goto_3
    add-int/lit8 v15, v15, 0x1

    move/from16 v4, v16

    move/from16 v7, v17

    move/from16 v9, v18

    const/4 v13, 0x2

    goto/16 :goto_1

    :cond_6
    move/from16 v16, v4

    move/from16 v17, v7

    move/from16 v18, v9

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static/range {v16 .. v16}, Landroid/opengl/GLES20;->glDisable(I)V

    invoke-static/range {v17 .. v17}, Landroid/opengl/GLES20;->glDisable(I)V

    invoke-static/range {v18 .. v18}, Landroid/opengl/GLES20;->glDisable(I)V

    const/16 v2, 0x901

    invoke-static {v2}, Landroid/opengl/GLES20;->glFrontFace(I)V

    iget v2, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->B:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    iget v2, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->C:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    iget v0, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowFilter;->D:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    invoke-static {v12, v6}, Landroid/opengl/GLES20;->glBindTexture(II)V

    invoke-virtual {v1, v6}, Ljava/nio/IntBuffer;->get(I)I

    move-result v0

    invoke-static {v5, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    invoke-virtual {v3, v6}, Ljava/nio/IntBuffer;->get(I)I

    move-result v0

    invoke-virtual {v3, v8}, Ljava/nio/IntBuffer;->get(I)I

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {v3, v2}, Ljava/nio/IntBuffer;->get(I)I

    move-result v2

    invoke-virtual {v3, v14}, Ljava/nio/IntBuffer;->get(I)I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    :cond_7
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    if-eqz v0, :cond_8

    const/16 v1, 0x505

    if-eq v0, v1, :cond_8

    const/16 v1, 0x506

    if-ne v0, v1, :cond_7

    :cond_8
    return-void

    :goto_4
    :try_start_1
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
