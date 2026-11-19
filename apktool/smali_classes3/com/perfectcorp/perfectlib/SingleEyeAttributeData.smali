.class public final Lcom/perfectcorp/perfectlib/SingleEyeAttributeData;
.super Ljava/lang/Object;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/perfectlib/jniproxy/faceshape/EyeFeature;Lcom/perfectcorp/perfectlib/FaceAttributeAnalyzer$Condition;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p2, p2, Lcom/perfectcorp/perfectlib/FaceAttributeAnalyzer$Condition;->a:Ljava/util/Set;

    const-string v0, "eyeAngle"

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/jniproxy/faceshape/EyeFeature;->angle:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lcom/perfectcorp/perfectlib/SingleEyeAttributeData;->a:Ljava/lang/String;

    const-string v0, "eyeShape"

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/jniproxy/faceshape/EyeFeature;->shape:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v0, v1

    :goto_1
    iput-object v0, p0, Lcom/perfectcorp/perfectlib/SingleEyeAttributeData;->b:Ljava/lang/String;

    const-string v0, "eyelid"

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p1, p1, Lcom/perfectcorp/perfectlib/jniproxy/faceshape/EyeFeature;->lid:Lcom/perfectcorp/perfectlib/jniproxy/faceshape/CommonStats;

    iget-object v1, p1, Lcom/perfectcorp/perfectlib/jniproxy/faceshape/CommonStats;->name:Ljava/lang/String;

    :cond_2
    iput-object v1, p0, Lcom/perfectcorp/perfectlib/SingleEyeAttributeData;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getAngle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/SingleEyeAttributeData;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final getEyelid()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/SingleEyeAttributeData;->c:Ljava/lang/String;

    return-object p0
.end method

.method public final getShape()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/SingleEyeAttributeData;->b:Ljava/lang/String;

    return-object p0
.end method
