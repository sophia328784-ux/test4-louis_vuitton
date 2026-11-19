.class public final Lcom/perfectcorp/perfectlib/FaceAnalysisData;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/perfectlib/FaceAnalysisData$Extra;
    }
.end annotation


# instance fields
.field public final a:Lcom/perfectcorp/perfectlib/EyeAttributeData;

.field public final b:Lcom/perfectcorp/perfectlib/EyebrowAttributeData;

.field public final c:Lcom/perfectcorp/perfectlib/NoseAttributeData;

.field public final d:Lcom/perfectcorp/perfectlib/LipAttributeData;

.field public final e:Lcom/perfectcorp/perfectlib/FaceAttributeData;

.field public final f:Lcom/perfectcorp/perfectlib/CheekboneAttributeData;

.field public final g:Lcom/perfectcorp/perfectlib/HairAttributeData;

.field public final h:Ljava/lang/Integer;

.field public final i:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/perfectlib/jniproxy/faceshape/FacePredictResult;Lcom/perfectcorp/perfectlib/FaceAnalysisData$Extra;Lcom/perfectcorp/perfectlib/FaceAttributeAnalyzer$Condition;Z)V
    .locals 9

    iget-object v0, p3, Lcom/perfectcorp/perfectlib/FaceAttributeAnalyzer$Condition;->a:Ljava/util/Set;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p3}, Lcom/perfectcorp/perfectlib/FaceAttributeAnalyzer$Condition;->b()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    const-string v1, "eyeColor"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v7, p3

    move-object v3, v2

    goto :goto_1

    :cond_1
    :goto_0
    new-instance v3, Lcom/perfectcorp/perfectlib/EyeAttributeData;

    iget-object v4, p1, Lcom/perfectcorp/perfectlib/jniproxy/faceshape/FacePredictResult;->eye:Lcom/perfectcorp/perfectlib/jniproxy/faceshape/EyePredictResult;

    iget-object v5, p1, Lcom/perfectcorp/perfectlib/jniproxy/faceshape/FacePredictResult;->eyeColor:Lcom/perfectcorp/perfectlib/jniproxy/faceshape/EyeColorPredictResult;

    iget-object v6, p1, Lcom/perfectcorp/perfectlib/jniproxy/faceshape/FacePredictResult;->eyeColorLV:Lcom/perfectcorp/perfectlib/jniproxy/faceshape/EyeColorLVPredictResult;

    move-object v7, p3

    move v8, p4

    invoke-direct/range {v3 .. v8}, Lcom/perfectcorp/perfectlib/EyeAttributeData;-><init>(Lcom/perfectcorp/perfectlib/jniproxy/faceshape/EyePredictResult;Lcom/perfectcorp/perfectlib/jniproxy/faceshape/EyeColorPredictResult;Lcom/perfectcorp/perfectlib/jniproxy/faceshape/EyeColorLVPredictResult;Lcom/perfectcorp/perfectlib/FaceAttributeAnalyzer$Condition;Z)V

    :goto_1
    iput-object v3, p0, Lcom/perfectcorp/perfectlib/FaceAnalysisData;->a:Lcom/perfectcorp/perfectlib/EyeAttributeData;

    invoke-virtual {v7}, Lcom/perfectcorp/perfectlib/FaceAttributeAnalyzer$Condition;->c()Z

    move-result p3

    if-nez p3, :cond_3

    const-string p3, "eyebrowColor"

    invoke-interface {v0, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    goto :goto_2

    :cond_2
    move-object p3, v2

    goto :goto_3

    :cond_3
    :goto_2
    new-instance p3, Lcom/perfectcorp/perfectlib/EyebrowAttributeData;

    iget-object p4, p1, Lcom/perfectcorp/perfectlib/jniproxy/faceshape/FacePredictResult;->eyebrow:Lcom/perfectcorp/perfectlib/jniproxy/faceshape/EyebrowPredictResult;

    invoke-direct {p3, p4, p2, v7}, Lcom/perfectcorp/perfectlib/EyebrowAttributeData;-><init>(Lcom/perfectcorp/perfectlib/jniproxy/faceshape/EyebrowPredictResult;Lcom/perfectcorp/perfectlib/FaceAnalysisData$Extra;Lcom/perfectcorp/perfectlib/FaceAttributeAnalyzer$Condition;)V

    :goto_3
    iput-object p3, p0, Lcom/perfectcorp/perfectlib/FaceAnalysisData;->b:Lcom/perfectcorp/perfectlib/EyebrowAttributeData;

    const-string p3, "noseWidth"

    invoke-interface {v0, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_5

    const-string p3, "noseLength"

    invoke-interface {v0, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_4

    goto :goto_4

    :cond_4
    move-object p3, v2

    goto :goto_5

    :cond_5
    :goto_4
    new-instance p3, Lcom/perfectcorp/perfectlib/NoseAttributeData;

    iget-object p4, p1, Lcom/perfectcorp/perfectlib/jniproxy/faceshape/FacePredictResult;->noseFeature:Lcom/perfectcorp/perfectlib/jniproxy/faceshape/NoseFeaturePredictResult;

    invoke-direct {p3, p4, v7}, Lcom/perfectcorp/perfectlib/NoseAttributeData;-><init>(Lcom/perfectcorp/perfectlib/jniproxy/faceshape/NoseFeaturePredictResult;Lcom/perfectcorp/perfectlib/FaceAttributeAnalyzer$Condition;)V

    :goto_5
    iput-object p3, p0, Lcom/perfectcorp/perfectlib/FaceAnalysisData;->c:Lcom/perfectcorp/perfectlib/NoseAttributeData;

    const-string p3, "lipShape"

    invoke-interface {v0, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_7

    const-string p3, "lipColor"

    invoke-interface {v0, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_6

    goto :goto_6

    :cond_6
    move-object p3, v2

    goto :goto_7

    :cond_7
    :goto_6
    new-instance p3, Lcom/perfectcorp/perfectlib/LipAttributeData;

    iget-object p4, p1, Lcom/perfectcorp/perfectlib/jniproxy/faceshape/FacePredictResult;->lipShape:Lcom/perfectcorp/perfectlib/jniproxy/faceshape/LipShapePredictResult;

    iget-object v1, p1, Lcom/perfectcorp/perfectlib/jniproxy/faceshape/FacePredictResult;->lipColor:Lcom/perfectcorp/perfectlib/jniproxy/faceshape/LipColorPredictResult;

    invoke-direct {p3, p4, v1, v7}, Lcom/perfectcorp/perfectlib/LipAttributeData;-><init>(Lcom/perfectcorp/perfectlib/jniproxy/faceshape/LipShapePredictResult;Lcom/perfectcorp/perfectlib/jniproxy/faceshape/LipColorPredictResult;Lcom/perfectcorp/perfectlib/FaceAttributeAnalyzer$Condition;)V

    :goto_7
    iput-object p3, p0, Lcom/perfectcorp/perfectlib/FaceAnalysisData;->d:Lcom/perfectcorp/perfectlib/LipAttributeData;

    const-string p3, "faceShape"

    invoke-interface {v0, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_9

    const-string p3, "skinTone"

    invoke-interface {v0, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_8

    goto :goto_8

    :cond_8
    move-object p3, v2

    goto :goto_9

    :cond_9
    :goto_8
    new-instance p3, Lcom/perfectcorp/perfectlib/FaceAttributeData;

    iget-object p4, p1, Lcom/perfectcorp/perfectlib/jniproxy/faceshape/FacePredictResult;->faceShape:Lcom/perfectcorp/perfectlib/jniproxy/faceshape/FaceShapePredictResult;

    invoke-direct {p3, p4, p2, v7}, Lcom/perfectcorp/perfectlib/FaceAttributeData;-><init>(Lcom/perfectcorp/perfectlib/jniproxy/faceshape/FaceShapePredictResult;Lcom/perfectcorp/perfectlib/FaceAnalysisData$Extra;Lcom/perfectcorp/perfectlib/FaceAttributeAnalyzer$Condition;)V

    :goto_9
    iput-object p3, p0, Lcom/perfectcorp/perfectlib/FaceAnalysisData;->e:Lcom/perfectcorp/perfectlib/FaceAttributeData;

    const-string p3, "cheekbones"

    invoke-interface {v0, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_a

    new-instance p3, Lcom/perfectcorp/perfectlib/CheekboneAttributeData;

    iget-object p4, p1, Lcom/perfectcorp/perfectlib/jniproxy/faceshape/FacePredictResult;->cheekbone:Lcom/perfectcorp/perfectlib/jniproxy/faceshape/CheekbonePredictResult;

    invoke-direct {p3, p4, v7}, Lcom/perfectcorp/perfectlib/CheekboneAttributeData;-><init>(Lcom/perfectcorp/perfectlib/jniproxy/faceshape/CheekbonePredictResult;Lcom/perfectcorp/perfectlib/FaceAttributeAnalyzer$Condition;)V

    goto :goto_a

    :cond_a
    move-object p3, v2

    :goto_a
    iput-object p3, p0, Lcom/perfectcorp/perfectlib/FaceAnalysisData;->f:Lcom/perfectcorp/perfectlib/CheekboneAttributeData;

    const-string p3, "hairColor"

    invoke-interface {v0, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_b

    new-instance p3, Lcom/perfectcorp/perfectlib/HairAttributeData;

    invoke-direct {p3, p2, v7}, Lcom/perfectcorp/perfectlib/HairAttributeData;-><init>(Lcom/perfectcorp/perfectlib/FaceAnalysisData$Extra;Lcom/perfectcorp/perfectlib/FaceAttributeAnalyzer$Condition;)V

    goto :goto_b

    :cond_b
    move-object p3, v2

    :goto_b
    iput-object p3, p0, Lcom/perfectcorp/perfectlib/FaceAnalysisData;->g:Lcom/perfectcorp/perfectlib/HairAttributeData;

    iget-object p2, p1, Lcom/perfectcorp/perfectlib/jniproxy/faceshape/FacePredictResult;->ageGender:Lcom/perfectcorp/perfectlib/jniproxy/faceshape/AgeGenderPredictResult;

    iget p2, p2, Lcom/perfectcorp/perfectlib/jniproxy/faceshape/AgeGenderPredictResult;->age:I

    if-ltz p2, :cond_c

    goto :goto_c

    :cond_c
    const/4 p2, -0x1

    :goto_c
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iput-object p2, p0, Lcom/perfectcorp/perfectlib/FaceAnalysisData;->h:Ljava/lang/Integer;

    iget-object p2, p1, Lcom/perfectcorp/perfectlib/jniproxy/faceshape/FacePredictResult;->ageGender:Lcom/perfectcorp/perfectlib/jniproxy/faceshape/AgeGenderPredictResult;

    iget-object p2, p2, Lcom/perfectcorp/perfectlib/jniproxy/faceshape/AgeGenderPredictResult;->gender:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_d

    iget-object p1, p1, Lcom/perfectcorp/perfectlib/jniproxy/faceshape/FacePredictResult;->ageGender:Lcom/perfectcorp/perfectlib/jniproxy/faceshape/AgeGenderPredictResult;

    iget-object v2, p1, Lcom/perfectcorp/perfectlib/jniproxy/faceshape/AgeGenderPredictResult;->gender:Ljava/lang/String;

    :cond_d
    iput-object v2, p0, Lcom/perfectcorp/perfectlib/FaceAnalysisData;->i:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getAge()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/FaceAnalysisData;->h:Ljava/lang/Integer;

    return-object p0
.end method

.method public final getCheekbone()Lcom/perfectcorp/perfectlib/CheekboneAttributeData;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/FaceAnalysisData;->f:Lcom/perfectcorp/perfectlib/CheekboneAttributeData;

    return-object p0
.end method

.method public final getEye()Lcom/perfectcorp/perfectlib/EyeAttributeData;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/FaceAnalysisData;->a:Lcom/perfectcorp/perfectlib/EyeAttributeData;

    return-object p0
.end method

.method public final getEyebrow()Lcom/perfectcorp/perfectlib/EyebrowAttributeData;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/FaceAnalysisData;->b:Lcom/perfectcorp/perfectlib/EyebrowAttributeData;

    return-object p0
.end method

.method public final getFace()Lcom/perfectcorp/perfectlib/FaceAttributeData;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/FaceAnalysisData;->e:Lcom/perfectcorp/perfectlib/FaceAttributeData;

    return-object p0
.end method

.method public final getGender()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/FaceAnalysisData;->i:Ljava/lang/String;

    return-object p0
.end method

.method public final getHair()Lcom/perfectcorp/perfectlib/HairAttributeData;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/FaceAnalysisData;->g:Lcom/perfectcorp/perfectlib/HairAttributeData;

    return-object p0
.end method

.method public final getLip()Lcom/perfectcorp/perfectlib/LipAttributeData;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/FaceAnalysisData;->d:Lcom/perfectcorp/perfectlib/LipAttributeData;

    return-object p0
.end method

.method public final getNose()Lcom/perfectcorp/perfectlib/NoseAttributeData;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/FaceAnalysisData;->c:Lcom/perfectcorp/perfectlib/NoseAttributeData;

    return-object p0
.end method
