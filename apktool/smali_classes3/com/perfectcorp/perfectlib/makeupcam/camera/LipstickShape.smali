.class public final Lcom/perfectcorp/perfectlib/makeupcam/camera/LipstickShape;
.super Ljava/lang/Object;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:I

.field public final g:I

.field public final h:I

.field public final i:I

.field public final j:I

.field public final k:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LipstickShape;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LipstickShape;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LipstickShape;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LipstickShape;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LipstickShape;->e:Ljava/lang/String;

    iput p6, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LipstickShape;->f:I

    iput p7, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LipstickShape;->g:I

    iput p8, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LipstickShape;->h:I

    iput p9, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LipstickShape;->i:I

    iput p10, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LipstickShape;->j:I

    iput p11, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LipstickShape;->k:I

    return-void
.end method

.method public static a(Ljava/lang/String;Lorg/json/JSONObject;)I
    .locals 1

    :try_start_0
    const-string v0, "0"

    invoke-virtual {p1, p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public static b(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/makeupcam/camera/LipstickShape;
    .locals 14

    const-string v0, ""

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/LipstickShape;

    const-string p0, "attr_mask"

    invoke-virtual {v1, p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string p0, "attr_shadow"

    invoke-virtual {v1, p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string p0, "attr_highlight"

    invoke-virtual {v1, p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string p0, "attr_lip_shape_ombre"

    invoke-virtual {v1, p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string p0, "attr_lip_shape_roi_start"

    invoke-virtual {v1, p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string p0, "attr_height_intensity"

    invoke-static {p0, v1}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LipstickShape;->a(Ljava/lang/String;Lorg/json/JSONObject;)I

    move-result v8

    const-string p0, "attr_height_upper_intensity"

    invoke-static {p0, v1}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LipstickShape;->a(Ljava/lang/String;Lorg/json/JSONObject;)I

    move-result v9

    const-string p0, "attr_height_lower_intensity"

    invoke-static {p0, v1}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LipstickShape;->a(Ljava/lang/String;Lorg/json/JSONObject;)I

    move-result v10

    const-string p0, "attr_size_intensity"

    invoke-static {p0, v1}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LipstickShape;->a(Ljava/lang/String;Lorg/json/JSONObject;)I

    move-result v11

    const-string p0, "attr_width_intensity"

    invoke-static {p0, v1}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LipstickShape;->a(Ljava/lang/String;Lorg/json/JSONObject;)I

    move-result v12

    const-string p0, "attr_mshaped_intensity"

    invoke-static {p0, v1}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LipstickShape;->a(Ljava/lang/String;Lorg/json/JSONObject;)I

    move-result v13

    invoke-direct/range {v2 .. v13}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LipstickShape;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v0

    move-object p0, v0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method
