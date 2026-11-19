.class abstract Lcom/perfectcorp/perfectlib/RecommendationHandler$Singleton;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/RecommendationHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Singleton"
.end annotation


# static fields
.field public static final a:Lcom/perfectcorp/perfectlib/RecommendationHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/perfectcorp/perfectlib/RecommendationHandler;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/perfectcorp/perfectlib/RecommendationHandler$Singleton;->a:Lcom/perfectcorp/perfectlib/RecommendationHandler;

    return-void
.end method
