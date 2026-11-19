.class public final Lcom/perfectcorp/perfectlib/CheekboneAttributeData;
.super Ljava/lang/Object;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/perfectlib/jniproxy/faceshape/CheekbonePredictResult;Lcom/perfectcorp/perfectlib/FaceAttributeAnalyzer$Condition;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p2, p2, Lcom/perfectcorp/perfectlib/FaceAttributeAnalyzer$Condition;->a:Ljava/util/Set;

    const-string v0, "cheekbones"

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/perfectcorp/perfectlib/jniproxy/faceshape/CheekbonePredictResult;->left:Lcom/perfectcorp/perfectlib/jniproxy/faceshape/ClassificationResult;

    iget-object v1, v1, Lcom/perfectcorp/perfectlib/jniproxy/faceshape/CommonStats;->name:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    iput-object v1, p0, Lcom/perfectcorp/perfectlib/CheekboneAttributeData;->a:Ljava/lang/String;

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/perfectcorp/perfectlib/jniproxy/faceshape/CheekbonePredictResult;->right:Lcom/perfectcorp/perfectlib/jniproxy/faceshape/ClassificationResult;

    iget-object v1, v1, Lcom/perfectcorp/perfectlib/jniproxy/faceshape/CommonStats;->name:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v1, v2

    :goto_1
    iput-object v1, p0, Lcom/perfectcorp/perfectlib/CheekboneAttributeData;->b:Ljava/lang/String;

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p1, p1, Lcom/perfectcorp/perfectlib/jniproxy/faceshape/CheekbonePredictResult;->overall:Lcom/perfectcorp/perfectlib/jniproxy/faceshape/ClassificationResult;

    iget-object v2, p1, Lcom/perfectcorp/perfectlib/jniproxy/faceshape/CommonStats;->name:Ljava/lang/String;

    :cond_2
    iput-object v2, p0, Lcom/perfectcorp/perfectlib/CheekboneAttributeData;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getLeft()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/CheekboneAttributeData;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final getOverall()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/CheekboneAttributeData;->c:Ljava/lang/String;

    return-object p0
.end method

.method public final getRight()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/CheekboneAttributeData;->b:Ljava/lang/String;

    return-object p0
.end method
