.class public final Lcom/perfectcorp/perfectlib/FaceAttributeData;
.super Ljava/lang/Object;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/perfectlib/jniproxy/faceshape/FaceShapePredictResult;Lcom/perfectcorp/perfectlib/FaceAnalysisData$Extra;Lcom/perfectcorp/perfectlib/FaceAttributeAnalyzer$Condition;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p3, p3, Lcom/perfectcorp/perfectlib/FaceAttributeAnalyzer$Condition;->a:Ljava/util/Set;

    const-string v0, "faceShape"

    invoke-interface {p3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/perfectcorp/perfectlib/jniproxy/faceshape/FaceShapePredictResult;->ratio:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    iput-object v1, p0, Lcom/perfectcorp/perfectlib/FaceAttributeData;->a:Ljava/lang/String;

    invoke-interface {p3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p1, Lcom/perfectcorp/perfectlib/jniproxy/faceshape/FaceShapePredictResult;->shape:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object p1, v2

    :goto_1
    iput-object p1, p0, Lcom/perfectcorp/perfectlib/FaceAttributeData;->b:Ljava/lang/String;

    const-string p1, "skinTone"

    invoke-interface {p3, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object v2, p2, Lcom/perfectcorp/perfectlib/FaceAnalysisData$Extra;->a:Ljava/lang/Integer;

    :cond_2
    iput-object v2, p0, Lcom/perfectcorp/perfectlib/FaceAttributeData;->c:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public final getFaceRatio()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/FaceAttributeData;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final getShape()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/FaceAttributeData;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final getSkinTone()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/FaceAttributeData;->c:Ljava/lang/Integer;

    return-object p0
.end method
