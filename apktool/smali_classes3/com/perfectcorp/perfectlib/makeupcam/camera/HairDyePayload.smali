.class public final Lcom/perfectcorp/perfectlib/makeupcam/camera/HairDyePayload;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/perfectcorp/perfectlib/makeupcam/camera/PayloadValidator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/perfectlib/makeupcam/camera/HairDyePayload$Builder;,
        Lcom/perfectcorp/perfectlib/makeupcam/camera/HairDyePayload$Color;
    }
.end annotation


# instance fields
.field public final a:Ljava/util/List;

.field public final b:F

.field public final c:F

.field public final d:Z

.field public final e:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$HairDyePatternType;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/perfectlib/makeupcam/camera/HairDyePayload$Builder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/HairDyePayload$Builder;->a:Ljava/util/List;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/HairDyePayload;->a:Ljava/util/List;

    iget v0, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/HairDyePayload$Builder;->b:F

    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/HairDyePayload;->b:F

    iget v0, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/HairDyePayload$Builder;->c:F

    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/HairDyePayload;->c:F

    iget-boolean v0, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/HairDyePayload$Builder;->d:Z

    iput-boolean v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/HairDyePayload;->d:Z

    iget-object p1, p1, Lcom/perfectcorp/perfectlib/makeupcam/camera/HairDyePayload$Builder;->e:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$HairDyePatternType;

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/HairDyePayload;->e:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$HairDyePatternType;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/HairDyePayload;->a:Ljava/util/List;

    const-string v0, "payload colors == null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public final b()F
    .locals 2

    sget-object v0, Lcom/perfectcorp/common/utility/ValueChecker;->d:Lcom/perfectcorp/thirdparty/com/google/common/collect/Range;

    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/Range;->a()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/HairDyePayload;->b:F

    cmpg-float v1, p0, v1

    if-gez v1, :cond_0

    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/Range;->a()Ljava/lang/Comparable;

    move-result-object p0

    :goto_0
    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0

    :cond_0
    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/Range;->b()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    cmpl-float v1, p0, v1

    if-lez v1, :cond_1

    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/Range;->b()Ljava/lang/Comparable;

    move-result-object p0

    goto :goto_0

    :cond_1
    return p0
.end method

.method public final c()F
    .locals 2

    sget-object v0, Lcom/perfectcorp/common/utility/ValueChecker;->c:Lcom/perfectcorp/thirdparty/com/google/common/collect/Range;

    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/Range;->a()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/HairDyePayload;->c:F

    cmpg-float v1, p0, v1

    if-gez v1, :cond_0

    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/Range;->a()Ljava/lang/Comparable;

    move-result-object p0

    :goto_0
    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0

    :cond_0
    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/Range;->b()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    cmpl-float v1, p0, v1

    if-lez v1, :cond_1

    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/Range;->b()Ljava/lang/Comparable;

    move-result-object p0

    goto :goto_0

    :cond_1
    return p0
.end method
