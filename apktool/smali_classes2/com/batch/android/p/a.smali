.class public Lcom/batch/android/p/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "firebase"

.field public static final b:Ljava/lang/String; = "at_internet"

.field public static final c:Ljava/lang/String; = "mixpanel"

.field public static final d:Ljava/lang/String; = "google_analytics"

.field public static final e:Ljava/lang/String; = "batch_plugins"

.field public static final f:Ljava/lang/String; = "piano"

.field private static final g:Ljava/lang/String; = "other"

.field private static final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-string v4, "batch_plugins"

    const-string v5, "piano"

    const-string v0, "firebase"

    const-string v1, "at_internet"

    const-string v2, "mixpanel"

    const-string v3, "google_analytics"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/batch/android/p/a;->h:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/util/Set;)Lcom/batch/android/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/batch/android/BatchEventDispatcher;",
            ">;)",
            "Lcom/batch/android/json/JSONObject;"
        }
    .end annotation

    new-instance v0, Lcom/batch/android/json/JSONObject;

    invoke-direct {v0}, Lcom/batch/android/json/JSONObject;-><init>()V

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :catch_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/batch/android/BatchEventDispatcher;

    :try_start_0
    invoke-interface {v1}, Lcom/batch/android/BatchEventDispatcher;->getName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/batch/android/p/a;->h:Ljava/util/List;

    invoke-interface {v1}, Lcom/batch/android/BatchEventDispatcher;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Lcom/batch/android/BatchEventDispatcher;->getName()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    const-string v2, "other"

    :goto_1
    invoke-interface {v1}, Lcom/batch/android/BatchEventDispatcher;->getVersion()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Lcom/batch/android/json/JSONObject;->put(Ljava/lang/String;I)Lcom/batch/android/json/JSONObject;
    :try_end_0
    .catch Lcom/batch/android/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_2
    return-object v0
.end method
