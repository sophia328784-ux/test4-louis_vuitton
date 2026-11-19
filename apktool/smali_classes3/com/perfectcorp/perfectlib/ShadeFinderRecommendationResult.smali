.class public final Lcom/perfectcorp/perfectlib/ShadeFinderRecommendationResult;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/perfectcorp/perfectlib/RecommendationResult;


# instance fields
.field public final a:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/ShadeFinderRecommendationResult;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final getProductSets()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/perfectcorp/perfectlib/ShadeFinderProductSet;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ShadeFinderRecommendationResult;->a:Ljava/util/List;

    return-object p0
.end method
