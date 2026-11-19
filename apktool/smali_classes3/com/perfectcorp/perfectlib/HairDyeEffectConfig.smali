.class public final Lcom/perfectcorp/perfectlib/HairDyeEffectConfig;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/perfectlib/HairDyeEffectConfig$Builder;
    }
.end annotation


# static fields
.field public static final DEFAULT:Lcom/perfectcorp/perfectlib/HairDyeEffectConfig;


# instance fields
.field public final a:F

.field public final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/perfectcorp/perfectlib/HairDyeEffectConfig;->builder()Lcom/perfectcorp/perfectlib/HairDyeEffectConfig$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/perfectcorp/perfectlib/HairDyeEffectConfig$Builder;->build()Lcom/perfectcorp/perfectlib/HairDyeEffectConfig;

    move-result-object v0

    sput-object v0, Lcom/perfectcorp/perfectlib/HairDyeEffectConfig;->DEFAULT:Lcom/perfectcorp/perfectlib/HairDyeEffectConfig;

    return-void
.end method

.method public constructor <init>(Lcom/perfectcorp/perfectlib/HairDyeEffectConfig$Builder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Lcom/perfectcorp/perfectlib/HairDyeEffectConfig$Builder;->a:F

    iput v0, p0, Lcom/perfectcorp/perfectlib/HairDyeEffectConfig;->a:F

    iget p1, p1, Lcom/perfectcorp/perfectlib/HairDyeEffectConfig$Builder;->b:I

    iput p1, p0, Lcom/perfectcorp/perfectlib/HairDyeEffectConfig;->b:I

    return-void
.end method

.method public static builder()Lcom/perfectcorp/perfectlib/HairDyeEffectConfig$Builder;
    .locals 1

    new-instance v0, Lcom/perfectcorp/perfectlib/HairDyeEffectConfig$Builder;

    invoke-direct {v0}, Lcom/perfectcorp/perfectlib/HairDyeEffectConfig$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final getBlendStrength()I
    .locals 0

    iget p0, p0, Lcom/perfectcorp/perfectlib/HairDyeEffectConfig;->b:I

    return p0
.end method

.method public final getCoverageRatio()F
    .locals 0

    iget p0, p0, Lcom/perfectcorp/perfectlib/HairDyeEffectConfig;->a:F

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;

    const-string v1, "HairDyeEffectConfig"

    invoke-direct {v0, v1}, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/perfectcorp/perfectlib/HairDyeEffectConfig;->a:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "coverageRatio"

    invoke-virtual {v0, v2, v1}, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;->b(Ljava/lang/String;Ljava/lang/Object;)V

    iget p0, p0, Lcom/perfectcorp/perfectlib/HairDyeEffectConfig;->b:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v1, "blendStrength"

    invoke-virtual {v0, v1, p0}, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;->b(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
