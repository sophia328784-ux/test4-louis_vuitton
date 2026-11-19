.class public Lcom/batch/android/f1/a;
.super Lcom/batch/android/f1/e;
.source "SourceFile"


# instance fields
.field private d:J

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;JLjava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/batch/android/f1/f;->f:Lcom/batch/android/f1/f;

    invoke-direct {p0, p1, v0}, Lcom/batch/android/f1/e;-><init>(Landroid/content/Context;Lcom/batch/android/f1/f;)V

    const-wide/16 v0, 0x0

    cmp-long p1, p2, v0

    const/4 v0, 0x0

    if-lez p1, :cond_1

    if-eqz p4, :cond_0

    iput-wide p2, p0, Lcom/batch/android/f1/a;->d:J

    iput-object p4, p0, Lcom/batch/android/f1/a;->e:Ljava/lang/String;

    return-void

    :cond_0
    const-string p0, "transactionID==null"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    throw v0

    :cond_1
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

    iget-wide v1, p0, Lcom/batch/android/f1/a;->d:J

    const-string v3, "ver"

    invoke-virtual {v0, v3, v1, v2}, Lcom/batch/android/json/JSONObject;->put(Ljava/lang/String;J)Lcom/batch/android/json/JSONObject;

    iget-object p0, p0, Lcom/batch/android/f1/a;->e:Ljava/lang/String;

    const-string v1, "trid"

    invoke-virtual {v0, v1, p0}, Lcom/batch/android/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/batch/android/json/JSONObject;

    return-object v0
.end method
