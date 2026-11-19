.class public final Lcom/perfectcorp/perfectlib/EyebrowAttributeData;
.super Ljava/lang/Object;


# instance fields
.field public final a:Lcom/perfectcorp/perfectlib/SingleEyebrowAttributeData;

.field public final b:Lcom/perfectcorp/perfectlib/SingleEyebrowAttributeData;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/perfectlib/jniproxy/faceshape/EyebrowPredictResult;Lcom/perfectcorp/perfectlib/FaceAnalysisData$Extra;Lcom/perfectcorp/perfectlib/FaceAttributeAnalyzer$Condition;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/perfectcorp/perfectlib/SingleEyebrowAttributeData;

    iget-object v1, p1, Lcom/perfectcorp/perfectlib/jniproxy/faceshape/EyebrowPredictResult;->left:Lcom/perfectcorp/perfectlib/jniproxy/faceshape/Eyebrow;

    invoke-direct {v0, v1, p3}, Lcom/perfectcorp/perfectlib/SingleEyebrowAttributeData;-><init>(Lcom/perfectcorp/perfectlib/jniproxy/faceshape/Eyebrow;Lcom/perfectcorp/perfectlib/FaceAttributeAnalyzer$Condition;)V

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/EyebrowAttributeData;->a:Lcom/perfectcorp/perfectlib/SingleEyebrowAttributeData;

    new-instance v0, Lcom/perfectcorp/perfectlib/SingleEyebrowAttributeData;

    iget-object v1, p1, Lcom/perfectcorp/perfectlib/jniproxy/faceshape/EyebrowPredictResult;->right:Lcom/perfectcorp/perfectlib/jniproxy/faceshape/Eyebrow;

    invoke-direct {v0, v1, p3}, Lcom/perfectcorp/perfectlib/SingleEyebrowAttributeData;-><init>(Lcom/perfectcorp/perfectlib/jniproxy/faceshape/Eyebrow;Lcom/perfectcorp/perfectlib/FaceAttributeAnalyzer$Condition;)V

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/EyebrowAttributeData;->b:Lcom/perfectcorp/perfectlib/SingleEyebrowAttributeData;

    iget-object p3, p3, Lcom/perfectcorp/perfectlib/FaceAttributeAnalyzer$Condition;->a:Ljava/util/Set;

    const-string v0, "eyebrowDistance"

    invoke-interface {p3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object p1, p1, Lcom/perfectcorp/perfectlib/jniproxy/faceshape/EyebrowPredictResult;->gap:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    iput-object p1, p0, Lcom/perfectcorp/perfectlib/EyebrowAttributeData;->c:Ljava/lang/String;

    const-string p1, "eyebrowColor"

    invoke-interface {p3, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object v1, p2, Lcom/perfectcorp/perfectlib/FaceAnalysisData$Extra;->b:Ljava/lang/Integer;

    :cond_1
    iput-object v1, p0, Lcom/perfectcorp/perfectlib/EyebrowAttributeData;->d:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public final getColor()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/EyebrowAttributeData;->d:Ljava/lang/Integer;

    return-object p0
.end method

.method public final getGapClassName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/EyebrowAttributeData;->c:Ljava/lang/String;

    return-object p0
.end method

.method public final getLeft()Lcom/perfectcorp/perfectlib/SingleEyebrowAttributeData;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/EyebrowAttributeData;->a:Lcom/perfectcorp/perfectlib/SingleEyebrowAttributeData;

    return-object p0
.end method

.method public final getRight()Lcom/perfectcorp/perfectlib/SingleEyebrowAttributeData;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/EyebrowAttributeData;->b:Lcom/perfectcorp/perfectlib/SingleEyebrowAttributeData;

    return-object p0
.end method
