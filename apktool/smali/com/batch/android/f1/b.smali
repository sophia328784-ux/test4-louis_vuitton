.class public Lcom/batch/android/f1/b;
.super Lcom/batch/android/f1/e;
.source "SourceFile"


# instance fields
.field private d:J

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;JLjava/util/Map;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    sget-object v0, Lcom/batch/android/f1/f;->e:Lcom/batch/android/f1/f;

    invoke-direct {p0, p1, v0}, Lcom/batch/android/f1/e;-><init>(Landroid/content/Context;Lcom/batch/android/f1/f;)V

    const-wide/16 v0, 0x0

    cmp-long p1, p2, v0

    const/4 v0, 0x0

    if-lez p1, :cond_2

    if-eqz p4, :cond_1

    if-eqz p5, :cond_0

    iput-wide p2, p0, Lcom/batch/android/f1/b;->d:J

    iput-object p4, p0, Lcom/batch/android/f1/b;->e:Ljava/util/Map;

    iput-object p5, p0, Lcom/batch/android/f1/b;->f:Ljava/util/Map;

    return-void

    :cond_0
    const-string p0, "tags==null"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string p0, "attributes==null"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    throw v0

    :cond_2
    const-string p0, "version <= 0"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public e()Lcom/batch/android/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/json/JSONException;
        }
    .end annotation

    invoke-super {p0}, Lcom/batch/android/f1/e;->e()Lcom/batch/android/json/JSONObject;

    move-result-object v0

    iget-wide v1, p0, Lcom/batch/android/f1/b;->d:J

    const-string v3, "ver"

    invoke-virtual {v0, v3, v1, v2}, Lcom/batch/android/json/JSONObject;->put(Ljava/lang/String;J)Lcom/batch/android/json/JSONObject;

    new-instance v1, Lcom/batch/android/json/JSONObject;

    iget-object v2, p0, Lcom/batch/android/f1/b;->f:Ljava/util/Map;

    invoke-direct {v1, v2}, Lcom/batch/android/json/JSONObject;-><init>(Ljava/util/Map;)V

    const-string v2, "tags"

    invoke-virtual {v0, v2, v1}, Lcom/batch/android/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/batch/android/json/JSONObject;

    new-instance v1, Lcom/batch/android/json/JSONObject;

    iget-object p0, p0, Lcom/batch/android/f1/b;->e:Ljava/util/Map;

    invoke-direct {v1, p0}, Lcom/batch/android/json/JSONObject;-><init>(Ljava/util/Map;)V

    const-string p0, "attrs"

    invoke-virtual {v0, p0, v1}, Lcom/batch/android/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/batch/android/json/JSONObject;

    return-object v0
.end method
