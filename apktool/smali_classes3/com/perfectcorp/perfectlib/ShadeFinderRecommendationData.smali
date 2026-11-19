.class public final Lcom/perfectcorp/perfectlib/ShadeFinderRecommendationData;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/perfectcorp/perfectlib/RecommendationData;


# instance fields
.field public final a:Lcom/perfectcorp/perfectlib/ShadeFinderData;

.field public final b:Lcom/perfectcorp/perfectlib/ShadeFinderDeltaE;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/perfectlib/ShadeFinderData;Lcom/perfectcorp/perfectlib/ShadeFinderDeltaE;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "shadeFinderData can\'t be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/ShadeFinderRecommendationData;->a:Lcom/perfectcorp/perfectlib/ShadeFinderData;

    const-string p1, "shadeFinderDeltaE can\'t be null"

    invoke-static {p2, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p2, p0, Lcom/perfectcorp/perfectlib/ShadeFinderRecommendationData;->b:Lcom/perfectcorp/perfectlib/ShadeFinderDeltaE;

    return-void
.end method
