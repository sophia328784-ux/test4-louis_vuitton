.class final Lcom/perfectcorp/perfectlib/FaceAttributeAnalyzer$Condition;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/FaceAttributeAnalyzer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Condition"
.end annotation


# static fields
.field public static final b:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;


# instance fields
.field public final a:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 23

    const-string v21, "age"

    const-string v22, "gender"

    const-string v1, "faceShape"

    const-string v2, "skinTone"

    const-string v3, "eyeShape"

    const-string v4, "eyeSize"

    const-string v5, "eyeAngle"

    const-string v6, "eyeDistance"

    const-string v7, "eyelid"

    const-string v8, "eyeColor"

    const-string v9, "eyebrowShape"

    const-string v10, "eyebrowThinness"

    const-string v11, "eyebrowShortness"

    const-string v12, "eyebrowThickness"

    const-string v13, "eyebrowDistance"

    const-string v14, "eyebrowColor"

    const-string v15, "lipShape"

    const-string v16, "lipColor"

    const-string v17, "noseWidth"

    const-string v18, "noseLength"

    const-string v19, "cheekbones"

    const-string v20, "hairColor"

    filled-new-array/range {v1 .. v22}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;->n(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/FluentIterable;->q()Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;

    move-result-object v0

    sput-object v0, Lcom/perfectcorp/perfectlib/FaceAttributeAnalyzer$Condition;->b:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;

    return-void
.end method

.method public constructor <init>(Ljava/util/Set;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/FaceAttributeAnalyzer$Condition;->a:Ljava/util/Set;

    return-void
.end method

.method public static d()Z
    .locals 4

    invoke-static {}, Lcom/perfectcorp/common/PfCommons;->b()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/perfectcorp/perfectlib/PerfectLib;->g:Lcom/perfectcorp/perfectlib/Configuration;

    iget-object v1, v1, Lcom/perfectcorp/perfectlib/Configuration;->a:Lcom/perfectcorp/perfectlib/PerfectLib$ModelPath;

    iget-boolean v2, v1, Lcom/perfectcorp/perfectlib/PerfectLib$ModelPath;->a:Z

    iget-object v1, v1, Lcom/perfectcorp/perfectlib/PerfectLib$ModelPath;->b:Ljava/lang/String;

    const-string v3, "ageGender_model_fp16.mnn"

    if-eqz v2, :cond_0

    new-instance v2, Lcom/perfectcorp/perfectlib/core/VenusModel$Assets;

    invoke-direct {v2, v3}, Lcom/perfectcorp/perfectlib/core/VenusModel$Assets;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Lcom/perfectcorp/perfectlib/core/VenusModel$Assets;->e(Landroid/content/Context;Ljava/lang/String;Lcom/perfectcorp/perfectlib/core/VenusModel$Assets;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/perfectcorp/perfectlib/core/VenusModel$Files;

    invoke-direct {v0, v3}, Lcom/perfectcorp/perfectlib/core/VenusModel$Files;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v0}, Lcom/perfectcorp/perfectlib/core/VenusModel$Files;->b(Ljava/lang/String;Lcom/perfectcorp/perfectlib/core/VenusModel$Files;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final a()[Z
    .locals 12

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/FaceAttributeAnalyzer$Condition;->b()Z

    move-result v0

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/FaceAttributeAnalyzer$Condition;->c()Z

    move-result v1

    const-string v2, "faceShape"

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/FaceAttributeAnalyzer$Condition;->a:Ljava/util/Set;

    invoke-interface {p0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "cheekbones"

    invoke-interface {p0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "lipShape"

    invoke-interface {p0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, "noseWidth"

    invoke-interface {p0, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-nez v5, :cond_1

    const-string v5, "noseLength"

    invoke-interface {p0, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    move v5, v7

    goto :goto_1

    :cond_1
    :goto_0
    move v5, v6

    :goto_1
    const-string v8, "lipColor"

    invoke-interface {p0, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    const-string v9, "eyeColor"

    invoke-interface {p0, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    invoke-interface {p0, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    invoke-static {}, Lcom/perfectcorp/perfectlib/FaceAttributeAnalyzer$Condition;->d()Z

    move-result v9

    const/16 v11, 0xb

    new-array v11, v11, [Z

    aput-boolean v0, v11, v7

    aput-boolean v1, v11, v6

    const/4 v0, 0x2

    aput-boolean v2, v11, v0

    const/4 v0, 0x3

    aput-boolean v3, v11, v0

    const/4 v0, 0x4

    aput-boolean v4, v11, v0

    const/4 v0, 0x5

    aput-boolean v5, v11, v0

    const/4 v0, 0x6

    aput-boolean v8, v11, v0

    const/4 v0, 0x7

    aput-boolean v10, v11, v0

    const/16 v0, 0x8

    aput-boolean p0, v11, v0

    const/16 p0, 0x9

    aput-boolean v9, v11, p0

    const/16 p0, 0xa

    aput-boolean v7, v11, p0

    return-object v11
.end method

.method public final b()Z
    .locals 1

    const-string v0, "eyeShape"

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/FaceAttributeAnalyzer$Condition;->a:Ljava/util/Set;

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "eyeSize"

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "eyeAngle"

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "eyeDistance"

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "eyelid"

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final c()Z
    .locals 1

    const-string v0, "eyebrowShape"

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/FaceAttributeAnalyzer$Condition;->a:Ljava/util/Set;

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "eyebrowThinness"

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "eyebrowShortness"

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "eyebrowThickness"

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "eyebrowDistance"

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method
