.class public final Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;
.super Lcom/cyberlink/clgpuimage/GPUImageFilter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$b;,
        Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$c;,
        Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$h;,
        Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$g;,
        Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$f;,
        Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$e;,
        Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$d;,
        Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$i;,
        Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$a;,
        Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$LiveConcealerMetadata;,
        Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$ConcealerMode;
    }
.end annotation


# static fields
.field public static final f1:[F

.field public static final g1:[F


# instance fields
.field public A:I

.field public A0:I

.field public B:I

.field public B0:I

.field public C:I

.field public C0:I

.field public D:I

.field public D0:I

.field public E:I

.field public E0:I

.field public F:I

.field public F0:I

.field public G:I

.field public G0:I

.field public H:Z

.field public H0:I

.field public I:I

.field public I0:I

.field public J:Ljava/nio/ByteBuffer;

.field public J0:I

.field public K:Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;

.field public K0:I

.field public L:I

.field public L0:I

.field public M:I

.field public M0:I

.field public N:I

.field public N0:I

.field public O:I

.field public O0:I

.field public P:I

.field public P0:I

.field public Q:Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;

.field public Q0:I

.field public R:Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;

.field public R0:I

.field public S:I

.field public S0:I

.field public T:I

.field public T0:I

.field public U:I

.field public U0:I

.field public V:I

.field public V0:I

.field public W:I

.field public W0:I

.field public X:I

.field public X0:Ljava/nio/ByteBuffer;

.field public Y:I

.field public Y0:Ljava/nio/ByteBuffer;

.field public Z:I

.field public Z0:Ljava/nio/ByteBuffer;

.field public a0:I

.field public final a1:Ljava/nio/FloatBuffer;

.field public b0:I

.field public final b1:Ljava/nio/FloatBuffer;

.field public c0:I

.field public c1:I

.field public d0:F

.field public d1:I

.field public e0:F

.field public e1:I

.field public f0:F

.field public g0:Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;

.field public h0:I

.field public i0:I

.field public j0:I

.field public k0:I

.field public l0:I

.field public m0:I

.field public n0:Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;

.field public o:I

.field public o0:I

.field public p:I

.field public p0:I

.field public q:I

.field public q0:I

.field public r:Z

.field public r0:I

.field public final s:Ljava/lang/Object;

.field public s0:I

.field public final t:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$LiveConcealerMetadata;

.field public t0:I

.field public final u:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;

.field public u0:I

.field public final v:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveDynamicRangeMetadata;

.field public v0:I

.field public final w:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveFrameInformation;

.field public w0:I

.field public x:Z

.field public x0:I

.field public final y:Ljava/lang/Object;

.field public y0:I

.field public z:Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;

.field public z0:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x8

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    sput-object v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->f1:[F

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    sput-object v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->g1:[F

    return-void

    nop

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

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    sget-object v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$c;->a:[C

    invoke-static {v0}, Lcom/cyberlink/clgpuimage/CLMakeupLiveDecode;->a([C)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$b;->a:[C

    invoke-static {v1}, Lcom/cyberlink/clgpuimage/CLMakeupLiveDecode;->a([C)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/cyberlink/clgpuimage/GPUImageFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->o:I

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->p:I

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->q:I

    iput-boolean v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->r:Z

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->s:Ljava/lang/Object;

    new-instance v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$LiveConcealerMetadata;

    invoke-direct {v1}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$LiveConcealerMetadata;-><init>()V

    iput-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->t:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$LiveConcealerMetadata;

    new-instance v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;

    invoke-direct {v1}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;-><init>()V

    iput-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->u:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;

    new-instance v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveDynamicRangeMetadata;

    invoke-direct {v1}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveDynamicRangeMetadata;-><init>()V

    iput-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->v:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveDynamicRangeMetadata;

    new-instance v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveFrameInformation;

    invoke-direct {v1}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveFrameInformation;-><init>()V

    iput-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->w:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveFrameInformation;

    iput-boolean v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->x:Z

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->y:Ljava/lang/Object;

    new-instance v1, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;

    invoke-direct {v1}, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;-><init>()V

    iput-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->z:Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;

    iput-boolean v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->H:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->I:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->J:Ljava/nio/ByteBuffer;

    new-instance v2, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;

    invoke-direct {v2}, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;-><init>()V

    iput-object v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->K:Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;

    new-instance v2, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;

    invoke-direct {v2}, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;-><init>()V

    iput-object v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->Q:Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;

    new-instance v2, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;

    invoke-direct {v2}, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;-><init>()V

    iput-object v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->R:Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;

    new-instance v2, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;

    invoke-direct {v2}, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;-><init>()V

    iput-object v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->g0:Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;

    new-instance v2, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;

    invoke-direct {v2}, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;-><init>()V

    iput-object v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->n0:Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->U0:I

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->V0:I

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->W0:I

    iput-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->X0:Ljava/nio/ByteBuffer;

    iput-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->Y0:Ljava/nio/ByteBuffer;

    iput-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->Z0:Ljava/nio/ByteBuffer;

    const/16 v0, 0x5a

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->e1:I

    const/16 v0, 0x20

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {v1}, Lfc;->v(Ljava/nio/ByteBuffer;)Ljava/nio/FloatBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->a1:Ljava/nio/FloatBuffer;

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0}, Lfc;->v(Ljava/nio/ByteBuffer;)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->b1:Ljava/nio/FloatBuffer;

    return-void
.end method


# virtual methods
.method public final d()V
    .locals 25

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->s:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v2, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->E0:I

    const/4 v3, 0x4

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    iget v2, v0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->h:I

    int-to-float v2, v2

    const/high16 v4, 0x3f800000    # 1.0f

    div-float v2, v4, v2

    iget v5, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->F0:I

    const/4 v6, 0x0

    invoke-static {v5, v6, v2}, Landroid/opengl/GLES20;->glUniform2f(IFF)V

    iget-object v2, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->u:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;

    iget v5, v2, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->skin_mask_roi_left:F

    iget v7, v2, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->skin_mask_roi_top:F

    iget v8, v2, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->skin_mask_roi_right:F

    iget v2, v2, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->skin_mask_roi_bottom:F

    iget v9, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->w0:I

    invoke-static {v9, v5, v7, v8, v2}, Landroid/opengl/GLES20;->glUniform4f(IFFFF)V

    iget v2, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->x0:I

    iget-object v5, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->u:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;

    iget v7, v5, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->skin_region_roi_rect_rotated_cos:F

    iget v5, v5, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->skin_region_roi_rect_rotated_sin:F

    invoke-static {v2, v7, v5}, Landroid/opengl/GLES20;->glUniform2f(IFF)V

    iget v2, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->o:I

    iget v5, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->p:I

    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-float v2, v2

    iget v5, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->y0:I

    iget v7, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->o:I

    int-to-float v7, v7

    div-float/2addr v7, v2

    iget v8, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->p:I

    int-to-float v8, v8

    div-float/2addr v8, v2

    invoke-static {v5, v7, v8}, Landroid/opengl/GLES20;->glUniform2f(IFF)V

    iget v5, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->G0:I

    iget-object v7, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->u:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;

    iget v7, v7, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->skin_mask_forehead_face_boundary:F

    div-float/2addr v7, v2

    invoke-static {v5, v7}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget v2, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->H0:I

    iget-object v5, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->t:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$LiveConcealerMetadata;

    iget v5, v5, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$LiveConcealerMetadata;->coverage_intensity:I

    int-to-float v5, v5

    const v7, 0x3c23d70a    # 0.01f

    mul-float/2addr v5, v7

    invoke-static {v2, v5}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget v2, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->I0:I

    iget-object v5, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->u:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;

    iget v5, v5, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->skin_luma_average:F

    const/high16 v8, 0x437f0000    # 255.0f

    div-float/2addr v5, v8

    invoke-static {v2, v5}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget v2, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->J0:I

    iget-object v5, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->u:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;

    iget v5, v5, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->skin_luma_average_left_part:F

    div-float/2addr v5, v8

    invoke-static {v2, v5}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget v2, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->K0:I

    iget-object v5, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->u:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;

    iget v5, v5, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->skin_luma_average_right_part:F

    div-float/2addr v5, v8

    invoke-static {v2, v5}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    const/4 v2, 0x3

    new-array v5, v2, [F

    iget-object v9, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->v:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveDynamicRangeMetadata;

    iget v9, v9, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveDynamicRangeMetadata;->max_luma:F

    const/4 v10, 0x0

    move v11, v10

    :goto_0
    const/high16 v12, 0x40400000    # 3.0f

    if-ge v11, v2, :cond_0

    const/high16 v13, 0x40000000    # 2.0f

    add-float/2addr v13, v9

    div-float/2addr v13, v12

    iget-object v12, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->t:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$LiveConcealerMetadata;

    iget-object v12, v12, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$LiveConcealerMetadata;->concealer_color:[I

    aget v12, v12, v11

    int-to-float v12, v12

    mul-float/2addr v13, v12

    div-float/2addr v13, v8

    aput v13, v5, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_b

    :cond_0
    aget v8, v5, v10

    const/4 v11, 0x1

    aget v13, v5, v11

    add-float v14, v8, v13

    const/4 v15, 0x2

    aget v5, v5, v15

    add-float/2addr v14, v5

    div-float/2addr v14, v12

    sub-float v9, v4, v9

    mul-float/2addr v9, v14

    sub-float v9, v4, v9

    iget-object v12, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->t:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$LiveConcealerMetadata;

    iget v14, v12, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$LiveConcealerMetadata;->color_spot_intensity:I

    int-to-float v14, v14

    mul-float/2addr v14, v9

    mul-float/2addr v14, v7

    iget v7, v12, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$LiveConcealerMetadata;->color_under_eye_intensity:I

    int-to-float v7, v7

    mul-float/2addr v7, v9

    const v9, 0x3c03126f    # 0.008f

    mul-float/2addr v7, v9

    iget v9, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->L0:I

    invoke-static {v9, v8, v13, v5}, Landroid/opengl/GLES20;->glUniform3f(IFFF)V

    iget v5, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->M0:I

    invoke-static {v5, v14}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget v5, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->N0:I

    invoke-static {v5, v7}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget-object v5, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->t:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$LiveConcealerMetadata;

    iget-object v5, v5, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$LiveConcealerMetadata;->concealer_mode:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$ConcealerMode;

    sget-object v7, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$ConcealerMode;->CONCEALER_MODE_SPOT_DARK_CIRCLE:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$ConcealerMode;

    if-eq v5, v7, :cond_2

    sget-object v8, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$ConcealerMode;->CONCEALER_MODE_DARK_CIRCLE_ONLY:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$ConcealerMode;

    if-ne v5, v8, :cond_1

    goto :goto_1

    :cond_1
    move v8, v6

    goto :goto_2

    :cond_2
    :goto_1
    move v8, v4

    :goto_2
    if-eq v5, v7, :cond_4

    sget-object v7, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$ConcealerMode;->CONCEALER_MODE_SPOT_ONLY:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$ConcealerMode;

    if-ne v5, v7, :cond_3

    goto :goto_3

    :cond_3
    move v5, v6

    goto :goto_4

    :cond_4
    :goto_3
    move v5, v4

    :goto_4
    iget v7, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->O0:I

    invoke-static {v7, v8}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget v7, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->P0:I

    invoke-static {v7, v5}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget-object v5, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->t:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$LiveConcealerMetadata;

    iget-boolean v5, v5, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$LiveConcealerMetadata;->is_have_mask:Z

    if-eqz v5, :cond_5

    goto :goto_5

    :cond_5
    move v4, v6

    :goto_5
    iget v5, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->Q0:I

    invoke-static {v5, v4}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget-object v4, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->t:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$LiveConcealerMetadata;

    iget v4, v4, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$LiveConcealerMetadata;->roll_degree:F

    iget v5, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->d0:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget-object v5, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->t:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$LiveConcealerMetadata;

    iget v5, v5, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$LiveConcealerMetadata;->pitch_degree:F

    iget v6, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->e0:F

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget-object v6, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->t:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$LiveConcealerMetadata;

    iget v6, v6, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$LiveConcealerMetadata;->yaw_degree:F

    iget v7, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->f0:F

    sub-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    invoke-static {v4, v6}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iget v5, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->R0:I

    invoke-static {v5, v4}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget-object v4, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->t:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$LiveConcealerMetadata;

    iget-object v5, v4, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$LiveConcealerMetadata;->left_eye_right:Landroid/graphics/PointF;

    iget-object v4, v4, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$LiveConcealerMetadata;->right_eye_left:Landroid/graphics/PointF;

    iget v6, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->S0:I

    iget v7, v5, Landroid/graphics/PointF;->x:F

    iget v8, v4, Landroid/graphics/PointF;->x:F

    add-float/2addr v7, v8

    const/high16 v8, 0x3f000000    # 0.5f

    mul-float/2addr v7, v8

    iget v9, v5, Landroid/graphics/PointF;->y:F

    iget v12, v4, Landroid/graphics/PointF;->y:F

    add-float/2addr v9, v12

    mul-float/2addr v9, v8

    invoke-static {v6, v7, v9}, Landroid/opengl/GLES20;->glUniform2f(IFF)V

    iget v6, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->T0:I

    iget v7, v5, Landroid/graphics/PointF;->x:F

    iget v8, v4, Landroid/graphics/PointF;->x:F

    sub-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    iget v5, v5, Landroid/graphics/PointF;->y:F

    iget v4, v4, Landroid/graphics/PointF;->y:F

    sub-float/2addr v5, v4

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-static {v6, v7, v4}, Landroid/opengl/GLES20;->glUniform2f(IFF)V

    iget v4, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->c1:I

    iget-object v5, v0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->m:[F

    invoke-static {v4, v11, v5, v10}, Landroid/opengl/GLES20;->glUniform2fv(II[FI)V

    iget v4, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->d1:I

    iget-object v5, v0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->n:[F

    invoke-static {v4, v11, v5, v10}, Landroid/opengl/GLES20;->glUniform2fv(II[FI)V

    invoke-static {v11}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v4

    const/16 v5, 0xcf5

    invoke-static {v5, v4}, Landroid/opengl/GLES20;->glGetIntegerv(ILjava/nio/IntBuffer;)V

    invoke-static {v5, v11}, Landroid/opengl/GLES20;->glPixelStorei(II)V

    iget v6, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->U0:I

    const/16 v7, 0x2803

    const/16 v8, 0x2802

    const/16 v9, 0x2801

    const/16 v12, 0x2800

    const v13, 0x47012f00    # 33071.0f

    const v14, 0x46180400    # 9729.0f

    const/4 v3, -0x1

    const/16 v2, 0xde1

    if-ne v6, v3, :cond_6

    new-array v6, v11, [I

    invoke-static {v11, v6, v10}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    aget v6, v6, v10

    iput v6, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->U0:I

    invoke-static {v2, v6}, Landroid/opengl/GLES20;->glBindTexture(II)V

    invoke-static {v2, v12, v14}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    invoke-static {v2, v9, v14}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    invoke-static {v2, v8, v13}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    invoke-static {v2, v7, v13}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    iget-object v6, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->u:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;

    iget v15, v6, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->skin_mask_roi_width:I

    iget v6, v6, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->skin_mask_roi_height:I

    iget-object v5, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->X0:Ljava/nio/ByteBuffer;

    const/16 v16, 0xde1

    const/16 v17, 0x0

    const/16 v18, 0x1906

    const/16 v21, 0x0

    const/16 v22, 0x1906

    const/16 v23, 0x1401

    move-object/from16 v24, v5

    move/from16 v20, v6

    move/from16 v19, v15

    invoke-static/range {v16 .. v24}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    goto :goto_6

    :cond_6
    invoke-static {v2, v6}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget-object v5, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->u:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;

    iget v6, v5, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->skin_mask_roi_width:I

    iget v5, v5, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->skin_mask_roi_height:I

    iget-object v15, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->X0:Ljava/nio/ByteBuffer;

    const/16 v16, 0xde1

    const/16 v17, 0x0

    const/16 v18, 0x1906

    const/16 v21, 0x0

    const/16 v22, 0x1906

    const/16 v23, 0x1401

    move/from16 v20, v5

    move/from16 v19, v6

    move-object/from16 v24, v15

    invoke-static/range {v16 .. v24}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    :goto_6
    iget v5, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->W0:I

    if-ne v5, v3, :cond_7

    new-array v5, v11, [I

    invoke-static {v11, v5, v10}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    aget v5, v5, v10

    iput v5, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->W0:I

    invoke-static {v2, v5}, Landroid/opengl/GLES20;->glBindTexture(II)V

    invoke-static {v2, v12, v14}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    invoke-static {v2, v9, v14}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    invoke-static {v2, v8, v13}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    invoke-static {v2, v7, v13}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    iget-object v5, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->u:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;

    iget v6, v5, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->skin_mask_roi_width:I

    iget v5, v5, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->skin_mask_roi_height:I

    :goto_7
    iget-object v15, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->Z0:Ljava/nio/ByteBuffer;

    goto :goto_8

    :cond_7
    invoke-static {v2, v5}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget-object v5, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->u:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;

    iget v6, v5, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->skin_mask_roi_width:I

    iget v5, v5, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->skin_mask_roi_height:I

    goto :goto_7

    :goto_8
    const/16 v16, 0xde1

    const/16 v17, 0x0

    const/16 v18, 0x1906

    const/16 v21, 0x0

    const/16 v22, 0x1906

    const/16 v23, 0x1401

    move/from16 v20, v5

    move/from16 v19, v6

    move-object/from16 v24, v15

    invoke-static/range {v16 .. v24}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    iget v5, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->V0:I

    if-ne v5, v3, :cond_8

    new-array v5, v11, [I

    invoke-static {v11, v5, v10}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    aget v5, v5, v10

    iput v5, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->V0:I

    invoke-static {v2, v5}, Landroid/opengl/GLES20;->glBindTexture(II)V

    invoke-static {v2, v12, v14}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    invoke-static {v2, v9, v14}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    invoke-static {v2, v8, v13}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    invoke-static {v2, v7, v13}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    iget-object v5, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->u:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;

    iget v6, v5, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->skin_mask_roi_width:I

    iget v5, v5, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->skin_mask_roi_height:I

    :goto_9
    iget-object v7, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->Y0:Ljava/nio/ByteBuffer;

    goto :goto_a

    :cond_8
    invoke-static {v2, v5}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget-object v5, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->u:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;

    iget v6, v5, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->skin_mask_roi_width:I

    iget v5, v5, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->skin_mask_roi_height:I

    goto :goto_9

    :goto_a
    const/16 v16, 0xde1

    const/16 v17, 0x0

    const/16 v18, 0x1906

    const/16 v21, 0x0

    const/16 v22, 0x1906

    const/16 v23, 0x1401

    move/from16 v20, v5

    move/from16 v19, v6

    move-object/from16 v24, v7

    invoke-static/range {v16 .. v24}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    invoke-virtual {v4, v10}, Ljava/nio/IntBuffer;->get(I)I

    move-result v4

    const/16 v5, 0xcf5

    invoke-static {v5, v4}, Landroid/opengl/GLES20;->glPixelStorei(II)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->n0:Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;

    iget-object v1, v1, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;->frame_buffer_texture:[I

    aget v1, v1, v10

    if-eq v1, v3, :cond_9

    const v1, 0x84c1

    invoke-static {v1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    iget-object v1, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->n0:Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;

    iget-object v1, v1, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;->frame_buffer_texture:[I

    aget v1, v1, v10

    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget v1, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->v0:I

    invoke-static {v1, v11}, Landroid/opengl/GLES20;->glUniform1i(II)V

    :cond_9
    iget-object v1, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->z:Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;

    iget-object v1, v1, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;->frame_buffer_texture:[I

    aget v1, v1, v10

    if-eq v1, v3, :cond_a

    const v1, 0x84c2

    invoke-static {v1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    iget-object v1, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->z:Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;

    iget-object v1, v1, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;->frame_buffer_texture:[I

    aget v1, v1, v10

    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget v1, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->z0:I

    const/4 v4, 0x2

    invoke-static {v1, v4}, Landroid/opengl/GLES20;->glUniform1i(II)V

    :cond_a
    iget v1, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->U0:I

    if-eq v1, v3, :cond_b

    const v1, 0x84c3

    invoke-static {v1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    iget v1, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->U0:I

    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget v1, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->B0:I

    const/4 v4, 0x3

    invoke-static {v1, v4}, Landroid/opengl/GLES20;->glUniform1i(II)V

    :cond_b
    iget v1, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->W0:I

    if-eq v1, v3, :cond_c

    const v1, 0x84c4

    invoke-static {v1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    iget v1, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->W0:I

    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget v1, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->D0:I

    const/4 v4, 0x4

    invoke-static {v1, v4}, Landroid/opengl/GLES20;->glUniform1i(II)V

    :cond_c
    iget v1, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->V0:I

    if-eq v1, v3, :cond_d

    const v1, 0x84c5

    invoke-static {v1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    iget v1, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->V0:I

    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget v0, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->C0:I

    const/4 v1, 0x5

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    :cond_d
    return-void

    :goto_b
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final j(Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;)V
    .locals 1

    iget-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->y:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->z:Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;

    iput-object p2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->K:Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;

    iput-object p3, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->Q:Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;

    iput-object p4, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->R:Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;

    iput-object p5, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->g0:Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;

    iput-object p6, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->n0:Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final k(Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$LiveConcealerMetadata;Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveDynamicRangeMetadata;Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveFrameInformation;Z)V
    .locals 2

    iget-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->s:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->t:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$LiveConcealerMetadata;

    invoke-virtual {v1, p1}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$LiveConcealerMetadata;->Copy(Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$LiveConcealerMetadata;)V

    iget-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->u:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;

    invoke-virtual {v1, p2}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->Copy(Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;)V

    iget-object p2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->v:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveDynamicRangeMetadata;

    invoke-virtual {p2, p3}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveDynamicRangeMetadata;->Copy(Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveDynamicRangeMetadata;)V

    iget-object p2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->w:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveFrameInformation;

    invoke-virtual {p2, p4}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveFrameInformation;->Copy(Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveFrameInformation;)V

    iput-boolean p5, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->x:Z

    iget-boolean p2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->H:Z

    const/4 p3, 0x0

    if-nez p2, :cond_0

    iget-object p2, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$LiveConcealerMetadata;->template_data:[B

    array-length p2, p2

    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    iput-object p2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->J:Ljava/nio/ByteBuffer;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    iget-object p2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->J:Ljava/nio/ByteBuffer;

    iget-object p5, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$LiveConcealerMetadata;->template_data:[B

    invoke-virtual {p2, p5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    iget-object p2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->J:Ljava/nio/ByteBuffer;

    invoke-virtual {p2, p3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->H:Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_1

    :cond_0
    :goto_0
    iget p2, p4, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveFrameInformation;->face_size:I

    iget p2, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$LiveConcealerMetadata;->frame_width:I

    iput p2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->o:I

    iget p2, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$LiveConcealerMetadata;->frame_height:I

    iput p2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->p:I

    iget p2, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$LiveConcealerMetadata;->rotation:I

    iput p2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->q:I

    iget-boolean p1, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$LiveConcealerMetadata;->is_front_camera:Z

    iput-boolean p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->r:Z

    iget-object p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->X0:Ljava/nio/ByteBuffer;

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->u:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;

    iget p2, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->skin_mask_size_width:I

    iget p1, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->skin_mask_size_height:I

    mul-int/2addr p2, p1

    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->X0:Ljava/nio/ByteBuffer;

    :cond_1
    iget-object p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->Z0:Ljava/nio/ByteBuffer;

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->u:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;

    iget p2, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->skin_mask_size_width:I

    iget p1, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->skin_mask_size_height:I

    mul-int/2addr p2, p1

    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->Z0:Ljava/nio/ByteBuffer;

    :cond_2
    iget-object p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->Y0:Ljava/nio/ByteBuffer;

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->u:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;

    iget p2, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->skin_mask_size_width:I

    iget p1, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->skin_mask_size_height:I

    mul-int/2addr p2, p1

    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->Y0:Ljava/nio/ByteBuffer;

    :cond_3
    iget-object p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->X0:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    iget-object p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->X0:Ljava/nio/ByteBuffer;

    iget-object p2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->u:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;

    iget-object p2, p2, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->skin_probability_mask:[B

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    iget-object p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->X0:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, p3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->Z0:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    iget-object p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->Z0:Ljava/nio/ByteBuffer;

    iget-object p2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->u:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;

    iget-object p2, p2, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->forehead_neck_mask:[B

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    iget-object p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->Z0:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, p3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->Y0:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    iget-object p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->Y0:Ljava/nio/ByteBuffer;

    iget-object p2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->u:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;

    iget-object p2, p2, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->fade_out_mask:[B

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    iget-object p0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->Y0:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final l([F)[F
    .locals 17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->e1:I

    const/16 v1, 0x5a

    const/16 v2, 0x8

    const/4 v3, 0x7

    const/4 v4, 0x6

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x5

    const/4 v8, 0x1

    const/4 v9, 0x4

    const/4 v10, 0x0

    if-ne v0, v1, :cond_0

    aget v0, p1, v9

    aget v1, p1, v7

    aget v11, p1, v10

    aget v12, p1, v8

    aget v13, p1, v4

    aget v14, p1, v3

    aget v15, p1, v6

    aget v16, p1, v5

    new-array v2, v2, [F

    aput v0, v2, v10

    aput v1, v2, v8

    aput v11, v2, v6

    aput v12, v2, v5

    aput v13, v2, v9

    aput v14, v2, v7

    aput v15, v2, v4

    aput v16, v2, v3

    return-object v2

    :cond_0
    const/16 v1, 0xb4

    if-ne v0, v1, :cond_1

    aget v0, p1, v4

    aget v1, p1, v3

    aget v11, p1, v9

    aget v12, p1, v7

    aget v13, p1, v6

    aget v14, p1, v5

    aget v15, p1, v10

    aget v16, p1, v8

    new-array v2, v2, [F

    aput v0, v2, v10

    aput v1, v2, v8

    aput v11, v2, v6

    aput v12, v2, v5

    aput v13, v2, v9

    aput v14, v2, v7

    aput v15, v2, v4

    aput v16, v2, v3

    return-object v2

    :cond_1
    const/16 v1, 0x10e

    if-ne v0, v1, :cond_2

    aget v0, p1, v6

    aget v1, p1, v5

    aget v11, p1, v4

    aget v12, p1, v3

    aget v13, p1, v10

    aget v14, p1, v8

    aget v15, p1, v9

    aget v16, p1, v7

    new-array v2, v2, [F

    aput v0, v2, v10

    aput v1, v2, v8

    aput v11, v2, v6

    aput v12, v2, v5

    aput v13, v2, v9

    aput v14, v2, v7

    aput v15, v2, v4

    aput v16, v2, v3

    return-object v2

    :cond_2
    aget v0, p1, v10

    aget v1, p1, v8

    aget v11, p1, v6

    aget v12, p1, v5

    aget v13, p1, v9

    aget v14, p1, v7

    aget v15, p1, v4

    aget v16, p1, v3

    new-array v2, v2, [F

    aput v0, v2, v10

    aput v1, v2, v8

    aput v11, v2, v6

    aput v12, v2, v5

    aput v13, v2, v9

    aput v14, v2, v7

    aput v15, v2, v4

    aput v16, v2, v3

    return-object v2
.end method

.method public final onDestroy()V
    .locals 4

    iget-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->Q:Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;

    invoke-virtual {v0}, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;->DestroyData()V

    iget-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->R:Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;

    invoke-virtual {v0}, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;->DestroyData()V

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->S:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    iget-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->K:Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;

    invoke-virtual {v0}, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;->DestroyData()V

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->L:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    iget-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->g0:Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;

    invoke-virtual {v0}, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;->DestroyData()V

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->h0:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    iget-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->n0:Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;

    invoke-virtual {v0}, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;->DestroyData()V

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->o0:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    iget-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->z:Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;

    invoke-virtual {v0}, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;->DestroyData()V

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->A:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->I:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    filled-new-array {v0}, [I

    move-result-object v0

    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    iput v3, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->I:I

    :cond_0
    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->U0:I

    if-eq v0, v3, :cond_1

    filled-new-array {v0}, [I

    move-result-object v0

    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    iput v3, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->U0:I

    :cond_1
    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->V0:I

    if-eq v0, v3, :cond_2

    filled-new-array {v0}, [I

    move-result-object v0

    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    iput v3, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->V0:I

    :cond_2
    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->W0:I

    if-eq v0, v3, :cond_3

    filled-new-array {v0}, [I

    move-result-object v0

    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    iput v3, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->W0:I

    :cond_3
    return-void
.end method

.method public final onDraw(ILjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V
    .locals 48

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    invoke-virtual {v0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    iget-object v9, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->y:Ljava/lang/Object;

    monitor-enter v9

    :try_start_0
    iget-object v2, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->z:Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;

    if-nez v2, :cond_1

    goto/16 :goto_16

    :cond_1
    iget-object v3, v2, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;->frame_buffer:[I

    if-eqz v3, :cond_2f

    iget-object v3, v2, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;->frame_buffer_texture:[I

    if-eqz v3, :cond_2f

    iget-object v3, v2, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;->depth_buffer:[I

    if-nez v3, :cond_2

    goto/16 :goto_16

    :cond_2
    iget v3, v2, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;->width:I

    if-lez v3, :cond_2f

    iget v2, v2, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;->height:I

    if-gtz v2, :cond_3

    goto/16 :goto_16

    :cond_3
    iget-object v2, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->K:Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;

    if-nez v2, :cond_4

    goto/16 :goto_16

    :cond_4
    iget-object v3, v2, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;->frame_buffer:[I

    if-eqz v3, :cond_2f

    iget-object v3, v2, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;->frame_buffer_texture:[I

    if-nez v3, :cond_5

    goto/16 :goto_16

    :cond_5
    iget v3, v2, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;->width:I

    if-lez v3, :cond_2f

    iget v2, v2, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;->height:I

    if-gtz v2, :cond_6

    goto/16 :goto_16

    :cond_6
    iget-object v4, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->Q:Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;

    if-nez v4, :cond_7

    goto/16 :goto_16

    :cond_7
    iget-object v5, v4, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;->frame_buffer:[I

    if-eqz v5, :cond_2f

    iget-object v5, v4, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;->frame_buffer_texture:[I

    if-nez v5, :cond_8

    goto/16 :goto_16

    :cond_8
    iget v5, v4, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;->width:I

    if-lez v5, :cond_2f

    iget v4, v4, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;->height:I

    if-gtz v4, :cond_9

    goto/16 :goto_16

    :cond_9
    iget-object v4, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->R:Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;

    if-nez v4, :cond_a

    goto/16 :goto_16

    :cond_a
    iget-object v5, v4, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;->frame_buffer:[I

    if-eqz v5, :cond_2f

    iget-object v5, v4, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;->frame_buffer_texture:[I

    if-nez v5, :cond_b

    goto/16 :goto_16

    :cond_b
    iget v5, v4, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;->width:I

    if-lez v5, :cond_2f

    iget v4, v4, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;->height:I

    if-gtz v4, :cond_c

    goto/16 :goto_16

    :cond_c
    if-lez v3, :cond_2f

    if-gtz v2, :cond_d

    goto/16 :goto_16

    :cond_d
    if-lez v3, :cond_2f

    if-gtz v2, :cond_e

    goto/16 :goto_16

    :cond_e
    const/16 v10, 0x400

    invoke-static {v10}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v2

    const v11, 0x8ca6

    invoke-static {v11, v2}, Landroid/opengl/GLES20;->glGetIntegerv(ILjava/nio/IntBuffer;)V

    const/4 v12, 0x4

    invoke-static {v12}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v3

    const/16 v13, 0xba2

    invoke-static {v13, v3}, Landroid/opengl/GLES20;->glGetIntegerv(ILjava/nio/IntBuffer;)V

    iget v4, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->A:I

    invoke-static {v4}, Landroid/opengl/GLES20;->glUseProgram(I)V

    iget v4, v0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->g:I

    iget v5, v0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->h:I

    const/4 v14, 0x0

    invoke-static {v14, v14, v4, v5}, Landroid/opengl/GLES20;->glViewport(IIII)V

    iget-object v4, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->z:Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;

    iget-object v4, v4, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;->frame_buffer:[I

    aget v4, v4, v14

    const v15, 0x8d40

    invoke-static {v15, v4}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    const/4 v4, 0x0

    invoke-static {v4, v4, v4, v4}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/16 v5, 0x4100

    invoke-static {v5}, Landroid/opengl/GLES20;->glClear(I)V

    const/16 v5, 0xb71

    invoke-static {v5}, Landroid/opengl/GLES20;->glEnable(I)V

    const/16 v6, 0xb44

    invoke-static {v6}, Landroid/opengl/GLES20;->glEnable(I)V

    const/16 v16, 0x405

    invoke-static/range {v16 .. v16}, Landroid/opengl/GLES20;->glCullFace(I)V

    move/from16 v16, v4

    iget v4, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->B:I

    invoke-static {v4}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget v4, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->N:I

    invoke-static {v4}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget v4, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->C:I

    invoke-static {v4}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget-object v4, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->s:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move/from16 v17, v5

    :try_start_1
    iget-object v5, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->t:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$LiveConcealerMetadata;

    move/from16 v18, v6

    iget-boolean v6, v5, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$LiveConcealerMetadata;->is_valid:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const v19, 0x84c1

    move/from16 v20, v10

    const/16 v21, 0x5

    move-object/from16 v22, v4

    const/4 v4, 0x2

    move/from16 v23, v6

    const/high16 v24, 0x3f800000    # 1.0f

    const/4 v13, 0x3

    if-nez v23, :cond_f

    :try_start_2
    monitor-exit v22

    move v12, v4

    const/16 v5, 0xde1

    goto/16 :goto_e

    :catchall_0
    move-exception v0

    goto/16 :goto_15

    :cond_f
    iget-object v5, v5, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$LiveConcealerMetadata;->vertex_array:[F

    invoke-static {v5}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter;->m([F)Ljava/nio/FloatBuffer;

    move-result-object v5

    iget-object v15, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->t:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$LiveConcealerMetadata;

    iget-object v15, v15, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$LiveConcealerMetadata;->normal_array:[F

    invoke-static {v15}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter;->m([F)Ljava/nio/FloatBuffer;

    move-result-object v15

    iget-object v6, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->t:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$LiveConcealerMetadata;

    iget-object v6, v6, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$LiveConcealerMetadata;->texcoord_array:[F

    invoke-static {v6}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLive3DFilter;->m([F)Ljava/nio/FloatBuffer;

    move-result-object v6

    invoke-virtual {v5}, Ljava/nio/Buffer;->capacity()I

    move-result v27

    div-int/lit8 v10, v27, 0x3

    invoke-virtual {v15}, Ljava/nio/Buffer;->capacity()I

    move-result v27

    const/16 v34, 0x1

    div-int/lit8 v11, v27, 0x3

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    invoke-virtual {v6}, Ljava/nio/Buffer;->capacity()I

    move-result v11

    div-int/2addr v11, v4

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    invoke-virtual {v5, v14}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget v11, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->B:I

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v28, 0x3

    const/16 v29, 0x1406

    move-object/from16 v32, v5

    move/from16 v27, v11

    invoke-static/range {v27 .. v32}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    invoke-virtual {v15, v14}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget v5, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->N:I

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v28, 0x3

    const/16 v29, 0x1406

    move/from16 v27, v5

    move-object/from16 v32, v15

    invoke-static/range {v27 .. v32}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    invoke-virtual {v6, v14}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget v5, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->C:I

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v28, 0x2

    const/16 v29, 0x1406

    move/from16 v27, v5

    move-object/from16 v32, v6

    invoke-static/range {v27 .. v32}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    const/16 v5, 0x10

    new-array v6, v5, [F

    new-array v11, v5, [F

    iget-object v15, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->t:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$LiveConcealerMetadata;

    iget-object v5, v15, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$LiveConcealerMetadata;->pnp_matrix:[F

    move/from16 v28, v4

    iget-object v4, v15, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$LiveConcealerMetadata;->normal_pnp_matrix:[F

    iget-object v15, v15, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$LiveConcealerMetadata;->camera_matrix:[F

    move/from16 v29, v14

    iget v14, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->e1:I

    iget v13, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->q:I

    iget v12, v0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->g:I

    move-object/from16 v32, v4

    iget v4, v0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->h:I

    sub-int/2addr v14, v13

    if-gez v14, :cond_10

    add-int/lit16 v14, v14, 0x168

    :cond_10
    move-object/from16 v35, v5

    move/from16 v13, v29

    :goto_0
    const/4 v5, 0x4

    if-ge v13, v5, :cond_12

    move/from16 v36, v13

    move/from16 v5, v29

    :goto_1
    const/4 v13, 0x3

    if-ge v5, v13, :cond_11

    shl-int/lit8 v13, v36, 0x2

    add-int/2addr v13, v5

    shl-int/lit8 v37, v5, 0x2

    add-int v37, v37, v36

    aget v37, v35, v37

    aput v37, v6, v13

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_11
    add-int/lit8 v13, v36, 0x1

    goto :goto_0

    :cond_12
    const/16 v5, 0xb

    aput v16, v6, v5

    const/4 v13, 0x7

    aput v16, v6, v13

    const/16 v30, 0x3

    aput v16, v6, v30

    const/16 v35, 0xf

    aput v24, v6, v35

    move/from16 v36, v5

    move/from16 v37, v13

    move/from16 v5, v29

    :goto_2
    const/4 v13, 0x4

    if-ge v5, v13, :cond_14

    move/from16 v38, v5

    move/from16 v5, v29

    :goto_3
    if-ge v5, v13, :cond_13

    shl-int/lit8 v13, v38, 0x2

    add-int/2addr v13, v5

    shl-int/lit8 v39, v5, 0x2

    add-int v39, v39, v38

    aget v39, v32, v39

    aput v39, v11, v13

    add-int/lit8 v5, v5, 0x1

    const/4 v13, 0x4

    goto :goto_3

    :cond_13
    add-int/lit8 v5, v38, 0x1

    goto :goto_2

    :cond_14
    const/16 v5, 0x9

    new-array v13, v5, [F

    move-object/from16 v32, v13

    new-array v13, v5, [F

    aput v24, v13, v29

    aput v16, v13, v34

    aput v16, v13, v28

    const/16 v30, 0x3

    aput v16, v13, v30

    const/16 v31, 0x4

    aput v24, v13, v31

    aput v16, v13, v21

    const/16 v38, 0x6

    aput v16, v13, v38

    aput v16, v13, v37

    const/16 v39, 0x8

    aput v24, v13, v39

    const/16 v5, 0x5a

    move/from16 v41, v5

    if-eq v14, v5, :cond_15

    const/16 v5, 0x10e

    if-ne v14, v5, :cond_16

    :cond_15
    const/16 v31, 0x4

    aput v16, v13, v31

    aput v16, v13, v29

    const/16 v30, 0x3

    aput v24, v13, v30

    aput v24, v13, v34

    :cond_16
    move-object/from16 v42, v13

    move/from16 v5, v29

    :goto_4
    const/16 v13, 0x9

    if-ge v5, v13, :cond_17

    aput v16, v32, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_17
    move/from16 v5, v29

    :goto_5
    const/4 v13, 0x3

    if-ge v5, v13, :cond_1a

    move/from16 v43, v5

    move/from16 v5, v29

    :goto_6
    if-ge v5, v13, :cond_19

    move/from16 v44, v5

    move/from16 v5, v29

    :goto_7
    if-ge v5, v13, :cond_18

    mul-int/lit8 v13, v43, 0x3

    add-int v13, v13, v44

    aget v45, v32, v13

    mul-int/lit8 v46, v5, 0x3

    add-int v47, v43, v46

    aget v47, v15, v47

    add-int v46, v46, v44

    aget v46, v42, v46

    mul-float v47, v47, v46

    add-float v47, v47, v45

    aput v47, v32, v13

    add-int/lit8 v5, v5, 0x1

    const/4 v13, 0x3

    goto :goto_7

    :cond_18
    add-int/lit8 v5, v44, 0x1

    const/4 v13, 0x3

    goto :goto_6

    :cond_19
    add-int/lit8 v5, v43, 0x1

    goto :goto_5

    :cond_1a
    int-to-float v5, v12

    const/high16 v12, 0x40000000    # 2.0f

    div-float v5, v12, v5

    int-to-float v4, v4

    div-float/2addr v12, v4

    const/16 v13, 0x9

    new-array v4, v13, [F

    aput v5, v4, v29

    aput v16, v4, v34

    aput v16, v4, v28

    const/16 v30, 0x3

    aput v16, v4, v30

    const/16 v31, 0x4

    aput v12, v4, v31

    aput v16, v4, v21

    const/high16 v5, -0x40800000    # -1.0f

    aput v5, v4, v38

    aput v5, v4, v37

    aput v24, v4, v39

    const/16 v13, 0x9

    new-array v5, v13, [F

    move/from16 v12, v29

    :goto_8
    const/4 v13, 0x3

    if-ge v12, v13, :cond_1d

    move/from16 v15, v29

    :goto_9
    if-ge v15, v13, :cond_1c

    mul-int/lit8 v42, v12, 0x3

    add-int v43, v42, v15

    aput v16, v5, v43

    move-object/from16 v44, v4

    move/from16 v4, v29

    :goto_a
    if-ge v4, v13, :cond_1b

    aget v13, v5, v43

    add-int v45, v42, v4

    aget v45, v32, v45

    mul-int/lit8 v46, v4, 0x3

    add-int v46, v46, v15

    aget v46, v44, v46

    mul-float v45, v45, v46

    add-float v45, v45, v13

    aput v45, v5, v43

    add-int/lit8 v4, v4, 0x1

    const/4 v13, 0x3

    goto :goto_a

    :cond_1b
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v4, v44

    const/4 v13, 0x3

    goto :goto_9

    :cond_1c
    move-object/from16 v44, v4

    add-int/lit8 v12, v12, 0x1

    goto :goto_8

    :cond_1d
    const/16 v13, 0x9

    new-array v4, v13, [F

    const/4 v13, 0x4

    new-array v12, v13, [F

    fill-array-data v12, :array_0

    new-array v15, v13, [F

    fill-array-data v15, :array_1

    div-int/lit8 v14, v14, 0x5a

    rem-int/2addr v14, v13

    move-object/from16 v32, v12

    move/from16 v12, v29

    const/16 v13, 0x9

    invoke-static {v5, v12, v4, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move/from16 v12, v28

    const/4 v5, 0x0

    :goto_b
    if-ge v5, v12, :cond_20

    if-nez v5, :cond_1e

    aget v12, v32, v14

    goto :goto_c

    :cond_1e
    aget v12, v15, v14

    :goto_c
    move-object/from16 v41, v4

    const/4 v13, 0x0

    :goto_d
    const/4 v4, 0x3

    if-ge v13, v4, :cond_1f

    mul-int/lit8 v4, v13, 0x3

    add-int/2addr v4, v5

    aget v42, v41, v4

    mul-float v42, v42, v12

    aput v42, v41, v4

    add-int/lit8 v13, v13, 0x1

    goto :goto_d

    :cond_1f
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v4, v41

    const/4 v12, 0x2

    goto :goto_b

    :cond_20
    move-object/from16 v41, v4

    const/16 v29, 0x0

    aget v4, v41, v29

    aget v5, v41, v34

    const/16 v28, 0x2

    aget v12, v41, v28

    const/16 v30, 0x3

    aget v13, v41, v30

    const/16 v31, 0x4

    aget v14, v41, v31

    aget v15, v41, v21

    aget v32, v41, v38

    aget v42, v41, v37

    aget v41, v41, v39

    move/from16 v43, v4

    const/16 v4, 0x10

    new-array v4, v4, [F

    const/16 v29, 0x0

    aput v43, v4, v29

    aput v5, v4, v34

    const/16 v28, 0x2

    aput v16, v4, v28

    const/16 v30, 0x3

    aput v12, v4, v30

    const/16 v31, 0x4

    aput v13, v4, v31

    aput v14, v4, v21

    aput v16, v4, v38

    aput v15, v4, v37

    aput v32, v4, v39

    const/16 v40, 0x9

    aput v42, v4, v40

    const/16 v5, 0xa

    const v12, -0x407ff973    # -1.0001999f

    aput v12, v4, v5

    aput v41, v4, v36

    const/16 v5, 0xc

    aput v16, v4, v5

    const/16 v5, 0xd

    aput v16, v4, v5

    const/16 v5, 0xe

    const v12, -0x41b32a80    # -0.20003319f

    aput v12, v4, v5

    aput v16, v4, v35

    iget v5, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->D:I

    move/from16 v12, v34

    const/4 v13, 0x0

    invoke-static {v5, v12, v13, v6, v13}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    iget v5, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->E:I

    invoke-static {v5, v12, v13, v11, v13}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    iget v5, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->F:I

    invoke-static {v5, v12, v13, v4, v13}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    iget v4, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->I:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_21

    iget-boolean v4, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->H:Z

    if-eqz v4, :cond_21

    new-array v4, v12, [I

    invoke-static {v12, v4, v13}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    aget v4, v4, v13

    iput v4, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->I:I

    const/16 v5, 0xde1

    invoke-static {v5, v4}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v4, 0x2800

    const v6, 0x46180400    # 9729.0f

    invoke-static {v5, v4, v6}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v4, 0x2801

    invoke-static {v5, v4, v6}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v4, 0x2802

    const v6, 0x47012f00    # 33071.0f

    invoke-static {v5, v4, v6}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v4, 0x2803

    invoke-static {v5, v4, v6}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    iget-object v4, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->t:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$LiveConcealerMetadata;

    iget v5, v4, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$LiveConcealerMetadata;->template_width:I

    iget v4, v4, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$LiveConcealerMetadata;->template_height:I

    iget-object v6, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->J:Ljava/nio/ByteBuffer;

    const/16 v35, 0xde1

    const/16 v36, 0x0

    const/16 v37, 0x1908

    const/16 v40, 0x0

    const/16 v41, 0x1908

    const/16 v42, 0x1401

    move/from16 v39, v4

    move/from16 v38, v5

    move-object/from16 v43, v6

    invoke-static/range {v35 .. v43}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    :cond_21
    iget v4, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->I:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_22

    invoke-static/range {v19 .. v19}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    iget v4, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->I:I

    const/16 v5, 0xde1

    invoke-static {v5, v4}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget v4, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->G:I

    const/4 v12, 0x1

    invoke-static {v4, v12}, Landroid/opengl/GLES20;->glUniform1i(II)V

    :cond_22
    const/4 v12, 0x0

    const/4 v13, 0x4

    invoke-static {v13, v12, v10}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    monitor-exit v22
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static/range {v17 .. v17}, Landroid/opengl/GLES20;->glDisable(I)V

    invoke-static/range {v18 .. v18}, Landroid/opengl/GLES20;->glDisable(I)V

    iget v4, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->B:I

    invoke-static {v4}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    iget v4, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->N:I

    invoke-static {v4}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    iget v4, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->C:I

    invoke-static {v4}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    const/16 v5, 0xde1

    const/4 v12, 0x0

    invoke-static {v5, v12}, Landroid/opengl/GLES20;->glBindTexture(II)V

    invoke-virtual {v2, v12}, Ljava/nio/IntBuffer;->get(I)I

    move-result v2

    const v4, 0x8d40

    invoke-static {v4, v2}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    invoke-virtual {v3, v12}, Ljava/nio/IntBuffer;->get(I)I

    move-result v2

    const/4 v12, 0x1

    invoke-virtual {v3, v12}, Ljava/nio/IntBuffer;->get(I)I

    move-result v4

    const/4 v12, 0x2

    invoke-virtual {v3, v12}, Ljava/nio/IntBuffer;->get(I)I

    move-result v6

    const/4 v13, 0x3

    invoke-virtual {v3, v13}, Ljava/nio/IntBuffer;->get(I)I

    move-result v3

    invoke-static {v2, v4, v6, v3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    :goto_e
    invoke-static/range {v20 .. v20}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v10

    const v2, 0x8ca6

    invoke-static {v2, v10}, Landroid/opengl/GLES20;->glGetIntegerv(ILjava/nio/IntBuffer;)V

    const/16 v31, 0x4

    invoke-static/range {v31 .. v31}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v11

    const/16 v2, 0xba2

    invoke-static {v2, v11}, Landroid/opengl/GLES20;->glGetIntegerv(ILjava/nio/IntBuffer;)V

    iget v2, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->L:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glUseProgram(I)V

    iget v2, v0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->g:I

    iget v3, v0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->h:I

    const/4 v13, 0x0

    invoke-static {v13, v13, v2, v3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    iget-object v2, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->K:Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;

    iget-object v2, v2, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;->frame_buffer:[I

    aget v2, v2, v13

    const v4, 0x8d40

    invoke-static {v4, v2}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    invoke-virtual {v7, v13}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget v2, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->M:I

    move/from16 v33, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x2

    const/16 v4, 0x1406

    move v14, v12

    move/from16 v12, v16

    move/from16 v13, v24

    move/from16 v15, v33

    invoke-static/range {v2 .. v7}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget v2, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->M:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const/4 v2, 0x0

    invoke-virtual {v8, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget v2, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->O:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x2

    const/16 v4, 0x1406

    move-object v7, v8

    move-object/from16 v8, p2

    invoke-static/range {v2 .. v7}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget v2, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->O:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const v16, 0x84c0

    const/4 v5, -0x1

    if-eq v1, v5, :cond_23

    invoke-static/range {v16 .. v16}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    invoke-static {v15, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget v2, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->P:I

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    :cond_23
    move/from16 v2, v21

    const/4 v3, 0x0

    const/4 v5, 0x4

    goto :goto_f

    :catchall_1
    move-exception v0

    goto/16 :goto_17

    :goto_f
    invoke-static {v2, v3, v5}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    iget v2, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->M:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    iget v2, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->O:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    invoke-static {v15, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    invoke-virtual {v10, v3}, Ljava/nio/IntBuffer;->get(I)I

    move-result v2

    const v4, 0x8d40

    invoke-static {v4, v2}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    invoke-virtual {v11, v3}, Ljava/nio/IntBuffer;->get(I)I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v11, v3}, Ljava/nio/IntBuffer;->get(I)I

    move-result v4

    invoke-virtual {v11, v14}, Ljava/nio/IntBuffer;->get(I)I

    move-result v3

    const/4 v5, 0x3

    invoke-virtual {v11, v5}, Ljava/nio/IntBuffer;->get(I)I

    move-result v6

    invoke-static {v2, v4, v3, v6}, Landroid/opengl/GLES20;->glViewport(IIII)V

    invoke-static/range {v20 .. v20}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v10

    const v2, 0x8ca6

    invoke-static {v2, v10}, Landroid/opengl/GLES20;->glGetIntegerv(ILjava/nio/IntBuffer;)V

    const/16 v31, 0x4

    invoke-static/range {v31 .. v31}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v11

    const/16 v2, 0xba2

    invoke-static {v2, v11}, Landroid/opengl/GLES20;->glGetIntegerv(ILjava/nio/IntBuffer;)V

    iget v2, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->S:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glUseProgram(I)V

    iget v2, v0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->g:I

    iget v3, v0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->h:I

    const/4 v4, 0x0

    invoke-static {v4, v4, v2, v3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    iget-object v2, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->Q:Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;

    iget-object v2, v2, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;->frame_buffer:[I

    aget v2, v2, v4

    const v3, 0x8d40

    invoke-static {v3, v2}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    invoke-virtual {v8, v4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget v2, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->T:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x2

    const/16 v4, 0x1406

    move-object v7, v8

    move-object/from16 v8, p3

    invoke-static/range {v2 .. v7}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget v2, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->T:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const/4 v3, 0x0

    invoke-virtual {v8, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget v2, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->U:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x2

    const/16 v4, 0x1406

    move-object v7, v8

    move-object/from16 v8, p2

    invoke-static/range {v2 .. v7}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget v2, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->U:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget-object v2, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->K:Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;

    iget-object v2, v2, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;->frame_buffer_texture:[I

    const/16 v29, 0x0

    aget v2, v2, v29

    const/4 v5, -0x1

    if-eq v2, v5, :cond_24

    invoke-static/range {v19 .. v19}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    iget-object v2, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->K:Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;

    iget-object v2, v2, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;->frame_buffer_texture:[I

    aget v2, v2, v29

    invoke-static {v15, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget v2, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->W:I

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    :cond_24
    iget-object v2, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->z:Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;

    iget-object v2, v2, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;->frame_buffer_texture:[I

    const/16 v29, 0x0

    aget v2, v2, v29

    const/4 v5, -0x1

    if-eq v2, v5, :cond_25

    const v2, 0x84c2

    invoke-static {v2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    iget-object v2, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->z:Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;

    iget-object v2, v2, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;->frame_buffer_texture:[I

    aget v2, v2, v29

    invoke-static {v15, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget v2, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->V:I

    invoke-static {v2, v14}, Landroid/opengl/GLES20;->glUniform1i(II)V

    :cond_25
    iget-object v2, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->R:Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;

    iget-object v2, v2, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;->frame_buffer_texture:[I

    const/16 v29, 0x0

    aget v2, v2, v29

    const/4 v5, -0x1

    if-eq v2, v5, :cond_26

    const v2, 0x84c3

    invoke-static {v2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    iget-object v2, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->R:Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;

    iget-object v2, v2, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;->frame_buffer_texture:[I

    aget v2, v2, v29

    invoke-static {v15, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget v2, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->X:I

    const/4 v4, 0x3

    invoke-static {v2, v4}, Landroid/opengl/GLES20;->glUniform1i(II)V

    :cond_26
    iget-object v2, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->w:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveFrameInformation;

    iget v2, v2, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveFrameInformation;->face_size:I

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    const v3, 0x3c75c28f    # 0.015f

    mul-float/2addr v2, v3

    iget v3, v0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->g:I

    int-to-float v3, v3

    div-float v3, v2, v3

    iget v4, v0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->h:I

    int-to-float v4, v4

    div-float/2addr v2, v4

    iget v4, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->Y:I

    invoke-static {v4, v3, v2}, Landroid/opengl/GLES20;->glUniform2f(IFF)V

    iget v2, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->Z:I

    iget-object v3, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->u:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;

    iget v3, v3, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->skin_luma_average:F

    const/high16 v4, 0x437f0000    # 255.0f

    div-float/2addr v3, v4

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget-object v2, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->t:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$LiveConcealerMetadata;

    iget-boolean v2, v2, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$LiveConcealerMetadata;->is_have_eyeglass:Z

    if-eqz v2, :cond_27

    move v4, v13

    goto :goto_10

    :cond_27
    move v4, v12

    :goto_10
    iget v2, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->a0:I

    invoke-static {v2, v4}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget-object v2, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->t:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$LiveConcealerMetadata;

    iget-boolean v2, v2, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$LiveConcealerMetadata;->is_have_mask:Z

    if-eqz v2, :cond_28

    move v4, v13

    goto :goto_11

    :cond_28
    move v4, v12

    :goto_11
    iget v2, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->b0:I

    invoke-static {v2, v4}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget-object v2, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->t:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$LiveConcealerMetadata;

    iget v2, v2, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$LiveConcealerMetadata;->roll_degree:F

    iget v3, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->d0:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget-object v3, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->t:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$LiveConcealerMetadata;

    iget v3, v3, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$LiveConcealerMetadata;->pitch_degree:F

    iget v4, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->e0:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget-object v4, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->t:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$LiveConcealerMetadata;

    iget v4, v4, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$LiveConcealerMetadata;->yaw_degree:F

    iget v5, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->f0:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-static {v2, v4}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iget-boolean v3, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->x:Z

    if-eqz v3, :cond_29

    const/high16 v3, 0x3e800000    # 0.25f

    add-float/2addr v2, v3

    invoke-static {v2, v13}, Ljava/lang/Math;->min(FF)F

    move-result v6

    goto :goto_12

    :cond_29
    move v6, v13

    :goto_12
    iget v2, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->c0:I

    invoke-static {v2, v6}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/4 v5, 0x4

    invoke-static {v2, v3, v5}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    iget v2, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->T:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    iget v2, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->U:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    invoke-static {v15, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    invoke-virtual {v10, v3}, Ljava/nio/IntBuffer;->get(I)I

    move-result v2

    const v4, 0x8d40

    invoke-static {v4, v2}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    invoke-virtual {v11, v3}, Ljava/nio/IntBuffer;->get(I)I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v11, v3}, Ljava/nio/IntBuffer;->get(I)I

    move-result v4

    invoke-virtual {v11, v14}, Ljava/nio/IntBuffer;->get(I)I

    move-result v3

    const/4 v5, 0x3

    invoke-virtual {v11, v5}, Ljava/nio/IntBuffer;->get(I)I

    move-result v6

    invoke-static {v2, v4, v3, v6}, Landroid/opengl/GLES20;->glViewport(IIII)V

    invoke-static/range {v20 .. v20}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v10

    const v2, 0x8ca6

    invoke-static {v2, v10}, Landroid/opengl/GLES20;->glGetIntegerv(ILjava/nio/IntBuffer;)V

    const/16 v31, 0x4

    invoke-static/range {v31 .. v31}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v11

    const/16 v2, 0xba2

    invoke-static {v2, v11}, Landroid/opengl/GLES20;->glGetIntegerv(ILjava/nio/IntBuffer;)V

    iget v2, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->h0:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glUseProgram(I)V

    iget v2, v0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->g:I

    iget v3, v0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->h:I

    const/4 v4, 0x0

    invoke-static {v4, v4, v2, v3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    iget-object v2, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->g0:Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;

    iget-object v2, v2, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;->frame_buffer:[I

    aget v2, v2, v4

    const v3, 0x8d40

    invoke-static {v3, v2}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    invoke-virtual {v8, v4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget v2, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->i0:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x2

    const/16 v4, 0x1406

    move-object v7, v8

    move-object/from16 v8, p3

    invoke-static/range {v2 .. v7}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget v2, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->i0:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const/4 v3, 0x0

    invoke-virtual {v8, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget v2, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->j0:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x2

    const/16 v4, 0x1406

    move-object v7, v8

    move-object/from16 v8, p2

    invoke-static/range {v2 .. v7}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget v2, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->j0:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget-object v2, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->Q:Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;

    iget-object v2, v2, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;->frame_buffer_texture:[I

    const/16 v29, 0x0

    aget v2, v2, v29

    const/4 v5, -0x1

    if-eq v2, v5, :cond_2a

    invoke-static/range {v19 .. v19}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    iget-object v2, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->Q:Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;

    iget-object v2, v2, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;->frame_buffer_texture:[I

    aget v2, v2, v29

    invoke-static {v15, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget v2, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->l0:I

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    :cond_2a
    iget v2, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->k0:I

    const/4 v5, 0x4

    invoke-static {v2, v5}, Landroid/opengl/GLES20;->glUniform1i(II)V

    iget v2, v0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->g:I

    int-to-float v2, v2

    div-float v6, v13, v2

    iget v2, v0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->h:I

    int-to-float v2, v2

    div-float v2, v13, v2

    iget v3, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->m0:I

    invoke-static {v3, v6, v2}, Landroid/opengl/GLES20;->glUniform2f(IFF)V

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/4 v5, 0x4

    invoke-static {v2, v3, v5}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    iget v2, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->i0:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    iget v2, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->j0:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    invoke-static {v15, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    invoke-virtual {v10, v3}, Ljava/nio/IntBuffer;->get(I)I

    move-result v2

    const v4, 0x8d40

    invoke-static {v4, v2}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    invoke-virtual {v11, v3}, Ljava/nio/IntBuffer;->get(I)I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v11, v3}, Ljava/nio/IntBuffer;->get(I)I

    move-result v4

    invoke-virtual {v11, v14}, Ljava/nio/IntBuffer;->get(I)I

    move-result v3

    const/4 v5, 0x3

    invoke-virtual {v11, v5}, Ljava/nio/IntBuffer;->get(I)I

    move-result v6

    invoke-static {v2, v4, v3, v6}, Landroid/opengl/GLES20;->glViewport(IIII)V

    invoke-static/range {v20 .. v20}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v10

    const v2, 0x8ca6

    invoke-static {v2, v10}, Landroid/opengl/GLES20;->glGetIntegerv(ILjava/nio/IntBuffer;)V

    const/16 v31, 0x4

    invoke-static/range {v31 .. v31}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v11

    const/16 v2, 0xba2

    invoke-static {v2, v11}, Landroid/opengl/GLES20;->glGetIntegerv(ILjava/nio/IntBuffer;)V

    iget v2, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->o0:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glUseProgram(I)V

    iget v2, v0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->g:I

    iget v3, v0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->h:I

    const/4 v4, 0x0

    invoke-static {v4, v4, v2, v3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    iget-object v2, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->n0:Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;

    iget-object v2, v2, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;->frame_buffer:[I

    aget v2, v2, v4

    const v3, 0x8d40

    invoke-static {v3, v2}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    invoke-virtual {v8, v4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget v2, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->p0:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x2

    const/16 v4, 0x1406

    move-object v7, v8

    move-object/from16 v8, p3

    invoke-static/range {v2 .. v7}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget v2, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->p0:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const/4 v3, 0x0

    invoke-virtual {v8, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget v2, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->q0:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x2

    const/16 v4, 0x1406

    move-object v7, v8

    move-object/from16 v8, p2

    invoke-static/range {v2 .. v7}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget v2, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->q0:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget-object v2, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->g0:Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;

    iget-object v2, v2, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;->frame_buffer_texture:[I

    const/16 v29, 0x0

    aget v2, v2, v29

    const/4 v5, -0x1

    if-eq v2, v5, :cond_2b

    invoke-static/range {v19 .. v19}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    iget-object v2, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->g0:Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;

    iget-object v2, v2, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;->frame_buffer_texture:[I

    aget v2, v2, v29

    invoke-static {v15, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget v2, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->r0:I

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    :cond_2b
    iget v2, v0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->g:I

    int-to-float v2, v2

    div-float v6, v13, v2

    iget v2, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->s0:I

    invoke-static {v2, v6, v12}, Landroid/opengl/GLES20;->glUniform2f(IFF)V

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/4 v5, 0x4

    invoke-static {v2, v3, v5}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    iget v2, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->p0:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    iget v2, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->q0:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    invoke-static {v15, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    invoke-virtual {v10, v3}, Ljava/nio/IntBuffer;->get(I)I

    move-result v2

    const v4, 0x8d40

    invoke-static {v4, v2}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    invoke-virtual {v11, v3}, Ljava/nio/IntBuffer;->get(I)I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v11, v3}, Ljava/nio/IntBuffer;->get(I)I

    move-result v3

    invoke-virtual {v11, v14}, Ljava/nio/IntBuffer;->get(I)I

    move-result v4

    const/4 v13, 0x3

    invoke-virtual {v11, v13}, Ljava/nio/IntBuffer;->get(I)I

    move-result v5

    invoke-static {v2, v3, v4, v5}, Landroid/opengl/GLES20;->glViewport(IIII)V

    iget v2, v0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->mGLProgId:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const/4 v3, 0x0

    invoke-virtual {v8, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget v2, v0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->d:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x2

    const/16 v4, 0x1406

    move-object v7, v8

    move-object/from16 v8, p3

    invoke-static/range {v2 .. v7}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget v2, v0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->d:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const/4 v3, 0x0

    invoke-virtual {v8, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget v2, v0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->f:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x2

    const/16 v4, 0x1406

    move-object v7, v8

    invoke-static/range {v2 .. v7}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget v2, v0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->f:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget-object v2, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->a1:Ljava/nio/FloatBuffer;

    invoke-virtual {v2}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    iget-object v2, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->a1:Ljava/nio/FloatBuffer;

    iget-boolean v3, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->r:Z

    if-nez v3, :cond_2c

    sget-object v3, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->f1:[F

    goto :goto_13

    :cond_2c
    sget-object v3, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->g1:[F

    :goto_13
    invoke-virtual {v0, v3}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->l([F)[F

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    iget-object v2, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->a1:Ljava/nio/FloatBuffer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget v2, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->t0:I

    iget-object v3, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->a1:Ljava/nio/FloatBuffer;

    const/16 v23, 0x2

    const/16 v24, 0x1406

    const/16 v25, 0x0

    const/16 v26, 0x0

    move/from16 v22, v2

    move-object/from16 v27, v3

    invoke-static/range {v22 .. v27}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget v2, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->t0:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget-object v2, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->b1:Ljava/nio/FloatBuffer;

    invoke-virtual {v2}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    iget-object v2, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->b1:Ljava/nio/FloatBuffer;

    iget-boolean v3, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->r:Z

    if-nez v3, :cond_2d

    sget-object v3, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->f1:[F

    goto :goto_14

    :cond_2d
    sget-object v3, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->g1:[F

    :goto_14
    invoke-virtual {v0, v3}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->l([F)[F

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    iget-object v2, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->b1:Ljava/nio/FloatBuffer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget v2, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->u0:I

    iget-object v3, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->b1:Ljava/nio/FloatBuffer;

    const/16 v23, 0x2

    const/16 v24, 0x1406

    const/16 v25, 0x0

    const/16 v26, 0x0

    move/from16 v22, v2

    move-object/from16 v27, v3

    invoke-static/range {v22 .. v27}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget v2, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->u0:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    invoke-virtual {v0}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->d()V

    const/4 v5, -0x1

    if-eq v1, v5, :cond_2e

    invoke-static/range {v16 .. v16}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    invoke-static {v15, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget v1, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->A0:I

    const/4 v3, 0x0

    invoke-static {v1, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    :cond_2e
    const/4 v2, 0x5

    const/4 v3, 0x0

    const/4 v5, 0x4

    invoke-static {v2, v3, v5}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    iget v1, v0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->d:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    iget v1, v0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->f:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    iget v1, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->t0:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    iget v1, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->u0:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    const/4 v3, 0x0

    invoke-static {v15, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget-object v1, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->R:Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;

    iget-object v2, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->Q:Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;

    iget-object v2, v2, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;->frame_buffer_texture:[I

    invoke-virtual {v2}, [I->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    iput-object v2, v1, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses$Pass1BufferData;->frame_buffer_texture:[I

    iget-object v1, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->t:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$LiveConcealerMetadata;

    iget v2, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$LiveConcealerMetadata;->roll_degree:F

    iput v2, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->d0:F

    iget v2, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$LiveConcealerMetadata;->pitch_degree:F

    iput v2, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->e0:F

    iget v1, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$LiveConcealerMetadata;->yaw_degree:F

    iput v1, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->f0:F
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_16

    :catchall_2
    move-exception v0

    move-object/from16 v22, v4

    :goto_15
    :try_start_4
    monitor-exit v22
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0

    :cond_2f
    :goto_16
    monitor-exit v9

    return-void

    :goto_17
    monitor-exit v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0

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

.method public final onInit()V
    .locals 11

    invoke-super {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->onInit()V

    sget-object v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$a;->a:[C

    invoke-static {v0}, Lcom/cyberlink/clgpuimage/CLMakeupLiveDecode;->a([C)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$a;->b:[C

    invoke-static {v1}, Lcom/cyberlink/clgpuimage/CLMakeupLiveDecode;->a([C)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cyberlink/clgpuimage/OpenGlUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->A:I

    const-string v1, "position"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->B:I

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->A:I

    const-string v2, "normal"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->N:I

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->A:I

    const-string v2, "inputTextureCoordinate"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->C:I

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->A:I

    const-string v2, "model_view_matrix"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->D:I

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->A:I

    const-string v2, "normal_matrix"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->E:I

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->A:I

    const-string v2, "project_matrix"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->F:I

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->A:I

    const-string v2, "input_image_texture"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->G:I

    sget-object v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$i;->a:[C

    invoke-static {v0}, Lcom/cyberlink/clgpuimage/CLMakeupLiveDecode;->a([C)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$i;->b:[C

    invoke-static {v2}, Lcom/cyberlink/clgpuimage/CLMakeupLiveDecode;->a([C)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/cyberlink/clgpuimage/OpenGlUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->L:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->M:I

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->L:I

    const-string v2, "input_texcoord"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->O:I

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->L:I

    const-string v3, "source_image_texture"

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->P:I

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->L:I

    const-string v4, "algorithm_index"

    invoke-static {v0, v4}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->L:I

    const-string v5, "pixel_step"

    invoke-static {v0, v5}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    sget-object v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$d;->a:[C

    invoke-static {v0}, Lcom/cyberlink/clgpuimage/CLMakeupLiveDecode;->a([C)Ljava/lang/String;

    move-result-object v0

    sget-object v6, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$e;->a:[C

    invoke-static {v6}, Lcom/cyberlink/clgpuimage/CLMakeupLiveDecode;->a([C)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$f;->a:[C

    invoke-static {v7}, Lcom/cyberlink/clgpuimage/CLMakeupLiveDecode;->a([C)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/cyberlink/clgpuimage/OpenGlUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->S:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->T:I

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->S:I

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->U:I

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->S:I

    const-string v6, "rendered_template_texture"

    invoke-static {v0, v6}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->V:I

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->S:I

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->W:I

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->S:I

    const-string v7, "prev_response_texture"

    invoke-static {v0, v7}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->X:I

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->S:I

    const-string v7, "concealer_smooth_radius"

    invoke-static {v0, v7}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->Y:I

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->S:I

    const-string v7, "skin_luma_average"

    invoke-static {v0, v7}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->Z:I

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->S:I

    const-string v8, "is_have_eyeglass"

    invoke-static {v0, v8}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->a0:I

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->S:I

    const-string v8, "is_have_mask"

    invoke-static {v0, v8}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->b0:I

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->S:I

    invoke-static {v0, v4}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->S:I

    const-string v9, "curr_weight"

    invoke-static {v0, v9}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->c0:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->d0:F

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->e0:F

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->f0:F

    sget-object v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$g;->a:[C

    invoke-static {v0}, Lcom/cyberlink/clgpuimage/CLMakeupLiveDecode;->a([C)Ljava/lang/String;

    move-result-object v0

    sget-object v9, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$g;->b:[C

    invoke-static {v9}, Lcom/cyberlink/clgpuimage/CLMakeupLiveDecode;->a([C)Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Lcom/cyberlink/clgpuimage/OpenGlUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->h0:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->i0:I

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->h0:I

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->j0:I

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->h0:I

    const-string v9, "spot_coverage_size"

    invoke-static {v0, v9}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->k0:I

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->h0:I

    const-string v10, "input_texture"

    invoke-static {v0, v10}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->l0:I

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->h0:I

    invoke-static {v0, v5}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->m0:I

    sget-object v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$h;->a:[C

    invoke-static {v0}, Lcom/cyberlink/clgpuimage/CLMakeupLiveDecode;->a([C)Ljava/lang/String;

    move-result-object v0

    sget-object v5, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter$h;->b:[C

    invoke-static {v5}, Lcom/cyberlink/clgpuimage/CLMakeupLiveDecode;->a([C)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/cyberlink/clgpuimage/OpenGlUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->o0:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->p0:I

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->o0:I

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->q0:I

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->o0:I

    invoke-static {v0, v10}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->r0:I

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->o0:I

    const-string v1, "sampling_step"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->s0:I

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v2, "skin_map_texcoord"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->t0:I

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v2, "rf_corrected_texcoord"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->u0:I

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    invoke-static {v0, v10}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->v0:I

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v2, "skin_map_roi"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->w0:I

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v2, "skin_roi_rotated_cos_sin"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->x0:I

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v2, "skin_roi_resized_ratio"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->y0:I

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    invoke-static {v0, v6}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->z0:I

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->A0:I

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v2, "skin_map_texture"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->B0:I

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v2, "fade_out_map_texture"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->C0:I

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v2, "forehead_neck_map_texture"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->D0:I

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    invoke-static {v0, v9}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->E0:I

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->F0:I

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v1, "forehead_boundary"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->G0:I

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v1, "coverage_intensity"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->H0:I

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    invoke-static {v0, v7}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->I0:I

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v1, "skin_luma_average_left_part"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->J0:I

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v1, "skin_luma_average_right_part"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->K0:I

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v1, "concealer_color"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->L0:I

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v1, "color_spot_intensity"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->M0:I

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v1, "color_under_eye_intensity"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->N0:I

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v1, "is_remove_dark_circle"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->O0:I

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v1, "is_remove_spot"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->P0:I

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    invoke-static {v0, v8}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->Q0:I

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    invoke-static {v0, v4}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v1, "head_pose_diff"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->R0:I

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v1, "mid_eye_inside_corner"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->S0:I

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v1, "eye_inside_corner_dist"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->T0:I

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v1, "grid_roi_start"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->c1:I

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v1, "grid_roi_end"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveConcealerFilter;->d1:I

    return-void
.end method

.method public final onOutputSizeChanged(II)V
    .locals 0

    iput p1, p0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->g:I

    iput p2, p0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->h:I

    return-void
.end method
