.class final Lcom/perfectcorp/perfectlib/SkinCare3RecommendationHandler$RecommendationResult$Results$Product;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/SkinCare3RecommendationHandler$RecommendationResult$Results;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Product"
.end annotation


# instance fields
.field final productId:J

.field final srcTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final weight:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/perfectcorp/perfectlib/SkinCare3RecommendationHandler$RecommendationResult$Results$Product;->productId:J

    iput-wide v0, p0, Lcom/perfectcorp/perfectlib/SkinCare3RecommendationHandler$RecommendationResult$Results$Product;->weight:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/SkinCare3RecommendationHandler$RecommendationResult$Results$Product;->srcTypes:Ljava/util/List;

    return-void
.end method
