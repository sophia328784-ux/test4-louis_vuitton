.class final Lcom/perfectcorp/perfectlib/SkinCare3RecommendationHandler$RecommendationSetting;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/SkinCare3RecommendationHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RecommendationSetting"
.end annotation


# instance fields
.field final productIds:Ljava/lang/String;

.field final scriptPath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/SkinCare3RecommendationHandler$RecommendationSetting;->productIds:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/SkinCare3RecommendationHandler$RecommendationSetting;->scriptPath:Ljava/lang/String;

    return-void
.end method
