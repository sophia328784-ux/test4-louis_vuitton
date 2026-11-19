.class public final Lcom/cyberlink/clgpuimage/cosmetic/e;
.super Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2;

# interfaces
.implements Lcom/cyberlink/clgpuimage/IBeautyFilter2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyberlink/clgpuimage/cosmetic/e$e;,
        Lcom/cyberlink/clgpuimage/cosmetic/e$a;,
        Lcom/cyberlink/clgpuimage/cosmetic/e$f;,
        Lcom/cyberlink/clgpuimage/cosmetic/e$b;,
        Lcom/cyberlink/clgpuimage/cosmetic/e$c;,
        Lcom/cyberlink/clgpuimage/cosmetic/e$d;
    }
.end annotation


# static fields
.field public static final u0:[F

.field public static final v0:[F

.field public static final w0:[F


# instance fields
.field public R:F

.field public S:F

.field public final T:Ljava/lang/Object;

.field public final U:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveHairDyeFilter$HairDyeData;

.field public V:I

.field public W:I

.field public final X:Ljava/nio/FloatBuffer;

.field public Y:I

.field public Z:I

.field public a0:Ljava/nio/ByteBuffer;

.field public b0:I

.field public c0:I

.field public d0:I

.field public e0:I

.field public f0:I

.field public g0:I

.field public h0:Z

.field public final i0:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;

.field public final j0:Ljava/nio/FloatBuffer;

.field public k0:I

.field public l0:I

.field public m0:I

.field public n0:I

.field public o0:I

.field public p0:I

.field public q0:I

.field public r0:I

.field public s0:I

.field public final t0:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x8

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    sput-object v1, Lcom/cyberlink/clgpuimage/cosmetic/e;->u0:[F

    new-array v1, v0, [F

    fill-array-data v1, :array_1

    sput-object v1, Lcom/cyberlink/clgpuimage/cosmetic/e;->v0:[F

    new-array v0, v0, [F

    fill-array-data v0, :array_2

    sput-object v0, Lcom/cyberlink/clgpuimage/cosmetic/e;->w0:[F

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

    :array_1
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

    :array_2
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

.method public constructor <init>(Lcom/cyberlink/clgpuimage/IBeautyFilter2$FilterType;Landroid/content/res/AssetManager;Lcom/cyberlink/clgpuimage/IBeautyFilter2$EffectMode;)V
    .locals 8

    invoke-direct {p0, p1}, Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2;-><init>(Lcom/cyberlink/clgpuimage/IBeautyFilter2$FilterType;)V

    const/high16 p2, 0x428c0000    # 70.0f

    iput p2, p0, Lcom/cyberlink/clgpuimage/cosmetic/e;->R:F

    iput p2, p0, Lcom/cyberlink/clgpuimage/cosmetic/e;->S:F

    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/cyberlink/clgpuimage/cosmetic/e;->T:Ljava/lang/Object;

    new-instance p2, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveHairDyeFilter$HairDyeData;

    invoke-direct {p2}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveHairDyeFilter$HairDyeData;-><init>()V

    iput-object p2, p0, Lcom/cyberlink/clgpuimage/cosmetic/e;->U:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveHairDyeFilter$HairDyeData;

    const/16 p2, 0x5a

    iput p2, p0, Lcom/cyberlink/clgpuimage/cosmetic/e;->V:I

    const/4 p2, -0x1

    iput p2, p0, Lcom/cyberlink/clgpuimage/cosmetic/e;->Y:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/e;->a0:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/e;->h0:Z

    new-instance v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;

    invoke-direct {v1}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;-><init>()V

    iput-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/e;->i0:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;

    iput p2, p0, Lcom/cyberlink/clgpuimage/cosmetic/e;->p0:I

    iput p2, p0, Lcom/cyberlink/clgpuimage/cosmetic/e;->r0:I

    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/cyberlink/clgpuimage/cosmetic/e;->t0:Ljava/lang/Object;

    sget-object p2, Lcom/cyberlink/clgpuimage/IBeautyFilter2$EffectMode;->PORTRAIT_NATURAL:Lcom/cyberlink/clgpuimage/IBeautyFilter2$EffectMode;

    if-ne p3, p2, :cond_7

    sget-object p2, Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2$TableMode;->TABLE_1D:Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2$TableMode;

    sget-object p3, Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2$PreProcessMode;->PRE_WHITEN:Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2$PreProcessMode;

    sget-object v1, Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2$PostProcessMode;->POST_NORMAL:Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2$PostProcessMode;

    sget-object v2, Lcom/cyberlink/clgpuimage/IBeautyFilter2$FilterType;->LIVE_SMOOTH:Lcom/cyberlink/clgpuimage/IBeautyFilter2$FilterType;

    if-ne p1, v2, :cond_0

    sget-object v3, Lcom/cyberlink/clgpuimage/cosmetic/e$d;->a:[C

    invoke-static {v3}, Lcom/cyberlink/clgpuimage/CLMakeupLiveDecode;->a([C)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/cyberlink/clgpuimage/cosmetic/e$d;->b:[C

    invoke-static {v4}, Lcom/cyberlink/clgpuimage/CLMakeupLiveDecode;->a([C)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/cyberlink/clgpuimage/cosmetic/e$d;->c:[C

    invoke-static {v5}, Lcom/cyberlink/clgpuimage/CLMakeupLiveDecode;->a([C)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/cyberlink/clgpuimage/cosmetic/e$d;->d:[C

    invoke-static {v6}, Lcom/cyberlink/clgpuimage/CLMakeupLiveDecode;->a([C)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_0
    sget-object v3, Lcom/cyberlink/clgpuimage/IBeautyFilter2$FilterType;->ENABLE_SMOOTH:Lcom/cyberlink/clgpuimage/IBeautyFilter2$FilterType;

    if-ne p1, v3, :cond_1

    sget-object v3, Lcom/cyberlink/clgpuimage/cosmetic/e$c;->a:[C

    invoke-static {v3}, Lcom/cyberlink/clgpuimage/CLMakeupLiveDecode;->a([C)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/cyberlink/clgpuimage/cosmetic/e$c;->b:[C

    invoke-static {v4}, Lcom/cyberlink/clgpuimage/CLMakeupLiveDecode;->a([C)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/cyberlink/clgpuimage/cosmetic/e$c;->c:[C

    invoke-static {v5}, Lcom/cyberlink/clgpuimage/CLMakeupLiveDecode;->a([C)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/cyberlink/clgpuimage/cosmetic/e$c;->d:[C

    invoke-static {v6}, Lcom/cyberlink/clgpuimage/CLMakeupLiveDecode;->a([C)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_1
    sget-object v3, Lcom/cyberlink/clgpuimage/IBeautyFilter2$FilterType;->DISABLE_SMOOTH:Lcom/cyberlink/clgpuimage/IBeautyFilter2$FilterType;

    if-ne p1, v3, :cond_2

    sget-object v3, Lcom/cyberlink/clgpuimage/cosmetic/e$b;->a:[C

    invoke-static {v3}, Lcom/cyberlink/clgpuimage/CLMakeupLiveDecode;->a([C)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/cyberlink/clgpuimage/cosmetic/e$b;->b:[C

    invoke-static {v4}, Lcom/cyberlink/clgpuimage/CLMakeupLiveDecode;->a([C)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/cyberlink/clgpuimage/cosmetic/e$b;->c:[C

    invoke-static {v5}, Lcom/cyberlink/clgpuimage/CLMakeupLiveDecode;->a([C)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/cyberlink/clgpuimage/cosmetic/e$b;->d:[C

    invoke-static {v6}, Lcom/cyberlink/clgpuimage/CLMakeupLiveDecode;->a([C)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_2
    const-string v3, ""

    move-object v4, v3

    move-object v5, v4

    move-object v6, v5

    :goto_0
    sget-object v7, Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2$PreProcessMode;->PRE_NONE:Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2$PreProcessMode;

    if-ne p3, v7, :cond_3

    sget-object p3, Lcom/cyberlink/clgpuimage/cosmetic/e$f;->a:[C

    invoke-static {p3}, Lcom/cyberlink/clgpuimage/CLMakeupLiveDecode;->a([C)Ljava/lang/String;

    move-result-object p3

    :goto_1
    invoke-virtual {v6, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    goto :goto_2

    :cond_3
    const-string p3, "    effect_source = clamp(effect_source * 1.032 - 0.016, 0.0, 1.0);    vec3 whiten_multiply = vec3(0.45, 0.39, 0.39) * vec3(clamp((color_strength - 0.7) * 10.0 / 3.0, 0.0, 1.0));    vec3 effect_source_multiply = vec3(8.0) * effect_source;    vec3 whiten_weight = (vec3(1.0) - max(vec3(1.0) - effect_source_multiply, vec3(0.0))) * whiten_multiply;    effect_source = mix(effect_source, vec3(1.0) - (vec3(1.0) - effect_source) * (vec3(1.0) - effect_source), whiten_weight);    effect_source = clamp(effect_source, 0.0, 1.0);"

    goto :goto_1

    :goto_2
    sget-object v6, Lcom/cyberlink/clgpuimage/cosmetic/e$a;->a:[C

    invoke-static {v6}, Lcom/cyberlink/clgpuimage/CLMakeupLiveDecode;->a([C)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    sget-object v6, Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2$PostProcessMode;->POST_NONE:Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2$PostProcessMode;

    if-ne v1, v6, :cond_4

    sget-object p1, Lcom/cyberlink/clgpuimage/cosmetic/e$e;->a:[C

    invoke-static {p1}, Lcom/cyberlink/clgpuimage/CLMakeupLiveDecode;->a([C)Ljava/lang/String;

    move-result-object p1

    :goto_3
    invoke-virtual {p3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    :cond_4
    if-ne p1, v2, :cond_5

    sget-object p1, Lcom/cyberlink/clgpuimage/cosmetic/e$e;->c:[C

    invoke-static {p1}, Lcom/cyberlink/clgpuimage/CLMakeupLiveDecode;->a([C)Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_5
    sget-object p1, Lcom/cyberlink/clgpuimage/cosmetic/e$e;->b:[C

    invoke-static {p1}, Lcom/cyberlink/clgpuimage/CLMakeupLiveDecode;->a([C)Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :goto_4
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result p3

    if-lez p3, :cond_6

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result p3

    if-lez p3, :cond_6

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result p3

    if-lez p3, :cond_6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p3

    if-lez p3, :cond_6

    invoke-virtual {p0, v3, v4, v5, p1}, Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2;->setShaders(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    sget-object p1, Lcom/cyberlink/clgpuimage/CLTable$portrait_natural;->a:[B

    invoke-virtual {p0, v0, p1, p2}, Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2;->l(Landroid/content/res/AssetManager;[BLcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2$TableMode;)V

    const/16 p1, 0x20

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-static {p2}, Lfc;->v(Ljava/nio/ByteBuffer;)Ljava/nio/FloatBuffer;

    move-result-object p2

    iput-object p2, p0, Lcom/cyberlink/clgpuimage/cosmetic/e;->X:Ljava/nio/FloatBuffer;

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-static {p1}, Lfc;->v(Ljava/nio/ByteBuffer;)Ljava/nio/FloatBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/e;->j0:Ljava/nio/FloatBuffer;

    :cond_7
    return-void
.end method


# virtual methods
.method public final j(ILjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V
    .locals 2

    const/16 v0, 0xbe2

    invoke-static {v0}, Landroid/opengl/GLES20;->glIsEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2;->j(ILjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V

    if-eqz v1, :cond_1

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    :cond_1
    return-void
.end method

.method public final k(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2;->k(II)V

    iget p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/e;->R:F

    invoke-virtual {p0, p1}, Lcom/cyberlink/clgpuimage/cosmetic/e;->o(F)V

    return-void
.end method

.method public final m(Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveHairDyeFilter$HairDyeData;)V
    .locals 12

    iget-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/e;->T:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/e;->U:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveHairDyeFilter$HairDyeData;

    invoke-virtual {v0, p1}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveHairDyeFilter$HairDyeData;->Copy(Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveHairDyeFilter$HairDyeData;)V

    iget-object p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/e;->U:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveHairDyeFilter$HairDyeData;

    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveHairDyeFilter$HairDyeData;->m_roi_x:I

    int-to-float v0, v0

    iget v2, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveHairDyeFilter$HairDyeData;->m_roi_width:I

    int-to-float v2, v2

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v2, v3

    add-float/2addr v2, v0

    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveHairDyeFilter$HairDyeData;->m_analyzing_frame_width:I

    int-to-float v0, v0

    div-float/2addr v2, v0

    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveHairDyeFilter$HairDyeData;->m_roi_y:I

    int-to-float v0, v0

    iget v4, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveHairDyeFilter$HairDyeData;->m_roi_height:I

    int-to-float v4, v4

    mul-float/2addr v4, v3

    add-float/2addr v4, v0

    iget p1, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveHairDyeFilter$HairDyeData;->m_analyzing_frame_height:I

    int-to-float p1, p1

    div-float/2addr v4, p1

    iget p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/e;->b0:I

    invoke-virtual {p0, p1, v2}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->setFloat(IF)V

    iget p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/e;->c0:I

    invoke-virtual {p0, p1, v4}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->setFloat(IF)V

    iget p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/e;->d0:I

    iget-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/e;->U:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveHairDyeFilter$HairDyeData;

    iget v0, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveHairDyeFilter$HairDyeData;->m_analyzing_frame_width:I

    int-to-float v0, v0

    invoke-virtual {p0, p1, v0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->setFloat(IF)V

    iget p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/e;->e0:I

    iget-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/e;->U:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveHairDyeFilter$HairDyeData;

    iget v0, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveHairDyeFilter$HairDyeData;->m_analyzing_frame_height:I

    int-to-float v0, v0

    invoke-virtual {p0, p1, v0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->setFloat(IF)V

    iget p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/e;->f0:I

    iget-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/e;->U:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveHairDyeFilter$HairDyeData;

    iget v0, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveHairDyeFilter$HairDyeData;->m_roi_width:I

    int-to-float v0, v0

    invoke-virtual {p0, p1, v0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->setFloat(IF)V

    iget p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/e;->g0:I

    iget-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/e;->U:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveHairDyeFilter$HairDyeData;

    iget v0, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveHairDyeFilter$HairDyeData;->m_roi_height:I

    int-to-float v0, v0

    invoke-virtual {p0, p1, v0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->setFloat(IF)V

    iget-object p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/e;->U:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveHairDyeFilter$HairDyeData;

    iget-boolean p1, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveHairDyeFilter$HairDyeData;->m_is_enabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/e;->a0:Ljava/nio/ByteBuffer;

    const/16 v2, 0xde1

    if-eqz p1, :cond_2

    if-eqz v0, :cond_0

    :try_start_1
    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    move-result p1

    iget-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/e;->U:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveHairDyeFilter$HairDyeData;

    iget v3, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveHairDyeFilter$HairDyeData;->m_segment_map_width:I

    iget v0, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveHairDyeFilter$HairDyeData;->m_segment_map_height:I

    mul-int/2addr v3, v0

    if-eq p1, v3, :cond_1

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_2

    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/e;->U:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveHairDyeFilter$HairDyeData;

    iget v0, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveHairDyeFilter$HairDyeData;->m_segment_map_width:I

    iget p1, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveHairDyeFilter$HairDyeData;->m_segment_map_height:I

    mul-int/2addr v0, p1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/e;->a0:Ljava/nio/ByteBuffer;

    :cond_1
    iget-object p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/e;->a0:Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/e;->U:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveHairDyeFilter$HairDyeData;

    iget-object v3, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveHairDyeFilter$HairDyeData;->m_segment_map_data:[B

    iget v4, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveHairDyeFilter$HairDyeData;->m_segment_map_width:I

    iget v0, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveHairDyeFilter$HairDyeData;->m_segment_map_height:I

    mul-int/2addr v4, v0

    const/4 v0, 0x0

    invoke-virtual {p1, v3, v0, v4}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    iget-object p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/e;->a0:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/e;->Y:I

    invoke-static {v2, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget-object p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/e;->U:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveHairDyeFilter$HairDyeData;

    iget v5, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveHairDyeFilter$HairDyeData;->m_segment_map_width:I

    iget v6, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveHairDyeFilter$HairDyeData;->m_segment_map_height:I

    iget-object v10, p0, Lcom/cyberlink/clgpuimage/cosmetic/e;->a0:Ljava/nio/ByteBuffer;

    const/16 v2, 0xde1

    const/4 v3, 0x0

    const/16 v4, 0x1909

    const/4 v7, 0x0

    const/16 v8, 0x1909

    const/16 v9, 0x1401

    invoke-static/range {v2 .. v10}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    goto :goto_1

    :cond_2
    const/16 p1, 0x10

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    move-result v0

    if-eq v0, p1, :cond_4

    :cond_3
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/e;->a0:Ljava/nio/ByteBuffer;

    :cond_4
    iget p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/e;->Y:I

    invoke-static {v2, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget-object v11, p0, Lcom/cyberlink/clgpuimage/cosmetic/e;->a0:Ljava/nio/ByteBuffer;

    const/16 v3, 0xde1

    const/4 v4, 0x0

    const/16 v5, 0x1909

    const/4 v6, 0x4

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/16 v9, 0x1909

    const/16 v10, 0x1401

    invoke-static/range {v3 .. v11}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    :goto_1
    monitor-exit v1

    return-void

    :goto_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final n(F)V
    .locals 1

    iput p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/e;->S:F

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p1, v0

    new-instance v0, Lcom/cyberlink/clgpuimage/cosmetic/g;

    invoke-direct {v0, p0, p1}, Lcom/cyberlink/clgpuimage/cosmetic/g;-><init>(Lcom/cyberlink/clgpuimage/cosmetic/e;F)V

    invoke-virtual {p0, v0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->e(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final o(F)V
    .locals 2

    iput p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/e;->R:F

    const/high16 v0, 0x428c0000    # 70.0f

    sub-float v0, p1, v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    add-float/2addr v0, p1

    const/high16 p1, 0x42c80000    # 100.0f

    div-float/2addr v0, p1

    iget-object p1, p0, Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2;->q:Lcom/cyberlink/clgpuimage/IBeautyFilter2$FilterType;

    sget-object v1, Lcom/cyberlink/clgpuimage/IBeautyFilter2$FilterType;->ENABLE_SMOOTH:Lcom/cyberlink/clgpuimage/IBeautyFilter2$FilterType;

    if-ne p1, v1, :cond_0

    const p1, 0x3f933333    # 1.15f

    mul-float/2addr v0, p1

    :cond_0
    iget p1, p0, Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2;->t:I

    iget v1, p0, Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2;->u:I

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/16 v1, 0x438

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/16 v1, 0x1e0

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    int-to-float p1, p1

    const/high16 v1, 0x44340000    # 720.0f

    div-float/2addr p1, v1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr p1, v1

    const v1, 0x3cf5c28f    # 0.03f

    mul-float/2addr p1, v1

    const v1, 0x3d4ccccd    # 0.05f

    add-float/2addr p1, v1

    mul-float/2addr p1, v0

    new-instance v0, Lcom/cyberlink/clgpuimage/cosmetic/f;

    invoke-direct {v0, p0, p1}, Lcom/cyberlink/clgpuimage/cosmetic/f;-><init>(Lcom/cyberlink/clgpuimage/cosmetic/e;F)V

    invoke-virtual {p0, v0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->e(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onDestroy()V
    .locals 3

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/e;->Y:I

    filled-new-array {v0}, [I

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/e;->Y:I

    invoke-super {p0}, Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2;->onDestroy()V

    return-void
.end method

.method public final onDraw(ILjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V
    .locals 30

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->isInitialized()Z

    move-result v2

    if-eqz v2, :cond_11

    iget-object v2, v0, Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2;->y:[I

    if-eqz v2, :cond_11

    iget-object v2, v0, Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2;->z:[I

    if-nez v2, :cond_0

    goto/16 :goto_8

    :cond_0
    iget-object v2, v0, Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2;->o:Ljava/nio/FloatBuffer;

    iget-object v3, v0, Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2;->p:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v1, v2, v3}, Lcom/cyberlink/clgpuimage/cosmetic/e;->j(ILjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V

    iget v2, v0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->mGLProgId:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glUseProgram(I)V

    invoke-virtual {v0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->f()V

    invoke-virtual {v0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_8

    :cond_1
    const/4 v2, 0x0

    move-object/from16 v8, p2

    invoke-virtual {v8, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget v3, v0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->d:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x2

    const/16 v5, 0x1406

    invoke-static/range {v3 .. v8}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget v3, v0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->d:I

    invoke-static {v3}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    move-object/from16 v9, p3

    invoke-virtual {v9, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget v4, v0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->f:I

    const/4 v8, 0x0

    const/4 v5, 0x2

    const/16 v6, 0x1406

    invoke-static/range {v4 .. v9}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget v3, v0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->f:I

    invoke-static {v3}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget-object v3, v0, Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2;->z:[I

    aget v3, v3, v2

    const/4 v4, -0x1

    const/4 v5, 0x3

    const/16 v6, 0xde1

    if-eq v3, v4, :cond_2

    const v3, 0x84c3

    invoke-static {v3}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    iget-object v3, v0, Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2;->z:[I

    aget v3, v3, v2

    invoke-static {v6, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget v3, v0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->e:I

    invoke-static {v3, v5}, Landroid/opengl/GLES20;->glUniform1i(II)V

    :cond_2
    if-eq v1, v4, :cond_3

    const v3, 0x84c0

    invoke-static {v3}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    invoke-static {v6, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget v1, v0, Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2;->x:I

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    :cond_3
    iget-object v1, v0, Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2;->M:Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2$TableMode;

    sget-object v3, Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2$TableMode;->TABLE_NONE:Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2$TableMode;

    const/4 v7, 0x4

    if-eq v1, v3, :cond_4

    iget-object v1, v0, Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2;->O:[I

    aget v1, v1, v2

    if-eq v1, v4, :cond_4

    const v1, 0x84c4

    invoke-static {v1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    iget-object v1, v0, Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2;->O:[I

    aget v1, v1, v2

    invoke-static {v6, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget v1, v0, Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2;->P:I

    invoke-static {v1, v7}, Landroid/opengl/GLES20;->glUniform1i(II)V

    :cond_4
    iget-object v1, v0, Lcom/cyberlink/clgpuimage/cosmetic/e;->T:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v3, v0, Lcom/cyberlink/clgpuimage/cosmetic/e;->X:Ljava/nio/FloatBuffer;

    invoke-virtual {v3}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    iget-object v3, v0, Lcom/cyberlink/clgpuimage/cosmetic/e;->X:Ljava/nio/FloatBuffer;

    sget-object v8, Lcom/cyberlink/clgpuimage/cosmetic/e;->u0:[F

    iget-object v9, v0, Lcom/cyberlink/clgpuimage/cosmetic/e;->U:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveHairDyeFilter$HairDyeData;

    iget v9, v9, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveHairDyeFilter$HairDyeData;->m_rotation:I

    iget v10, v0, Lcom/cyberlink/clgpuimage/cosmetic/e;->V:I

    add-int/lit16 v11, v10, 0x10e

    rem-int/lit16 v11, v11, 0x168

    const/16 v12, 0x8

    const/16 v13, 0x5a

    const/4 v15, 0x7

    move/from16 p2, v5

    const/4 v5, 0x6

    const/16 p1, 0x2

    const/4 v14, 0x5

    move/from16 p3, v7

    const/4 v7, 0x1

    if-ne v9, v11, :cond_5

    aget v9, v8, p3

    aget v10, v8, v14

    aget v11, v8, v2

    aget v16, v8, v7

    aget v17, v8, v5

    aget v18, v8, v15

    aget v19, v8, p1

    aget v8, v8, p2

    move/from16 v20, v15

    new-array v15, v12, [F

    aput v9, v15, v2

    aput v10, v15, v7

    aput v11, v15, p1

    aput v16, v15, p2

    aput v17, v15, p3

    aput v18, v15, v14

    aput v19, v15, v5

    aput v8, v15, v20

    move/from16 v19, v5

    :goto_0
    move/from16 v18, v7

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_7

    :cond_5
    move/from16 v20, v15

    add-int/lit16 v11, v10, 0xb4

    rem-int/lit16 v11, v11, 0x168

    if-ne v9, v11, :cond_6

    aget v9, v8, v5

    aget v10, v8, v20

    aget v11, v8, p3

    aget v15, v8, v14

    aget v16, v8, p1

    aget v17, v8, p2

    aget v18, v8, v2

    aget v8, v8, v7

    move/from16 v19, v5

    new-array v5, v12, [F

    aput v9, v5, v2

    aput v10, v5, v7

    aput v11, v5, p1

    aput v15, v5, p2

    aput v16, v5, p3

    aput v17, v5, v14

    aput v18, v5, v19

    aput v8, v5, v20

    move-object v15, v5

    goto :goto_0

    :cond_6
    move/from16 v19, v5

    add-int/2addr v10, v13

    rem-int/lit16 v10, v10, 0x168

    if-ne v9, v10, :cond_7

    aget v5, v8, p1

    aget v9, v8, p2

    aget v10, v8, v19

    aget v11, v8, v20

    aget v15, v8, v2

    aget v16, v8, v7

    aget v17, v8, p3

    aget v8, v8, v14

    move/from16 v18, v7

    new-array v7, v12, [F

    aput v5, v7, v2

    aput v9, v7, v18

    aput v10, v7, p1

    aput v11, v7, p2

    aput v15, v7, p3

    aput v16, v7, v14

    aput v17, v7, v19

    aput v8, v7, v20

    move-object v15, v7

    goto :goto_1

    :cond_7
    move/from16 v18, v7

    aget v5, v8, v2

    aget v7, v8, v18

    aget v9, v8, p1

    aget v10, v8, p2

    aget v11, v8, p3

    aget v15, v8, v14

    aget v16, v8, v19

    aget v8, v8, v20

    new-array v13, v12, [F

    aput v5, v13, v2

    aput v7, v13, v18

    aput v9, v13, p1

    aput v10, v13, p2

    aput v11, v13, p3

    aput v15, v13, v14

    aput v16, v13, v19

    aput v8, v13, v20

    move-object v15, v13

    :goto_1
    invoke-virtual {v3, v15}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    iget-object v3, v0, Lcom/cyberlink/clgpuimage/cosmetic/e;->X:Ljava/nio/FloatBuffer;

    invoke-virtual {v3, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget v3, v0, Lcom/cyberlink/clgpuimage/cosmetic/e;->W:I

    iget-object v5, v0, Lcom/cyberlink/clgpuimage/cosmetic/e;->X:Ljava/nio/FloatBuffer;

    const/16 v22, 0x2

    const/16 v23, 0x1406

    const/16 v24, 0x0

    const/16 v25, 0x0

    move/from16 v21, v3

    move-object/from16 v26, v5

    invoke-static/range {v21 .. v26}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget v3, v0, Lcom/cyberlink/clgpuimage/cosmetic/e;->W:I

    invoke-static {v3}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget v3, v0, Lcom/cyberlink/clgpuimage/cosmetic/e;->Y:I

    if-eq v3, v4, :cond_8

    const v3, 0x84c5

    invoke-static {v3}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    iget v3, v0, Lcom/cyberlink/clgpuimage/cosmetic/e;->Y:I

    invoke-static {v6, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget v3, v0, Lcom/cyberlink/clgpuimage/cosmetic/e;->Z:I

    invoke-static {v3, v14}, Landroid/opengl/GLES20;->glUniform1i(II)V

    :cond_8
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v3, v0, Lcom/cyberlink/clgpuimage/cosmetic/e;->t0:Ljava/lang/Object;

    monitor-enter v3

    :try_start_1
    iget-object v1, v0, Lcom/cyberlink/clgpuimage/cosmetic/e;->i0:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;

    iget v5, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->analyzing_frame_width:I

    iget v1, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->analyzing_frame_height:I

    invoke-static {v5, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget v5, v0, Lcom/cyberlink/clgpuimage/cosmetic/e;->m0:I

    iget-object v7, v0, Lcom/cyberlink/clgpuimage/cosmetic/e;->i0:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;

    iget v8, v7, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->skin_region_roi_rect_rotated_cos:F

    iget v7, v7, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->skin_region_roi_rect_rotated_sin:F

    invoke-static {v5, v8, v7}, Landroid/opengl/GLES20;->glUniform2f(IFF)V

    iget v5, v0, Lcom/cyberlink/clgpuimage/cosmetic/e;->n0:I

    iget-object v7, v0, Lcom/cyberlink/clgpuimage/cosmetic/e;->i0:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;

    iget v8, v7, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->analyzing_frame_width:I

    int-to-float v8, v8

    int-to-float v1, v1

    div-float/2addr v8, v1

    iget v7, v7, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->analyzing_frame_height:I

    int-to-float v7, v7

    div-float/2addr v7, v1

    invoke-static {v5, v8, v7}, Landroid/opengl/GLES20;->glUniform2f(IFF)V

    iget v5, v0, Lcom/cyberlink/clgpuimage/cosmetic/e;->l0:I

    iget-object v7, v0, Lcom/cyberlink/clgpuimage/cosmetic/e;->i0:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;

    iget v8, v7, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->skin_mask_roi_left:F

    iget v9, v7, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->skin_mask_roi_top:F

    iget v10, v7, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->skin_mask_roi_right:F

    iget v7, v7, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->skin_mask_roi_bottom:F

    invoke-static {v5, v8, v9, v10, v7}, Landroid/opengl/GLES20;->glUniform4f(IFFFF)V

    iget v5, v0, Lcom/cyberlink/clgpuimage/cosmetic/e;->s0:I

    iget-object v7, v0, Lcom/cyberlink/clgpuimage/cosmetic/e;->i0:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;

    iget v7, v7, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->skin_mask_forehead_face_boundary:F

    div-float/2addr v7, v1

    invoke-static {v5, v7}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget-object v1, v0, Lcom/cyberlink/clgpuimage/cosmetic/e;->j0:Ljava/nio/FloatBuffer;

    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    iget-object v1, v0, Lcom/cyberlink/clgpuimage/cosmetic/e;->j0:Ljava/nio/FloatBuffer;

    iget-boolean v5, v0, Lcom/cyberlink/clgpuimage/cosmetic/e;->h0:Z

    if-nez v5, :cond_9

    sget-object v5, Lcom/cyberlink/clgpuimage/cosmetic/e;->v0:[F

    goto :goto_2

    :catchall_1
    move-exception v0

    goto/16 :goto_6

    :cond_9
    sget-object v5, Lcom/cyberlink/clgpuimage/cosmetic/e;->w0:[F

    :goto_2
    iget v7, v0, Lcom/cyberlink/clgpuimage/cosmetic/e;->V:I

    const/16 v8, 0x5a

    if-ne v7, v8, :cond_a

    aget v7, v5, p3

    aget v8, v5, v14

    aget v9, v5, v2

    aget v10, v5, v18

    aget v11, v5, v19

    aget v13, v5, v20

    aget v15, v5, p1

    aget v5, v5, p2

    new-array v12, v12, [F

    aput v7, v12, v2

    aput v8, v12, v18

    aput v9, v12, p1

    aput v10, v12, p2

    aput v11, v12, p3

    aput v13, v12, v14

    aput v15, v12, v19

    aput v5, v12, v20

    goto :goto_3

    :cond_a
    const/16 v8, 0xb4

    if-ne v7, v8, :cond_b

    aget v7, v5, v19

    aget v8, v5, v20

    aget v9, v5, p3

    aget v10, v5, v14

    aget v11, v5, p1

    aget v13, v5, p2

    aget v15, v5, v2

    aget v5, v5, v18

    new-array v12, v12, [F

    aput v7, v12, v2

    aput v8, v12, v18

    aput v9, v12, p1

    aput v10, v12, p2

    aput v11, v12, p3

    aput v13, v12, v14

    aput v15, v12, v19

    aput v5, v12, v20

    goto :goto_3

    :cond_b
    const/16 v8, 0x10e

    if-ne v7, v8, :cond_c

    aget v7, v5, p1

    aget v8, v5, p2

    aget v9, v5, v19

    aget v10, v5, v20

    aget v11, v5, v2

    aget v13, v5, v18

    aget v15, v5, p3

    aget v5, v5, v14

    new-array v12, v12, [F

    aput v7, v12, v2

    aput v8, v12, v18

    aput v9, v12, p1

    aput v10, v12, p2

    aput v11, v12, p3

    aput v13, v12, v14

    aput v15, v12, v19

    aput v5, v12, v20

    goto :goto_3

    :cond_c
    aget v7, v5, v2

    aget v8, v5, v18

    aget v9, v5, p1

    aget v10, v5, p2

    aget v11, v5, p3

    aget v13, v5, v14

    aget v15, v5, v19

    aget v5, v5, v20

    new-array v12, v12, [F

    aput v7, v12, v2

    aput v8, v12, v18

    aput v9, v12, p1

    aput v10, v12, p2

    aput v11, v12, p3

    aput v13, v12, v14

    aput v15, v12, v19

    aput v5, v12, v20

    :goto_3
    invoke-virtual {v1, v12}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    iget-object v1, v0, Lcom/cyberlink/clgpuimage/cosmetic/e;->j0:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget v7, v0, Lcom/cyberlink/clgpuimage/cosmetic/e;->k0:I

    iget-object v12, v0, Lcom/cyberlink/clgpuimage/cosmetic/e;->j0:Ljava/nio/FloatBuffer;

    const/4 v8, 0x2

    const/16 v9, 0x1406

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v7 .. v12}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget v1, v0, Lcom/cyberlink/clgpuimage/cosmetic/e;->k0:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    invoke-static/range {v18 .. v18}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v1

    const/16 v5, 0xcf5

    invoke-static {v5, v1}, Landroid/opengl/GLES20;->glGetIntegerv(ILjava/nio/IntBuffer;)V

    move/from16 v7, v18

    invoke-static {v5, v7}, Landroid/opengl/GLES20;->glPixelStorei(II)V

    iget v7, v0, Lcom/cyberlink/clgpuimage/cosmetic/e;->o0:I

    move/from16 v8, v19

    invoke-static {v7, v8}, Landroid/opengl/GLES20;->glUniform1i(II)V

    const v7, 0x84c6

    invoke-static {v7}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    iget v7, v0, Lcom/cyberlink/clgpuimage/cosmetic/e;->p0:I

    const/16 v8, 0x2803

    const/16 v9, 0x2802

    const/16 v10, 0x2801

    const/16 v11, 0x2800

    const v12, 0x47012f00    # 33071.0f

    const v13, 0x46180400    # 9729.0f

    if-ne v7, v4, :cond_d

    const/4 v15, 0x1

    new-array v7, v15, [I

    invoke-static {v15, v7, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    aget v7, v7, v2

    iput v7, v0, Lcom/cyberlink/clgpuimage/cosmetic/e;->p0:I

    invoke-static {v6, v7}, Landroid/opengl/GLES20;->glBindTexture(II)V

    invoke-static {v6, v11, v13}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    invoke-static {v6, v10, v13}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    invoke-static {v6, v9, v12}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    invoke-static {v6, v8, v12}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    iget-object v7, v0, Lcom/cyberlink/clgpuimage/cosmetic/e;->i0:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;

    iget-object v15, v7, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->forehead_neck_mask:[B

    if-eqz v15, :cond_e

    iget v14, v7, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->skin_mask_roi_width:I

    iget v7, v7, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->skin_mask_roi_height:I

    invoke-static {v15}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v29

    const/16 v21, 0xde1

    const/16 v22, 0x0

    const/16 v23, 0x1906

    const/16 v26, 0x0

    const/16 v27, 0x1906

    const/16 v28, 0x1401

    move/from16 v25, v7

    move/from16 v24, v14

    invoke-static/range {v21 .. v29}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    goto :goto_4

    :cond_d
    invoke-static {v6, v7}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget-object v7, v0, Lcom/cyberlink/clgpuimage/cosmetic/e;->i0:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;

    iget-object v14, v7, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->forehead_neck_mask:[B

    if-eqz v14, :cond_e

    iget v15, v7, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->skin_mask_roi_width:I

    iget v7, v7, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->skin_mask_roi_height:I

    invoke-static {v14}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v29

    const/16 v21, 0xde1

    const/16 v22, 0x0

    const/16 v23, 0x1906

    const/16 v26, 0x0

    const/16 v27, 0x1906

    const/16 v28, 0x1401

    move/from16 v25, v7

    move/from16 v24, v15

    invoke-static/range {v21 .. v29}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    :cond_e
    :goto_4
    iget v7, v0, Lcom/cyberlink/clgpuimage/cosmetic/e;->q0:I

    move/from16 v14, v20

    invoke-static {v7, v14}, Landroid/opengl/GLES20;->glUniform1i(II)V

    const v7, 0x84c7

    invoke-static {v7}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    iget v7, v0, Lcom/cyberlink/clgpuimage/cosmetic/e;->r0:I

    if-ne v7, v4, :cond_f

    const/4 v15, 0x1

    new-array v4, v15, [I

    invoke-static {v15, v4, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    aget v4, v4, v2

    iput v4, v0, Lcom/cyberlink/clgpuimage/cosmetic/e;->r0:I

    invoke-static {v6, v4}, Landroid/opengl/GLES20;->glBindTexture(II)V

    invoke-static {v6, v11, v13}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    invoke-static {v6, v10, v13}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    invoke-static {v6, v9, v12}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    invoke-static {v6, v8, v12}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    iget-object v4, v0, Lcom/cyberlink/clgpuimage/cosmetic/e;->i0:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;

    iget-object v7, v4, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->skin_probability_mask:[B

    if-eqz v7, :cond_10

    iget v11, v4, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->skin_mask_roi_width:I

    iget v12, v4, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->skin_mask_roi_height:I

    invoke-static {v7}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v16

    goto :goto_5

    :cond_f
    invoke-static {v6, v7}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget-object v4, v0, Lcom/cyberlink/clgpuimage/cosmetic/e;->i0:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;

    iget-object v7, v4, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->skin_probability_mask:[B

    if-eqz v7, :cond_10

    iget v11, v4, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->skin_mask_roi_width:I

    iget v12, v4, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFoundationFilter$LiveFoundationData;->skin_mask_roi_height:I

    invoke-static {v7}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v16

    :goto_5
    const/16 v8, 0xde1

    const/4 v9, 0x0

    const/16 v10, 0x1906

    const/4 v13, 0x0

    const/16 v14, 0x1906

    const/16 v15, 0x1401

    invoke-static/range {v8 .. v16}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    :cond_10
    invoke-virtual {v1, v2}, Ljava/nio/IntBuffer;->get(I)I

    move-result v1

    invoke-static {v5, v1}, Landroid/opengl/GLES20;->glPixelStorei(II)V

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move/from16 v3, p3

    const/4 v1, 0x5

    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    iget v1, v0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->d:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    iget v0, v0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->f:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    invoke-static {v6, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    return-void

    :goto_6
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :goto_7
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :cond_11
    :goto_8
    return-void
.end method

.method public final onInit()V
    .locals 5

    invoke-super {p0}, Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2;->onInit()V

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v1, "input_hair_texture_coordinate"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/e;->W:I

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v1, "hairTexture"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/e;->Z:I

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v1, "center_x"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/e;->b0:I

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v1, "center_y"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/e;->c0:I

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v1, "background_image_width"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/e;->d0:I

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v1, "background_image_height"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/e;->e0:I

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v1, "hair_width"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/e;->f0:I

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v1, "hair_height"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/e;->g0:I

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

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/e;->Y:I

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v1, "input_skin_mask_texture_coordinate"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/e;->k0:I

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v1, "skin_mask_roi"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/e;->l0:I

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v1, "skin_region_roi_rect_rotated_cos_sin"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/e;->m0:I

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v1, "skin_region_roi_width_height_resized_ratio"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/e;->n0:I

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v1, "forehead_neck_mask"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/e;->o0:I

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v1, "skin_mask_forehead_face_boundary"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/e;->s0:I

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v1, "skin_mask"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/e;->q0:I

    return-void
.end method

.method public final onInitialized()V
    .locals 2

    invoke-super {p0}, Lcom/cyberlink/clgpuimage/CLBeautyFilterBasicWithTwoPassBlendSource2;->onInitialized()V

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/e;->R:F

    invoke-virtual {p0, v0}, Lcom/cyberlink/clgpuimage/cosmetic/e;->o(F)V

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/e;->S:F

    invoke-virtual {p0, v0}, Lcom/cyberlink/clgpuimage/cosmetic/e;->n(F)V

    new-instance v0, Lcom/cyberlink/clgpuimage/cosmetic/h;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/cyberlink/clgpuimage/cosmetic/h;-><init>(Lcom/cyberlink/clgpuimage/cosmetic/e;F)V

    invoke-virtual {p0, v0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->e(Ljava/lang/Runnable;)V

    return-void
.end method
