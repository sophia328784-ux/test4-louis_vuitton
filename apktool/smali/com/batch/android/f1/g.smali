.class public final Lcom/batch/android/f1/g;
.super Lcom/batch/android/f1/e;
.source "SourceFile"


# instance fields
.field private d:Z

.field private e:Z

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;ZLjava/lang/String;Z)V
    .locals 1

    sget-object v0, Lcom/batch/android/f1/f;->b:Lcom/batch/android/f1/f;

    invoke-direct {p0, p1, v0}, Lcom/batch/android/f1/e;-><init>(Landroid/content/Context;Lcom/batch/android/f1/f;)V

    iput-boolean p2, p0, Lcom/batch/android/f1/g;->e:Z

    iput-object p3, p0, Lcom/batch/android/f1/g;->f:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/batch/android/f1/g;->d:Z

    return-void
.end method


# virtual methods
.method public e()Lcom/batch/android/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/json/JSONException;
        }
    .end annotation

    invoke-super {p0}, Lcom/batch/android/f1/e;->e()Lcom/batch/android/json/JSONObject;

    move-result-object v0

    iget-boolean v1, p0, Lcom/batch/android/f1/g;->d:Z

    xor-int/lit8 v1, v1, 0x1

    const-string v2, "silent"

    invoke-virtual {v0, v2, v1}, Lcom/batch/android/json/JSONObject;->put(Ljava/lang/String;Z)Lcom/batch/android/json/JSONObject;

    iget-boolean v1, p0, Lcom/batch/android/f1/g;->e:Z

    const-string v2, "push"

    invoke-virtual {v0, v2, v1}, Lcom/batch/android/json/JSONObject;->put(Ljava/lang/String;Z)Lcom/batch/android/json/JSONObject;

    iget-boolean v1, p0, Lcom/batch/android/f1/g;->e:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/batch/android/f1/g;->f:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object p0, p0, Lcom/batch/android/f1/g;->f:Ljava/lang/String;

    const-string v1, "pushId"

    invoke-virtual {v0, v1, p0}, Lcom/batch/android/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/batch/android/json/JSONObject;

    :cond_0
    return-object v0
.end method
