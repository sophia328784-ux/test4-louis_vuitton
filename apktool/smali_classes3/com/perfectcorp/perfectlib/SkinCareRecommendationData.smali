.class public final Lcom/perfectcorp/perfectlib/SkinCareRecommendationData;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/perfectcorp/perfectlib/RecommendationData;


# instance fields
.field public final a:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

.field public final b:Lcom/perfectcorp/perfectlib/SurveyAnswer;

.field public final c:I


# direct methods
.method public constructor <init>(Ljava/util/List;IILcom/perfectcorp/perfectlib/SurveyAnswer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/perfectcorp/perfectlib/SkinAnalysisData;",
            ">;II",
            "Lcom/perfectcorp/perfectlib/SurveyAnswer;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p3, "skinAnalysisData can\'t be null"

    invoke-static {p1, p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;->u(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    move-result-object p1

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/SkinCareRecommendationData;->a:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    iput-object p4, p0, Lcom/perfectcorp/perfectlib/SkinCareRecommendationData;->b:Lcom/perfectcorp/perfectlib/SurveyAnswer;

    iput p2, p0, Lcom/perfectcorp/perfectlib/SkinCareRecommendationData;->c:I

    return-void
.end method
