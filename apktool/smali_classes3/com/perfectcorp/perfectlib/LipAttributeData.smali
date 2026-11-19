.class public final Lcom/perfectcorp/perfectlib/LipAttributeData;
.super Ljava/lang/Object;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/perfectlib/jniproxy/faceshape/LipShapePredictResult;Lcom/perfectcorp/perfectlib/jniproxy/faceshape/LipColorPredictResult;Lcom/perfectcorp/perfectlib/FaceAttributeAnalyzer$Condition;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p3, p3, Lcom/perfectcorp/perfectlib/FaceAttributeAnalyzer$Condition;->a:Ljava/util/Set;

    const-string v0, "lipShape"

    invoke-interface {p3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/perfectcorp/perfectlib/jniproxy/faceshape/LipShapePredictResult;->width:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    iput-object v1, p0, Lcom/perfectcorp/perfectlib/LipAttributeData;->a:Ljava/lang/String;

    invoke-interface {p3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/perfectcorp/perfectlib/jniproxy/faceshape/LipShapePredictResult;->roundness:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v1, v2

    :goto_1
    iput-object v1, p0, Lcom/perfectcorp/perfectlib/LipAttributeData;->b:Ljava/lang/String;

    invoke-interface {p3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p1, Lcom/perfectcorp/perfectlib/jniproxy/faceshape/LipShapePredictResult;->bowShape:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object v1, v2

    :goto_2
    iput-object v1, p0, Lcom/perfectcorp/perfectlib/LipAttributeData;->c:Ljava/lang/String;

    invoke-interface {p3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p1, Lcom/perfectcorp/perfectlib/jniproxy/faceshape/LipShapePredictResult;->angle:Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object v1, v2

    :goto_3
    iput-object v1, p0, Lcom/perfectcorp/perfectlib/LipAttributeData;->d:Ljava/lang/String;

    invoke-interface {p3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object p1, p1, Lcom/perfectcorp/perfectlib/jniproxy/faceshape/LipShapePredictResult;->thickness:Ljava/lang/String;

    goto :goto_4

    :cond_4
    move-object p1, v2

    :goto_4
    iput-object p1, p0, Lcom/perfectcorp/perfectlib/LipAttributeData;->e:Ljava/lang/String;

    const-string p1, "lipColor"

    invoke-interface {p3, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget p1, p2, Lcom/perfectcorp/perfectlib/jniproxy/faceshape/LipColorPredictResult;->r:F

    iget p3, p2, Lcom/perfectcorp/perfectlib/jniproxy/faceshape/LipColorPredictResult;->g:F

    iget p2, p2, Lcom/perfectcorp/perfectlib/jniproxy/faceshape/LipColorPredictResult;->b:F

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr p1, v0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr p1, v1

    float-to-int p1, p1

    mul-float/2addr p3, v0

    add-float/2addr p3, v1

    float-to-int p3, p3

    mul-float/2addr p2, v0

    add-float/2addr p2, v1

    float-to-int p2, p2

    invoke-static {p1, p3, p2}, Landroid/graphics/Color;->rgb(III)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :cond_5
    iput-object v2, p0, Lcom/perfectcorp/perfectlib/LipAttributeData;->f:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public final getAngle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/LipAttributeData;->d:Ljava/lang/String;

    return-object p0
.end method

.method public final getBowShape()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/LipAttributeData;->c:Ljava/lang/String;

    return-object p0
.end method

.method public final getColor()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/LipAttributeData;->f:Ljava/lang/Integer;

    return-object p0
.end method

.method public final getRoundness()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/LipAttributeData;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final getThickness()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/LipAttributeData;->e:Ljava/lang/String;

    return-object p0
.end method

.method public final getWidth()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/LipAttributeData;->a:Ljava/lang/String;

    return-object p0
.end method
