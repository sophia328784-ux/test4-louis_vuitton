.class public abstract Lcom/perfectcorp/thirdparty/com/google/gson/JsonElement;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public f()F
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract h()Lcom/perfectcorp/thirdparty/com/google/gson/JsonElement;
.end method

.method public i()I
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final m()Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;
    .locals 1

    instance-of v0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;

    return-object p0

    :cond_0
    const-string v0, "Not a JSON Object: "

    invoke-static {p0, v0}, La61;->q(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public n()Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    :try_start_0
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    new-instance v1, Lcom/perfectcorp/thirdparty/com/google/gson/stream/d;

    invoke-direct {v1, v0}, Lcom/perfectcorp/thirdparty/com/google/gson/stream/d;-><init>(Ljava/io/Writer;)V

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/perfectcorp/thirdparty/com/google/gson/stream/d;->f:Z

    invoke-static {p0, v1}, Lcom/perfectcorp/thirdparty/com/google/gson/internal/z;->b(Lcom/perfectcorp/thirdparty/com/google/gson/JsonElement;Lcom/perfectcorp/thirdparty/com/google/gson/stream/d;)V

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lmd;->h(Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0
.end method
