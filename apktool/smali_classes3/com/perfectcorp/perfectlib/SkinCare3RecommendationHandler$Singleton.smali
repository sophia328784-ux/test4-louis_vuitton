.class abstract Lcom/perfectcorp/perfectlib/SkinCare3RecommendationHandler$Singleton;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/SkinCare3RecommendationHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Singleton"
.end annotation


# static fields
.field public static final a:Lcom/perfectcorp/perfectlib/SkinCare3RecommendationHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/perfectcorp/perfectlib/SkinCare3RecommendationHandler;

    invoke-direct {v0}, Lcom/perfectcorp/perfectlib/SkinCare3RecommendationHandler;-><init>()V

    sput-object v0, Lcom/perfectcorp/perfectlib/SkinCare3RecommendationHandler$Singleton;->a:Lcom/perfectcorp/perfectlib/SkinCare3RecommendationHandler;

    return-void
.end method
