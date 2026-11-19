.class final Lcom/perfectcorp/perfectlib/SkinCare3RecommendationHandler$RecommendationResult;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/SkinCare3RecommendationHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RecommendationResult"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/perfectlib/SkinCare3RecommendationHandler$RecommendationResult$Results;
    }
.end annotation


# instance fields
.field final errorMessage:Ljava/lang/String;

.field final extra_info:Lcom/perfectcorp/thirdparty/com/google/gson/JsonElement;

.field final results:Lcom/perfectcorp/perfectlib/SkinCare3RecommendationHandler$RecommendationResult$Results;

.field final status:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/SkinCare3RecommendationHandler$RecommendationResult;->status:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/SkinCare3RecommendationHandler$RecommendationResult;->errorMessage:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/SkinCare3RecommendationHandler$RecommendationResult;->results:Lcom/perfectcorp/perfectlib/SkinCare3RecommendationHandler$RecommendationResult$Results;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/SkinCare3RecommendationHandler$RecommendationResult;->extra_info:Lcom/perfectcorp/thirdparty/com/google/gson/JsonElement;

    return-void
.end method
