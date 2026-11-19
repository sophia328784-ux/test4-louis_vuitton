.class abstract Lcom/perfectcorp/perfectlib/ShadeFinderRecommendationHandler$Singleton;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/ShadeFinderRecommendationHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Singleton"
.end annotation


# static fields
.field public static final a:Lcom/perfectcorp/perfectlib/ShadeFinderRecommendationHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/perfectcorp/perfectlib/ShadeFinderRecommendationHandler;

    invoke-direct {v0}, Lcom/perfectcorp/perfectlib/ShadeFinderRecommendationHandler;-><init>()V

    sput-object v0, Lcom/perfectcorp/perfectlib/ShadeFinderRecommendationHandler$Singleton;->a:Lcom/perfectcorp/perfectlib/ShadeFinderRecommendationHandler;

    return-void
.end method
