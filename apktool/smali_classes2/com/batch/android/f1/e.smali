.class public abstract Lcom/batch/android/f1/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:Lcom/batch/android/f1/f;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/batch/android/f1/f;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/batch/android/f1/e;->a:Landroid/content/Context;

    invoke-static {}, Lcom/batch/android/f1/e;->a()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/batch/android/f1/e;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/batch/android/f1/e;->c:Lcom/batch/android/f1/f;

    return-void

    :cond_0
    const-string p0, "type==null"

    invoke-static {p0}, Lr81;->d(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string p0, "context==null"

    invoke-static {p0}, Lr81;->d(Ljava/lang/String;)V

    throw v0
.end method

.method private static a()Ljava/lang/String;
    .locals 1

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public b()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/batch/android/f1/e;->a:Landroid/content/Context;

    return-object p0
.end method

.method public c()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/batch/android/f1/e;->b:Ljava/lang/String;

    return-object p0
.end method

.method public d()Lcom/batch/android/f1/f;
    .locals 0

    iget-object p0, p0, Lcom/batch/android/f1/e;->c:Lcom/batch/android/f1/f;

    return-object p0
.end method

.method public e()Lcom/batch/android/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/json/JSONException;
        }
    .end annotation

    new-instance v0, Lcom/batch/android/json/JSONObject;

    invoke-direct {v0}, Lcom/batch/android/json/JSONObject;-><init>()V

    iget-object v1, p0, Lcom/batch/android/f1/e;->b:Ljava/lang/String;

    const-string v2, "id"

    invoke-virtual {v0, v2, v1}, Lcom/batch/android/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/batch/android/json/JSONObject;

    iget-object p0, p0, Lcom/batch/android/f1/e;->c:Lcom/batch/android/f1/f;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "type"

    invoke-virtual {v0, v1, p0}, Lcom/batch/android/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/batch/android/json/JSONObject;

    return-object v0
.end method
