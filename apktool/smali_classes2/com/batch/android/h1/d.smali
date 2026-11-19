.class public Lcom/batch/android/h1/d;
.super Lcom/batch/android/h1/e;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/batch/android/json/JSONObject;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/batch/android/h1/e;-><init>(Lcom/batch/android/json/JSONObject;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a()Lcom/batch/android/g1/e;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/json/JSONException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/batch/android/h1/d;->c()Lcom/batch/android/g1/d;

    move-result-object p0

    return-object p0
.end method

.method public c()Lcom/batch/android/g1/d;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/json/JSONException;
        }
    .end annotation

    new-instance v0, Lcom/batch/android/g1/d;

    invoke-virtual {p0}, Lcom/batch/android/h1/e;->b()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/batch/android/g1/d;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
