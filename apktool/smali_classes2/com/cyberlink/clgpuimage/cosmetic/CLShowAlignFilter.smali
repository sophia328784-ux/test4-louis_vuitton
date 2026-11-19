.class public final Lcom/cyberlink/clgpuimage/cosmetic/CLShowAlignFilter;
.super Lcom/cyberlink/clgpuimage/GPUImageFilter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyberlink/clgpuimage/cosmetic/CLShowAlignFilter$ShowAlignData;
    }
.end annotation


# static fields
.field public static final C:[F


# instance fields
.field public A:I

.field public B:I

.field public final o:Ljava/lang/Object;

.field public p:I

.field public final q:[Lcom/cyberlink/clgpuimage/cosmetic/CLShowAlignFilter$ShowAlignData;

.field public r:[B

.field public s:I

.field public t:I

.field public u:I

.field public v:I

.field public w:I

.field public final x:Ljava/nio/FloatBuffer;

.field public y:I

.field public z:Landroid/graphics/PointF;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/cyberlink/clgpuimage/cosmetic/CLShowAlignFilter;->C:[F

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

.method public constructor <init>(I)V
    .locals 3

    const-string p1, "attribute vec4 position;attribute vec4 inputTextureCoordinate;attribute vec4 SceneTextureCoordinate; varying vec2 textureCoordinate;varying vec2 scene_template_texture_coordinate; void main(){    gl_Position = position;    textureCoordinate = inputTextureCoordinate.xy;    scene_template_texture_coordinate = SceneTextureCoordinate.xy;}"

    const-string v0, "\n#ifdef GL_FRAGMENT_PRECISION_HIGH\nprecision highp float;\n#else\nprecision mediump float;\n#endif\nvarying vec2 textureCoordinate;varying vec2 scene_template_texture_coordinate; uniform sampler2D inputImageTexture;uniform sampler2D show_align_texture;vec3 blend_color = vec3(0.0, 0.0, 1.0);uniform int enable_replay_brush;uniform vec4 replay_brush_range;uniform int show_align;\n void main(){     vec4 source = texture2D(inputImageTexture, textureCoordinate);     vec4 texture_value = texture2D(show_align_texture, scene_template_texture_coordinate);     vec3 dst_value = mix(source.rgb, blend_color, texture_value.a);     if (show_align == 0)     {         dst_value = source.rgb;     }     if (enable_replay_brush > 0)     {         if (textureCoordinate.x >= replay_brush_range.x && textureCoordinate.y >= replay_brush_range.y &&             textureCoordinate.x <= replay_brush_range.z && textureCoordinate.y <= replay_brush_range.w)         {             dst_value = vec3(0.0, 0.0, 0.0);         }     }     gl_FragColor = vec4(dst_value, 1.0);}"

    invoke-direct {p0, p1, v0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLShowAlignFilter;->o:Ljava/lang/Object;

    const/16 p1, 0x5a

    iput p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLShowAlignFilter;->p:I

    const/4 p1, -0x1

    iput p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLShowAlignFilter;->u:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLShowAlignFilter;->v:I

    const/4 v0, 0x3

    new-array v1, v0, [Lcom/cyberlink/clgpuimage/cosmetic/CLShowAlignFilter$ShowAlignData;

    iput-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLShowAlignFilter;->q:[Lcom/cyberlink/clgpuimage/cosmetic/CLShowAlignFilter$ShowAlignData;

    :goto_0
    if-ge p1, v0, :cond_0

    iget-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLShowAlignFilter;->q:[Lcom/cyberlink/clgpuimage/cosmetic/CLShowAlignFilter$ShowAlignData;

    new-instance v2, Lcom/cyberlink/clgpuimage/cosmetic/CLShowAlignFilter$ShowAlignData;

    invoke-direct {v2}, Lcom/cyberlink/clgpuimage/cosmetic/CLShowAlignFilter$ShowAlignData;-><init>()V

    aput-object v2, v1, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    const/16 p1, 0x20

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-static {p1}, Lfc;->v(Ljava/nio/ByteBuffer;)Ljava/nio/FloatBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLShowAlignFilter;->x:Ljava/nio/FloatBuffer;

    return-void
.end method


# virtual methods
.method public final d()V
    .locals 13

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLShowAlignFilter;->u:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    const v0, 0x84c1

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const/16 v0, 0xde1

    iget v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLShowAlignFilter;->u:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLShowAlignFilter;->v:I

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    :cond_0
    iget-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLShowAlignFilter;->x:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    iget v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLShowAlignFilter;->p:I

    add-int/lit16 v3, v1, 0x10e

    rem-int/lit16 v3, v3, 0x168

    const/16 v4, 0x8

    const/4 v5, 0x7

    const/4 v6, 0x6

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x5

    const/4 v10, 0x4

    const/4 v11, 0x0

    sget-object v12, Lcom/cyberlink/clgpuimage/cosmetic/CLShowAlignFilter;->C:[F

    if-ne v1, v3, :cond_1

    new-array v1, v4, [F

    aget v3, v12, v10

    aput v3, v1, v11

    aget v3, v12, v9

    aput v3, v1, v2

    aget v3, v12, v11

    aput v3, v1, v8

    aget v2, v12, v2

    aput v2, v1, v7

    aget v2, v12, v6

    aput v2, v1, v10

    aget v2, v12, v5

    aput v2, v1, v9

    aget v2, v12, v8

    aput v2, v1, v6

    aget v2, v12, v7

    aput v2, v1, v5

    goto :goto_0

    :cond_1
    add-int/lit16 v3, v1, 0xb4

    rem-int/lit16 v3, v3, 0x168

    if-ne v1, v3, :cond_2

    new-array v1, v4, [F

    aget v3, v12, v6

    aput v3, v1, v11

    aget v3, v12, v5

    aput v3, v1, v2

    aget v3, v12, v10

    aput v3, v1, v8

    aget v3, v12, v9

    aput v3, v1, v7

    aget v3, v12, v8

    aput v3, v1, v10

    aget v3, v12, v7

    aput v3, v1, v9

    aget v3, v12, v11

    aput v3, v1, v6

    aget v2, v12, v2

    aput v2, v1, v5

    goto :goto_0

    :cond_2
    add-int/lit8 v3, v1, 0x5a

    rem-int/lit16 v3, v3, 0x168

    if-ne v1, v3, :cond_3

    new-array v1, v4, [F

    aget v3, v12, v8

    aput v3, v1, v11

    aget v3, v12, v7

    aput v3, v1, v2

    aget v3, v12, v6

    aput v3, v1, v8

    aget v3, v12, v5

    aput v3, v1, v7

    aget v3, v12, v11

    aput v3, v1, v10

    aget v2, v12, v2

    aput v2, v1, v9

    aget v2, v12, v10

    aput v2, v1, v6

    aget v2, v12, v9

    aput v2, v1, v5

    goto :goto_0

    :cond_3
    new-array v1, v4, [F

    aget v3, v12, v11

    aput v3, v1, v11

    aget v3, v12, v2

    aput v3, v1, v2

    aget v2, v12, v8

    aput v2, v1, v8

    aget v2, v12, v7

    aput v2, v1, v7

    aget v2, v12, v10

    aput v2, v1, v10

    aget v2, v12, v9

    aput v2, v1, v9

    aget v2, v12, v6

    aput v2, v1, v6

    aget v2, v12, v5

    aput v2, v1, v5

    :goto_0
    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v11}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLShowAlignFilter;->y:I

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLShowAlignFilter;->x:Ljava/nio/FloatBuffer;

    const/4 v3, 0x2

    const/16 v4, 0x1406

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLShowAlignFilter;->y:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLShowAlignFilter;->w:I

    invoke-static {v0, v11}, Landroid/opengl/GLES20;->glUniform1i(II)V

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLShowAlignFilter;->A:I

    invoke-static {v0, v11}, Landroid/opengl/GLES20;->glUniform1i(II)V

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLShowAlignFilter;->B:I

    iget-object p0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLShowAlignFilter;->z:Landroid/graphics/PointF;

    iget v1, p0, Landroid/graphics/PointF;->x:F

    const v2, 0x3ccccccd    # 0.025f

    sub-float v3, v1, v2

    iget p0, p0, Landroid/graphics/PointF;->y:F

    sub-float v4, p0, v2

    add-float/2addr v1, v2

    const v2, 0x3c4ccccd    # 0.0125f

    add-float/2addr p0, v2

    invoke-static {v0, v3, v4, v1, p0}, Landroid/opengl/GLES20;->glUniform4f(IFFFF)V

    return-void
.end method

.method public final j([Lcom/cyberlink/clgpuimage/cosmetic/CLShowAlignFilter$ShowAlignData;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    array-length v2, v1

    iget-object v3, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLShowAlignFilter;->q:[Lcom/cyberlink/clgpuimage/cosmetic/CLShowAlignFilter$ShowAlignData;

    array-length v3, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_0

    iget-object v5, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLShowAlignFilter;->q:[Lcom/cyberlink/clgpuimage/cosmetic/CLShowAlignFilter$ShowAlignData;

    aget-object v5, v5, v4

    aget-object v6, v1, v4

    invoke-virtual {v5, v6}, Lcom/cyberlink/clgpuimage/cosmetic/CLShowAlignFilter$ShowAlignData;->Copy(Lcom/cyberlink/clgpuimage/cosmetic/CLShowAlignFilter$ShowAlignData;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    aget-object v4, v1, v3

    iget v5, v4, Lcom/cyberlink/clgpuimage/cosmetic/CLShowAlignFilter$ShowAlignData;->frame_width:I

    iget v6, v4, Lcom/cyberlink/clgpuimage/cosmetic/CLShowAlignFilter$ShowAlignData;->frame_height:I

    iget v4, v4, Lcom/cyberlink/clgpuimage/cosmetic/CLShowAlignFilter$ShowAlignData;->rotation:I

    iget-object v7, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLShowAlignFilter;->o:Ljava/lang/Object;

    monitor-enter v7

    :try_start_0
    iget-object v8, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLShowAlignFilter;->r:[B

    if-eqz v8, :cond_2

    iget v9, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLShowAlignFilter;->s:I

    if-ne v9, v5, :cond_2

    iget v9, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLShowAlignFilter;->t:I

    if-eq v9, v6, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v8, v3}, Ljava/util/Arrays;->fill([BB)V

    goto :goto_2

    :catchall_0
    move-exception v0

    goto/16 :goto_b

    :cond_2
    :goto_1
    mul-int v8, v5, v6

    new-array v8, v8, [B

    iput-object v8, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLShowAlignFilter;->r:[B

    iput v5, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLShowAlignFilter;->s:I

    iput v6, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLShowAlignFilter;->t:I

    :goto_2
    move v5, v3

    :goto_3
    if-ge v5, v2, :cond_a

    aget-object v6, v1, v5

    iget-boolean v8, v6, Lcom/cyberlink/clgpuimage/cosmetic/CLShowAlignFilter$ShowAlignData;->m_is_data_valid:Z

    if-eqz v8, :cond_9

    iget-object v8, v6, Lcom/cyberlink/clgpuimage/cosmetic/CLShowAlignFilter$ShowAlignData;->m_face_align_data:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v9, v8, [F

    new-array v10, v8, [F

    iget v11, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLShowAlignFilter;->p:I

    add-int/lit8 v12, v11, 0x5a

    rem-int/lit16 v12, v12, 0x168

    const/high16 v13, 0x3f800000    # 1.0f

    if-ne v4, v12, :cond_3

    move v11, v3

    :goto_4
    if-ge v11, v8, :cond_6

    iget-object v12, v6, Lcom/cyberlink/clgpuimage/cosmetic/CLShowAlignFilter$ShowAlignData;->m_face_align_data:Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/PointF;

    iget v14, v12, Landroid/graphics/PointF;->y:F

    aput v14, v9, v11

    iget v12, v12, Landroid/graphics/PointF;->x:F

    sub-float v12, v13, v12

    aput v12, v10, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    :cond_3
    add-int/lit16 v12, v11, 0xb4

    rem-int/lit16 v12, v12, 0x168

    if-ne v4, v12, :cond_4

    move v11, v3

    :goto_5
    if-ge v11, v8, :cond_6

    iget-object v12, v6, Lcom/cyberlink/clgpuimage/cosmetic/CLShowAlignFilter$ShowAlignData;->m_face_align_data:Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/PointF;

    iget v14, v12, Landroid/graphics/PointF;->x:F

    sub-float v14, v13, v14

    aput v14, v9, v11

    iget v12, v12, Landroid/graphics/PointF;->y:F

    sub-float v12, v13, v12

    aput v12, v10, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    :cond_4
    add-int/lit16 v11, v11, 0x10e

    rem-int/lit16 v11, v11, 0x168

    if-ne v4, v11, :cond_5

    move v11, v3

    :goto_6
    if-ge v11, v8, :cond_6

    iget-object v12, v6, Lcom/cyberlink/clgpuimage/cosmetic/CLShowAlignFilter$ShowAlignData;->m_face_align_data:Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/PointF;

    iget v14, v12, Landroid/graphics/PointF;->y:F

    sub-float v14, v13, v14

    aput v14, v9, v11

    iget v12, v12, Landroid/graphics/PointF;->x:F

    aput v12, v10, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    :cond_5
    move v11, v3

    :goto_7
    if-ge v11, v8, :cond_6

    iget-object v12, v6, Lcom/cyberlink/clgpuimage/cosmetic/CLShowAlignFilter$ShowAlignData;->m_face_align_data:Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/PointF;

    iget v13, v12, Landroid/graphics/PointF;->x:F

    aput v13, v9, v11

    iget v12, v12, Landroid/graphics/PointF;->y:F

    aput v12, v10, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_7

    :cond_6
    move v6, v3

    :goto_8
    if-ge v6, v8, :cond_9

    aget v11, v9, v6

    iget v12, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLShowAlignFilter;->s:I

    add-int/lit8 v12, v12, -0x1

    int-to-float v12, v12

    mul-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    invoke-static {v11, v3}, Ljava/lang/Math;->max(II)I

    move-result v11

    iget v12, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLShowAlignFilter;->s:I

    add-int/lit8 v12, v12, -0x1

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v11

    aget v12, v10, v6

    iget v13, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLShowAlignFilter;->t:I

    add-int/lit8 v13, v13, -0x1

    int-to-float v13, v13

    mul-float/2addr v12, v13

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v12

    invoke-static {v12, v3}, Ljava/lang/Math;->max(II)I

    move-result v12

    iget v13, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLShowAlignFilter;->t:I

    add-int/lit8 v13, v13, -0x1

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v12

    add-int/lit8 v13, v12, -0x1

    invoke-static {v13, v3}, Ljava/lang/Math;->max(II)I

    move-result v13

    add-int/lit8 v12, v12, 0x1

    iget v14, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLShowAlignFilter;->t:I

    add-int/lit8 v14, v14, -0x1

    invoke-static {v12, v14}, Ljava/lang/Math;->min(II)I

    move-result v12

    add-int/lit8 v14, v11, -0x2

    invoke-static {v14, v3}, Ljava/lang/Math;->max(II)I

    move-result v14

    add-int/lit8 v11, v11, 0x2

    iget v15, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLShowAlignFilter;->s:I

    add-int/lit8 v15, v15, -0x1

    invoke-static {v11, v15}, Ljava/lang/Math;->min(II)I

    move-result v11

    :goto_9
    if-gt v13, v12, :cond_8

    move v15, v14

    :goto_a
    if-gt v15, v11, :cond_7

    iget-object v3, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLShowAlignFilter;->r:[B

    iget v1, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLShowAlignFilter;->s:I

    mul-int/2addr v1, v13

    add-int/2addr v1, v15

    const/16 v16, -0x1

    aput-byte v16, v3, v1

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v1, p1

    const/4 v3, 0x0

    goto :goto_a

    :cond_7
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v1, p1

    const/4 v3, 0x0

    goto :goto_9

    :cond_8
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v1, p1

    const/4 v3, 0x0

    goto :goto_8

    :cond_9
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v1, p1

    const/4 v3, 0x0

    goto/16 :goto_3

    :cond_a
    monitor-exit v7

    return-void

    :goto_b
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final onDestroy()V
    .locals 4

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLShowAlignFilter;->u:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    filled-new-array {v0}, [I

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v3, v0, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    iput v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLShowAlignFilter;->u:I

    :cond_0
    return-void
.end method

.method public final onInit()V
    .locals 5

    invoke-super {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->onInit()V

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

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLShowAlignFilter;->u:I

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v1, "show_align_texture"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLShowAlignFilter;->v:I

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v1, "show_align"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLShowAlignFilter;->w:I

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v1, "SceneTextureCoordinate"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLShowAlignFilter;->y:I

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v1, "enable_replay_brush"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLShowAlignFilter;->A:I

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v1, "replay_brush_range"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLShowAlignFilter;->B:I

    new-instance v0, Landroid/graphics/PointF;

    const/high16 v1, -0x40800000    # -1.0f

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLShowAlignFilter;->z:Landroid/graphics/PointF;

    return-void
.end method
