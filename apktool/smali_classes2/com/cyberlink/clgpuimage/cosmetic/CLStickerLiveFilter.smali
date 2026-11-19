.class public final Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter;
.super Lcom/cyberlink/clgpuimage/GPUImageFilter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter$StickerData;
    }
.end annotation


# static fields
.field public static final R:[F


# instance fields
.field public final A:[I

.field public final B:[I

.field public C:Z

.field public final D:[I

.field public final E:[I

.field public final F:[I

.field public final G:[I

.field public final H:[I

.field public final I:[I

.field public final J:[I

.field public K:I

.field public L:I

.field public M:I

.field public final N:[I

.field public final O:[I

.field public final P:[I

.field public final Q:[I

.field public final o:Ljava/lang/Object;

.field public final p:Ljava/lang/Object;

.field public final q:Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter$StickerData;

.field public final r:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveDynamicRangeMetadata;

.field public final s:Ljava/nio/FloatBuffer;

.field public final t:Ljava/nio/FloatBuffer;

.field public u:I

.field public v:I

.field public final w:[I

.field public final x:[I

.field public final y:[I

.field public final z:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter;->R:[F

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
    .locals 3

    const-string v0, "attribute vec4 position;attribute vec4 inputTextureCoordinate;attribute vec4 inputStickerTemplateTextureCoordinate;attribute vec4 inputStickerSceneTemplateTextureCoordinate;varying vec2 textureCoordinate;varying vec2 template_texture_coordinate;varying vec2 scene_template_texture_coordinate;void main(){    gl_Position = position;    textureCoordinate = inputTextureCoordinate.xy;    template_texture_coordinate = inputStickerTemplateTextureCoordinate.xy;    scene_template_texture_coordinate = inputStickerSceneTemplateTextureCoordinate.xy;}"

    const-string v1, "\n#ifdef GL_FRAGMENT_PRECISION_HIGH\nprecision highp float;\n#else\nprecision mediump float;\n#endif\nvarying vec2 textureCoordinate;varying vec2 template_texture_coordinate;varying vec2 scene_template_texture_coordinate;uniform vec2 frame_face_sticker_scale_ratio_0;uniform vec2 frame_face_sticker_scale_ratio_1;uniform vec2 frame_face_sticker_scale_ratio_2;uniform vec2 frame_face_sticker_scale_ratio_3;uniform mat3 face_sticker_homography_0;uniform mat3 face_sticker_homography_1;uniform mat3 face_sticker_homography_2;uniform mat3 face_sticker_homography_3;uniform sampler2D inputImageTexture;uniform sampler2D sticker_template_texture;uniform sampler2D face_sticker_texture_0;uniform sampler2D face_sticker_texture_1;uniform sampler2D face_sticker_texture_2;uniform sampler2D face_sticker_texture_3;uniform sampler2D scene_sticker_texture_0;uniform sampler2D scene_sticker_texture_1;uniform float face_sticker_displayed_0;uniform float face_sticker_displayed_1;uniform float face_sticker_displayed_2;uniform float face_sticker_displayed_3;uniform float scene_sticker_displayed_0;uniform float scene_sticker_displayed_1;uniform vec3 min_rgb;uniform vec3 max_rgb;uniform vec2 scene_sticker_scale_ratio_0;uniform vec2 scene_sticker_scale_ratio_1;uniform vec2 scene_sticker_offset_0;uniform vec2 scene_sticker_offset_1;uniform vec2 scene_sticker_stretch_start_0;uniform vec2 scene_sticker_stretch_start_1;uniform vec2 scene_sticker_stretch_end_0;uniform vec2 scene_sticker_stretch_end_1;uniform float aspect_ratio_multiplier_frame_over_scene_0;uniform float aspect_ratio_multiplier_frame_over_scene_1;float GetNewPositionForStretch(float old_position, float start, float end, float aspect_ratio_multiplier){    float new_position = old_position;    if (start == 0.0 && end == 1.0)    {        return new_position;    }    if (old_position <= start / aspect_ratio_multiplier)    {        new_position = old_position * aspect_ratio_multiplier;    }    else if (old_position >= 1.0 - (1.0 - end) / aspect_ratio_multiplier)    {        float range_y = (1.0 - end) / aspect_ratio_multiplier;        float offset_y = old_position - (1.0 - range_y);        float offset_y_ratio = offset_y / range_y;        new_position = end + (1.0 - end) * offset_y_ratio;    }    else    {        float range_y = 1.0 - (start + (1.0 - end)) / aspect_ratio_multiplier;        float offset_y = old_position - start / aspect_ratio_multiplier;        float offset_y_ratio = offset_y / range_y;        new_position = start + offset_y_ratio * (end - start);    }    return new_position;}void main(){    vec4 source = texture2D(inputImageTexture, textureCoordinate);    vec2 scene_sticker_texture_coordinate_0 = (scene_template_texture_coordinate - scene_sticker_offset_0) / scene_sticker_scale_ratio_0;    vec2 scene_sticker_texture_coordinate_1 = (scene_template_texture_coordinate - scene_sticker_offset_1) / scene_sticker_scale_ratio_1;    scene_sticker_texture_coordinate_0.y = GetNewPositionForStretch(scene_sticker_texture_coordinate_0.y, scene_sticker_stretch_start_0.y, scene_sticker_stretch_end_0.y, aspect_ratio_multiplier_frame_over_scene_0);    scene_sticker_texture_coordinate_1.y = GetNewPositionForStretch(scene_sticker_texture_coordinate_1.y, scene_sticker_stretch_start_1.y, scene_sticker_stretch_end_1.y, aspect_ratio_multiplier_frame_over_scene_1);    vec4 scene_sticker_template_0 = texture2D(scene_sticker_texture_0, scene_sticker_texture_coordinate_0);    vec4 scene_sticker_template_1 = texture2D(scene_sticker_texture_1, scene_sticker_texture_coordinate_1);    bool condition_scene_0 = (any(lessThan(scene_sticker_texture_coordinate_0, vec2(0.0))) || any(greaterThan(scene_sticker_texture_coordinate_0, vec2(1.0))));    bool condition_scene_1 = (any(lessThan(scene_sticker_texture_coordinate_1, vec2(0.0))) || any(greaterThan(scene_sticker_texture_coordinate_1, vec2(1.0))));    vec3 temp_coordinate_0 = vec3(template_texture_coordinate, 1.0) * face_sticker_homography_0;    vec2 warp_face_sticker_texture_coordinate_0 = vec2(temp_coordinate_0.x / temp_coordinate_0.z, temp_coordinate_0.y / temp_coordinate_0.z) * frame_face_sticker_scale_ratio_0;    vec3 temp_coordinate_1 = vec3(template_texture_coordinate, 1.0) * face_sticker_homography_1;    vec2 warp_face_sticker_texture_coordinate_1 = vec2(temp_coordinate_1.x / temp_coordinate_1.z, temp_coordinate_1.y / temp_coordinate_1.z) * frame_face_sticker_scale_ratio_1;    vec3 temp_coordinate_2 = vec3(template_texture_coordinate, 1.0) * face_sticker_homography_2;    vec2 warp_face_sticker_texture_coordinate_2 = vec2(temp_coordinate_2.x / temp_coordinate_2.z, temp_coordinate_2.y / temp_coordinate_2.z) * frame_face_sticker_scale_ratio_2;    vec3 temp_coordinate_3 = vec3(template_texture_coordinate, 1.0) * face_sticker_homography_3;    vec2 warp_face_sticker_texture_coordinate_3 = vec2(temp_coordinate_3.x / temp_coordinate_3.z, temp_coordinate_3.y / temp_coordinate_3.z) * frame_face_sticker_scale_ratio_3;    bool condition_0 = (any(lessThan(warp_face_sticker_texture_coordinate_0, vec2(0.0))) || any(greaterThan(warp_face_sticker_texture_coordinate_0, vec2(1.0))));    bool condition_1 = (any(lessThan(warp_face_sticker_texture_coordinate_1, vec2(0.0))) || any(greaterThan(warp_face_sticker_texture_coordinate_1, vec2(1.0))));    bool condition_2 = (any(lessThan(warp_face_sticker_texture_coordinate_2, vec2(0.0))) || any(greaterThan(warp_face_sticker_texture_coordinate_2, vec2(1.0))));    bool condition_3 = (any(lessThan(warp_face_sticker_texture_coordinate_3, vec2(0.0))) || any(greaterThan(warp_face_sticker_texture_coordinate_3, vec2(1.0))));    vec4 face_sticker_0 = texture2D(face_sticker_texture_0, warp_face_sticker_texture_coordinate_0);    vec4 face_sticker_1 = texture2D(face_sticker_texture_1, warp_face_sticker_texture_coordinate_1);    vec4 face_sticker_2 = texture2D(face_sticker_texture_2, warp_face_sticker_texture_coordinate_2);    vec4 face_sticker_3 = texture2D(face_sticker_texture_3, warp_face_sticker_texture_coordinate_3);    if (condition_0)    {        face_sticker_0.a = 0.0;    }    if (condition_1)    {        face_sticker_1.a = 0.0;    }    if (condition_2)    {        face_sticker_2.a = 0.0;    }    if (condition_3)    {        face_sticker_3.a = 0.0;    }    if (condition_scene_0)    {        scene_sticker_template_0.a = 0.0;    }    if (condition_scene_1)    {        scene_sticker_template_1.a = 0.0;    }    vec4 result = mix(source, face_sticker_0, face_sticker_0.a * face_sticker_displayed_0);    result = mix(result, face_sticker_1, face_sticker_1.a * face_sticker_displayed_1);    result = mix(result, face_sticker_2, face_sticker_2.a * face_sticker_displayed_2);    result = mix(result, face_sticker_3, face_sticker_3.a * face_sticker_displayed_3);    result = mix(result, scene_sticker_template_0, scene_sticker_template_0.a * scene_sticker_displayed_0);    result = mix(result, scene_sticker_template_1, scene_sticker_template_1.a * scene_sticker_displayed_1);    gl_FragColor = vec4(result.rgb, 1.0);}"

    invoke-direct {p0, v0, v1}, Lcom/cyberlink/clgpuimage/GPUImageFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter;->o:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter;->p:Ljava/lang/Object;

    new-instance v0, Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter$StickerData;

    invoke-direct {v0}, Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter$StickerData;-><init>()V

    iput-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter;->q:Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter$StickerData;

    new-instance v0, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveDynamicRangeMetadata;

    invoke-direct {v0}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveDynamicRangeMetadata;-><init>()V

    iput-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter;->r:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveDynamicRangeMetadata;

    const/4 v0, 0x2

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter;->w:[I

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter;->x:[I

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter;->y:[I

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter;->z:[I

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter;->A:[I

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter;->B:[I

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter;->D:[I

    const/4 v1, 0x4

    new-array v2, v1, [I

    iput-object v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter;->E:[I

    new-array v2, v1, [I

    iput-object v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter;->F:[I

    new-array v2, v1, [I

    iput-object v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter;->G:[I

    new-array v2, v1, [I

    iput-object v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter;->H:[I

    new-array v2, v0, [I

    iput-object v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter;->I:[I

    new-array v2, v0, [I

    iput-object v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter;->J:[I

    const/16 v2, 0x5a

    iput v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter;->M:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter;->N:[I

    new-array v0, v1, [I

    iput-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter;->O:[I

    new-array v0, v1, [I

    iput-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter;->P:[I

    new-array v0, v1, [I

    iput-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter;->Q:[I

    const/16 v0, 0x20

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {v1}, Lfc;->v(Ljava/nio/ByteBuffer;)Ljava/nio/FloatBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter;->s:Ljava/nio/FloatBuffer;

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0}, Lfc;->v(Ljava/nio/ByteBuffer;)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter;->t:Ljava/nio/FloatBuffer;

    return-void
.end method


# virtual methods
.method public final d()V
    .locals 12

    iget-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter;->p:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter;->K:I

    iget-object v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter;->r:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveDynamicRangeMetadata;

    iget-object v2, v2, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveDynamicRangeMetadata;->min_rgb:[F

    invoke-static {v2}, Ljava/nio/FloatBuffer;->wrap([F)Ljava/nio/FloatBuffer;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v0, v3, v2}, Landroid/opengl/GLES20;->glUniform3fv(IILjava/nio/FloatBuffer;)V

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter;->L:I

    iget-object v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter;->r:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveDynamicRangeMetadata;

    iget-object v2, v2, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveDynamicRangeMetadata;->max_rgb:[F

    invoke-static {v2}, Ljava/nio/FloatBuffer;->wrap([F)Ljava/nio/FloatBuffer;

    move-result-object v2

    invoke-static {v0, v3, v2}, Landroid/opengl/GLES20;->glUniform3fv(IILjava/nio/FloatBuffer;)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter;->s:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter;->s:Ljava/nio/FloatBuffer;

    sget-object v1, Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter;->R:[F

    iget-object v2, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter;->q:Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter$StickerData;

    iget v2, v2, Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter$StickerData;->rotation:I

    invoke-virtual {p0, v1, v2}, Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter;->l([FI)[F

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter;->s:Ljava/nio/FloatBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget v4, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter;->u:I

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter;->s:Ljava/nio/FloatBuffer;

    const/4 v5, 0x2

    const/16 v6, 0x1406

    const/4 v7, 0x0

    invoke-static/range {v4 .. v9}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter;->u:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter;->t:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter;->t:Ljava/nio/FloatBuffer;

    iget v4, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter;->M:I

    invoke-virtual {p0, v1, v4}, Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter;->l([FI)[F

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter;->t:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget v4, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter;->v:I

    iget-object v9, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter;->t:Ljava/nio/FloatBuffer;

    invoke-static/range {v4 .. v9}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter;->v:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget-object v4, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter;->o:Ljava/lang/Object;

    monitor-enter v4

    move v0, v2

    :goto_0
    const/4 v1, 0x4

    const/16 v5, 0xde1

    const/4 v6, 0x2

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    if-ge v0, v1, :cond_8

    :try_start_1
    iget-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter;->q:Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter$StickerData;

    iget-object v10, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter$StickerData;->face_sticker_model_width:[I

    aget v10, v10, v0

    iget-object v11, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter;->G:[I

    aget v11, v11, v0

    if-ne v10, v11, :cond_0

    iget-object v1, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter$StickerData;->face_sticker_model_height:[I

    aget v1, v1, v0

    iget-object v10, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter;->H:[I

    aget v10, v10, v0

    if-ne v1, v10, :cond_0

    move v1, v3

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto/16 :goto_9

    :cond_0
    move v1, v2

    :goto_1
    iget-object v10, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter;->E:[I

    aget v10, v10, v0

    if-eq v10, v7, :cond_5

    if-nez v0, :cond_1

    const v6, 0x84c1

    invoke-static {v6}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    goto :goto_2

    :cond_1
    if-ne v0, v3, :cond_2

    const v6, 0x84c2

    invoke-static {v6}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    goto :goto_2

    :cond_2
    if-ne v0, v6, :cond_3

    const v6, 0x84c3

    invoke-static {v6}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    goto :goto_2

    :cond_3
    const/4 v6, 0x3

    if-ne v0, v6, :cond_4

    const v6, 0x84c4

    invoke-static {v6}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    :cond_4
    :goto_2
    iget-object v6, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter;->E:[I

    aget v6, v6, v0

    invoke-static {v5, v6}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget-object v5, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter;->F:[I

    aget v5, v5, v0

    add-int/lit8 v6, v0, 0x1

    invoke-static {v5, v6}, Landroid/opengl/GLES20;->glUniform1i(II)V

    iget-object v5, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter;->q:Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter$StickerData;

    iget v6, v5, Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter$StickerData;->frame_width:I

    iget v5, v5, Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter$StickerData;->frame_height:I

    iget-object v7, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter;->O:[I

    aget v7, v7, v0

    int-to-float v6, v6

    iget-object v10, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter;->G:[I

    aget v10, v10, v0

    int-to-float v10, v10

    div-float/2addr v6, v10

    int-to-float v5, v5

    iget-object v10, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter;->H:[I

    aget v10, v10, v0

    int-to-float v10, v10

    div-float/2addr v5, v10

    invoke-static {v7, v6, v5}, Landroid/opengl/GLES20;->glUniform2f(IFF)V

    :cond_5
    const/16 v5, 0x9

    new-array v6, v5, [F

    move v7, v2

    :goto_3
    if-ge v7, v5, :cond_6

    iget-object v10, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter;->q:Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter$StickerData;

    iget-object v10, v10, Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter$StickerData;->face_sticker_homography:[F

    mul-int/lit8 v11, v0, 0x9

    add-int/2addr v11, v7

    aget v10, v10, v11

    aput v10, v6, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_6
    iget-object v5, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter;->Q:[I

    aget v5, v5, v0

    invoke-static {v5, v3, v2, v6, v2}, Landroid/opengl/GLES20;->glUniformMatrix3fv(IIZ[FI)V

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter;->q:Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter$StickerData;

    iget-object v5, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter$StickerData;->is_face_sticker_displayed:[Z

    aget-boolean v5, v5, v0

    if-eqz v5, :cond_7

    iget-boolean v1, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter$StickerData;->is_face_detected:Z

    if-eqz v1, :cond_7

    move v8, v9

    :cond_7
    iget-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter;->P:[I

    aget v1, v1, v0

    invoke-static {v1, v8}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_8
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_4
    if-ge v2, v6, :cond_e

    iget-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter;->w:[I

    aget v0, v0, v2

    if-eq v0, v7, :cond_c

    if-nez v2, :cond_9

    const v0, 0x84c5

    :goto_5
    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    goto :goto_6

    :cond_9
    if-ne v2, v3, :cond_a

    const v0, 0x84c6

    goto :goto_5

    :cond_a
    :goto_6
    iget-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter;->w:[I

    aget v0, v0, v2

    invoke-static {v5, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter;->x:[I

    aget v0, v0, v2

    add-int/lit8 v1, v2, 0x5

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    iget-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter;->y:[I

    aget v0, v0, v2

    iget-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter;->q:Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter$StickerData;

    iget-object v4, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter$StickerData;->scene_ratio_x:[F

    aget v4, v4, v2

    iget-object v1, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter$StickerData;->scene_ratio_y:[F

    aget v1, v1, v2

    invoke-static {v0, v4, v1}, Landroid/opengl/GLES20;->glUniform2f(IFF)V

    iget-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter;->z:[I

    aget v0, v0, v2

    iget-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter;->q:Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter$StickerData;

    iget-object v4, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter$StickerData;->scene_offset_x:[F

    aget v4, v4, v2

    iget-object v1, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter$StickerData;->scene_offset_y:[F

    aget v1, v1, v2

    invoke-static {v0, v4, v1}, Landroid/opengl/GLES20;->glUniform2f(IFF)V

    iget-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter;->q:Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter$StickerData;

    iget v1, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter$StickerData;->frame_width:I

    iget v0, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter$StickerData;->frame_height:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter;->q:Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter$StickerData;

    iget v4, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter$StickerData;->frame_width:I

    iget v1, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter$StickerData;->frame_height:I

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget-object v4, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter;->I:[I

    aget v4, v4, v2

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget-object v10, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter;->J:[I

    aget v10, v10, v2

    invoke-static {v10, v3}, Ljava/lang/Math;->max(II)I

    move-result v10

    int-to-float v1, v1

    int-to-float v0, v0

    div-float/2addr v1, v0

    int-to-float v0, v10

    int-to-float v4, v4

    div-float/2addr v0, v4

    div-float/2addr v1, v0

    iget-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter;->N:[I

    aget v0, v0, v2

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    cmpl-float v0, v1, v9

    iget-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter;->A:[I

    if-lez v0, :cond_b

    aget v0, v1, v2

    iget-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter;->q:Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter$StickerData;

    iget-object v4, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter$StickerData;->scene_stretch_start_x:[F

    aget v4, v4, v2

    iget-object v1, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter$StickerData;->scene_stretch_start_y:[F

    aget v1, v1, v2

    invoke-static {v0, v4, v1}, Landroid/opengl/GLES20;->glUniform2f(IFF)V

    iget-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter;->B:[I

    aget v0, v0, v2

    iget-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter;->q:Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter$StickerData;

    iget-object v4, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter$StickerData;->scene_stretch_end_x:[F

    aget v4, v4, v2

    iget-object v1, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter$StickerData;->scene_stretch_end_y:[F

    aget v1, v1, v2

    invoke-static {v0, v4, v1}, Landroid/opengl/GLES20;->glUniform2f(IFF)V

    goto :goto_7

    :cond_b
    aget v0, v1, v2

    invoke-static {v0, v8, v8}, Landroid/opengl/GLES20;->glUniform2f(IFF)V

    iget-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter;->B:[I

    aget v0, v0, v2

    invoke-static {v0, v9, v9}, Landroid/opengl/GLES20;->glUniform2f(IFF)V

    :cond_c
    :goto_7
    iget-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter;->D:[I

    aget v0, v0, v2

    iget-boolean v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter;->C:Z

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter;->q:Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter$StickerData;

    iget-object v1, v1, Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter$StickerData;->is_scene_displayed:[Z

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_d

    move v1, v9

    goto :goto_8

    :cond_d
    move v1, v8

    :goto_8
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_4

    :cond_e
    return-void

    :goto_9
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :catchall_1
    move-exception v0

    move-object p0, v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0
.end method

.method public final j(Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter$StickerData;Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveDynamicRangeMetadata;)V
    .locals 2

    iget-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter;->p:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter;->q:Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter$StickerData;

    invoke-virtual {v1, p1}, Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter$StickerData;->Copy(Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter$StickerData;)V

    iget-object p1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter;->r:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveDynamicRangeMetadata;

    invoke-virtual {p1, p2}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveDynamicRangeMetadata;->Copy(Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter$LiveDynamicRangeMetadata;)V

    new-instance p1, Lcom/cyberlink/clgpuimage/cosmetic/ae;

    invoke-direct {p1, p0}, Lcom/cyberlink/clgpuimage/cosmetic/ae;-><init>(Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter;)V

    invoke-virtual {p0, p1}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->e(Ljava/lang/Runnable;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final k([I[I)V
    .locals 5

    array-length v0, p1

    const/4 v1, 0x4

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter;->E:[I

    aget v4, p1, v2

    aput v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    array-length p1, p2

    const/4 v0, 0x2

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    :goto_1
    if-ge v1, p1, :cond_1

    iget-object v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter;->w:[I

    aget v2, p2, v1

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final l([FI)[F
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p2

    iget v0, v0, Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter;->M:I

    add-int/lit16 v2, v0, 0x10e

    rem-int/lit16 v2, v2, 0x168

    const/16 v3, 0x8

    const/4 v4, 0x7

    const/4 v5, 0x6

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x5

    const/4 v9, 0x1

    const/4 v10, 0x4

    const/4 v11, 0x0

    if-ne v1, v2, :cond_0

    aget v0, p1, v10

    aget v1, p1, v8

    aget v2, p1, v11

    aget v12, p1, v9

    aget v13, p1, v5

    aget v14, p1, v4

    aget v15, p1, v7

    aget v16, p1, v6

    new-array v3, v3, [F

    aput v0, v3, v11

    aput v1, v3, v9

    aput v2, v3, v7

    aput v12, v3, v6

    aput v13, v3, v10

    aput v14, v3, v8

    aput v15, v3, v5

    aput v16, v3, v4

    return-object v3

    :cond_0
    add-int/lit16 v2, v0, 0xb4

    rem-int/lit16 v2, v2, 0x168

    if-ne v1, v2, :cond_1

    aget v0, p1, v5

    aget v1, p1, v4

    aget v2, p1, v10

    aget v12, p1, v8

    aget v13, p1, v7

    aget v14, p1, v6

    aget v15, p1, v11

    aget v16, p1, v9

    new-array v3, v3, [F

    aput v0, v3, v11

    aput v1, v3, v9

    aput v2, v3, v7

    aput v12, v3, v6

    aput v13, v3, v10

    aput v14, v3, v8

    aput v15, v3, v5

    aput v16, v3, v4

    return-object v3

    :cond_1
    add-int/lit8 v0, v0, 0x5a

    rem-int/lit16 v0, v0, 0x168

    if-ne v1, v0, :cond_2

    aget v0, p1, v7

    aget v1, p1, v6

    aget v2, p1, v5

    aget v12, p1, v4

    aget v13, p1, v11

    aget v14, p1, v9

    aget v15, p1, v10

    aget v16, p1, v8

    new-array v3, v3, [F

    aput v0, v3, v11

    aput v1, v3, v9

    aput v2, v3, v7

    aput v12, v3, v6

    aput v13, v3, v10

    aput v14, v3, v8

    aput v15, v3, v5

    aput v16, v3, v4

    return-object v3

    :cond_2
    aget v0, p1, v11

    aget v1, p1, v9

    aget v2, p1, v7

    aget v12, p1, v6

    aget v13, p1, v10

    aget v14, p1, v8

    aget v15, p1, v5

    aget v16, p1, v4

    new-array v3, v3, [F

    aput v0, v3, v11

    aput v1, v3, v9

    aput v2, v3, v7

    aput v12, v3, v6

    aput v13, v3, v10

    aput v14, v3, v8

    aput v15, v3, v5

    aput v16, v3, v4

    return-object v3
.end method

.method public final onDestroy()V
    .locals 0

    return-void
.end method

.method public final onInit()V
    .locals 9

    invoke-super {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->onInit()V

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v1, "inputStickerTemplateTextureCoordinate"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter;->u:I

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v1, "inputStickerSceneTemplateTextureCoordinate"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter;->v:I

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v1, "scene_sticker_texture_0"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter;->x:[I

    const/4 v2, 0x0

    aput v0, v1, v2

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v3, "scene_sticker_texture_1"

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    const/4 v3, 0x1

    aput v0, v1, v3

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v1, "face_sticker_texture_0"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter;->F:[I

    aput v0, v1, v2

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v4, "face_sticker_texture_1"

    invoke-static {v0, v4}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    aput v0, v1, v3

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v4, "face_sticker_texture_2"

    invoke-static {v0, v4}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    const/4 v4, 0x2

    aput v0, v1, v4

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v5, "face_sticker_texture_3"

    invoke-static {v0, v5}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    const/4 v5, 0x3

    aput v0, v1, v5

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v1, "min_rgb"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter;->K:I

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v1, "max_rgb"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter;->L:I

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v1, "aspect_ratio_multiplier_frame_over_scene_0"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter;->N:[I

    aput v0, v1, v2

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v6, "aspect_ratio_multiplier_frame_over_scene_1"

    invoke-static {v0, v6}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    aput v0, v1, v3

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v1, "frame_face_sticker_scale_ratio_0"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter;->O:[I

    aput v0, v1, v2

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v6, "face_sticker_displayed_0"

    invoke-static {v0, v6}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iget-object v6, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter;->P:[I

    aput v0, v6, v2

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v7, "face_sticker_homography_0"

    invoke-static {v0, v7}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iget-object v7, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter;->Q:[I

    aput v0, v7, v2

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v8, "frame_face_sticker_scale_ratio_1"

    invoke-static {v0, v8}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    aput v0, v1, v3

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v8, "face_sticker_displayed_1"

    invoke-static {v0, v8}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    aput v0, v6, v3

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v8, "face_sticker_homography_1"

    invoke-static {v0, v8}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    aput v0, v7, v3

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v8, "frame_face_sticker_scale_ratio_2"

    invoke-static {v0, v8}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    aput v0, v1, v4

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v8, "face_sticker_displayed_2"

    invoke-static {v0, v8}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    aput v0, v6, v4

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v8, "face_sticker_homography_2"

    invoke-static {v0, v8}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    aput v0, v7, v4

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v4, "frame_face_sticker_scale_ratio_3"

    invoke-static {v0, v4}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    aput v0, v1, v5

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v1, "face_sticker_displayed_3"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    aput v0, v6, v5

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v1, "face_sticker_homography_3"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    aput v0, v7, v5

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v1, "scene_sticker_scale_ratio_0"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter;->y:[I

    aput v0, v1, v2

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v4, "scene_sticker_offset_0"

    invoke-static {v0, v4}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iget-object v4, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter;->z:[I

    aput v0, v4, v2

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v5, "scene_sticker_displayed_0"

    invoke-static {v0, v5}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iget-object v5, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter;->D:[I

    aput v0, v5, v2

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v6, "scene_sticker_scale_ratio_1"

    invoke-static {v0, v6}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    aput v0, v1, v3

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v1, "scene_sticker_offset_1"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    aput v0, v4, v3

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v1, "scene_sticker_displayed_1"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    aput v0, v5, v3

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v1, "scene_sticker_stretch_start_0"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter;->A:[I

    aput v0, v1, v2

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v4, "scene_sticker_stretch_end_0"

    invoke-static {v0, v4}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iget-object v4, p0, Lcom/cyberlink/clgpuimage/cosmetic/CLStickerLiveFilter;->B:[I

    aput v0, v4, v2

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result v0

    const-string v2, "scene_sticker_stretch_start_1"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    aput v0, v1, v3

    invoke-virtual {p0}, Lcom/cyberlink/clgpuimage/GPUImageFilter;->getProgram()I

    move-result p0

    const-string v0, "scene_sticker_stretch_end_1"

    invoke-static {p0, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p0

    aput p0, v4, v3

    return-void
.end method
