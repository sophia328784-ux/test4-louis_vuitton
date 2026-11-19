.class public final Lcom/perfectcorp/perfectlib/SkinCareRecommendationResult;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/perfectcorp/perfectlib/RecommendationResult;


# instance fields
.field public final a:Ljava/util/ArrayList;

.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/perfectcorp/perfectlib/SkinCareRecommendationResult;->a:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/SkinCareRecommendationResult;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getExtraInfo()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/SkinCareRecommendationResult;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final getProducts()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/perfectcorp/perfectlib/SkinCareProduct;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/SkinCareRecommendationResult;->a:Ljava/util/ArrayList;

    return-object p0
.end method
