.class public final Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;
.super Lcom/cyberlink/clgpuimage/GPUImageFilter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter$f;,
        Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter$g;,
        Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter$h;,
        Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter$i;,
        Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter$d;,
        Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter$e;,
        Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter$b;,
        Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter$a;,
        Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter$c;,
        Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter$LiveEyebrowWarp3DMetadata;
    }
.end annotation


# static fields
.field public static final w1:[F


# instance fields
.field public A:I

.field public final A0:[F

.field public B:I

.field public B0:F

.field public C:I

.field public C0:F

.field public D:I

.field public final D0:[F

.field public E:I

.field public final E0:[F

.field public F:I

.field public final F0:[F

.field public G:I

.field public final G0:[F

.field public H:I

.field public final H0:[F

.field public I:I

.field public final I0:[F

.field public J:I

.field public final J0:[F

.field public K:I

.field public final K0:[F

.field public L:I

.field public final L0:[F

.field public M:I

.field public final M0:[F

.field public N:I

.field public final N0:[F

.field public O:I

.field public final O0:[F

.field public P:I

.field public final P0:[F

.field public Q:I

.field public final Q0:[F

.field public R:I

.field public final R0:[F

.field public S:I

.field public S0:F

.field public T:I

.field public T0:F

.field public U:I

.field public U0:F

.field public V:I

.field public final V0:[F

.field public W:I

.field public final W0:[F

.field public X:I

.field public final X0:[F

.field public Y:I

.field public final Y0:[I

.field public Z:I

.field public final Z0:[I

.field public a0:I

.field public final a1:[F

.field public b0:I

.field public final b1:[F

.field public c0:I

.field public final c1:[F

.field public d0:I

.field public d1:F

.field public e0:I

.field public e1:I

.field public f0:I

.field public final f1:[F

.field public g0:I

.field public g1:Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;

.field public h0:I

.field public final h1:[F

.field public i0:I

.field public final i1:[F

.field public j0:I

.field public final j1:[F

.field public k0:I

.field public final k1:[F

.field public l0:I

.field public final l1:F

.field public m0:I

.field public final m1:[F

.field public n0:I

.field public final n1:Ljava/lang/Object;

.field public o:I

.field public o0:I

.field public o1:Z

.field public p:I

.field public p0:I

.field public p1:I

.field public q:I

.field public q0:I

.field public q1:Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;

.field public r:I

.field public r0:I

.field public r1:Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;

.field public s:I

.field public s0:I

.field public final s1:Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;

.field public t:I

.field public t0:I

.field public final t1:Ljava/lang/Object;

.field public u:I

.field public u0:I

.field public u1:I

.field public v:I

.field public v0:I

.field public final v1:Ljava/nio/FloatBuffer;

.field public w:I

.field public w0:I

.field public x:I

.field public x0:I

.field public y:I

.field public final y0:[F

.field public z:I

.field public final z0:[F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->w1:[F

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
    .locals 18

    move-object/from16 v0, p0

    sget-object v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter$g;->a:[C

    invoke-static {v1}, Lcom/cyberlink/clgpuimage/CLMakeupLiveDecode;->a([C)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter$f;->a:[C

    invoke-static {v2}, Lcom/cyberlink/clgpuimage/CLMakeupLiveDecode;->a([C)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/cyberlink/clgpuimage/GPUImageFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0xc

    new-array v1, v1, [F

    iput-object v1, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->y0:[F

    const/16 v1, 0x9

    new-array v2, v1, [F

    iput-object v2, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->z0:[F

    const/16 v2, 0x10

    new-array v3, v2, [F

    iput-object v3, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->A0:[F

    const/4 v3, 0x0

    iput v3, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->B0:F

    iput v3, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->C0:F

    const/4 v3, 0x2

    new-array v4, v3, [F

    iput-object v4, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->D0:[F

    new-array v4, v3, [F

    iput-object v4, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->E0:[F

    const/4 v4, 0x6

    new-array v5, v4, [F

    iput-object v5, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->F0:[F

    const/4 v5, 0x4

    new-array v6, v5, [F

    iput-object v6, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->G0:[F

    new-array v6, v3, [F

    iput-object v6, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->H0:[F

    new-array v6, v4, [F

    iput-object v6, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->I0:[F

    new-array v6, v5, [F

    iput-object v6, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->J0:[F

    new-array v6, v3, [F

    iput-object v6, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->K0:[F

    new-array v6, v4, [F

    iput-object v6, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->L0:[F

    new-array v6, v5, [F

    iput-object v6, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->M0:[F

    new-array v6, v3, [F

    iput-object v6, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->N0:[F

    new-array v6, v4, [F

    iput-object v6, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->O0:[F

    new-array v5, v5, [F

    iput-object v5, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->P0:[F

    new-array v5, v3, [F

    iput-object v5, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->Q0:[F

    new-array v5, v3, [F

    iput-object v5, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->R0:[F

    new-array v5, v3, [F

    iput-object v5, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->V0:[F

    new-array v1, v1, [F

    iput-object v1, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->W0:[F

    new-array v1, v4, [F

    iput-object v1, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->X0:[F

    new-array v1, v3, [I

    iput-object v1, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->Y0:[I

    new-array v1, v3, [I

    iput-object v1, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->Z0:[I

    new-array v1, v3, [F

    iput-object v1, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->a1:[F

    new-array v1, v3, [F

    iput-object v1, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->b1:[F

    new-array v1, v3, [F

    iput-object v1, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->c1:[F

    const/16 v1, 0x11

    new-array v1, v1, [F

    iput-object v1, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->f1:[F

    new-instance v5, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;

    const/4 v1, 0x3

    new-array v9, v1, [F

    fill-array-data v9, :array_0

    new-array v10, v1, [F

    fill-array-data v10, :array_1

    new-array v11, v1, [F

    fill-array-data v11, :array_2

    new-array v13, v1, [F

    fill-array-data v13, :array_3

    const/high16 v16, 0x3f800000    # 1.0f

    const/high16 v17, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v14, 0x0

    const/high16 v15, 0x3f800000    # 1.0f

    invoke-direct/range {v5 .. v17}, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;-><init>([F[F[F[F[F[FF[FFFFF)V

    iput-object v5, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->g1:Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;

    new-array v1, v2, [F

    iput-object v1, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->h1:[F

    new-array v1, v2, [F

    iput-object v1, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->i1:[F

    new-array v1, v2, [F

    iput-object v1, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->j1:[F

    new-array v1, v2, [F

    iput-object v1, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->k1:[F

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->l1:F

    new-array v1, v4, [F

    iput-object v1, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->m1:[F

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->n1:Ljava/lang/Object;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->o1:Z

    const/16 v2, 0x5a

    iput v2, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->p1:I

    const/4 v4, 0x0

    iput-object v4, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->q1:Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;

    iput-object v4, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->r1:Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;

    new-instance v4, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;

    invoke-direct {v4}, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;-><init>()V

    iput-object v4, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->s1:Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;

    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v4, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->t1:Ljava/lang/Object;

    iput v2, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->u1:I

    const/16 v2, 0x8

    shl-int/2addr v2, v3

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v2

    sget-object v3, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->w1:[F

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    invoke-virtual {v2, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iput-object v2, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->v1:Ljava/nio/FloatBuffer;

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x3e4ccccd    # 0.2f
        0x3f19999a    # 0.6f
        0x3f19999a    # 0.6f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data

    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static k(II[F)V
    .locals 2

    aget v0, p2, p1

    add-int/lit8 v1, p1, 0x1

    aget v1, p2, v1

    add-int/lit8 p1, p1, 0x2

    aget p1, p2, p1

    invoke-static {p0, v0, v1, p1}, Landroid/opengl/GLES20;->glUniform3f(IFFF)V

    return-void
.end method

.method public static o([FI)V
    .locals 2

    const/4 v0, 0x0

    aget v0, p0, v0

    const/4 v1, 0x1

    aget p0, p0, v1

    invoke-static {p1, v0, p0}, Landroid/opengl/GLES20;->glUniform2f(IFF)V

    return-void
.end method

.method public static q([F[F[F)V
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

.method public static t([F[F[F)V
    .locals 5

    const/4 v0, 0x0

    aget v1, p0, v0

    aget v2, p1, v0

    mul-float/2addr v1, v2

    const/4 v2, 0x1

    aget v3, p0, v2

    aget v4, p1, v2

    mul-float/2addr v4, v3

    add-float/2addr v4, v1

    aput v4, p2, v0

    aget p0, p0, v0

    const/4 v0, 0x3

    aget v0, p1, v0

    mul-float/2addr p0, v0

    const/4 v0, 0x4

    aget p1, p1, v0

    mul-float/2addr v3, p1

    add-float/2addr v3, p0

    aput v3, p2, v2

    return-void
.end method


# virtual methods
.method public final j()V
    .locals 23

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

    iget v4, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->c0:I

    invoke-static {v4}, Landroid/opengl/GLES20;->glUseProgram(I)V

    iget-object v4, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->s1:Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;

    iget v5, v4, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;->width:I

    iget v4, v4, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;->height:I

    const/4 v6, 0x0

    invoke-static {v6, v6, v5, v4}, Landroid/opengl/GLES20;->glViewport(IIII)V

    iget-object v4, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->s1:Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;

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

    iget v10, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->d0:I

    invoke-static {v10}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget v10, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->e0:I

    invoke-static {v10}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget-object v10, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->n1:Ljava/lang/Object;

    monitor-enter v10

    :try_start_0
    iget-boolean v11, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->o1:Z

    const/4 v12, 0x2

    const/4 v13, 0x3

    if-eqz v11, :cond_2

    iget-object v11, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->g1:Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;

    if-eqz v11, :cond_2

    iget-object v14, v11, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->vertex_buffer:Ljava/nio/FloatBuffer;

    if-eqz v14, :cond_2

    iget-object v15, v11, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->normal_buffer:Ljava/nio/FloatBuffer;

    if-eqz v15, :cond_2

    iget-object v15, v11, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->texcoord_buffer:Ljava/nio/FloatBuffer;

    if-eqz v15, :cond_2

    invoke-virtual {v14}, Ljava/nio/Buffer;->capacity()I

    move-result v14

    div-int/2addr v14, v13

    iget-object v15, v11, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->normal_buffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v15}, Ljava/nio/Buffer;->capacity()I

    move-result v15

    div-int/2addr v15, v13

    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v14

    iget-object v15, v11, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->texcoord_buffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v15}, Ljava/nio/Buffer;->capacity()I

    move-result v15

    div-int/2addr v15, v12

    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v14

    iget-object v15, v11, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->vertex_buffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v15, v6}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget v15, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->d0:I

    move/from16 v22, v4

    iget-object v4, v11, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->vertex_buffer:Ljava/nio/FloatBuffer;

    const/16 v17, 0x3

    const/16 v18, 0x1406

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v21, v4

    move/from16 v16, v15

    invoke-static/range {v16 .. v21}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget-object v4, v11, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->texcoord_buffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v4, v6}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget v15, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->e0:I

    iget-object v4, v11, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->texcoord_buffer:Ljava/nio/FloatBuffer;

    const/16 v16, 0x2

    const/16 v17, 0x1406

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v20, v4

    invoke-static/range {v15 .. v20}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget v4, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->p1:I

    iget v11, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->u1:I

    sub-int/2addr v4, v11

    if-gez v4, :cond_1

    add-int/lit16 v4, v4, 0x168

    :cond_1
    iget-object v11, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->k1:[F

    iget-object v15, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->W0:[F

    invoke-virtual {v0, v11, v4, v15}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->p([FI[F)V

    iget v4, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->f0:I

    iget-object v11, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->h1:[F

    invoke-static {v4, v8, v6, v11, v6}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    iget v4, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->Y:I

    iget-object v11, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->k1:[F

    invoke-static {v4, v8, v6, v11, v6}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    iget v4, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->g0:I

    iget-object v11, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->m1:[F

    aget v15, v11, v6

    move/from16 v16, v7

    aget v7, v11, v8

    aget v11, v11, v12

    invoke-static {v4, v15, v7, v11}, Landroid/opengl/GLES20;->glUniform3f(IFFF)V

    iget v4, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->h0:I

    iget-object v7, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->m1:[F

    aget v11, v7, v13

    aget v15, v7, v2

    const/16 v17, 0x5

    aget v7, v7, v17

    invoke-static {v4, v11, v15, v7}, Landroid/opengl/GLES20;->glUniform3f(IFFF)V

    iget v4, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->i0:I

    iget v7, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->l1:F

    invoke-static {v4, v7}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    invoke-static {v2, v6, v14}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_2
    move/from16 v22, v4

    move/from16 v16, v7

    :goto_0
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static/range {v22 .. v22}, Landroid/opengl/GLES20;->glDisable(I)V

    invoke-static/range {v16 .. v16}, Landroid/opengl/GLES20;->glDisable(I)V

    invoke-static {v9}, Landroid/opengl/GLES20;->glDisable(I)V

    const/16 v2, 0x901

    invoke-static {v2}, Landroid/opengl/GLES20;->glFrontFace(I)V

    iget v2, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->d0:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    iget v0, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->e0:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    const/16 v0, 0xde1

    invoke-static {v0, v6}, Landroid/opengl/GLES20;->glBindTexture(II)V

    invoke-virtual {v1, v6}, Ljava/nio/IntBuffer;->get(I)I

    move-result v0

    invoke-static {v5, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    invoke-virtual {v3, v6}, Ljava/nio/IntBuffer;->get(I)I

    move-result v0

    invoke-virtual {v3, v8}, Ljava/nio/IntBuffer;->get(I)I

    move-result v1

    invoke-virtual {v3, v12}, Ljava/nio/IntBuffer;->get(I)I

    move-result v2

    invoke-virtual {v3, v13}, Ljava/nio/IntBuffer;->get(I)I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    :cond_3
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    if-eqz v0, :cond_4

    const/16 v1, 0x505

    if-eq v0, v1, :cond_4

    const/16 v1, 0x506

    if-ne v0, v1, :cond_3

    :cond_4
    return-void

    :goto_1
    :try_start_1
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final l(ILjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V
    .locals 12

    :cond_0
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x400

    invoke-static {v0}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v0

    const v1, 0x8ca6

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glGetIntegerv(ILjava/nio/IntBuffer;)V

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v2

    const/16 v3, 0xba2

    invoke-static {v3, v2}, Landroid/opengl/GLES20;->glGetIntegerv(ILjava/nio/IntBuffer;)V

    iget v3, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->o:I

    invoke-static {v3}, Landroid/opengl/GLES20;->glUseProgram(I)V

    iget-object v3, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->q1:Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;

    iget v4, v3, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;->width:I

    iget v3, v3, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;->height:I

    const/4 v5, 0x0

    invoke-static {v5, v5, v4, v3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    iget-object v3, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->q1:Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;

    iget-object v3, v3, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;->frame_buffer:[I

    aget v3, v3, v5

    const v4, 0x8d40

    invoke-static {v4, v3}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    invoke-virtual {p2, v5}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget v6, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->p:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v7, 0x2

    const/16 v8, 0x1406

    move-object v11, p2

    invoke-static/range {v6 .. v11}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget p2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->p:I

    invoke-static {p2}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    invoke-virtual {p3, v5}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget v6, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->q:I

    move-object v11, p3

    invoke-static/range {v6 .. v11}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget p2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->q:I

    invoke-static {p2}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const/4 p2, -0x1

    const/4 p3, 0x5

    const/16 v3, 0xde1

    if-eq p1, p2, :cond_1

    const p2, 0x84c5

    invoke-static {p2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    invoke-static {v3, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->z:I

    invoke-static {p1, p3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    :cond_1
    iget-object p2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->n1:Ljava/lang/Object;

    monitor-enter p2

    :try_start_0
    iget p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->r:I

    iget-object v6, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->F0:[F

    invoke-static {p1, v5, v6}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->k(II[F)V

    iget p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->s:I

    iget-object v6, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->F0:[F

    const/4 v7, 0x3

    invoke-static {p1, v7, v6}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->k(II[F)V

    iget p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->t:I

    iget-object v6, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->I0:[F

    invoke-static {p1, v5, v6}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->k(II[F)V

    iget p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->u:I

    iget-object v6, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->I0:[F

    invoke-static {p1, v7, v6}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->k(II[F)V

    iget p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->v:I

    iget-object v6, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->L0:[F

    invoke-static {p1, v5, v6}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->k(II[F)V

    iget p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->w:I

    iget-object v6, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->L0:[F

    invoke-static {p1, v7, v6}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->k(II[F)V

    iget p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->x:I

    iget-object v6, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->O0:[F

    invoke-static {p1, v5, v6}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->k(II[F)V

    iget p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->y:I

    iget-object v6, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->O0:[F

    invoke-static {p1, v7, v6}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->k(II[F)V

    iget p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->A:I

    iget v6, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->B0:F

    invoke-static {p1, v6}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->B:I

    iget v6, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->C0:F

    invoke-static {p1, v6}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->C:I

    iget-object v6, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->D0:[F

    invoke-static {v6, p1}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->o([FI)V

    iget p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->D:I

    iget-object v6, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->G0:[F

    invoke-static {v6, p1}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->r([FI)V

    iget p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->E:I

    iget-object v6, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->H0:[F

    invoke-static {v6, p1}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->o([FI)V

    iget p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->F:I

    iget-object v6, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->J0:[F

    invoke-static {v6, p1}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->r([FI)V

    iget p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->G:I

    iget-object v6, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->K0:[F

    invoke-static {v6, p1}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->o([FI)V

    iget p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->H:I

    iget-object v6, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->M0:[F

    invoke-static {v6, p1}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->r([FI)V

    iget p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->I:I

    iget-object v6, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->N0:[F

    invoke-static {v6, p1}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->o([FI)V

    iget p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->J:I

    iget-object v6, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->P0:[F

    invoke-static {v6, p1}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->r([FI)V

    iget p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->K:I

    iget-object v6, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->Q0:[F

    invoke-static {v6, p1}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->o([FI)V

    iget p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->L:I

    iget-object v6, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->R0:[F

    invoke-static {v6, p1}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->o([FI)V

    iget p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->M:I

    iget v6, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->S0:F

    invoke-static {p1, v6}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->N:I

    iget v6, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->T0:F

    invoke-static {p1, v6}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->O:I

    iget v6, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->U0:F

    invoke-static {p1, v6}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->P:I

    iget-object v6, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->V0:[F

    invoke-static {v6, p1}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->o([FI)V

    iget p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->Q:I

    invoke-static {p1, v5}, Landroid/opengl/GLES20;->glUniform1i(II)V

    iget p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->R:I

    iget-object v6, p0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->m:[F

    const/4 v8, 0x1

    invoke-static {p1, v8, v6, v5}, Landroid/opengl/GLES20;->glUniform2fv(II[FI)V

    iget p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->S:I

    iget-object v6, p0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->n:[F

    invoke-static {p1, v8, v6, v5}, Landroid/opengl/GLES20;->glUniform2fv(II[FI)V

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p3, v5, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    iget p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->p:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    iget p0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->q:I

    invoke-static {p0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    invoke-static {v3, v5}, Landroid/opengl/GLES20;->glBindTexture(II)V

    invoke-virtual {v0, v5}, Ljava/nio/IntBuffer;->get(I)I

    move-result p0

    invoke-static {v4, p0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    invoke-virtual {v2, v5}, Ljava/nio/IntBuffer;->get(I)I

    move-result p0

    invoke-virtual {v2, v8}, Ljava/nio/IntBuffer;->get(I)I

    move-result p1

    const/4 p2, 0x2

    invoke-virtual {v2, p2}, Ljava/nio/IntBuffer;->get(I)I

    move-result p2

    invoke-virtual {v2, v7}, Ljava/nio/IntBuffer;->get(I)I

    move-result p3

    invoke-static {p0, p1, p2, p3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    :cond_2
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result p0

    if-eqz p0, :cond_3

    const/16 p1, 0x505

    if-eq p0, p1, :cond_3

    const/16 p1, 0x506

    if-ne p0, p1, :cond_2

    :cond_3
    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final m(Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;I)V
    .locals 0

    iget-object p3, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->t1:Ljava/lang/Object;

    monitor-enter p3

    :try_start_0
    iput-object p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->q1:Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;

    iput-object p2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->r1:Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;

    monitor-exit p3

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final n(Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter$LiveEyebrowWarp3DMetadata;)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->n1:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-boolean v3, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter$LiveEyebrowWarp3DMetadata;->is_valid:Z

    iput-boolean v3, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->o1:Z

    if-nez v3, :cond_0

    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    goto/16 :goto_a

    :cond_0
    iget v3, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter$LiveEyebrowWarp3DMetadata;->rotation:I

    iput v3, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->p1:I

    iget-object v3, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter$LiveEyebrowWarp3DMetadata;->camera_matrix:[F

    iget-object v4, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->z0:[F

    const/16 v5, 0x9

    const/4 v6, 0x0

    invoke-static {v3, v6, v4, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter$LiveEyebrowWarp3DMetadata;->pnp_matrix:[F

    iget-object v4, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->y0:[F

    const/16 v7, 0xc

    invoke-static {v3, v6, v4, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter$LiveEyebrowWarp3DMetadata;->normal_pnp_matrix:[F

    iget-object v4, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->A0:[F

    const/16 v7, 0x10

    invoke-static {v3, v6, v4, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->g1:Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;

    if-eqz v3, :cond_1

    iget-object v4, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter$LiveEyebrowWarp3DMetadata;->texcoord_array:[F

    iget-object v7, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter$LiveEyebrowWarp3DMetadata;->vertex_array:[F

    iget-object v8, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter$LiveEyebrowWarp3DMetadata;->normal_array:[F

    invoke-virtual {v3, v7, v8, v4}, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->UpdateCoordinates([F[F[F)V

    :cond_1
    iget v3, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter$LiveEyebrowWarp3DMetadata;->definition:I

    int-to-float v3, v3

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr v3, v4

    const/4 v7, 0x0

    invoke-static {v3, v7}, Ljava/lang/Math;->max(FF)F

    move-result v3

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-static {v3, v8}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iput v3, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->B0:F

    iget v3, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter$LiveEyebrowWarp3DMetadata;->curvature:I

    int-to-float v3, v3

    div-float/2addr v3, v4

    const/high16 v4, -0x40800000    # -1.0f

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-static {v3, v8}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iput v3, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->C0:F

    iget v3, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->p1:I

    const/16 v9, 0xb4

    const/16 v10, 0x10e

    const/16 v11, 0x5a

    if-eqz v3, :cond_3

    if-eq v3, v11, :cond_3

    if-eq v3, v9, :cond_3

    if-ne v3, v10, :cond_2

    goto :goto_0

    :cond_2
    move v3, v6

    goto :goto_1

    :cond_3
    :goto_0
    iget v12, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->u1:I

    sub-int/2addr v3, v12

    if-gez v3, :cond_4

    add-int/lit16 v3, v3, 0x168

    :cond_4
    :goto_1
    const/4 v12, 0x6

    new-array v13, v12, [F

    aput v7, v13, v6

    const/4 v14, 0x1

    aput v7, v13, v14

    const/4 v15, 0x2

    aput v7, v13, v15

    move/from16 v16, v4

    const/4 v4, 0x3

    aput v7, v13, v4

    move/from16 v17, v14

    const/4 v14, 0x4

    aput v7, v13, v14

    const/16 v18, 0x5

    aput v7, v13, v18

    move/from16 v19, v4

    new-array v4, v12, [F

    aput v7, v4, v6

    aput v7, v4, v17

    aput v7, v4, v15

    aput v7, v4, v19

    aput v7, v4, v14

    aput v7, v4, v18

    if-ne v3, v11, :cond_5

    aput v16, v13, v17

    aput v8, v13, v15

    aput v8, v13, v19

    aput v8, v4, v17

    aput v16, v4, v19

    aput v8, v4, v18

    goto :goto_2

    :cond_5
    if-ne v3, v9, :cond_6

    aput v16, v13, v6

    aput v8, v13, v15

    aput v16, v13, v14

    aput v8, v13, v18

    aput v16, v4, v6

    aput v8, v4, v15

    aput v16, v4, v14

    aput v8, v4, v18

    goto :goto_2

    :cond_6
    if-ne v3, v10, :cond_7

    aput v8, v13, v17

    aput v16, v13, v19

    aput v8, v13, v18

    aput v16, v4, v17

    aput v8, v4, v15

    aput v8, v4, v19

    goto :goto_2

    :cond_7
    aput v8, v13, v6

    aput v8, v13, v14

    aput v8, v4, v6

    aput v8, v4, v14

    :goto_2
    new-array v9, v12, [F

    aput v7, v9, v6

    aput v7, v9, v17

    aput v7, v9, v15

    aput v7, v9, v19

    aput v7, v9, v14

    aput v7, v9, v18

    iget v5, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->l1:F

    cmpl-float v5, v5, v7

    if-lez v5, :cond_8

    aput v8, v9, v6

    aput v16, v9, v14

    aput v8, v9, v18

    goto :goto_3

    :cond_8
    aput v8, v9, v6

    aput v8, v9, v14

    :goto_3
    new-array v5, v12, [F

    fill-array-data v5, :array_0

    new-array v10, v12, [F

    fill-array-data v10, :array_1

    invoke-static {v13, v9, v5}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->q([F[F[F)V

    invoke-static {v9, v4, v10}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->q([F[F[F)V

    iget-object v9, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter$LiveEyebrowWarp3DMetadata;->sample_vector:[F

    iget-object v13, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->D0:[F

    invoke-static {v9, v10, v13}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->t([F[F[F)V

    iget-object v9, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter$LiveEyebrowWarp3DMetadata;->sample_vector_horizontal:[F

    iget-object v13, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->E0:[F

    invoke-static {v9, v10, v13}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->t([F[F[F)V

    iget-object v9, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter$LiveEyebrowWarp3DMetadata;->left_upper_transform_factors:[F

    iget-object v13, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->F0:[F

    invoke-static {v9, v5, v13}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->q([F[F[F)V

    iget-object v9, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter$LiveEyebrowWarp3DMetadata;->left_lower_transform_factors:[F

    iget-object v13, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->I0:[F

    invoke-static {v9, v5, v13}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->q([F[F[F)V

    iget-object v9, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter$LiveEyebrowWarp3DMetadata;->right_upper_transform_factors:[F

    iget-object v13, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->L0:[F

    invoke-static {v9, v5, v13}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->q([F[F[F)V

    iget-object v9, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter$LiveEyebrowWarp3DMetadata;->right_lower_transform_factors:[F

    iget-object v13, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->O0:[F

    invoke-static {v9, v5, v13}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->q([F[F[F)V

    iget-object v9, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter$LiveEyebrowWarp3DMetadata;->left_upper_parabola_side_coords:[F

    iget-object v13, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->G0:[F

    invoke-static {v9, v6, v13, v6, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v9, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter$LiveEyebrowWarp3DMetadata;->left_upper_parabola_inter_factors:[F

    iget-object v13, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->H0:[F

    invoke-static {v9, v6, v13, v6, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v9, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter$LiveEyebrowWarp3DMetadata;->left_lower_parabola_side_coords:[F

    iget-object v13, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->J0:[F

    invoke-static {v9, v6, v13, v6, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v9, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter$LiveEyebrowWarp3DMetadata;->left_lower_parabola_inter_factors:[F

    iget-object v13, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->K0:[F

    invoke-static {v9, v6, v13, v6, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v9, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter$LiveEyebrowWarp3DMetadata;->right_upper_parabola_side_coords:[F

    iget-object v13, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->M0:[F

    invoke-static {v9, v6, v13, v6, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v9, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter$LiveEyebrowWarp3DMetadata;->right_upper_parabola_inter_factors:[F

    iget-object v13, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->N0:[F

    invoke-static {v9, v6, v13, v6, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v9, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter$LiveEyebrowWarp3DMetadata;->right_lower_parabola_side_coords:[F

    iget-object v13, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->P0:[F

    invoke-static {v9, v6, v13, v6, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v9, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter$LiveEyebrowWarp3DMetadata;->right_lower_parabola_inter_factors:[F

    iget-object v13, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->Q0:[F

    invoke-static {v9, v6, v13, v6, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v9, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter$LiveEyebrowWarp3DMetadata;->left_right_brow_thickness:[F

    iget-object v13, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->R0:[F

    invoke-static {v9, v6, v13, v6, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v9, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter$LiveEyebrowWarp3DMetadata;->src_brow_thickness_factor:F

    const v13, 0x3e8a3d71    # 0.27f

    sub-float/2addr v9, v13

    const v13, 0x3d75c290    # 0.060000002f

    div-float/2addr v9, v13

    iput v9, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->S0:F

    invoke-static {v9, v7}, Ljava/lang/Math;->max(FF)F

    move-result v9

    invoke-static {v9, v8}, Ljava/lang/Math;->min(FF)F

    move-result v9

    iput v9, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->S0:F

    iget v9, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter$LiveEyebrowWarp3DMetadata;->left_brow_lower_clear_strength:F

    iput v9, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->T0:F

    iget v9, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter$LiveEyebrowWarp3DMetadata;->right_brow_lower_clear_strength:F

    iput v9, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->U0:F

    iget-object v9, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter$LiveEyebrowWarp3DMetadata;->rotation_degree:[F

    aget v9, v9, v6

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v13

    const/high16 v18, 0x41000000    # 8.0f

    sub-float v13, v13, v18

    const/high16 v18, 0x41400000    # 12.0f

    div-float v13, v13, v18

    invoke-static {v13, v7}, Ljava/lang/Math;->max(FF)F

    move-result v13

    invoke-static {v13, v8}, Ljava/lang/Math;->min(FF)F

    move-result v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmpl-float v9, v9, v7

    move/from16 v18, v7

    iget-object v7, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->V0:[F

    if-lez v9, :cond_9

    :try_start_1
    aput v18, v7, v6

    aput v13, v7, v17

    goto :goto_4

    :cond_9
    aput v13, v7, v6

    aput v18, v7, v17

    :goto_4
    iget-object v7, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->m1:[F

    invoke-static {v10, v6, v7, v6, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-eq v3, v11, :cond_b

    const/16 v7, 0x10e

    if-ne v3, v7, :cond_a

    goto :goto_5

    :cond_a
    move v3, v6

    goto :goto_6

    :cond_b
    :goto_5
    move/from16 v3, v17

    :goto_6
    iget v7, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter$LiveEyebrowWarp3DMetadata;->frontal_warp_table_width:I

    iget v9, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter$LiveEyebrowWarp3DMetadata;->frontal_warp_table_height:I

    iget v10, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter$LiveEyebrowWarp3DMetadata;->frontal_subsample_warp_table_width:I

    iget v11, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter$LiveEyebrowWarp3DMetadata;->frontal_subsample_warp_table_height:I

    iget-object v12, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter$LiveEyebrowWarp3DMetadata;->camera_matrix_pose_scale:[F

    aget v13, v12, v6

    aget v12, v12, v17

    if-eqz v3, :cond_c

    move/from16 v22, v9

    move v9, v7

    move/from16 v7, v22

    move/from16 v22, v11

    move v11, v10

    move/from16 v10, v22

    move/from16 v22, v13

    move v13, v12

    move/from16 v12, v22

    :cond_c
    iget-object v3, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter$LiveEyebrowWarp3DMetadata;->camera_matrix:[F

    move/from16 v16, v8

    iget-object v8, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->W0:[F

    move/from16 v21, v14

    const/16 v14, 0x9

    invoke-static {v3, v6, v8, v6, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v3, v6

    move/from16 v8, v19

    :goto_7
    if-ge v3, v8, :cond_d

    iget-object v8, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->W0:[F

    aget v14, v8, v3

    mul-float/2addr v14, v13

    aput v14, v8, v3

    add-int/lit8 v14, v3, 0x3

    aget v20, v8, v14

    mul-float v20, v20, v12

    aput v20, v8, v14

    add-int/lit8 v3, v3, 0x1

    const/4 v8, 0x3

    goto :goto_7

    :cond_d
    iget-object v3, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter$LiveEyebrowWarp3DMetadata;->warp_transform_factors:[F

    iget-object v8, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->X0:[F

    invoke-static {v3, v5, v8}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->q([F[F[F)V

    iget-object v3, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter$LiveEyebrowWarp3DMetadata;->smooth_left_right_bound:[F

    iget-object v5, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->a1:[F

    invoke-static {v3, v6, v5, v6, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->Y0:[I

    aput v7, v3, v6

    aput v9, v3, v17

    iget-object v3, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->Z0:[I

    aput v10, v3, v6

    aput v11, v3, v17

    iget v3, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter$LiveEyebrowWarp3DMetadata;->frontal_subsample_warp_table_width:I

    int-to-float v3, v3

    div-float v8, v16, v3

    new-array v3, v15, [F

    aput v8, v3, v6

    aput v18, v3, v17

    iget-object v5, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->b1:[F

    aget v7, v3, v6

    aget v8, v4, v6

    mul-float/2addr v7, v8

    aget v8, v3, v17

    aget v9, v4, v17

    mul-float/2addr v9, v8

    add-float/2addr v9, v7

    aput v9, v5, v6

    aget v3, v3, v6

    const/16 v19, 0x3

    aget v7, v4, v19

    mul-float/2addr v3, v7

    aget v4, v4, v21

    mul-float/2addr v8, v4

    add-float/2addr v8, v3

    aput v8, v5, v17

    mul-float/2addr v9, v9

    mul-float/2addr v8, v8

    add-float/2addr v8, v9

    float-to-double v3, v8

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-float v3, v3

    const v4, 0x358637bd    # 1.0E-6f

    cmpg-float v5, v3, v4

    if-gez v5, :cond_e

    move v3, v4

    :cond_e
    div-float v8, v16, v3

    iput v8, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->d1:F

    iget-object v3, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->c1:[F

    iget-object v4, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->b1:[F

    aget v5, v4, v6

    mul-float/2addr v5, v8

    aput v5, v3, v6

    aget v4, v4, v17

    mul-float/2addr v4, v8

    aput v4, v3, v17

    iget v1, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter$LiveEyebrowWarp3DMetadata;->max_step_amount:I

    iput v1, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->e1:I

    const/16 v3, 0x8

    if-le v1, v3, :cond_f

    iput v3, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->e1:I

    :cond_f
    :goto_8
    iget-object v1, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->f1:[F

    array-length v3, v1

    if-ge v6, v3, :cond_11

    iget v3, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->e1:I

    if-gt v6, v3, :cond_10

    move/from16 v3, v16

    goto :goto_9

    :cond_10
    move/from16 v3, v18

    :goto_9
    aput v3, v1, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    :cond_11
    monitor-exit v2

    return-void

    :goto_a
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public final onDestroy()V
    .locals 2

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->o:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->T:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->c0:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    iget-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->s1:Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;

    invoke-virtual {v0}, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;->DestroyData()V

    iget-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->n1:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->g1:Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onDraw(ILjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V
    .locals 10

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->t1:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->q1:Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;

    if-nez v0, :cond_1

    goto/16 :goto_1

    :cond_1
    iget-object v2, v0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;->frame_buffer:[I

    if-eqz v2, :cond_e

    iget-object v2, v0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;->frame_buffer_texture:[I

    if-nez v2, :cond_2

    goto/16 :goto_1

    :cond_2
    iget v2, v0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;->width:I

    if-lez v2, :cond_e

    iget v0, v0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;->height:I

    if-gtz v0, :cond_3

    goto/16 :goto_1

    :cond_3
    iget-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->r1:Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;

    if-nez v0, :cond_4

    goto/16 :goto_1

    :cond_4
    iget-object v2, v0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;->frame_buffer:[I

    if-eqz v2, :cond_e

    iget-object v2, v0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;->frame_buffer_texture:[I

    if-eqz v2, :cond_e

    iget-object v2, v0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;->depth_buffer:[I

    if-nez v2, :cond_5

    goto/16 :goto_1

    :cond_5
    iget v2, v0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;->width:I

    if-lez v2, :cond_e

    iget v0, v0, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;->height:I

    if-gtz v0, :cond_6

    goto/16 :goto_1

    :cond_6
    invoke-super {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->f()V

    invoke-virtual {p0, p1, p2, p3}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->l(ILjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V

    iget-object p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->q1:Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;

    iget-object p1, p1, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;->frame_buffer_texture:[I

    const/4 v0, 0x0

    aget p1, p1, v0

    invoke-virtual {p0, p1}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->s(I)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_7

    iget-object v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->r1:Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;

    iget v4, v2, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;->width:I

    shr-int/2addr v4, v3

    iget v5, v2, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;->height:I

    shr-int/2addr v5, v3

    invoke-virtual {v2}, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;->DestroyData()V

    iget-object v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->r1:Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;

    invoke-virtual {v2, v4, v5}, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;->CreateData(II)Z

    invoke-virtual {p0, p1}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->s(I)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto/16 :goto_2

    :cond_7
    :goto_0
    iget-object v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->s1:Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;

    iget v4, v2, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;->width:I

    iget-object v5, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->Y0:[I

    aget v6, v5, v0

    if-ne v4, v6, :cond_8

    iget v4, v2, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;->height:I

    aget v5, v5, v3

    if-eq v4, v5, :cond_9

    :cond_8
    invoke-virtual {v2}, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;->DestroyData()V

    iget-object v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->Y0:[I

    aget v4, v2, v0

    if-lez v4, :cond_9

    aget v2, v2, v3

    if-lez v2, :cond_9

    iget-object v5, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->s1:Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;

    invoke-virtual {v5, v4, v2}, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;->CreateData(II)Z

    :cond_9
    iget-object v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->s1:Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;

    iget-object v4, v2, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;->frame_buffer:[I

    if-eqz v4, :cond_a

    iget-object v4, v2, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;->frame_buffer_texture:[I

    if-eqz v4, :cond_a

    iget-object v2, v2, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;->depth_buffer:[I

    if-eqz v2, :cond_a

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->j()V

    :cond_a
    iget v2, p0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->mGLProgId:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glUseProgram(I)V

    invoke-virtual {p2, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget v4, p0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->d:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x2

    const/16 v6, 0x1406

    move-object v9, p2

    invoke-static/range {v4 .. v9}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget p2, p0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->d:I

    invoke-static {p2}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget-object p2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->v1:Ljava/nio/FloatBuffer;

    invoke-virtual {p2, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget v4, p0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->f:I

    iget-object v9, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->v1:Ljava/nio/FloatBuffer;

    const/4 v5, 0x2

    const/16 v6, 0x1406

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v4 .. v9}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget p2, p0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->f:I

    invoke-static {p2}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    invoke-virtual {p3, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget v4, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->j0:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x2

    const/16 v6, 0x1406

    move-object v9, p3

    invoke-static/range {v4 .. v9}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget p2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->j0:I

    invoke-static {p2}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget-object p2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->r1:Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;

    iget-object p2, p2, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;->frame_buffer_texture:[I

    aget p2, p2, v0

    const/4 p3, 0x6

    const/4 v2, -0x1

    const/16 v4, 0xde1

    if-eq p2, v2, :cond_b

    const p2, 0x84c6

    invoke-static {p2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    iget-object p2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->r1:Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;

    iget-object p2, p2, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;->frame_buffer_texture:[I

    aget p2, p2, v0

    invoke-static {v4, p2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget p2, p0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->e:I

    invoke-static {p2, p3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    :cond_b
    iget-object p2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->s1:Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;

    iget-object p2, p2, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;->frame_buffer_texture:[I

    const/4 v5, 0x7

    if-eqz p2, :cond_c

    aget p2, p2, v0

    if-eq p2, v2, :cond_c

    const p2, 0x84c7

    invoke-static {p2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    iget-object p2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->s1:Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;

    iget-object p2, p2, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;->frame_buffer_texture:[I

    aget p2, p2, v0

    invoke-static {v4, p2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget p2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->l0:I

    invoke-static {p2, v5}, Landroid/opengl/GLES20;->glUniform1i(II)V

    :cond_c
    if-eq p1, v2, :cond_d

    const p2, 0x84c0

    invoke-static {p2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    invoke-static {v4, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->k0:I

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glUniform1i(II)V

    :cond_d
    iget-object p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->n1:Ljava/lang/Object;

    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget p2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->m0:I

    invoke-static {p2, v0}, Landroid/opengl/GLES20;->glUniform1i(II)V

    iget p2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->n0:I

    iget-object v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->X0:[F

    aget v6, v2, v0

    aget v7, v2, v3

    const/4 v8, 0x2

    aget v2, v2, v8

    invoke-static {p2, v6, v7, v2}, Landroid/opengl/GLES20;->glUniform3f(IFFF)V

    iget p2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->o0:I

    iget-object v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->X0:[F

    const/4 v6, 0x3

    aget v6, v2, v6

    const/4 v7, 0x4

    aget v8, v2, v7

    const/4 v9, 0x5

    aget v2, v2, v9

    invoke-static {p2, v6, v8, v2}, Landroid/opengl/GLES20;->glUniform3f(IFFF)V

    iget p2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->p0:I

    iget-object v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->a1:[F

    aget v6, v2, v0

    aget v2, v2, v3

    invoke-static {p2, v6, v2}, Landroid/opengl/GLES20;->glUniform2f(IFF)V

    iget p2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->q0:I

    iget-object v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->Z0:[I

    aget v6, v2, v0

    int-to-float v6, v6

    aget v2, v2, v3

    int-to-float v2, v2

    invoke-static {p2, v6, v2}, Landroid/opengl/GLES20;->glUniform2f(IFF)V

    iget p2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->r0:I

    iget-object v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->b1:[F

    aget v6, v2, v0

    aget v2, v2, v3

    invoke-static {p2, v6, v2}, Landroid/opengl/GLES20;->glUniform2f(IFF)V

    iget p2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->s0:I

    iget-object v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->c1:[F

    aget v6, v2, v0

    aget v2, v2, v3

    invoke-static {p2, v6, v2}, Landroid/opengl/GLES20;->glUniform2f(IFF)V

    iget p2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->t0:I

    iget v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->d1:F

    invoke-static {p2, v2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget p2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->u0:I

    iget v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->e1:I

    int-to-float v2, v2

    invoke-static {p2, v2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget p2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->v0:I

    iget-object v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->f1:[F

    aget v6, v2, v9

    aget p3, v2, p3

    aget v5, v2, v5

    const/16 v8, 0x8

    aget v2, v2, v8

    invoke-static {p2, v6, p3, v5, v2}, Landroid/opengl/GLES20;->glUniform4f(IFFFF)V

    iget p2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->w0:I

    iget-object p3, p0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->m:[F

    invoke-static {p2, v3, p3, v0}, Landroid/opengl/GLES20;->glUniform2fv(II[FI)V

    iget p2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->x0:I

    iget-object p3, p0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->n:[F

    invoke-static {p2, v3, p3, v0}, Landroid/opengl/GLES20;->glUniform2fv(II[FI)V

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {v9, v0, v7}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    iget p1, p0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->d:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    iget p1, p0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->f:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    iget p0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->j0:I

    invoke-static {p0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    invoke-static {v4, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    :cond_e
    :goto_1
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catchall_1
    move-exception v0

    move-object p0, v0

    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw p0

    :goto_2
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0
.end method

.method public final onInit()V
    .locals 12

    invoke-super {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->onInit()V

    sget-object v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter$c;->a:[C

    invoke-static {v0}, Lcom/cyberlink/clgpuimage/CLMakeupLiveDecode;->a([C)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter$a;->a:[C

    invoke-static {v1}, Lcom/cyberlink/clgpuimage/CLMakeupLiveDecode;->a([C)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter$b;->a:[C

    invoke-static {v2}, Lcom/cyberlink/clgpuimage/CLMakeupLiveDecode;->a([C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cyberlink/clgpuimage/OpenGlUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->o:I

    const-string v1, "position"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->p:I

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->o:I

    const-string v2, "inputTextureCoordinate"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->q:I

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->o:I

    const-string v3, "left_upper_transform_factor_x"

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->r:I

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->o:I

    const-string v3, "left_upper_transform_factor_y"

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->s:I

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->o:I

    const-string v3, "left_lower_transform_factor_x"

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->t:I

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->o:I

    const-string v3, "left_lower_transform_factor_y"

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->u:I

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->o:I

    const-string v3, "right_upper_transform_factor_x"

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->v:I

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->o:I

    const-string v3, "right_upper_transform_factor_y"

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->w:I

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->o:I

    const-string v3, "right_lower_transform_factor_x"

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->x:I

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->o:I

    const-string v3, "right_lower_transform_factor_y"

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->y:I

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->o:I

    const-string v3, "input_texture"

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->z:I

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->o:I

    const-string v3, "eyebrow_definition"

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->A:I

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->o:I

    const-string v3, "eyebrow_curvature"

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->B:I

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->o:I

    const-string v3, "sample_unit_vec"

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->C:I

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->o:I

    const-string v3, "left_upper_parabola_side_coords"

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->D:I

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->o:I

    const-string v3, "left_upper_parabola_inter_factors"

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->E:I

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->o:I

    const-string v3, "left_lower_parabola_side_coords"

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->F:I

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->o:I

    const-string v3, "left_lower_parabola_inter_factors"

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->G:I

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->o:I

    const-string v3, "right_upper_parabola_side_coords"

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->H:I

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->o:I

    const-string v3, "right_upper_parabola_inter_factors"

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->I:I

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->o:I

    const-string v3, "right_lower_parabola_side_coords"

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->J:I

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->o:I

    const-string v3, "right_lower_parabola_inter_factors"

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->K:I

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->o:I

    const-string v3, "left_right_brow_thickness"

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->L:I

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->o:I

    const-string v3, "thick_brow_factor"

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->M:I

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->o:I

    const-string v3, "left_brow_lower_clear_strength"

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->N:I

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->o:I

    const-string v3, "right_brow_lower_clear_strength"

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->O:I

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->o:I

    const-string v3, "left_right_profile_factors"

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->P:I

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->o:I

    const-string v3, "algorithm_index"

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->Q:I

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->o:I

    const-string v4, "grid_roi_start"

    invoke-static {v0, v4}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->R:I

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->o:I

    const-string v5, "grid_roi_end"

    invoke-static {v0, v5}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->S:I

    sget-object v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter$e;->a:[C

    invoke-static {v0}, Lcom/cyberlink/clgpuimage/CLMakeupLiveDecode;->a([C)Ljava/lang/String;

    move-result-object v0

    sget-object v6, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter$d;->a:[C

    invoke-static {v6}, Lcom/cyberlink/clgpuimage/CLMakeupLiveDecode;->a([C)Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/cyberlink/clgpuimage/OpenGlUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->T:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->U:I

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->T:I

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->V:I

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->T:I

    const-string v6, "modelViewProjMatrix"

    invoke-static {v0, v6}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->X:I

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->T:I

    const-string v7, "projectMatrix"

    invoke-static {v0, v7}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->Y:I

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->T:I

    const-string v8, "warp_texture_factor_x"

    invoke-static {v0, v8}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->Z:I

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->T:I

    const-string v9, "warp_texture_factor_y"

    invoke-static {v0, v9}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->a0:I

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->T:I

    const-string v10, "vertical_flip"

    invoke-static {v0, v10}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->b0:I

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->T:I

    const-string v11, "inputImageTexture"

    invoke-static {v0, v11}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->W:I

    sget-object v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter$i;->a:[C

    invoke-static {v0}, Lcom/cyberlink/clgpuimage/CLMakeupLiveDecode;->a([C)Ljava/lang/String;

    move-result-object v0

    sget-object v11, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter$h;->a:[C

    invoke-static {v11}, Lcom/cyberlink/clgpuimage/CLMakeupLiveDecode;->a([C)Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11}, Lcom/cyberlink/clgpuimage/OpenGlUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->c0:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->d0:I

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->c0:I

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->e0:I

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->c0:I

    invoke-static {v0, v6}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->f0:I

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->c0:I

    invoke-static {v0, v7}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->c0:I

    invoke-static {v0, v8}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->g0:I

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->c0:I

    invoke-static {v0, v9}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->h0:I

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->c0:I

    invoke-static {v0, v10}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->i0:I

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v1, "inputImageTexture2"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->k0:I

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v1, "inputWarpTableTexture"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->l0:I

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v1, "inputTextureCoordinate2"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->j0:I

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->m0:I

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v1, "smooth_transform_factor_x"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->n0:I

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v1, "smooth_transform_factor_y"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->o0:I

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v1, "smooth_left_right_bound"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->p0:I

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v1, "subsample_table_size"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->q0:I

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v1, "sample_vector"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->r0:I

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v1, "normalized_sample_vector"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->s0:I

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v1, "sample_vector_inv_length"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->t0:I

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v1, "max_step_amount"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->u0:I

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v1, "step_5_to_8_mask"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->v0:I

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    invoke-static {v0, v4}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->w0:I

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    invoke-static {v0, v5}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->x0:I

    iget v0, p0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->f:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const/16 v0, 0x5a

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->p1:I

    return-void
.end method

.method public final onOutputSizeChanged(II)V
    .locals 0

    iput p1, p0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->g:I

    iput p2, p0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->h:I

    return-void
.end method

.method public final p([FI[F)V
    .locals 24

    move-object/from16 v0, p0

    move/from16 v1, p2

    const/16 v2, 0x9

    new-array v3, v2, [F

    new-array v4, v2, [F

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    aput v6, v4, v5

    const/4 v7, 0x1

    const/4 v8, 0x0

    aput v8, v4, v7

    const/4 v9, 0x2

    aput v8, v4, v9

    const/4 v10, 0x3

    aput v8, v4, v10

    const/4 v11, 0x4

    aput v6, v4, v11

    const/4 v12, 0x5

    aput v8, v4, v12

    const/4 v13, 0x6

    aput v8, v4, v13

    const/4 v14, 0x7

    aput v8, v4, v14

    const/16 v15, 0x8

    aput v6, v4, v15

    move/from16 v16, v6

    const/16 v6, 0x5a

    move/from16 v17, v6

    if-eq v1, v6, :cond_0

    const/16 v6, 0x10e

    if-ne v1, v6, :cond_1

    :cond_0
    aput v8, v4, v11

    aput v8, v4, v5

    aput v16, v4, v10

    aput v16, v4, v7

    :cond_1
    move v6, v5

    :goto_0
    if-ge v6, v2, :cond_2

    aput v8, v3, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    move v6, v5

    :goto_1
    move/from16 v18, v7

    if-ge v6, v10, :cond_5

    move v7, v5

    :goto_2
    move/from16 v19, v8

    if-ge v7, v10, :cond_4

    move v8, v5

    :goto_3
    if-ge v8, v10, :cond_3

    mul-int/lit8 v20, v6, 0x3

    add-int v20, v20, v7

    aget v21, v3, v20

    mul-int/lit8 v22, v8, 0x3

    add-int v23, v6, v22

    aget v23, p3, v23

    add-int v22, v22, v7

    aget v22, v4, v22

    mul-float v23, v23, v22

    add-float v23, v23, v21

    aput v23, v3, v20

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_3
    add-int/lit8 v7, v7, 0x1

    move/from16 v8, v19

    goto :goto_2

    :cond_4
    add-int/lit8 v6, v6, 0x1

    move/from16 v7, v18

    goto :goto_1

    :cond_5
    move/from16 v19, v8

    iget v4, v0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->g:I

    int-to-float v4, v4

    const/high16 v6, 0x40000000    # 2.0f

    div-float v4, v6, v4

    iget v0, v0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->h:I

    int-to-float v0, v0

    div-float/2addr v6, v0

    new-array v0, v2, [F

    aput v4, v0, v5

    aput v19, v0, v18

    aput v19, v0, v9

    aput v19, v0, v10

    aput v6, v0, v11

    aput v19, v0, v12

    const/high16 v4, -0x40800000    # -1.0f

    aput v4, v0, v13

    aput v4, v0, v14

    aput v16, v0, v15

    new-array v4, v2, [F

    move v6, v5

    :goto_4
    if-ge v6, v10, :cond_8

    move v7, v5

    :goto_5
    if-ge v7, v10, :cond_7

    mul-int/lit8 v8, v6, 0x3

    add-int v16, v8, v7

    aput v19, v4, v16

    move/from16 v20, v12

    move v12, v5

    :goto_6
    if-ge v12, v10, :cond_6

    aget v21, v4, v16

    add-int v22, v8, v12

    aget v22, v3, v22

    mul-int/lit8 v23, v12, 0x3

    add-int v23, v23, v7

    aget v23, v0, v23

    mul-float v22, v22, v23

    add-float v22, v22, v21

    aput v22, v4, v16

    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    :cond_6
    add-int/lit8 v7, v7, 0x1

    move/from16 v12, v20

    goto :goto_5

    :cond_7
    move/from16 v20, v12

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_8
    move/from16 v20, v12

    new-array v0, v2, [F

    new-array v3, v11, [F

    fill-array-data v3, :array_0

    new-array v6, v11, [F

    fill-array-data v6, :array_1

    div-int/lit8 v1, v1, 0x5a

    add-int/2addr v1, v10

    rem-int/2addr v1, v11

    invoke-static {v4, v5, v0, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v4, v5

    :goto_7
    if-ge v4, v9, :cond_b

    if-nez v4, :cond_9

    aget v7, v3, v1

    goto :goto_8

    :cond_9
    aget v7, v6, v1

    :goto_8
    move v8, v5

    :goto_9
    if-ge v8, v10, :cond_a

    mul-int/lit8 v12, v8, 0x3

    add-int/2addr v12, v4

    aget v16, v0, v12

    mul-float v16, v16, v7

    aput v16, v0, v12

    add-int/lit8 v8, v8, 0x1

    goto :goto_9

    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_b
    aget v1, v0, v5

    aput v1, p1, v5

    aget v1, v0, v18

    aput v1, p1, v18

    aput v19, p1, v9

    aget v1, v0, v9

    aput v1, p1, v10

    aget v1, v0, v10

    aput v1, p1, v11

    aget v1, v0, v11

    aput v1, p1, v20

    aput v19, p1, v13

    aget v1, v0, v20

    aput v1, p1, v14

    aget v1, v0, v13

    aput v1, p1, v15

    aget v1, v0, v14

    aput v1, p1, v2

    const/16 v1, 0xa

    const v2, -0x407ff973    # -1.0001999f

    aput v2, p1, v1

    const/16 v1, 0xb

    aget v0, v0, v15

    aput v0, p1, v1

    const/16 v0, 0xc

    aput v19, p1, v0

    const/16 v0, 0xd

    aput v19, p1, v0

    const/16 v0, 0xe

    const v1, -0x41b32a80    # -0.20003319f

    aput v1, p1, v0

    const/16 v0, 0xf

    aput v19, p1, v0

    return-void

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

.method public final s(I)Z
    .locals 26

    move-object/from16 v0, p0

    move/from16 v1, p1

    :cond_0
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v2

    if-nez v2, :cond_0

    const/16 v2, 0x400

    invoke-static {v2}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v2

    const v3, 0x8ca6

    invoke-static {v3, v2}, Landroid/opengl/GLES20;->glGetIntegerv(ILjava/nio/IntBuffer;)V

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v4

    const/16 v5, 0xba2

    invoke-static {v5, v4}, Landroid/opengl/GLES20;->glGetIntegerv(ILjava/nio/IntBuffer;)V

    iget v5, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->T:I

    invoke-static {v5}, Landroid/opengl/GLES20;->glUseProgram(I)V

    iget-object v5, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->r1:Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;

    iget v6, v5, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;->width:I

    iget v5, v5, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;->height:I

    const/4 v7, 0x0

    invoke-static {v7, v7, v6, v5}, Landroid/opengl/GLES20;->glViewport(IIII)V

    iget-object v5, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->r1:Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;

    iget-object v5, v5, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;->frame_buffer:[I

    aget v5, v5, v7

    const v6, 0x8d40

    invoke-static {v6, v5}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    const/4 v5, 0x0

    invoke-static {v5, v5, v5, v5}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/16 v8, 0x4100

    invoke-static {v8}, Landroid/opengl/GLES20;->glClear(I)V

    const/16 v8, 0xb71

    invoke-static {v8}, Landroid/opengl/GLES20;->glEnable(I)V

    const/16 v9, 0xbe2

    invoke-static {v9}, Landroid/opengl/GLES20;->glEnable(I)V

    const/4 v10, 0x1

    invoke-static {v10, v7}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    const/16 v11, 0xb44

    invoke-static {v11}, Landroid/opengl/GLES20;->glEnable(I)V

    const/16 v12, 0x900

    invoke-static {v12}, Landroid/opengl/GLES20;->glFrontFace(I)V

    const/16 v12, 0x405

    invoke-static {v12}, Landroid/opengl/GLES20;->glCullFace(I)V

    iget v12, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->U:I

    invoke-static {v12}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget v12, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->V:I

    invoke-static {v12}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const/4 v12, -0x1

    const/4 v13, 0x7

    const/16 v14, 0xde1

    if-eq v1, v12, :cond_1

    const v12, 0x84c7

    invoke-static {v12}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    invoke-static {v14, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget v1, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->W:I

    invoke-static {v1, v13}, Landroid/opengl/GLES20;->glUniform1i(II)V

    :cond_1
    iget-object v12, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->n1:Ljava/lang/Object;

    monitor-enter v12

    :try_start_0
    iget-boolean v1, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->o1:Z

    const/4 v15, 0x3

    move/from16 v16, v5

    const/4 v5, 0x2

    if-eqz v1, :cond_9

    iget-object v1, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->g1:Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;

    if-eqz v1, :cond_9

    move/from16 v17, v8

    iget-object v8, v1, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->vertex_buffer:Ljava/nio/FloatBuffer;

    if-eqz v8, :cond_8

    move/from16 v18, v9

    iget-object v9, v1, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->normal_buffer:Ljava/nio/FloatBuffer;

    if-eqz v9, :cond_7

    iget-object v9, v1, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->texcoord_buffer:Ljava/nio/FloatBuffer;

    if-eqz v9, :cond_7

    invoke-virtual {v8}, Ljava/nio/Buffer;->capacity()I

    move-result v8

    div-int/2addr v8, v15

    iget-object v9, v1, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->normal_buffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v9}, Ljava/nio/Buffer;->capacity()I

    move-result v9

    div-int/2addr v9, v15

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    iget-object v9, v1, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->texcoord_buffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v9}, Ljava/nio/Buffer;->capacity()I

    move-result v9

    div-int/2addr v9, v5

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    iget-object v9, v1, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->vertex_buffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v9, v7}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget v9, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->U:I

    move/from16 v25, v11

    iget-object v11, v1, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->vertex_buffer:Ljava/nio/FloatBuffer;

    const/16 v20, 0x3

    const/16 v21, 0x1406

    const/16 v22, 0x0

    const/16 v23, 0x0

    move/from16 v19, v9

    move-object/from16 v24, v11

    invoke-static/range {v19 .. v24}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget-object v9, v1, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->texcoord_buffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v9, v7}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget v9, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->V:I

    iget-object v1, v1, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Live3DRenderData;->texcoord_buffer:Ljava/nio/FloatBuffer;

    const/16 v20, 0x2

    const/16 v21, 0x1406

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v24, v1

    move/from16 v19, v9

    invoke-static/range {v19 .. v24}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget v1, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->p1:I

    iget v9, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->u1:I

    sub-int/2addr v1, v9

    if-gez v1, :cond_2

    add-int/lit16 v1, v1, 0x168

    :cond_2
    move v9, v7

    :goto_0
    if-ge v9, v3, :cond_4

    move v11, v7

    :goto_1
    if-ge v11, v15, :cond_3

    move/from16 v19, v13

    iget-object v13, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->h1:[F

    shl-int/lit8 v20, v9, 0x2

    add-int v20, v20, v11

    move/from16 p1, v15

    iget-object v15, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->y0:[F

    shl-int/lit8 v21, v11, 0x2

    add-int v21, v21, v9

    aget v15, v15, v21

    aput v15, v13, v20

    add-int/lit8 v11, v11, 0x1

    move/from16 v15, p1

    move/from16 v13, v19

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_7

    :cond_3
    move/from16 v19, v13

    move/from16 p1, v15

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_4
    move/from16 v19, v13

    move/from16 p1, v15

    iget-object v9, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->h1:[F

    const/16 v11, 0xb

    aput v16, v9, v11

    aput v16, v9, v19

    aput v16, v9, p1

    const/16 v11, 0xf

    const/high16 v13, 0x3f800000    # 1.0f

    aput v13, v9, v11

    move v9, v7

    :goto_2
    if-ge v9, v3, :cond_6

    move v11, v7

    :goto_3
    if-ge v11, v3, :cond_5

    iget-object v13, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->i1:[F

    shl-int/lit8 v15, v9, 0x2

    add-int/2addr v15, v11

    move/from16 v16, v5

    iget-object v5, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->A0:[F

    shl-int/lit8 v19, v11, 0x2

    add-int v19, v19, v9

    aget v5, v5, v19

    aput v5, v13, v15

    add-int/lit8 v11, v11, 0x1

    move/from16 v5, v16

    goto :goto_3

    :cond_5
    move/from16 v16, v5

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_6
    move/from16 v16, v5

    iget-object v5, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->j1:[F

    iget-object v9, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->z0:[F

    invoke-virtual {v0, v5, v1, v9}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->p([FI[F)V

    iget v1, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->X:I

    iget-object v5, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->h1:[F

    invoke-static {v1, v10, v7, v5, v7}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    iget v1, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->Y:I

    iget-object v5, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->j1:[F

    invoke-static {v1, v10, v7, v5, v7}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    iget v1, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->Z:I

    iget-object v5, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->m1:[F

    aget v9, v5, v7

    aget v11, v5, v10

    aget v5, v5, v16

    invoke-static {v1, v9, v11, v5}, Landroid/opengl/GLES20;->glUniform3f(IFFF)V

    iget v1, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->a0:I

    iget-object v5, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->m1:[F

    aget v9, v5, p1

    aget v11, v5, v3

    const/4 v13, 0x5

    aget v5, v5, v13

    invoke-static {v1, v9, v11, v5}, Landroid/opengl/GLES20;->glUniform3f(IFFF)V

    iget v1, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->b0:I

    iget v5, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->l1:F

    invoke-static {v1, v5}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    invoke-static {v3, v7, v8}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    goto :goto_6

    :cond_7
    move/from16 v16, v5

    :goto_4
    move/from16 v25, v11

    move/from16 p1, v15

    goto :goto_6

    :cond_8
    move/from16 v16, v5

    :goto_5
    move/from16 v18, v9

    goto :goto_4

    :cond_9
    move/from16 v16, v5

    move/from16 v17, v8

    goto :goto_5

    :goto_6
    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static/range {v17 .. v17}, Landroid/opengl/GLES20;->glDisable(I)V

    invoke-static/range {v18 .. v18}, Landroid/opengl/GLES20;->glDisable(I)V

    invoke-static/range {v25 .. v25}, Landroid/opengl/GLES20;->glDisable(I)V

    const/16 v1, 0x901

    invoke-static {v1}, Landroid/opengl/GLES20;->glFrontFace(I)V

    iget v1, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->U:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    iget v0, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DEyebrowWarpFilter;->V:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    invoke-static {v14, v7}, Landroid/opengl/GLES20;->glBindTexture(II)V

    invoke-virtual {v2, v7}, Ljava/nio/IntBuffer;->get(I)I

    move-result v0

    invoke-static {v6, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    invoke-virtual {v4, v7}, Ljava/nio/IntBuffer;->get(I)I

    move-result v0

    invoke-virtual {v4, v10}, Ljava/nio/IntBuffer;->get(I)I

    move-result v1

    move/from16 v2, v16

    invoke-virtual {v4, v2}, Ljava/nio/IntBuffer;->get(I)I

    move-result v2

    move/from16 v3, p1

    invoke-virtual {v4, v3}, Ljava/nio/IntBuffer;->get(I)I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    :cond_a
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    if-eqz v0, :cond_c

    const/16 v1, 0x505

    if-eq v0, v1, :cond_b

    const/16 v1, 0x506

    if-ne v0, v1, :cond_a

    :cond_b
    return v7

    :cond_c
    return v10

    :goto_7
    :try_start_1
    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
