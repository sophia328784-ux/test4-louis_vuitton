.class abstract Lcom/perfectcorp/perfectlib/ShadeFinderRecommendationHandler$ShadeFinderSingleton;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/ShadeFinderRecommendationHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ShadeFinderSingleton"
.end annotation


# static fields
.field public static final a:Lcom/perfectcorp/perfectlib/jniproxy/CUIShadeFinder;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/perfectcorp/perfectlib/jniproxy/CUIShadeFinder;

    invoke-static {}, Lcom/perfectcorp/common/PfCommonsJni;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/perfectcorp/common/io/IO;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "libvenus_shadefinder.so"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/perfectcorp/perfectlib/jniproxy/CUIShadeFinder;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/perfectcorp/perfectlib/ShadeFinderRecommendationHandler$ShadeFinderSingleton;->a:Lcom/perfectcorp/perfectlib/jniproxy/CUIShadeFinder;

    return-void
.end method
