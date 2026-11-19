.class public final Lcom/perfectcorp/perfectlib/EyeAttributeData;
.super Ljava/lang/Object;


# instance fields
.field public final a:Lcom/perfectcorp/perfectlib/SingleEyeAttributeData;

.field public final b:Lcom/perfectcorp/perfectlib/SingleEyeAttributeData;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/Integer;

.field public final f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/perfectlib/jniproxy/faceshape/EyePredictResult;Lcom/perfectcorp/perfectlib/jniproxy/faceshape/EyeColorPredictResult;Lcom/perfectcorp/perfectlib/jniproxy/faceshape/EyeColorLVPredictResult;Lcom/perfectcorp/perfectlib/FaceAttributeAnalyzer$Condition;Z)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/perfectcorp/perfectlib/SingleEyeAttributeData;

    iget-object v1, p1, Lcom/perfectcorp/perfectlib/jniproxy/faceshape/EyePredictResult;->left:Lcom/perfectcorp/perfectlib/jniproxy/faceshape/EyeFeature;

    invoke-direct {v0, v1, p4}, Lcom/perfectcorp/perfectlib/SingleEyeAttributeData;-><init>(Lcom/perfectcorp/perfectlib/jniproxy/faceshape/EyeFeature;Lcom/perfectcorp/perfectlib/FaceAttributeAnalyzer$Condition;)V

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/EyeAttributeData;->a:Lcom/perfectcorp/perfectlib/SingleEyeAttributeData;

    new-instance v0, Lcom/perfectcorp/perfectlib/SingleEyeAttributeData;

    iget-object v1, p1, Lcom/perfectcorp/perfectlib/jniproxy/faceshape/EyePredictResult;->right:Lcom/perfectcorp/perfectlib/jniproxy/faceshape/EyeFeature;

    invoke-direct {v0, v1, p4}, Lcom/perfectcorp/perfectlib/SingleEyeAttributeData;-><init>(Lcom/perfectcorp/perfectlib/jniproxy/faceshape/EyeFeature;Lcom/perfectcorp/perfectlib/FaceAttributeAnalyzer$Condition;)V

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/EyeAttributeData;->b:Lcom/perfectcorp/perfectlib/SingleEyeAttributeData;

    iget-object p4, p4, Lcom/perfectcorp/perfectlib/FaceAttributeAnalyzer$Condition;->a:Ljava/util/Set;

    const-string v0, "eyeDistance"

    invoke-interface {p4, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/jniproxy/faceshape/EyePredictResult;->eyeSet:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lcom/perfectcorp/perfectlib/EyeAttributeData;->c:Ljava/lang/String;

    const-string v0, "eyeSize"

    invoke-interface {p4, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p1, Lcom/perfectcorp/perfectlib/jniproxy/faceshape/EyePredictResult;->eyeSize:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object p1, v1

    :goto_1
    iput-object p1, p0, Lcom/perfectcorp/perfectlib/EyeAttributeData;->d:Ljava/lang/String;

    const-string p1, "eyeColor"

    invoke-interface {p4, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p5, :cond_2

    iget-object p4, p3, Lcom/perfectcorp/perfectlib/jniproxy/faceshape/EyeColorLVPredictResult;->colorName:Ljava/lang/String;

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_2

    const/4 p1, -0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/EyeAttributeData;->e:Ljava/lang/Integer;

    goto :goto_6

    :cond_2
    if-eqz p1, :cond_6

    if-eqz p5, :cond_3

    iget p4, p3, Lcom/perfectcorp/perfectlib/jniproxy/faceshape/EyeColorLVPredictResult;->r:F

    goto :goto_2

    :cond_3
    iget p4, p2, Lcom/perfectcorp/perfectlib/jniproxy/faceshape/EyeColorPredictResult;->r:F

    :goto_2
    if-eqz p5, :cond_4

    iget v0, p3, Lcom/perfectcorp/perfectlib/jniproxy/faceshape/EyeColorLVPredictResult;->g:F

    goto :goto_3

    :cond_4
    iget v0, p2, Lcom/perfectcorp/perfectlib/jniproxy/faceshape/EyeColorPredictResult;->g:F

    :goto_3
    if-eqz p5, :cond_5

    iget v2, p3, Lcom/perfectcorp/perfectlib/jniproxy/faceshape/EyeColorLVPredictResult;->b:F

    goto :goto_4

    :cond_5
    iget v2, p2, Lcom/perfectcorp/perfectlib/jniproxy/faceshape/EyeColorPredictResult;->b:F

    :goto_4
    const/high16 v3, 0x437f0000    # 255.0f

    mul-float/2addr p4, v3

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr p4, v4

    float-to-int p4, p4

    mul-float/2addr v0, v3

    add-float/2addr v0, v4

    float-to-int v0, v0

    mul-float/2addr v2, v3

    add-float/2addr v2, v4

    float-to-int v2, v2

    invoke-static {p4, v0, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result p4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    goto :goto_5

    :cond_6
    move-object p4, v1

    :goto_5
    iput-object p4, p0, Lcom/perfectcorp/perfectlib/EyeAttributeData;->e:Ljava/lang/Integer;

    if-eqz p1, :cond_8

    if-eqz p5, :cond_7

    iget-object v1, p3, Lcom/perfectcorp/perfectlib/jniproxy/faceshape/EyeColorLVPredictResult;->colorName:Ljava/lang/String;

    goto :goto_6

    :cond_7
    iget-object v1, p2, Lcom/perfectcorp/perfectlib/jniproxy/faceshape/EyeColorPredictResult;->colorName:Ljava/lang/String;

    :cond_8
    :goto_6
    iput-object v1, p0, Lcom/perfectcorp/perfectlib/EyeAttributeData;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getColor()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/EyeAttributeData;->e:Ljava/lang/Integer;

    return-object p0
.end method

.method public final getColorName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/EyeAttributeData;->f:Ljava/lang/String;

    return-object p0
.end method

.method public final getEyeSet()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/EyeAttributeData;->c:Ljava/lang/String;

    return-object p0
.end method

.method public final getEyeSize()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/EyeAttributeData;->d:Ljava/lang/String;

    return-object p0
.end method

.method public final getLeft()Lcom/perfectcorp/perfectlib/SingleEyeAttributeData;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/EyeAttributeData;->a:Lcom/perfectcorp/perfectlib/SingleEyeAttributeData;

    return-object p0
.end method

.method public final getRight()Lcom/perfectcorp/perfectlib/SingleEyeAttributeData;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/EyeAttributeData;->b:Lcom/perfectcorp/perfectlib/SingleEyeAttributeData;

    return-object p0
.end method
