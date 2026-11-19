.class public final Lcom/perfectcorp/perfectlib/SingleEyebrowAttributeData;
.super Ljava/lang/Object;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/perfectlib/jniproxy/faceshape/Eyebrow;Lcom/perfectcorp/perfectlib/FaceAttributeAnalyzer$Condition;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p2, p2, Lcom/perfectcorp/perfectlib/FaceAttributeAnalyzer$Condition;->a:Ljava/util/Set;

    const-string v0, "eyebrowShape"

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/jniproxy/faceshape/Eyebrow;->shape:Lcom/perfectcorp/perfectlib/jniproxy/faceshape/ClassificationResult;

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/jniproxy/faceshape/CommonStats;->name:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lcom/perfectcorp/perfectlib/SingleEyebrowAttributeData;->a:Ljava/lang/String;

    const-string v0, "eyebrowThinness"

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/jniproxy/faceshape/Eyebrow;->thinness:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v0, v1

    :goto_1
    iput-object v0, p0, Lcom/perfectcorp/perfectlib/SingleEyebrowAttributeData;->b:Ljava/lang/String;

    const-string v0, "eyebrowShortness"

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/jniproxy/faceshape/Eyebrow;->shortness:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object v0, v1

    :goto_2
    iput-object v0, p0, Lcom/perfectcorp/perfectlib/SingleEyebrowAttributeData;->c:Ljava/lang/String;

    const-string v0, "eyebrowThickness"

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p1, Lcom/perfectcorp/perfectlib/jniproxy/faceshape/Eyebrow;->bodyThickness:Lcom/perfectcorp/perfectlib/jniproxy/faceshape/ClassificationResult;

    iget-object v2, v2, Lcom/perfectcorp/perfectlib/jniproxy/faceshape/CommonStats;->name:Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object v2, v1

    :goto_3
    iput-object v2, p0, Lcom/perfectcorp/perfectlib/SingleEyebrowAttributeData;->d:Ljava/lang/String;

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p1, p1, Lcom/perfectcorp/perfectlib/jniproxy/faceshape/Eyebrow;->tailThickness:Lcom/perfectcorp/perfectlib/jniproxy/faceshape/ClassificationResult;

    iget-object v1, p1, Lcom/perfectcorp/perfectlib/jniproxy/faceshape/CommonStats;->name:Ljava/lang/String;

    :cond_4
    iput-object v1, p0, Lcom/perfectcorp/perfectlib/SingleEyebrowAttributeData;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getBodyThickness()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/SingleEyebrowAttributeData;->d:Ljava/lang/String;

    return-object p0
.end method

.method public final getShape()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/SingleEyebrowAttributeData;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final getShortness()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/SingleEyebrowAttributeData;->c:Ljava/lang/String;

    return-object p0
.end method

.method public final getTailThickness()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/SingleEyebrowAttributeData;->e:Ljava/lang/String;

    return-object p0
.end method

.method public final getThinness()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/SingleEyebrowAttributeData;->b:Ljava/lang/String;

    return-object p0
.end method
