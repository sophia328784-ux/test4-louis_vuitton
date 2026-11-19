.class public abstract Lcom/batch/android/h1/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected final a:Lcom/batch/android/json/JSONObject;


# direct methods
.method public constructor <init>(Lcom/batch/android/json/JSONObject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/batch/android/h1/e;->a:Lcom/batch/android/json/JSONObject;

    return-void
.end method


# virtual methods
.method public abstract a()Lcom/batch/android/g1/e;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/json/JSONException;
        }
    .end annotation
.end method

.method public b()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/json/JSONException;
        }
    .end annotation

    iget-object p0, p0, Lcom/batch/android/h1/e;->a:Lcom/batch/android/json/JSONObject;

    const-string v0, "id"

    invoke-virtual {p0, v0}, Lcom/batch/android/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
