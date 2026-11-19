.class final Lcom/perfectcorp/perfectlib/SkinCare3RecommendationHandler$RecommendationResult$Results;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/SkinCare3RecommendationHandler$RecommendationResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Results"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/perfectlib/SkinCare3RecommendationHandler$RecommendationResult$Results$Attrs;,
        Lcom/perfectcorp/perfectlib/SkinCare3RecommendationHandler$RecommendationResult$Results$Product;
    }
.end annotation


# instance fields
.field final attrs:Lcom/perfectcorp/perfectlib/SkinCare3RecommendationHandler$RecommendationResult$Results$Attrs;

.field final products:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/perfectcorp/perfectlib/SkinCare3RecommendationHandler$RecommendationResult$Results$Product;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/SkinCare3RecommendationHandler$RecommendationResult$Results;->products:Ljava/util/List;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/SkinCare3RecommendationHandler$RecommendationResult$Results;->attrs:Lcom/perfectcorp/perfectlib/SkinCare3RecommendationHandler$RecommendationResult$Results$Attrs;

    return-void
.end method
