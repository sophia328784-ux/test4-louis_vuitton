.class public final synthetic Lcom/perfectcorp/perfectlib/z3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/perfectcorp/perfectlib/ShadeFinderRecommendationHandler$SkuData;

    check-cast p2, Lcom/perfectcorp/perfectlib/ShadeFinderRecommendationHandler$SkuData;

    iget p0, p1, Lcom/perfectcorp/perfectlib/ShadeFinderRecommendationHandler$SkuData;->order:I

    iget p1, p2, Lcom/perfectcorp/perfectlib/ShadeFinderRecommendationHandler$SkuData;->order:I

    sub-int/2addr p0, p1

    return p0
.end method
