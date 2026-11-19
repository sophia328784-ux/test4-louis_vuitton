.class public final Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;
.super Lcom/cyberlink/clgpuimage/CLMakeupLivePluginFilter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter$d;,
        Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter$BackgroundData;,
        Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter$c;,
        Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter$a;,
        Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter$b;
    }
.end annotation


# static fields
.field public static final A0:[F


# instance fields
.field public A:I

.field public B:I

.field public C:I

.field public D:I

.field public E:I

.field public F:I

.field public G:I

.field public H:I

.field public I:I

.field public J:I

.field public final K:Z

.field public volatile L:Z

.field public volatile M:Z

.field public volatile N:Z

.field public volatile O:Z

.field public P:Z

.field public Q:Z

.field public R:Ljava/nio/ByteBuffer;

.field public S:Ljava/nio/ByteBuffer;

.field public T:Ljava/nio/ByteBuffer;

.field public U:Ljava/nio/ByteBuffer;

.field public V:I

.field public W:I

.field public X:I

.field public Y:I

.field public Z:I

.field public a0:I

.field public b0:Lcom/cyberlink/clgpuimage/util/TextureAlignmentUtil$AlignMode;

.field public final c0:Lcom/cyberlink/clgpuimage/cosmetic/al;

.field public final d0:Lcom/cyberlink/clgpuimage/GPUImageFilter;

.field public e0:[I

.field public f0:[I

.field public final g0:Ljava/nio/FloatBuffer;

.field public final h0:Ljava/nio/FloatBuffer;

.field public final i0:Ljava/nio/FloatBuffer;

.field public final j0:Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter$BackgroundData;

.field public final k0:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveHairDyeFilter$HairDyeData;

.field public l0:I

.field public final m0:Ljava/lang/Object;

.field public final n0:Ljava/lang/Object;

.field public final o0:Ljava/lang/Object;

.field public p:I

.field public final p0:Ljava/lang/Object;

.field public q:I

.field public final q0:Ljava/lang/Object;

.field public r:I

.field public final r0:Ljava/lang/Object;

.field public s:I

.field public final s0:Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter$a;

.field public t:I

.field public final t0:Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter$a;

.field public u:I

.field public u0:Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter$c;

.field public v:I

.field public v0:Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter$c;

.field public w:I

.field public w0:Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter$c;

.field public x:I

.field public x0:I

.field public y:I

.field public y0:I

.field public z:I

.field public final z0:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->A0:[F

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

.method public constructor <init>(ZZ)V
    .locals 5

    if-eqz p1, :cond_0

    const-string p2, "attribute vec4 position;\n\nattribute vec4 inputTextureCoordinate;\nattribute vec4 inputMaskTextureCoordinate;\nattribute vec4 inputAnimatedTextureCoordinate;\nattribute vec4 inputStaticTextureCoordinate;\nattribute vec4 inputHairTextureCoordinate;\n\nvarying vec2 textureCoordinate;\nvarying vec2 maskTextureCoordinate;\nvarying vec2 animatedTextureCoordinate;\nvarying vec2 staticTextureCoordinate;\nvarying vec2 hairTextureCoordinate;\n\nuniform float hairCenterX;\nuniform float hairCenterY;\nuniform float hairBackgroundImageWidth;\nuniform float hairBackgroundImageHeight;\nuniform float hairWidth;\nuniform float hairHeight;\n\nvoid main()\n{\n   gl_Position = position;\n   textureCoordinate = inputTextureCoordinate.xy;\n   maskTextureCoordinate = inputMaskTextureCoordinate.xy;\n   animatedTextureCoordinate = inputAnimatedTextureCoordinate.xy;\n   staticTextureCoordinate = inputStaticTextureCoordinate.xy;\n\n   hairTextureCoordinate.x = (inputHairTextureCoordinate.x - hairCenterX) * hairBackgroundImageWidth / hairWidth + 0.5;\n   hairTextureCoordinate.y = (inputHairTextureCoordinate.y - hairCenterY) * hairBackgroundImageHeight / hairHeight + 0.5;\n}\n"

    goto :goto_0

    :cond_0
    const-string p2, "attribute vec4 position;\n\nattribute vec4 inputTextureCoordinate;\nattribute vec4 inputAnimatedTextureCoordinate;\nattribute vec4 inputStaticTextureCoordinate;\n\nvarying vec2 textureCoordinate;\nvarying vec2 animatedTextureCoordinate;\nvarying vec2 staticTextureCoordinate;\n\nvoid main()\n{\n   gl_Position = position;\n   textureCoordinate = inputTextureCoordinate.xy;\n   animatedTextureCoordinate = inputAnimatedTextureCoordinate.xy;\n   staticTextureCoordinate = inputStaticTextureCoordinate.xy;\n}\n"

    :goto_0
    if-eqz p1, :cond_1

    const-string v0, "#ifdef GL_FRAGMENT_PRECISION_HIGH\nprecision highp float;\n#else\nprecision mediump float;\n#endif\nvarying vec2 textureCoordinate;\nvarying vec2 maskTextureCoordinate;\nvarying vec2 animatedTextureCoordinate;\nvarying vec2 staticTextureCoordinate;\nvarying vec2 hairTextureCoordinate;\n\nuniform sampler2D inputImageTexture;\nuniform sampler2D inputMaskTexture;\nuniform sampler2D inputAnimatedTexture;\nuniform sampler2D inputStaticTexture;\nuniform sampler2D inputHairTexture;\n\nuniform int animatedTextureColorIsPremultipliedAlpha;\nuniform int staticTextureColorIsPremultipliedAlpha;\n\nvoid main()\n{\n   vec4 textureColor = texture2D(inputImageTexture, textureCoordinate);\n   vec4 maskTextureColor = texture2D(inputMaskTexture, maskTextureCoordinate);\n   vec4 animatedTextureColor = texture2D(inputAnimatedTexture, animatedTextureCoordinate);\n   vec4 staticTextureColor = texture2D(inputStaticTexture, staticTextureCoordinate);\n\n   animatedTextureColor = vec4(animatedTextureColor.rgb * max(animatedTextureColor.a, float(animatedTextureColorIsPremultipliedAlpha)), animatedTextureColor.a);\n   staticTextureColor = vec4(staticTextureColor.rgb * max(staticTextureColor.a, float(staticTextureColorIsPremultipliedAlpha)), staticTextureColor.a);\n\n   vec4 backgroundColor = mix(animatedTextureColor, staticTextureColor, staticTextureColor.a);\n   float hairAlpha = texture2D(inputHairTexture, hairTextureCoordinate).r;\n   float maskValue = max(maskTextureColor.r, hairAlpha);\n\n   gl_FragColor = (textureColor * maskValue) + (backgroundColor * (1.0 - maskValue));\n}\n"

    goto :goto_1

    :cond_1
    const-string v0, "#ifdef GL_FRAGMENT_PRECISION_HIGH\nprecision highp float;\n#else\nprecision mediump float;\n#endif\nvarying vec2 textureCoordinate;\nvarying vec2 animatedTextureCoordinate;\nvarying vec2 staticTextureCoordinate;\n\nuniform sampler2D inputImageTexture;\nuniform sampler2D inputAnimatedTexture;\nuniform sampler2D inputStaticTexture;\n\nuniform int animatedTextureColorIsPremultipliedAlpha;\nuniform int staticTextureColorIsPremultipliedAlpha;\n\nvoid main()\n{\n   vec4 textureColor = texture2D(inputImageTexture, textureCoordinate);\n   vec4 animatedTextureColor = texture2D(inputAnimatedTexture, animatedTextureCoordinate);\n   vec4 staticTextureColor = texture2D(inputStaticTexture, staticTextureCoordinate);\n\n   animatedTextureColor = vec4(animatedTextureColor.rgb * max(animatedTextureColor.a, float(animatedTextureColorIsPremultipliedAlpha)), animatedTextureColor.a);\n   staticTextureColor = vec4(staticTextureColor.rgb * max(staticTextureColor.a, float(staticTextureColorIsPremultipliedAlpha)), staticTextureColor.a);\n\n   vec4 result = (textureColor * (1.0 - animatedTextureColor.a)) + animatedTextureColor;\n   result = (result * (1.0 - staticTextureColor.a)) + staticTextureColor;\n\n   gl_FragColor = vec4(result.rgb, 1.0);\n}\n"

    :goto_1
    invoke-direct {p0, p2, v0}, Lcom/cyberlink/clgpuimage/CLMakeupLivePluginFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, -0x1

    iput p2, p0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->x:I

    iput p2, p0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->y:I

    iput p2, p0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->z:I

    iput p2, p0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->A:I

    iput p2, p0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->B:I

    sget-object p2, Lcom/cyberlink/clgpuimage/util/TextureAlignmentUtil$AlignMode;->ALIGN_STRETCH:Lcom/cyberlink/clgpuimage/util/TextureAlignmentUtil$AlignMode;

    iput-object p2, p0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->b0:Lcom/cyberlink/clgpuimage/util/TextureAlignmentUtil$AlignMode;

    new-instance v0, Lcom/cyberlink/clgpuimage/GPUImageFilter;

    invoke-direct {v0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;-><init>()V

    iput-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->d0:Lcom/cyberlink/clgpuimage/GPUImageFilter;

    const/16 v0, 0x5a

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->l0:I

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->m0:Ljava/lang/Object;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->n0:Ljava/lang/Object;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->o0:Ljava/lang/Object;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->p0:Ljava/lang/Object;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->q0:Ljava/lang/Object;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->r0:Ljava/lang/Object;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->z0:Ljava/util/ArrayList;

    iput-boolean p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->K:Z

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    new-instance p1, Lcom/cyberlink/clgpuimage/cosmetic/al;

    invoke-direct {p1}, Lcom/cyberlink/clgpuimage/cosmetic/al;-><init>()V

    iput-object p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->c0:Lcom/cyberlink/clgpuimage/cosmetic/al;

    sget-object p1, Lcom/cyberlink/clgpuimage/GPUImageRenderer;->M:[F

    const/16 v3, 0x20

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-static {v4}, Lfc;->v(Ljava/nio/ByteBuffer;)Ljava/nio/FloatBuffer;

    move-result-object v4

    iput-object v4, p0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->g0:Ljava/nio/FloatBuffer;

    invoke-virtual {v4, p1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-static {p1}, Lfc;->v(Ljava/nio/ByteBuffer;)Ljava/nio/FloatBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->h0:Ljava/nio/FloatBuffer;

    const/16 v4, 0x8

    new-array v4, v4, [F

    fill-array-data v4, :array_0

    invoke-virtual {p1, v4}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-static {p1}, Lfc;->v(Ljava/nio/ByteBuffer;)Ljava/nio/FloatBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->i0:Ljava/nio/FloatBuffer;

    sget-object v3, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->A0:[F

    invoke-virtual {p1, v3}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->c0:Lcom/cyberlink/clgpuimage/cosmetic/al;

    :goto_2
    sget-object p1, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->A0:[F

    invoke-virtual {p0, p1, v0}, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->j([FI)Ljava/nio/ByteBuffer;

    move-result-object v3

    iput-object v3, p0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->R:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1, v0}, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->j([FI)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->U:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v2, p2}, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->k(ILcom/cyberlink/clgpuimage/util/TextureAlignmentUtil$AlignMode;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->k(ILcom/cyberlink/clgpuimage/util/TextureAlignmentUtil$AlignMode;)V

    new-instance p1, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter$BackgroundData;

    invoke-direct {p1}, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter$BackgroundData;-><init>()V

    iput-object p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->j0:Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter$BackgroundData;

    new-instance p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveHairDyeFilter$HairDyeData;

    invoke-direct {p1}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveHairDyeFilter$HairDyeData;-><init>()V

    iput-object p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->k0:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveHairDyeFilter$HairDyeData;

    monitor-enter v1

    :try_start_0
    new-instance p1, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter$a;

    invoke-direct {p1}, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter$a;-><init>()V

    iput-object p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->t0:Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter$a;

    new-instance p1, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter$a;

    invoke-direct {p1}, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter$a;-><init>()V

    iput-object p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->s0:Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter$a;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    nop

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public final GetEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->N:Z

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->O:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final d()V
    .locals 9

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->C:I

    iget-boolean v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->P:Z

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->D:I

    iget-boolean v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->Q:Z

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    const v0, 0x84c3

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    iget-boolean v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->L:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->y:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->A:I

    :goto_0
    const/16 v1, 0xde1

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->u:I

    const/4 v2, 0x3

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->q:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->z0:Ljava/util/ArrayList;

    iget v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->q:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->S:Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget v3, p0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->q:I

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->S:Ljava/nio/ByteBuffer;

    const/4 v4, 0x2

    const/16 v5, 0x1406

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    const v0, 0x84c4

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    iget-boolean v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->M:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->z:I

    goto :goto_1

    :cond_1
    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->A:I

    :goto_1
    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->v:I

    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->r:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->z0:Ljava/util/ArrayList;

    iget v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->r:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->T:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget v3, p0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->r:I

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->T:Ljava/nio/ByteBuffer;

    const/4 v4, 0x2

    const/16 v5, 0x1406

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    return-void
.end method

.method public final j([FI)Ljava/nio/ByteBuffer;
    .locals 10

    iget p0, p0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->l0:I

    add-int/lit16 v0, p0, 0x10e

    rem-int/lit16 v0, v0, 0x168

    const/16 v1, 0x8

    const/4 v2, 0x7

    const/4 v3, 0x6

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x5

    const/4 v7, 0x1

    const/4 v8, 0x4

    const/4 v9, 0x0

    if-ne p2, v0, :cond_0

    new-array p0, v1, [F

    aget p2, p1, v8

    aput p2, p0, v9

    aget p2, p1, v6

    aput p2, p0, v7

    aget p2, p1, v9

    aput p2, p0, v5

    aget p2, p1, v7

    aput p2, p0, v4

    aget p2, p1, v3

    aput p2, p0, v8

    aget p2, p1, v2

    aput p2, p0, v6

    aget p2, p1, v5

    aput p2, p0, v3

    aget p1, p1, v4

    aput p1, p0, v2

    goto :goto_0

    :cond_0
    add-int/lit16 v0, p0, 0xb4

    rem-int/lit16 v0, v0, 0x168

    if-ne p2, v0, :cond_1

    new-array p0, v1, [F

    aget p2, p1, v3

    aput p2, p0, v9

    aget p2, p1, v2

    aput p2, p0, v7

    aget p2, p1, v8

    aput p2, p0, v5

    aget p2, p1, v6

    aput p2, p0, v4

    aget p2, p1, v5

    aput p2, p0, v8

    aget p2, p1, v4

    aput p2, p0, v6

    aget p2, p1, v9

    aput p2, p0, v3

    aget p1, p1, v7

    aput p1, p0, v2

    goto :goto_0

    :cond_1
    add-int/lit8 p0, p0, 0x5a

    rem-int/lit16 p0, p0, 0x168

    if-ne p2, p0, :cond_2

    new-array p0, v1, [F

    aget p2, p1, v5

    aput p2, p0, v9

    aget p2, p1, v4

    aput p2, p0, v7

    aget p2, p1, v3

    aput p2, p0, v5

    aget p2, p1, v2

    aput p2, p0, v4

    aget p2, p1, v9

    aput p2, p0, v8

    aget p2, p1, v7

    aput p2, p0, v6

    aget p2, p1, v8

    aput p2, p0, v3

    aget p1, p1, v6

    aput p1, p0, v2

    goto :goto_0

    :cond_2
    new-array p0, v1, [F

    aget p2, p1, v9

    aput p2, p0, v9

    aget p2, p1, v7

    aput p2, p0, v7

    aget p2, p1, v5

    aput p2, p0, v5

    aget p2, p1, v4

    aput p2, p0, v4

    aget p2, p1, v8

    aput p2, p0, v8

    aget p2, p1, v6

    aput p2, p0, v6

    aget p2, p1, v3

    aput p2, p0, v3

    aget p1, p1, v2

    aput p1, p0, v2

    :goto_0
    const/16 p1, 0x20

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object p2

    invoke-virtual {p2, p0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    invoke-virtual {p2}, Ljava/nio/FloatBuffer;->flip()Ljava/nio/Buffer;

    return-object p1
.end method

.method public final k(ILcom/cyberlink/clgpuimage/util/TextureAlignmentUtil$AlignMode;)V
    .locals 8

    if-nez p1, :cond_0

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->X:I

    iget v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->Y:I

    :goto_0
    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getOutputWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getOutputHeight()I

    move-result v3

    invoke-static {p2, v0, v1, v2, v3}, Lcom/cyberlink/clgpuimage/util/TextureAlignmentUtil;->a(Lcom/cyberlink/clgpuimage/util/TextureAlignmentUtil$AlignMode;IIII)[F

    move-result-object p2

    goto :goto_1

    :cond_0
    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->Z:I

    iget v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->a0:I

    goto :goto_0

    :goto_1
    const/4 v0, 0x0

    aget v1, p2, v0

    const/4 v2, 0x1

    aget v3, p2, v2

    const/4 v4, 0x2

    aget v5, p2, v4

    const/4 v6, 0x3

    aget p2, p2, v6

    const/16 v7, 0x8

    new-array v7, v7, [F

    aput v1, v7, v0

    aput v3, v7, v2

    aput v5, v7, v4

    aput v3, v7, v6

    const/4 v0, 0x4

    aput v1, v7, v0

    const/4 v0, 0x5

    aput p2, v7, v0

    const/4 v0, 0x6

    aput v5, v7, v0

    const/4 v0, 0x7

    aput p2, v7, v0

    const/16 p2, 0x20

    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->flip()Ljava/nio/Buffer;

    if-nez p1, :cond_1

    iput-object p2, p0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->S:Ljava/nio/ByteBuffer;

    return-void

    :cond_1
    iput-object p2, p0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->T:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public final l(Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter$BackgroundData;Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveHairDyeFilter$HairDyeData;)V
    .locals 3

    iget-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->m0:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->j0:Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter$BackgroundData;

    invoke-virtual {v1, p1}, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter$BackgroundData;->Copy(Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter$BackgroundData;)V

    iget-object p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->k0:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveHairDyeFilter$HairDyeData;

    invoke-virtual {p1, p2}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveHairDyeFilter$HairDyeData;->Copy(Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveHairDyeFilter$HairDyeData;)V

    iget-object p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->j0:Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter$BackgroundData;

    iget-boolean p2, p1, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter$BackgroundData;->m_is_enabled:Z

    if-eqz p2, :cond_0

    iget-object p2, p1, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter$BackgroundData;->m_segment_map_data:[B

    if-eqz p2, :cond_0

    sget-object p2, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->A0:[F

    iget p1, p1, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter$BackgroundData;->m_rotation:I

    invoke-virtual {p0, p2, p1}, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->j([FI)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->R:Ljava/nio/ByteBuffer;

    iget-object p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->j0:Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter$BackgroundData;

    iget-object p1, p1, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter$BackgroundData;->m_segment_map_data:[B

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    iget-object p2, p0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->j0:Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter$BackgroundData;

    iget v1, p2, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter$BackgroundData;->m_segment_map_width:I

    iget p2, p2, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter$BackgroundData;->m_segment_map_height:I

    if-eqz p1, :cond_0

    new-instance v2, Lcom/cyberlink/clgpuimage/cosmetic/af;

    invoke-direct {v2, p0, p1, v1, p2}, Lcom/cyberlink/clgpuimage/cosmetic/af;-><init>(Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;Ljava/nio/ByteBuffer;II)V

    invoke-virtual {p0, v2}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->e(Ljava/lang/Runnable;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->k0:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveHairDyeFilter$HairDyeData;

    iget-boolean p2, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveHairDyeFilter$HairDyeData;->m_is_enabled:Z

    if-eqz p2, :cond_2

    iget-object p2, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveHairDyeFilter$HairDyeData;->m_segment_map_data:[B

    if-eqz p2, :cond_2

    sget-object p2, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->A0:[F

    iget p1, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveHairDyeFilter$HairDyeData;->m_rotation:I

    invoke-virtual {p0, p2, p1}, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->j([FI)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->U:Ljava/nio/ByteBuffer;

    iget-object p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->k0:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveHairDyeFilter$HairDyeData;

    iget-object p1, p1, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveHairDyeFilter$HairDyeData;->m_segment_map_data:[B

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    iget-object p2, p0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->k0:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveHairDyeFilter$HairDyeData;

    iget v1, p2, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveHairDyeFilter$HairDyeData;->m_segment_map_width:I

    iget p2, p2, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveHairDyeFilter$HairDyeData;->m_segment_map_height:I

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    new-instance v2, Lcom/cyberlink/clgpuimage/cosmetic/ai;

    invoke-direct {v2, p0, p2, v1, p1}, Lcom/cyberlink/clgpuimage/cosmetic/ai;-><init>(Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;IILjava/nio/ByteBuffer;)V

    invoke-virtual {p0, v2}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->e(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_2
    const/4 p1, 0x1

    new-array p2, p1, [B

    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p2

    if-nez p2, :cond_3

    goto :goto_1

    :cond_3
    new-instance v1, Lcom/cyberlink/clgpuimage/cosmetic/ai;

    invoke-direct {v1, p0, p1, p1, p2}, Lcom/cyberlink/clgpuimage/cosmetic/ai;-><init>(Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;IILjava/nio/ByteBuffer;)V

    invoke-virtual {p0, v1}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->e(Ljava/lang/Runnable;)V

    :goto_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final m(Ljava/nio/Buffer;IILcom/cyberlink/clgpuimage/util/TextureAlignmentUtil$AlignMode;)V
    .locals 8

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->N:Z

    new-instance v1, Lcom/cyberlink/clgpuimage/cosmetic/ag;

    const/4 v6, 0x0

    move-object v2, p0

    move-object v3, p1

    move v5, p2

    move v4, p3

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/cyberlink/clgpuimage/cosmetic/ag;-><init>(Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;Ljava/nio/Buffer;IIZLcom/cyberlink/clgpuimage/util/TextureAlignmentUtil$AlignMode;)V

    invoke-virtual {v2, v1}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->e(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final n()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->N:Z

    new-instance v0, Lcom/cyberlink/clgpuimage/cosmetic/aj;

    invoke-direct {v0, p0}, Lcom/cyberlink/clgpuimage/cosmetic/aj;-><init>(Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;)V

    invoke-virtual {p0, v0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->e(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final o()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->O:Z

    new-instance v0, Lcom/cyberlink/clgpuimage/cosmetic/ak;

    invoke-direct {v0, p0}, Lcom/cyberlink/clgpuimage/cosmetic/ak;-><init>(Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;)V

    invoke-virtual {p0, v0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->e(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onDestroy()V
    .locals 6

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->r()V

    iget-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->d0:Lcom/cyberlink/clgpuimage/GPUImageFilter;

    invoke-virtual {v0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->destroy()V

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->c0:Lcom/cyberlink/clgpuimage/cosmetic/al;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networktaskmanager/makeup/b;->a:Ljava/util/List;

    check-cast v1, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    invoke-virtual {v1, v0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;->r(I)Lcom/perfectcorp/thirdparty/com/google/common/collect/bz;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cyberlink/clgpuimage/GPUImageFilter;

    invoke-virtual {v2}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->destroy()V

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->x:I

    iget v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->y:I

    iget v3, p0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->z:I

    iget v4, p0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->A:I

    iget v5, p0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->B:I

    filled-new-array {v1, v2, v3, v4, v5}, [I

    move-result-object v1

    const/4 v2, 0x5

    invoke-static {v2, v1, v0}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->x:I

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->y:I

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->z:I

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->A:I

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->B:I

    return-void
.end method

.method public final onDraw(ILjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V
    .locals 40

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    invoke-virtual {v0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->f()V

    invoke-virtual {v0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    iget-object v2, v0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->r0:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, v0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->t0:Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter$a;

    iget-object v4, v0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->s0:Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter$a;

    iget v5, v4, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter$a;->a:I

    iput v5, v3, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter$a;->a:I

    sget v5, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter$b;->a:I

    iput v5, v4, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter$a;->a:I

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    iget v2, v3, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter$a;->a:I

    sget v3, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter$b;->c:I

    const/4 v4, 0x1

    const/4 v9, 0x0

    if-ne v2, v3, :cond_1

    move v3, v4

    goto :goto_0

    :cond_1
    move v3, v9

    :goto_0
    sget v5, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter$b;->b:I

    if-ne v2, v5, :cond_2

    move v2, v4

    goto :goto_1

    :cond_2
    move v2, v9

    :goto_1
    const/4 v5, 0x3

    if-eqz v3, :cond_3

    const-string v3, "BackgroundFilter"

    const-string v6, "Get background info"

    invoke-static {v5, v3, v6}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    iget-object v3, v0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->p0:Ljava/lang/Object;

    monitor-enter v3

    :try_start_1
    new-instance v6, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter$c;

    invoke-direct {v6}, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter$c;-><init>()V

    iput-object v6, v0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->u0:Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter$c;

    iget-object v6, v0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->u0:Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter$c;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v6, v0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->u0:Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter$c;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v6, v0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->u0:Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter$c;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v6, v0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->p0:Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v3

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_3
    :goto_2
    if-eqz v2, :cond_4

    const-string v3, "BackgroundFilter"

    const-string v6, "Get foreground info"

    invoke-static {v5, v3, v6}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    iget-object v3, v0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->o0:Ljava/lang/Object;

    monitor-enter v3

    :try_start_2
    new-instance v6, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter$c;

    invoke-direct {v6}, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter$c;-><init>()V

    iput-object v6, v0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->v0:Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter$c;

    iget-object v6, v0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->v0:Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter$c;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v6, v0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->v0:Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter$c;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v6, v0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->v0:Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter$c;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v6, v0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->o0:Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v3

    goto :goto_3

    :catchall_1
    move-exception v0

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :cond_4
    :goto_3
    new-array v3, v4, [I

    const v6, 0x8ca6

    invoke-static {v6, v3, v9}, Landroid/opengl/GLES20;->glGetIntegerv(I[II)V

    iget-boolean v6, v0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->L:Z

    const v10, 0x8d40

    if-nez v6, :cond_5

    iget-boolean v6, v0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->M:Z

    if-nez v6, :cond_5

    aget v2, v3, v9

    invoke-static {v10, v2}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    iget-object v0, v0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->d0:Lcom/cyberlink/clgpuimage/GPUImageFilter;

    invoke-virtual {v0, v1, v7, v8}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->onDraw(ILjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V

    return-void

    :cond_5
    const/4 v6, 0x0

    invoke-static {v6, v6, v6, v6}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/16 v11, 0x4000

    invoke-static {v11}, Landroid/opengl/GLES20;->glClear(I)V

    iget-object v12, v0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->z0:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    iget-boolean v12, v0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->K:Z

    const/4 v14, -0x1

    if-eqz v12, :cond_b

    iget-object v12, v0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->e0:[I

    const v16, 0x84c5

    if-eqz v12, :cond_a

    move/from16 v17, v4

    iget-object v4, v0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->f0:[I

    if-eqz v4, :cond_a

    iget v4, v0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->x:I

    move/from16 v18, v11

    const/4 v11, 0x2

    if-eq v4, v14, :cond_6

    iget-object v14, v0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->c0:Lcom/cyberlink/clgpuimage/cosmetic/al;

    if-nez v14, :cond_7

    :cond_6
    move/from16 v19, v11

    goto :goto_5

    :cond_7
    move v12, v9

    :goto_4
    if-ge v12, v11, :cond_8

    iget-object v14, v0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->c0:Lcom/cyberlink/clgpuimage/cosmetic/al;

    iget-object v14, v14, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networktaskmanager/makeup/b;->a:Ljava/util/List;

    invoke-interface {v14, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/cyberlink/clgpuimage/GPUImageFilter;

    move/from16 v19, v11

    iget-object v11, v0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->e0:[I

    aget v11, v11, v12

    invoke-static {v10, v11}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    invoke-static {v6, v6, v6, v6}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    invoke-static/range {v18 .. v18}, Landroid/opengl/GLES20;->glClear(I)V

    iget-object v11, v0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->g0:Ljava/nio/FloatBuffer;

    iget-object v13, v0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->i0:Ljava/nio/FloatBuffer;

    invoke-virtual {v14, v4, v11, v13}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->onDraw(ILjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V

    aget v4, v3, v9

    invoke-static {v10, v4}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    iget-object v4, v0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->f0:[I

    aget v4, v4, v12

    add-int/lit8 v12, v12, 0x1

    move/from16 v11, v19

    goto :goto_4

    :cond_8
    move/from16 v19, v11

    goto :goto_6

    :goto_5
    aget v4, v12, v17

    invoke-static {v10, v4}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v4, v6, v6, v6}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    invoke-static/range {v18 .. v18}, Landroid/opengl/GLES20;->glClear(I)V

    aget v4, v3, v9

    invoke-static {v10, v4}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    :goto_6
    if-eqz v2, :cond_9

    const-string v2, "BackgroundFilter"

    const-string v11, "Get mask info"

    invoke-static {v5, v2, v11}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    iget-object v2, v0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->q0:Ljava/lang/Object;

    monitor-enter v2

    :try_start_3
    new-instance v5, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter$c;

    invoke-direct {v5}, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter$c;-><init>()V

    iput-object v5, v0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->w0:Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter$c;

    invoke-virtual {v0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getOutputWidth()I

    iget-object v5, v0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->w0:Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter$c;

    invoke-virtual {v0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getOutputHeight()I

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v5, v0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->w0:Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter$c;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getOutputWidth()I

    move-result v5

    invoke-virtual {v0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getOutputHeight()I

    move-result v11

    mul-int/2addr v5, v11

    shl-int/lit8 v5, v5, 0x2

    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    iget-object v5, v0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->e0:[I

    aget v5, v5, v9

    invoke-static {v10, v5}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    invoke-static {v6, v6, v6, v6}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    invoke-static/range {v18 .. v18}, Landroid/opengl/GLES20;->glClear(I)V

    new-instance v5, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter$d;

    const-string v11, "attribute vec4 position;\n\nattribute vec4 inputTextureCoordinate;\nattribute vec4 inputHairTextureCoordinate;\n\nvarying vec2 textureCoordinate;\nvarying vec2 hairTextureCoordinate;\n\nuniform float hairCenterX;\nuniform float hairCenterY;\nuniform float hairWidth;\nuniform float hairHeight;\nuniform float hairBackgroundImageWidth;\nuniform float hairBackgroundImageHeight;\n\nvoid main()\n{\n   gl_Position = position;\n   textureCoordinate = inputTextureCoordinate.xy;\n   hairTextureCoordinate.x = (inputHairTextureCoordinate.x - hairCenterX) * hairBackgroundImageWidth / hairWidth + 0.5;\n   hairTextureCoordinate.y = (inputHairTextureCoordinate.y - hairCenterY) * hairBackgroundImageHeight / hairHeight + 0.5;\n}\n"

    const-string v12, "#ifdef GL_FRAGMENT_PRECISION_HIGH\nprecision highp float;\n#else\nprecision mediump float;\n#endif\nvarying vec2 textureCoordinate;\nvarying vec2 hairTextureCoordinate;\n\nuniform sampler2D inputImageTexture;\nuniform sampler2D inputHairTexture;\n\nvoid main()\n{\n   vec4 textureColor = vec4(1.0, 1.0, 1.0, 1.0);\n   vec4 maskTextureColor = texture2D(inputImageTexture, textureCoordinate);\n\n   vec4 backgroundColor = vec4(0.0, 0.0, 0.0, 1.0);\n   float hairAlpha = texture2D(inputHairTexture, hairTextureCoordinate).r;\n   float maskValue = max(maskTextureColor.r, hairAlpha);\n\n   gl_FragColor = (textureColor * maskValue) + (backgroundColor * (1.0 - maskValue));\n}\n"

    invoke-direct {v5, v11, v12}, Lcom/cyberlink/clgpuimage/GPUImageFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->init()V

    invoke-virtual {v0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getOutputWidth()I

    move-result v11

    invoke-virtual {v0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getOutputHeight()I

    move-result v12

    iput v11, v5, Lcom/cyberlink/clgpuimage/GPUImageFilter;->g:I

    iput v12, v5, Lcom/cyberlink/clgpuimage/GPUImageFilter;->h:I

    iget-object v11, v0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->R:Ljava/nio/ByteBuffer;

    invoke-virtual {v11, v9}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v11, v0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->U:Ljava/nio/ByteBuffer;

    invoke-virtual {v11, v9}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v11, v0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->f0:[I

    aget v28, v11, v17

    iget-object v11, v0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->i0:Ljava/nio/FloatBuffer;

    iget v12, v0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->B:I

    iget-object v13, v0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->k0:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveHairDyeFilter$HairDyeData;

    iget v14, v13, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveHairDyeFilter$HairDyeData;->m_roi_x:I

    int-to-float v14, v14

    const/high16 v19, 0x3f000000    # 0.5f

    iget v4, v13, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveHairDyeFilter$HairDyeData;->m_roi_width:I

    int-to-float v4, v4

    mul-float v20, v4, v19

    add-float v20, v20, v14

    iget v14, v13, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveHairDyeFilter$HairDyeData;->m_analyzing_frame_width:I

    int-to-float v14, v14

    div-float v32, v20, v14

    move/from16 v39, v9

    iget v9, v13, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveHairDyeFilter$HairDyeData;->m_roi_y:I

    int-to-float v9, v9

    iget v15, v13, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveHairDyeFilter$HairDyeData;->m_roi_height:I

    int-to-float v15, v15

    mul-float v20, v15, v19

    add-float v20, v20, v9

    iget v9, v13, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveHairDyeFilter$HairDyeData;->m_analyzing_frame_height:I

    int-to-float v9, v9

    div-float v33, v20, v9

    iget-object v13, v0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->h0:Ljava/nio/FloatBuffer;

    move-object/from16 v31, v11

    move/from16 v34, v4

    move-object/from16 v27, v5

    move/from16 v37, v9

    move-object/from16 v29, v11

    move/from16 v30, v12

    move-object/from16 v38, v13

    move/from16 v36, v14

    move/from16 v35, v15

    invoke-virtual/range {v27 .. v38}, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter$d;->j(ILjava/nio/FloatBuffer;ILjava/nio/FloatBuffer;FFFFFFLjava/nio/FloatBuffer;)V

    invoke-virtual/range {v27 .. v27}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->destroy()V

    invoke-virtual {v0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getOutputWidth()I

    move-result v22

    invoke-virtual {v0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getOutputHeight()I

    move-result v23

    const/16 v24, 0x1908

    const/16 v25, 0x1401

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-static/range {v20 .. v26}, Landroid/opengl/GLES20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    aget v3, v3, v39

    invoke-static {v10, v3}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    iget-object v3, v0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->w0:Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter$c;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->q0:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v2

    goto :goto_7

    :catchall_2
    move-exception v0

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v0

    :cond_9
    move/from16 v39, v9

    const/high16 v19, 0x3f000000    # 0.5f

    :goto_7
    invoke-static {v6, v6, v6, v6}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    invoke-static/range {v18 .. v18}, Landroid/opengl/GLES20;->glClear(I)V

    invoke-virtual {v0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v2

    invoke-static {v2}, Landroid/opengl/GLES20;->glUseProgram(I)V

    invoke-static/range {v16 .. v16}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    iget-object v2, v0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->f0:[I

    aget v2, v2, v17

    const/16 v3, 0xde1

    invoke-static {v3, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget-object v2, v0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->k0:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveHairDyeFilter$HairDyeData;

    iget v3, v2, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveHairDyeFilter$HairDyeData;->m_analyzing_frame_width:I

    iget v4, v2, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveHairDyeFilter$HairDyeData;->m_analyzing_frame_height:I

    iget v5, v2, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveHairDyeFilter$HairDyeData;->m_roi_x:I

    int-to-float v5, v5

    iget v6, v2, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveHairDyeFilter$HairDyeData;->m_roi_width:I

    int-to-float v6, v6

    mul-float v6, v6, v19

    add-float/2addr v6, v5

    int-to-float v3, v3

    div-float/2addr v6, v3

    iget v5, v2, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveHairDyeFilter$HairDyeData;->m_roi_y:I

    int-to-float v5, v5

    iget v2, v2, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveHairDyeFilter$HairDyeData;->m_roi_height:I

    int-to-float v2, v2

    mul-float v2, v2, v19

    add-float/2addr v2, v5

    int-to-float v4, v4

    div-float/2addr v2, v4

    iget v5, v0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->E:I

    invoke-static {v5, v6}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget v5, v0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->F:I

    invoke-static {v5, v2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget v2, v0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->G:I

    iget-object v5, v0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->k0:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveHairDyeFilter$HairDyeData;

    iget v5, v5, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveHairDyeFilter$HairDyeData;->m_roi_width:I

    int-to-float v5, v5

    invoke-static {v2, v5}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget v2, v0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->H:I

    iget-object v5, v0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->k0:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveHairDyeFilter$HairDyeData;

    iget v5, v5, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveHairDyeFilter$HairDyeData;->m_roi_height:I

    int-to-float v5, v5

    invoke-static {v2, v5}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget v2, v0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->I:I

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget v2, v0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->J:I

    invoke-static {v2, v4}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    const v2, 0x84c6

    invoke-static {v2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    iget v2, v0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->B:I

    const/16 v3, 0xde1

    invoke-static {v3, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget v2, v0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->w:I

    const/4 v3, 0x6

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    iget v2, v0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->s:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget-object v2, v0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->z0:Ljava/util/ArrayList;

    iget v3, v0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->s:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, v0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->U:Ljava/nio/ByteBuffer;

    move/from16 v3, v39

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget v9, v0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->s:I

    const/4 v13, 0x0

    iget-object v14, v0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->U:Ljava/nio/ByteBuffer;

    const/4 v10, 0x2

    const/16 v11, 0x1406

    const/4 v12, 0x0

    invoke-static/range {v9 .. v14}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    goto :goto_8

    :cond_a
    invoke-virtual {v0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v2

    invoke-static {v2}, Landroid/opengl/GLES20;->glUseProgram(I)V

    invoke-static/range {v16 .. v16}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    iget v2, v0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->x:I

    const/16 v3, 0xde1

    invoke-static {v3, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    :goto_8
    iget v2, v0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->t:I

    const/4 v3, 0x5

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    iget v2, v0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->p:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget-object v2, v0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->z0:Ljava/util/ArrayList;

    iget v3, v0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->p:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, v0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->R:Ljava/nio/ByteBuffer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget v9, v0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->p:I

    const/4 v13, 0x0

    iget-object v14, v0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->R:Ljava/nio/ByteBuffer;

    const/4 v10, 0x2

    const/16 v11, 0x1406

    const/4 v12, 0x0

    invoke-static/range {v9 .. v14}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    :goto_9
    const/4 v9, 0x0

    goto :goto_a

    :cond_b
    invoke-virtual {v0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v2

    invoke-static {v2}, Landroid/opengl/GLES20;->glUseProgram(I)V

    goto :goto_9

    :goto_a
    invoke-virtual {v7, v9}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget v2, v0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->d:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x2

    const/16 v4, 0x1406

    invoke-static/range {v2 .. v7}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget v2, v0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->d:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    invoke-virtual {v8, v9}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget v2, v0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->f:I

    move-object v7, v8

    invoke-static/range {v2 .. v7}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget v2, v0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->f:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const/4 v2, -0x1

    if-eq v1, v2, :cond_c

    const v2, 0x84c0

    invoke-static {v2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const/16 v3, 0xde1

    invoke-static {v3, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget v1, v0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->e:I

    const/4 v3, 0x0

    invoke-static {v1, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    goto :goto_b

    :cond_c
    const/4 v3, 0x0

    :goto_b
    invoke-virtual {v0}, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->d()V

    const/4 v1, 0x4

    const/4 v2, 0x5

    invoke-static {v2, v3, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    iget v1, v0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->d:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    iget v1, v0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->f:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    iget-object v0, v0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->z0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    goto :goto_c

    :cond_d
    const/16 v3, 0xde1

    const/4 v9, 0x0

    invoke-static {v3, v9}, Landroid/opengl/GLES20;->glBindTexture(II)V

    return-void

    :catchall_3
    move-exception v0

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    throw v0
.end method

.method public final onInit()V
    .locals 3

    invoke-super {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->onInit()V

    iget-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->d0:Lcom/cyberlink/clgpuimage/GPUImageFilter;

    invoke-virtual {v0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->init()V

    iget-boolean v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->K:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->c0:Lcom/cyberlink/clgpuimage/cosmetic/al;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networktaskmanager/makeup/b;->a:Ljava/util/List;

    check-cast v1, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;->r(I)Lcom/perfectcorp/thirdparty/com/google/common/collect/bz;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cyberlink/clgpuimage/GPUImageFilter;

    invoke-virtual {v2}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->init()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/cyberlink/clgpuimage/cosmetic/am;->b()V

    :cond_1
    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v1, "inputHairTextureCoordinate"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->s:I

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v1, "inputHairTexture"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->w:I

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v1, "hairCenterX"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->E:I

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v1, "hairCenterY"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->F:I

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v1, "hairBackgroundImageWidth"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->I:I

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v1, "hairBackgroundImageHeight"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->J:I

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v1, "hairWidth"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->G:I

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v1, "hairHeight"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->H:I

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v1, "inputMaskTextureCoordinate"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->p:I

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v1, "inputMaskTexture"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->t:I

    :cond_2
    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v1, "inputAnimatedTextureCoordinate"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->q:I

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v1, "inputAnimatedTexture"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->u:I

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v1, "inputStaticTextureCoordinate"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->r:I

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v1, "inputStaticTexture"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->v:I

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v1, "animatedTextureColorIsPremultipliedAlpha"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->C:I

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v1, "staticTextureColorIsPremultipliedAlpha"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->D:I

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v1, 0x1

    invoke-static {v1, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/cyberlink/clgpuimage/OpenGlUtils;->f(Landroid/graphics/Bitmap;I)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->A:I

    return-void
.end method

.method public final onOutputSizeChanged(II)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v4, p1

    move/from16 v5, p2

    iput v4, v0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->g:I

    iput v5, v0, Lcom/cyberlink/clgpuimage/GPUImageFilter;->h:I

    iget-object v1, v0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->d0:Lcom/cyberlink/clgpuimage/GPUImageFilter;

    iput v4, v1, Lcom/cyberlink/clgpuimage/GPUImageFilter;->g:I

    iput v5, v1, Lcom/cyberlink/clgpuimage/GPUImageFilter;->h:I

    iget-boolean v1, v0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->M:Z

    const/4 v10, 0x1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->b0:Lcom/cyberlink/clgpuimage/util/TextureAlignmentUtil$AlignMode;

    invoke-virtual {v0, v10, v1}, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->k(ILcom/cyberlink/clgpuimage/util/TextureAlignmentUtil$AlignMode;)V

    :cond_0
    iget-boolean v1, v0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->K:Z

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->e0:[I

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->r()V

    :cond_1
    const/4 v11, 0x2

    new-array v1, v11, [I

    iput-object v1, v0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->e0:[I

    new-array v1, v11, [I

    iput-object v1, v0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->f0:[I

    new-array v12, v10, [I

    const v1, 0x8ca6

    const/4 v13, 0x0

    invoke-static {v1, v12, v13}, Landroid/opengl/GLES20;->glGetIntegerv(I[II)V

    move v14, v13

    :goto_0
    if-ge v14, v11, :cond_2

    iget-object v1, v0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->e0:[I

    invoke-static {v10, v1, v14}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    iget-object v1, v0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->f0:[I

    invoke-static {v10, v1, v14}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    iget-object v1, v0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->f0:[I

    aget v1, v1, v14

    const/16 v15, 0xde1

    invoke-static {v15, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v8, 0x1401

    const/4 v9, 0x0

    const/16 v1, 0xde1

    const/4 v2, 0x0

    const/16 v3, 0x1908

    const/4 v6, 0x0

    const/16 v7, 0x1908

    invoke-static/range {v1 .. v9}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    const/16 v1, 0x2800

    const v2, 0x46180400    # 9729.0f

    invoke-static {v15, v1, v2}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v1, 0x2801

    invoke-static {v15, v1, v2}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v1, 0x2802

    const v2, 0x47012f00    # 33071.0f

    invoke-static {v15, v1, v2}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v1, 0x2803

    invoke-static {v15, v1, v2}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    iget-object v1, v0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->e0:[I

    aget v1, v1, v14

    const v2, 0x8d40

    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    iget-object v1, v0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->f0:[I

    aget v1, v1, v14

    const v3, 0x8ce0

    invoke-static {v2, v3, v15, v1, v13}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    aget v1, v12, v13

    invoke-static {v15, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    invoke-static {v2, v13}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    add-int/lit8 v14, v14, 0x1

    move/from16 v4, p1

    move/from16 v5, p2

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final p(IILcom/cyberlink/clgpuimage/util/TextureAlignmentUtil$AlignMode;Ljava/nio/ByteBuffer;)V
    .locals 8

    if-nez p4, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->O:Z

    new-instance v1, Lcom/cyberlink/clgpuimage/cosmetic/ah;

    const/4 v7, 0x1

    move-object v2, p0

    move v5, p1

    move v4, p2

    move-object v6, p3

    move-object v3, p4

    invoke-direct/range {v1 .. v7}, Lcom/cyberlink/clgpuimage/cosmetic/ah;-><init>(Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;Ljava/nio/Buffer;IILcom/cyberlink/clgpuimage/util/TextureAlignmentUtil$AlignMode;Z)V

    invoke-virtual {v2, v1}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->e(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final q(I)V
    .locals 1

    iget-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->r0:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->s0:Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter$a;

    iput p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter$a;->a:I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final r()V
    .locals 4

    iget-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->f0:[I

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    array-length v3, v0

    invoke-static {v3, v0, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    iput-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->f0:[I

    :cond_0
    iget-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->e0:[I

    if-eqz v0, :cond_1

    array-length v3, v0

    invoke-static {v3, v0, v2}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    iput-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/GPUImageBackgroundFilter;->e0:[I

    :cond_1
    return-void
.end method
