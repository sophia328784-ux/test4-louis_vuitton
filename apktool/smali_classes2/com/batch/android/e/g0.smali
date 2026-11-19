.class final Lcom/batch/android/e/g0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "ResponseHelper"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a([B)Lcom/batch/android/json/JSONObject;
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    :try_start_0
    new-instance v1, Lcom/batch/android/json/JSONObject;

    invoke-static {p0}, Lcom/batch/android/e/g0;->b([B)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/batch/android/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p0

    const-string v1, "ResponseHelper"

    const-string v2, "Error while casting response to json"

    invoke-static {v1, v2, p0}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0

    :cond_0
    const-string p0, "Null content"

    invoke-static {p0}, Lr81;->d(Ljava/lang/String;)V

    return-object v0
.end method

.method public static b([B)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    :try_start_0
    invoke-static {p0}, Lcom/batch/android/e/b;->c([B)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v1, "ResponseHelper"

    const-string v2, "Error while casting response to string"

    invoke-static {v1, v2, p0}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0

    :cond_0
    const-string p0, "Null content"

    invoke-static {p0}, Lr81;->d(Ljava/lang/String;)V

    return-object v0
.end method
