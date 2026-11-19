.class public abstract Lcom/perfectcorp/common/gson/GsonHelper;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/common/gson/GsonHelper$a;
    }
.end annotation


# static fields
.field public static final a:Lcom/perfectcorp/thirdparty/com/google/gson/Gson;

.field public static final b:Lcom/perfectcorp/thirdparty/com/google/gson/Gson;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/perfectcorp/common/gson/GsonHelper$a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lcom/perfectcorp/thirdparty/com/google/gson/GsonBuilder;

    invoke-direct {v1}, Lcom/perfectcorp/thirdparty/com/google/gson/GsonBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/perfectcorp/thirdparty/com/google/gson/GsonBuilder;->a()Lcom/perfectcorp/thirdparty/com/google/gson/Gson;

    move-result-object v1

    sput-object v1, Lcom/perfectcorp/common/gson/GsonHelper;->a:Lcom/perfectcorp/thirdparty/com/google/gson/Gson;

    new-instance v1, Lcom/perfectcorp/thirdparty/com/google/gson/GsonBuilder;

    invoke-direct {v1}, Lcom/perfectcorp/thirdparty/com/google/gson/GsonBuilder;-><init>()V

    const-class v2, Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/perfectcorp/thirdparty/com/google/gson/GsonBuilder;->b(Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/perfectcorp/thirdparty/com/google/gson/GsonBuilder;->a()Lcom/perfectcorp/thirdparty/com/google/gson/Gson;

    move-result-object v0

    sput-object v0, Lcom/perfectcorp/common/gson/GsonHelper;->b:Lcom/perfectcorp/thirdparty/com/google/gson/Gson;

    return-void
.end method

.method public static a(Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;Ljava/lang/String;I)I
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;->b:Lcom/perfectcorp/thirdparty/com/google/gson/internal/t;

    invoke-virtual {v0, p1}, Lcom/perfectcorp/thirdparty/com/google/gson/internal/t;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;->r(Ljava/lang/String;)Lcom/perfectcorp/thirdparty/com/google/gson/JsonElement;

    move-result-object p0

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/gson/JsonElement;->i()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    :cond_0
    return p2
.end method

.method public static b(Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;->b:Lcom/perfectcorp/thirdparty/com/google/gson/internal/t;

    invoke-virtual {v0, p1}, Lcom/perfectcorp/thirdparty/com/google/gson/internal/t;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;->r(Ljava/lang/String;)Lcom/perfectcorp/thirdparty/com/google/gson/JsonElement;

    move-result-object p0

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/gson/JsonElement;->n()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    :cond_0
    const-string p0, ""

    return-object p0
.end method
