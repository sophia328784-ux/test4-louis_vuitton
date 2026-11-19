.class public final Lcom/perfectcorp/perfectlib/HairDyeEffectConfig$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/HairDyeEffectConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public a:F

.field public b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x28

    iput v0, p0, Lcom/perfectcorp/perfectlib/HairDyeEffectConfig$Builder;->b:I

    return-void
.end method


# virtual methods
.method public final build()Lcom/perfectcorp/perfectlib/HairDyeEffectConfig;
    .locals 1

    new-instance v0, Lcom/perfectcorp/perfectlib/HairDyeEffectConfig;

    invoke-direct {v0, p0}, Lcom/perfectcorp/perfectlib/HairDyeEffectConfig;-><init>(Lcom/perfectcorp/perfectlib/HairDyeEffectConfig$Builder;)V

    return-object v0
.end method

.method public final setBlendStrength(I)Lcom/perfectcorp/perfectlib/HairDyeEffectConfig$Builder;
    .locals 3

    sget-object v0, Lcom/perfectcorp/common/utility/ValueChecker;->a:Lcom/perfectcorp/thirdparty/com/google/common/collect/Range;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/Range;->d(Ljava/lang/Comparable;)Z

    move-result v0

    const-string v1, " isn\'t in 0~100"

    const-string v2, "blendStrength"

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/perfectcorp/thirdparty/com/google/common/base/Preconditions;->g(ZLjava/lang/String;)V

    iput p1, p0, Lcom/perfectcorp/perfectlib/HairDyeEffectConfig$Builder;->b:I

    return-object p0
.end method

.method public final setCoverageRatio(F)Lcom/perfectcorp/perfectlib/HairDyeEffectConfig$Builder;
    .locals 2

    sget-object v0, Lcom/perfectcorp/common/utility/ValueChecker;->d:Lcom/perfectcorp/thirdparty/com/google/common/collect/Range;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/Range;->d(Ljava/lang/Comparable;)Z

    move-result v0

    const-string v1, "coverageRatio isn\'t in -1~1"

    invoke-static {v0, v1}, Lcom/perfectcorp/thirdparty/com/google/common/base/Preconditions;->g(ZLjava/lang/String;)V

    iput p1, p0, Lcom/perfectcorp/perfectlib/HairDyeEffectConfig$Builder;->a:F

    return-object p0
.end method
