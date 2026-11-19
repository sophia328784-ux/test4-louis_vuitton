.class public final Lcom/sightcall/advancedannotations/domain/drawer/AnnotationCommandKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0000\n\u0002\u0010\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0006\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\u001a\u0014\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\u0000\u001a\u0014\u0010\u0005\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\u0000\u001a\u001c\u0010\u0006\u001a\u00020\u0007*\u00020\u00022\u0006\u0010\u0008\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\tH\u0000\u001a\u000c\u0010\n\u001a\u00020\u000b*\u00020\u000bH\u0000\u001a\u000c\u0010\u000c\u001a\u00020\r*\u00020\u000bH\u0000\u001a\u0010\u0010\u000e\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\u0002\u001a\u0014\u0010\u000f\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\u0000\u001a\u0014\u0010\u000f\u001a\u00020\r*\u00020\r2\u0006\u0010\u0003\u001a\u00020\u0004H\u0000\u001a\u0014\u0010\u0010\u001a\u00020\r*\u00020\r2\u0006\u0010\u0003\u001a\u00020\u0004H\u0000\u001a\u0016\u0010\u000f\u001a\u00020\u0001*\u0004\u0018\u00010\u00112\u0006\u0010\u0003\u001a\u00020\u0004H\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "xFor",
        "",
        "Lcom/sightcall/advancedannotations/domain/drawer/AnnotationPosition;",
        "view",
        "Landroid/view/View;",
        "yFor",
        "distanceWith",
        "",
        "position",
        "Landroid/view/ViewGroup;",
        "getStroke",
        "Lcom/sightcall/advancedannotations/domain/drawer/AnnotationColor;",
        "toColor",
        "",
        "fromViewScale",
        "forView",
        "fromView",
        "Lcom/sightcall/advancedannotations/domain/drawer/AnnotationScale;",
        "advancedannotations_release"
    }
    k = 0x2
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final distanceWith(Lcom/sightcall/advancedannotations/domain/drawer/AnnotationPosition;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationPosition;Landroid/view/ViewGroup;)D
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, p2}, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationCommandKt;->xFor(Lcom/sightcall/advancedannotations/domain/drawer/AnnotationPosition;Landroid/view/View;)F

    move-result v0

    invoke-static {p1, p2}, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationCommandKt;->xFor(Lcom/sightcall/advancedannotations/domain/drawer/AnnotationPosition;Landroid/view/View;)F

    move-result v1

    sub-float/2addr v0, v1

    float-to-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    invoke-static {p0, p2}, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationCommandKt;->yFor(Lcom/sightcall/advancedannotations/domain/drawer/AnnotationPosition;Landroid/view/View;)F

    move-result p0

    invoke-static {p1, p2}, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationCommandKt;->yFor(Lcom/sightcall/advancedannotations/domain/drawer/AnnotationPosition;Landroid/view/View;)F

    move-result p1

    sub-float/2addr p0, p1

    float-to-double p0, p0

    invoke-static {p0, p1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    add-double/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    return-wide p0
.end method

.method public static final forView(FLandroid/view/View;)F
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    invoke-static {p1}, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationCommandKt;->fromViewScale(Landroid/view/View;)F

    move-result p1

    mul-float/2addr p0, p1

    return p0
.end method

.method public static final forView(Lcom/sightcall/advancedannotations/domain/drawer/AnnotationScale;Landroid/view/View;)F
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationScale;->valueForView(Landroid/view/View;)F

    move-result p0

    return p0

    :cond_0
    invoke-static {p1}, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationCommandKt;->fromViewScale(Landroid/view/View;)F

    move-result p0

    return p0
.end method

.method public static final forView(ILandroid/view/View;)I
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    int-to-float p0, p0

    .line 15
    invoke-static {p1}, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationCommandKt;->fromViewScale(Landroid/view/View;)F

    move-result p1

    mul-float/2addr p0, p1

    invoke-static {p0}, Lkotlin/math/MathKt;->c(F)I

    move-result p0

    return p0
.end method

.method public static final fromView(ILandroid/view/View;)I
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    int-to-float p0, p0

    invoke-static {p1}, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationCommandKt;->fromViewScale(Landroid/view/View;)F

    move-result p1

    div-float/2addr p0, p1

    invoke-static {p0}, Lkotlin/math/MathKt;->c(F)I

    move-result p0

    return p0
.end method

.method private static final fromViewScale(Landroid/view/View;)F
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    int-to-float p0, p0

    const/high16 v0, 0x44200000    # 640.0f

    div-float/2addr p0, v0

    return p0
.end method

.method public static final getStroke(Lcom/sightcall/advancedannotations/domain/drawer/AnnotationColor;)Lcom/sightcall/advancedannotations/domain/drawer/AnnotationColor;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationColor;->getValue()Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x10

    invoke-static {v0}, Lkotlin/text/CharsKt;->checkRadix(I)I

    move-result v0

    invoke-static {p0, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p0

    shr-int/lit8 v0, p0, 0x4

    and-int/lit16 v0, v0, 0xff

    mul-int/lit16 v0, v0, 0x84e

    shr-int/lit8 v1, p0, 0x2

    and-int/lit16 v1, v1, 0xff

    mul-int/lit16 v1, v1, 0x1bf0

    add-int/2addr v1, v0

    and-int/lit16 p0, p0, 0xff

    mul-int/lit16 p0, p0, 0x2d2

    add-int/2addr p0, v1

    new-instance v0, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationColor;

    const v1, 0x138800

    if-ge p0, v1, :cond_0

    const-string p0, "F0F0F0"

    goto :goto_0

    :cond_0
    const-string p0, "101010"

    :goto_0
    invoke-direct {v0, p0}, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationColor;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static final toColor(Lcom/sightcall/advancedannotations/domain/drawer/AnnotationColor;)I
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationColor;->getValue()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "#"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static final xFor(Lcom/sightcall/advancedannotations/domain/drawer/AnnotationPosition;Landroid/view/View;)F
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationPosition;->getX()D

    move-result-wide v0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p0

    int-to-double p0, p0

    mul-double/2addr v0, p0

    double-to-float p0, v0

    return p0
.end method

.method public static final yFor(Lcom/sightcall/advancedannotations/domain/drawer/AnnotationPosition;Landroid/view/View;)F
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationPosition;->getY()D

    move-result-wide v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p0

    int-to-double p0, p0

    mul-double/2addr v0, p0

    double-to-float p0, v0

    return p0
.end method
