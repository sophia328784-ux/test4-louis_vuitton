.class public Lcom/batch/android/b1/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/batch/android/b1/g;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/batch/android/b1/g<",
        "Lcom/batch/android/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/batch/android/json/JSONObject;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    new-instance v0, Lcom/batch/android/json/JSONObject;

    invoke-direct {v0}, Lcom/batch/android/json/JSONObject;-><init>()V

    invoke-direct {p0, v0}, Lcom/batch/android/b1/b;-><init>(Lcom/batch/android/json/JSONObject;)V

    return-void
.end method

.method public constructor <init>(Lcom/batch/android/json/JSONObject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/batch/android/b1/b;->a:Lcom/batch/android/json/JSONObject;

    return-void

    :cond_0
    const-string p0, "Null data"

    invoke-static {p0}, Lr81;->d(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method public a()Lcom/batch/android/json/JSONObject;
    .locals 0

    iget-object p0, p0, Lcom/batch/android/b1/b;->a:Lcom/batch/android/json/JSONObject;

    return-object p0
.end method

.method public g()[B
    .locals 0

    iget-object p0, p0, Lcom/batch/android/b1/b;->a:Lcom/batch/android/json/JSONObject;

    invoke-virtual {p0}, Lcom/batch/android/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/batch/android/e/b;->a(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic h()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/batch/android/b1/b;->a()Lcom/batch/android/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public i()Ljava/lang/String;
    .locals 0

    const-string p0, "application/json"

    return-object p0
.end method

.method public isEmpty()Z
    .locals 0

    iget-object p0, p0, Lcom/batch/android/b1/b;->a:Lcom/batch/android/json/JSONObject;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/batch/android/json/JSONObject;->length()I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method
