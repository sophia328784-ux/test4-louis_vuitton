.class public abstract Lcom/perfectcorp/thirdparty/com/google/gson/internal/z;
.super Ljava/lang/Object;


# direct methods
.method public static a(Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;)Lcom/perfectcorp/thirdparty/com/google/gson/JsonElement;
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->w()Lcom/perfectcorp/thirdparty/com/google/gson/stream/c;
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/perfectcorp/thirdparty/com/google/gson/stream/e; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v0, 0x0

    :try_start_1
    sget-object v1, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/p;->f:Lcom/perfectcorp/thirdparty/com/google/gson/k;

    invoke-virtual {v1, p0}, Lcom/perfectcorp/thirdparty/com/google/gson/k;->a(Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/perfectcorp/thirdparty/com/google/gson/JsonElement;
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/perfectcorp/thirdparty/com/google/gson/stream/e; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/gson/j;

    invoke-direct {v0, p0}, Lcom/perfectcorp/thirdparty/com/google/gson/j;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_2
    move-exception p0

    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/gson/h;

    invoke-direct {v0, p0}, Lcom/perfectcorp/thirdparty/com/google/gson/h;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_3
    move-exception p0

    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/gson/j;

    invoke-direct {v0, p0}, Lcom/perfectcorp/thirdparty/com/google/gson/j;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_4
    move-exception p0

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_0

    sget-object p0, Lcom/perfectcorp/thirdparty/com/google/gson/JsonNull;->b:Lcom/perfectcorp/thirdparty/com/google/gson/JsonNull;

    return-object p0

    :cond_0
    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/gson/j;

    invoke-direct {v0, p0}, Lcom/perfectcorp/thirdparty/com/google/gson/j;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static b(Lcom/perfectcorp/thirdparty/com/google/gson/JsonElement;Lcom/perfectcorp/thirdparty/com/google/gson/stream/d;)V
    .locals 1

    sget-object v0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/p;->f:Lcom/perfectcorp/thirdparty/com/google/gson/k;

    invoke-virtual {v0, p1, p0}, Lcom/perfectcorp/thirdparty/com/google/gson/k;->b(Lcom/perfectcorp/thirdparty/com/google/gson/stream/d;Ljava/lang/Object;)V

    return-void
.end method
